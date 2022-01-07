; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_stp.c_br_set_hello_time.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_stp.c_br_set_hello_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge = type { i64, i64, i32 }

@BR_MIN_HELLO_TIME = common dso_local global i64 0, align 8
@BR_MAX_HELLO_TIME = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @br_set_hello_time(%struct.net_bridge* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_bridge*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.net_bridge* %0, %struct.net_bridge** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = call i64 @clock_t_to_jiffies(i64 %7)
  store i64 %8, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @BR_MIN_HELLO_TIME, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @BR_MAX_HELLO_TIME, align 8
  %15 = icmp ugt i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %12, %2
  %17 = load i32, i32* @ERANGE, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %39

19:                                               ; preds = %12
  %20 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %21 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %20, i32 0, i32 2
  %22 = call i32 @spin_lock_bh(i32* %21)
  %23 = load i64, i64* %6, align 8
  %24 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %25 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %27 = call i64 @br_is_root_bridge(%struct.net_bridge* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %19
  %30 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %31 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %34 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  br label %35

35:                                               ; preds = %29, %19
  %36 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %37 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %36, i32 0, i32 2
  %38 = call i32 @spin_unlock_bh(i32* %37)
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %35, %16
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i64 @clock_t_to_jiffies(i64) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @br_is_root_bridge(%struct.net_bridge*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
