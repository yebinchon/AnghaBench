; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_lblc.c_ip_vs_lblc_init_svc.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_lblc.c_ip_vs_lblc_init_svc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_service = type { %struct.ip_vs_lblc_table* }
%struct.ip_vs_lblc_table = type { i32, i32, i32, i32, i32, %struct.ip_vs_service*, i64, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"LBLC hash table (memory=%zdbytes) allocated for current service\0A\00", align 1
@IP_VS_LBLC_TAB_SIZE = common dso_local global i32 0, align 4
@ip_vs_lblc_check_expire = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@CHECK_EXPIRE_INTERVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_vs_service*)* @ip_vs_lblc_init_svc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_vs_lblc_init_svc(%struct.ip_vs_service* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ip_vs_service*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_vs_lblc_table*, align 8
  store %struct.ip_vs_service* %0, %struct.ip_vs_service** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.ip_vs_lblc_table* @kmalloc(i32 48, i32 %6)
  store %struct.ip_vs_lblc_table* %7, %struct.ip_vs_lblc_table** %5, align 8
  %8 = load %struct.ip_vs_lblc_table*, %struct.ip_vs_lblc_table** %5, align 8
  %9 = icmp eq %struct.ip_vs_lblc_table* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %60

13:                                               ; preds = %1
  %14 = load %struct.ip_vs_lblc_table*, %struct.ip_vs_lblc_table** %5, align 8
  %15 = load %struct.ip_vs_service*, %struct.ip_vs_service** %3, align 8
  %16 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %15, i32 0, i32 0
  store %struct.ip_vs_lblc_table* %14, %struct.ip_vs_lblc_table** %16, align 8
  %17 = call i32 @IP_VS_DBG(i32 6, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 48)
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %30, %13
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @IP_VS_LBLC_TAB_SIZE, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %18
  %23 = load %struct.ip_vs_lblc_table*, %struct.ip_vs_lblc_table** %5, align 8
  %24 = getelementptr inbounds %struct.ip_vs_lblc_table, %struct.ip_vs_lblc_table* %23, i32 0, i32 7
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = call i32 @INIT_HLIST_HEAD(i32* %28)
  br label %30

30:                                               ; preds = %22
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %18

33:                                               ; preds = %18
  %34 = load i32, i32* @IP_VS_LBLC_TAB_SIZE, align 4
  %35 = mul nsw i32 %34, 16
  %36 = load %struct.ip_vs_lblc_table*, %struct.ip_vs_lblc_table** %5, align 8
  %37 = getelementptr inbounds %struct.ip_vs_lblc_table, %struct.ip_vs_lblc_table* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.ip_vs_lblc_table*, %struct.ip_vs_lblc_table** %5, align 8
  %39 = getelementptr inbounds %struct.ip_vs_lblc_table, %struct.ip_vs_lblc_table* %38, i32 0, i32 6
  store i64 0, i64* %39, align 8
  %40 = load %struct.ip_vs_lblc_table*, %struct.ip_vs_lblc_table** %5, align 8
  %41 = getelementptr inbounds %struct.ip_vs_lblc_table, %struct.ip_vs_lblc_table* %40, i32 0, i32 1
  store i32 1, i32* %41, align 4
  %42 = load %struct.ip_vs_lblc_table*, %struct.ip_vs_lblc_table** %5, align 8
  %43 = getelementptr inbounds %struct.ip_vs_lblc_table, %struct.ip_vs_lblc_table* %42, i32 0, i32 2
  store i32 0, i32* %43, align 8
  %44 = load %struct.ip_vs_service*, %struct.ip_vs_service** %3, align 8
  %45 = load %struct.ip_vs_lblc_table*, %struct.ip_vs_lblc_table** %5, align 8
  %46 = getelementptr inbounds %struct.ip_vs_lblc_table, %struct.ip_vs_lblc_table* %45, i32 0, i32 5
  store %struct.ip_vs_service* %44, %struct.ip_vs_service** %46, align 8
  %47 = load %struct.ip_vs_lblc_table*, %struct.ip_vs_lblc_table** %5, align 8
  %48 = getelementptr inbounds %struct.ip_vs_lblc_table, %struct.ip_vs_lblc_table* %47, i32 0, i32 4
  %49 = call i32 @atomic_set(i32* %48, i32 0)
  %50 = load %struct.ip_vs_lblc_table*, %struct.ip_vs_lblc_table** %5, align 8
  %51 = getelementptr inbounds %struct.ip_vs_lblc_table, %struct.ip_vs_lblc_table* %50, i32 0, i32 3
  %52 = load i32, i32* @ip_vs_lblc_check_expire, align 4
  %53 = call i32 @timer_setup(i32* %51, i32 %52, i32 0)
  %54 = load %struct.ip_vs_lblc_table*, %struct.ip_vs_lblc_table** %5, align 8
  %55 = getelementptr inbounds %struct.ip_vs_lblc_table, %struct.ip_vs_lblc_table* %54, i32 0, i32 3
  %56 = load i64, i64* @jiffies, align 8
  %57 = load i64, i64* @CHECK_EXPIRE_INTERVAL, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @mod_timer(i32* %55, i64 %58)
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %33, %10
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local %struct.ip_vs_lblc_table* @kmalloc(i32, i32) #1

declare dso_local i32 @IP_VS_DBG(i32, i8*, i32) #1

declare dso_local i32 @INIT_HLIST_HEAD(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
