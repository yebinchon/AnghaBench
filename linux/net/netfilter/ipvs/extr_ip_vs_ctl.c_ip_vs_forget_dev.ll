; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_ctl.c_ip_vs_forget_dev.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_ctl.c_ip_vs_forget_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_dest = type { i32, i32, i32, i32, i32, i32 }
%struct.net_device = type { i32 }
%struct.ip_vs_dest_dst = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.net_device* }

@.str = private unnamed_addr constant [42 x i8] c"Reset dev:%s dest %s:%u ,dest->refcnt=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip_vs_dest*, %struct.net_device*)* @ip_vs_forget_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip_vs_forget_dev(%struct.ip_vs_dest* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.ip_vs_dest*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ip_vs_dest_dst*, align 8
  store %struct.ip_vs_dest* %0, %struct.ip_vs_dest** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %6 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %3, align 8
  %7 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %6, i32 0, i32 0
  %8 = call i32 @spin_lock_bh(i32* %7)
  %9 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %3, align 8
  %10 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.ip_vs_dest_dst* @rcu_dereference_protected(i32 %11, i32 1)
  store %struct.ip_vs_dest_dst* %12, %struct.ip_vs_dest_dst** %5, align 8
  %13 = load %struct.ip_vs_dest_dst*, %struct.ip_vs_dest_dst** %5, align 8
  %14 = icmp ne %struct.ip_vs_dest_dst* %13, null
  br i1 %14, label %15, label %43

15:                                               ; preds = %2
  %16 = load %struct.ip_vs_dest_dst*, %struct.ip_vs_dest_dst** %5, align 8
  %17 = getelementptr inbounds %struct.ip_vs_dest_dst, %struct.ip_vs_dest_dst* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.net_device*, %struct.net_device** %19, align 8
  %21 = load %struct.net_device*, %struct.net_device** %4, align 8
  %22 = icmp eq %struct.net_device* %20, %21
  br i1 %22, label %23, label %43

23:                                               ; preds = %15
  %24 = load %struct.net_device*, %struct.net_device** %4, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %3, align 8
  %28 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %3, align 8
  %31 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %30, i32 0, i32 3
  %32 = call i32 @IP_VS_DBG_ADDR(i32 %29, i32* %31)
  %33 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %3, align 8
  %34 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ntohs(i32 %35)
  %37 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %3, align 8
  %38 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %37, i32 0, i32 1
  %39 = call i32 @refcount_read(i32* %38)
  %40 = call i32 @IP_VS_DBG_BUF(i32 3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %32, i32 %36, i32 %39)
  %41 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %3, align 8
  %42 = call i32 @__ip_vs_dst_cache_reset(%struct.ip_vs_dest* %41)
  br label %43

43:                                               ; preds = %23, %15, %2
  %44 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %3, align 8
  %45 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %44, i32 0, i32 0
  %46 = call i32 @spin_unlock_bh(i32* %45)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.ip_vs_dest_dst* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @IP_VS_DBG_BUF(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @IP_VS_DBG_ADDR(i32, i32*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @refcount_read(i32*) #1

declare dso_local i32 @__ip_vs_dst_cache_reset(%struct.ip_vs_dest*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
