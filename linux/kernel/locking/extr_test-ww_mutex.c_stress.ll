; ModuleID = '/home/carl/AnghaBench/linux/kernel/locking/extr_test-ww_mutex.c_stress.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/locking/extr_test-ww_mutex.c_stress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ww_mutex = type { i32 }
%struct.stress = type { i32, i32, i64, %struct.ww_mutex* }
%struct.work_struct = type opaque
%struct.work_struct.3 = type opaque
%struct.work_struct.0 = type opaque
%struct.work_struct.1 = type opaque
%struct.work_struct.2 = type opaque

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ww_class = common dso_local global i32 0, align 4
@STRESS_INORDER = common dso_local global i32 0, align 4
@STRESS_REORDER = common dso_local global i32 0, align 4
@STRESS_ONE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @stress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stress(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ww_mutex*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.stress*, align 8
  %11 = alloca void (%struct.work_struct*)*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.ww_mutex* @kmalloc_array(i32 %12, i32 4, i32 %13)
  store %struct.ww_mutex* %14, %struct.ww_mutex** %8, align 8
  %15 = load %struct.ww_mutex*, %struct.ww_mutex** %8, align 8
  %16 = icmp ne %struct.ww_mutex* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %119

20:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %31, %20
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %21
  %26 = load %struct.ww_mutex*, %struct.ww_mutex** %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.ww_mutex, %struct.ww_mutex* %26, i64 %28
  %30 = call i32 @ww_mutex_init(%struct.ww_mutex* %29, i32* @ww_class)
  br label %31

31:                                               ; preds = %25
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %9, align 4
  br label %21

34:                                               ; preds = %21
  store i32 0, i32* %9, align 4
  br label %35

35:                                               ; preds = %97, %34
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %100

38:                                               ; preds = %35
  store void (%struct.work_struct*)* null, void (%struct.work_struct*)** %11, align 8
  %39 = load i32, i32* %9, align 4
  %40 = and i32 %39, 3
  switch i32 %40, label %62 [
    i32 0, label %41
    i32 1, label %48
    i32 2, label %55
  ]

41:                                               ; preds = %38
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @STRESS_INORDER, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store void (%struct.work_struct*)* bitcast (void (%struct.work_struct.0*)* @stress_inorder_work to void (%struct.work_struct*)*), void (%struct.work_struct*)** %11, align 8
  br label %47

47:                                               ; preds = %46, %41
  br label %62

48:                                               ; preds = %38
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @STRESS_REORDER, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store void (%struct.work_struct*)* bitcast (void (%struct.work_struct.1*)* @stress_reorder_work to void (%struct.work_struct*)*), void (%struct.work_struct*)** %11, align 8
  br label %54

54:                                               ; preds = %53, %48
  br label %62

55:                                               ; preds = %38
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @STRESS_ONE, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store void (%struct.work_struct*)* bitcast (void (%struct.work_struct.2*)* @stress_one_work to void (%struct.work_struct*)*), void (%struct.work_struct*)** %11, align 8
  br label %61

61:                                               ; preds = %60, %55
  br label %62

62:                                               ; preds = %38, %61, %54, %47
  %63 = load void (%struct.work_struct*)*, void (%struct.work_struct*)** %11, align 8
  %64 = icmp ne void (%struct.work_struct*)* %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %62
  br label %97

66:                                               ; preds = %62
  %67 = load i32, i32* @GFP_KERNEL, align 4
  %68 = call %struct.stress* @kmalloc(i32 24, i32 %67)
  store %struct.stress* %68, %struct.stress** %10, align 8
  %69 = load %struct.stress*, %struct.stress** %10, align 8
  %70 = icmp ne %struct.stress* %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %66
  br label %100

72:                                               ; preds = %66
  %73 = load %struct.stress*, %struct.stress** %10, align 8
  %74 = getelementptr inbounds %struct.stress, %struct.stress* %73, i32 0, i32 1
  %75 = load void (%struct.work_struct*)*, void (%struct.work_struct*)** %11, align 8
  %76 = bitcast void (%struct.work_struct*)* %75 to void (%struct.work_struct.3*)*
  %77 = call i32 @INIT_WORK(i32* %74, void (%struct.work_struct.3*)* %76)
  %78 = load %struct.ww_mutex*, %struct.ww_mutex** %8, align 8
  %79 = load %struct.stress*, %struct.stress** %10, align 8
  %80 = getelementptr inbounds %struct.stress, %struct.stress* %79, i32 0, i32 3
  store %struct.ww_mutex* %78, %struct.ww_mutex** %80, align 8
  %81 = load i32, i32* %5, align 4
  %82 = load %struct.stress*, %struct.stress** %10, align 8
  %83 = getelementptr inbounds %struct.stress, %struct.stress* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load i64, i64* @jiffies, align 8
  %85 = load i32, i32* @HZ, align 4
  %86 = mul nsw i32 2, %85
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %84, %87
  %89 = load %struct.stress*, %struct.stress** %10, align 8
  %90 = getelementptr inbounds %struct.stress, %struct.stress* %89, i32 0, i32 2
  store i64 %88, i64* %90, align 8
  %91 = load i32, i32* @wq, align 4
  %92 = load %struct.stress*, %struct.stress** %10, align 8
  %93 = getelementptr inbounds %struct.stress, %struct.stress* %92, i32 0, i32 1
  %94 = call i32 @queue_work(i32 %91, i32* %93)
  %95 = load i32, i32* %6, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %6, align 4
  br label %97

97:                                               ; preds = %72, %65
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %9, align 4
  br label %35

100:                                              ; preds = %71, %35
  %101 = load i32, i32* @wq, align 4
  %102 = call i32 @flush_workqueue(i32 %101)
  store i32 0, i32* %9, align 4
  br label %103

103:                                              ; preds = %113, %100
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* %5, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %116

107:                                              ; preds = %103
  %108 = load %struct.ww_mutex*, %struct.ww_mutex** %8, align 8
  %109 = load i32, i32* %9, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.ww_mutex, %struct.ww_mutex* %108, i64 %110
  %112 = call i32 @ww_mutex_destroy(%struct.ww_mutex* %111)
  br label %113

113:                                              ; preds = %107
  %114 = load i32, i32* %9, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %9, align 4
  br label %103

116:                                              ; preds = %103
  %117 = load %struct.ww_mutex*, %struct.ww_mutex** %8, align 8
  %118 = call i32 @kfree(%struct.ww_mutex* %117)
  store i32 0, i32* %4, align 4
  br label %119

119:                                              ; preds = %116, %17
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local %struct.ww_mutex* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @ww_mutex_init(%struct.ww_mutex*, i32*) #1

declare dso_local void @stress_inorder_work(%struct.work_struct.0*) #1

declare dso_local void @stress_reorder_work(%struct.work_struct.1*) #1

declare dso_local void @stress_one_work(%struct.work_struct.2*) #1

declare dso_local %struct.stress* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, void (%struct.work_struct.3*)*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @ww_mutex_destroy(%struct.ww_mutex*) #1

declare dso_local i32 @kfree(%struct.ww_mutex*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
