; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_allocate_counters.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_allocate_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.thread_data = type { i32 }
%struct.core_data = type { i32 }
%struct.pkg_data = type { i32 }

@topo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [16 x i8] c"calloc counters\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @allocate_counters(%struct.thread_data** %0, %struct.core_data** %1, %struct.pkg_data** %2) #0 {
  %4 = alloca %struct.thread_data**, align 8
  %5 = alloca %struct.core_data**, align 8
  %6 = alloca %struct.pkg_data**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.thread_data** %0, %struct.thread_data*** %4, align 8
  store %struct.core_data** %1, %struct.core_data*** %5, align 8
  store %struct.pkg_data** %2, %struct.pkg_data*** %6, align 8
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @topo, i32 0, i32 0), align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @topo, i32 0, i32 1), align 4
  %12 = mul nsw i32 %10, %11
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @topo, i32 0, i32 2), align 4
  %14 = mul nsw i32 %12, %13
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @topo, i32 0, i32 3), align 4
  %16 = load i32, i32* %8, align 4
  %17 = mul nsw i32 %15, %16
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i8* @calloc(i32 %18, i32 4)
  %20 = bitcast i8* %19 to %struct.thread_data*
  %21 = load %struct.thread_data**, %struct.thread_data*** %4, align 8
  store %struct.thread_data* %20, %struct.thread_data** %21, align 8
  %22 = load %struct.thread_data**, %struct.thread_data*** %4, align 8
  %23 = load %struct.thread_data*, %struct.thread_data** %22, align 8
  %24 = icmp eq %struct.thread_data* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  br label %91

26:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %38, %26
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %27
  %32 = load %struct.thread_data**, %struct.thread_data*** %4, align 8
  %33 = load %struct.thread_data*, %struct.thread_data** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %33, i64 %35
  %37 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %36, i32 0, i32 0
  store i32 -1, i32* %37, align 4
  br label %38

38:                                               ; preds = %31
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %27

41:                                               ; preds = %27
  %42 = load i32, i32* %8, align 4
  %43 = call i8* @calloc(i32 %42, i32 4)
  %44 = bitcast i8* %43 to %struct.core_data*
  %45 = load %struct.core_data**, %struct.core_data*** %5, align 8
  store %struct.core_data* %44, %struct.core_data** %45, align 8
  %46 = load %struct.core_data**, %struct.core_data*** %5, align 8
  %47 = load %struct.core_data*, %struct.core_data** %46, align 8
  %48 = icmp eq %struct.core_data* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  br label %91

50:                                               ; preds = %41
  store i32 0, i32* %7, align 4
  br label %51

51:                                               ; preds = %62, %50
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %51
  %56 = load %struct.core_data**, %struct.core_data*** %5, align 8
  %57 = load %struct.core_data*, %struct.core_data** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.core_data, %struct.core_data* %57, i64 %59
  %61 = getelementptr inbounds %struct.core_data, %struct.core_data* %60, i32 0, i32 0
  store i32 -1, i32* %61, align 4
  br label %62

62:                                               ; preds = %55
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %51

65:                                               ; preds = %51
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @topo, i32 0, i32 2), align 4
  %67 = call i8* @calloc(i32 %66, i32 4)
  %68 = bitcast i8* %67 to %struct.pkg_data*
  %69 = load %struct.pkg_data**, %struct.pkg_data*** %6, align 8
  store %struct.pkg_data* %68, %struct.pkg_data** %69, align 8
  %70 = load %struct.pkg_data**, %struct.pkg_data*** %6, align 8
  %71 = load %struct.pkg_data*, %struct.pkg_data** %70, align 8
  %72 = icmp eq %struct.pkg_data* %71, null
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  br label %91

74:                                               ; preds = %65
  store i32 0, i32* %7, align 4
  br label %75

75:                                               ; preds = %87, %74
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @topo, i32 0, i32 2), align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %90

79:                                               ; preds = %75
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.pkg_data**, %struct.pkg_data*** %6, align 8
  %82 = load %struct.pkg_data*, %struct.pkg_data** %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %82, i64 %84
  %86 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %85, i32 0, i32 0
  store i32 %80, i32* %86, align 4
  br label %87

87:                                               ; preds = %79
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %7, align 4
  br label %75

90:                                               ; preds = %75
  br label %93

91:                                               ; preds = %73, %49, %25
  %92 = call i32 @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %93

93:                                               ; preds = %91, %90
  ret void
}

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
