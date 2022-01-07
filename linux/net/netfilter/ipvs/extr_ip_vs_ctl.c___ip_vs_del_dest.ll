; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_ctl.c___ip_vs_del_dest.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_ctl.c___ip_vs_del_dest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netns_ipvs = type { i32, i32, i32 }
%struct.ip_vs_dest = type { i64, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [47 x i8] c"Moving dest %s:%u into trash, dest->refcnt=%d\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@IP_VS_DEST_TRASH_PERIOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netns_ipvs*, %struct.ip_vs_dest*, i32)* @__ip_vs_del_dest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ip_vs_del_dest(%struct.netns_ipvs* %0, %struct.ip_vs_dest* %1, i32 %2) #0 {
  %4 = alloca %struct.netns_ipvs*, align 8
  %5 = alloca %struct.ip_vs_dest*, align 8
  %6 = alloca i32, align 4
  store %struct.netns_ipvs* %0, %struct.netns_ipvs** %4, align 8
  store %struct.ip_vs_dest* %1, %struct.ip_vs_dest** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.netns_ipvs*, %struct.netns_ipvs** %4, align 8
  %8 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %5, align 8
  %9 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %8, i32 0, i32 6
  %10 = call i32 @ip_vs_stop_estimator(%struct.netns_ipvs* %7, i32* %9)
  %11 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %5, align 8
  %12 = call i32 @ip_vs_rs_unhash(%struct.ip_vs_dest* %11)
  %13 = load %struct.netns_ipvs*, %struct.netns_ipvs** %4, align 8
  %14 = getelementptr inbounds %struct.netns_ipvs, %struct.netns_ipvs* %13, i32 0, i32 0
  %15 = call i32 @spin_lock_bh(i32* %14)
  %16 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %5, align 8
  %17 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %5, align 8
  %20 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %19, i32 0, i32 4
  %21 = call i32 @IP_VS_DBG_ADDR(i32 %18, i32* %20)
  %22 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %5, align 8
  %23 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @ntohs(i32 %24)
  %26 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %5, align 8
  %27 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %26, i32 0, i32 2
  %28 = call i32 @refcount_read(i32* %27)
  %29 = call i32 @IP_VS_DBG_BUF(i32 3, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %25, i32 %28)
  %30 = load %struct.netns_ipvs*, %struct.netns_ipvs** %4, align 8
  %31 = getelementptr inbounds %struct.netns_ipvs, %struct.netns_ipvs* %30, i32 0, i32 1
  %32 = call i64 @list_empty(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %3
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %34
  %38 = load %struct.netns_ipvs*, %struct.netns_ipvs** %4, align 8
  %39 = getelementptr inbounds %struct.netns_ipvs, %struct.netns_ipvs* %38, i32 0, i32 2
  %40 = load i64, i64* @jiffies, align 8
  %41 = load i32, i32* @IP_VS_DEST_TRASH_PERIOD, align 4
  %42 = ashr i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %40, %43
  %45 = call i32 @mod_timer(i32* %39, i64 %44)
  br label %46

46:                                               ; preds = %37, %34, %3
  %47 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %5, align 8
  %48 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %47, i32 0, i32 1
  %49 = load %struct.netns_ipvs*, %struct.netns_ipvs** %4, align 8
  %50 = getelementptr inbounds %struct.netns_ipvs, %struct.netns_ipvs* %49, i32 0, i32 1
  %51 = call i32 @list_add(i32* %48, i32* %50)
  %52 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %5, align 8
  %53 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %52, i32 0, i32 0
  store i64 0, i64* %53, align 8
  %54 = load %struct.netns_ipvs*, %struct.netns_ipvs** %4, align 8
  %55 = getelementptr inbounds %struct.netns_ipvs, %struct.netns_ipvs* %54, i32 0, i32 0
  %56 = call i32 @spin_unlock_bh(i32* %55)
  ret void
}

declare dso_local i32 @ip_vs_stop_estimator(%struct.netns_ipvs*, i32*) #1

declare dso_local i32 @ip_vs_rs_unhash(%struct.ip_vs_dest*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @IP_VS_DBG_BUF(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @IP_VS_DBG_ADDR(i32, i32*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @refcount_read(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
