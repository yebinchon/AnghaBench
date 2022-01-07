; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_stp.c___br_set_topology_change.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_stp.c___br_set_topology_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge = type { i64, i8, i32, i64, i64, i32 }

@BR_KERNEL_STP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"decreasing ageing time to %lu\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"restoring ageing time to %lu\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"error offloading ageing time\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__br_set_topology_change(%struct.net_bridge* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.net_bridge*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.net_bridge* %0, %struct.net_bridge** %3, align 8
  store i8 %1, i8* %4, align 1
  %7 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %8 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @BR_KERNEL_STP, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %55

12:                                               ; preds = %2
  %13 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %14 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %13, i32 0, i32 1
  %15 = load i8, i8* %14, align 8
  %16 = zext i8 %15 to i32
  %17 = load i8, i8* %4, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp ne i32 %16, %18
  br i1 %19, label %20, label %55

20:                                               ; preds = %12
  %21 = load i8, i8* %4, align 1
  %22 = icmp ne i8 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %20
  %24 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %25 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 2, %26
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %5, align 8
  %29 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @br_debug(%struct.net_bridge* %29, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %30)
  br label %39

32:                                               ; preds = %20
  %33 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %34 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %5, align 8
  %36 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @br_debug(%struct.net_bridge* %36, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %37)
  br label %39

39:                                               ; preds = %32, %23
  %40 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %41 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 8
  %43 = load i64, i64* %5, align 8
  %44 = call i32 @__set_ageing_time(i32 %42, i64 %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %49 = call i32 @br_warn(%struct.net_bridge* %48, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %54

50:                                               ; preds = %39
  %51 = load i64, i64* %5, align 8
  %52 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %53 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %52, i32 0, i32 4
  store i64 %51, i64* %53, align 8
  br label %54

54:                                               ; preds = %50, %47
  br label %55

55:                                               ; preds = %54, %12, %2
  %56 = load i8, i8* %4, align 1
  %57 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %58 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %57, i32 0, i32 1
  store i8 %56, i8* %58, align 8
  ret void
}

declare dso_local i32 @br_debug(%struct.net_bridge*, i8*, i64) #1

declare dso_local i32 @__set_ageing_time(i32, i64) #1

declare dso_local i32 @br_warn(%struct.net_bridge*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
