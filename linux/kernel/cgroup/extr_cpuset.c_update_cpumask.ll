; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_cpuset.c_update_cpumask.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_cpuset.c_update_cpumask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuset = type { i64, i64, i32, i64, i32, i32 }
%struct.tmpmasks = type { i32, i32, i32 }

@top_cpuset = common dso_local global %struct.cpuset zeroinitializer, align 8
@EACCES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@partcmd_update = common dso_local global i32 0, align 4
@callback_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpuset*, %struct.cpuset*, i8*)* @update_cpumask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_cpumask(%struct.cpuset* %0, %struct.cpuset* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpuset*, align 8
  %6 = alloca %struct.cpuset*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tmpmasks, align 4
  %10 = alloca %struct.cpuset*, align 8
  store %struct.cpuset* %0, %struct.cpuset** %5, align 8
  store %struct.cpuset* %1, %struct.cpuset** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.cpuset*, %struct.cpuset** %5, align 8
  %12 = icmp eq %struct.cpuset* %11, @top_cpuset
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @EACCES, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %141

16:                                               ; preds = %3
  %17 = load i8*, i8** %7, align 8
  %18 = load i8, i8* %17, align 1
  %19 = icmp ne i8 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %22 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @cpumask_clear(i32 %23)
  br label %46

25:                                               ; preds = %16
  %26 = load i8*, i8** %7, align 8
  %27 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %28 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @cpulist_parse(i8* %26, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %4, align 4
  br label %141

35:                                               ; preds = %25
  %36 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %37 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* getelementptr inbounds (%struct.cpuset, %struct.cpuset* @top_cpuset, i32 0, i32 4), align 8
  %40 = call i32 @cpumask_subset(i32 %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %35
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %141

45:                                               ; preds = %35
  br label %46

46:                                               ; preds = %45, %20
  %47 = load %struct.cpuset*, %struct.cpuset** %5, align 8
  %48 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %51 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @cpumask_equal(i32 %49, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  store i32 0, i32* %4, align 4
  br label %141

56:                                               ; preds = %46
  %57 = load %struct.cpuset*, %struct.cpuset** %5, align 8
  %58 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %59 = call i32 @validate_change(%struct.cpuset* %57, %struct.cpuset* %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %4, align 4
  br label %141

64:                                               ; preds = %56
  %65 = load %struct.cpuset*, %struct.cpuset** %5, align 8
  %66 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %90

69:                                               ; preds = %64
  %70 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %71 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @cpumask_empty(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %4, align 4
  br label %141

78:                                               ; preds = %69
  %79 = load %struct.cpuset*, %struct.cpuset** %5, align 8
  %80 = load i32, i32* @partcmd_update, align 4
  %81 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %82 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = call i64 @update_parent_subparts_cpumask(%struct.cpuset* %79, i32 %80, i32 %83, %struct.tmpmasks* %9)
  %85 = icmp slt i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %78
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %4, align 4
  br label %141

89:                                               ; preds = %78
  br label %90

90:                                               ; preds = %89, %64
  %91 = call i32 @spin_lock_irq(i32* @callback_lock)
  %92 = load %struct.cpuset*, %struct.cpuset** %5, align 8
  %93 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %96 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @cpumask_copy(i32 %94, i32 %97)
  %99 = load %struct.cpuset*, %struct.cpuset** %5, align 8
  %100 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %120

103:                                              ; preds = %90
  %104 = load %struct.cpuset*, %struct.cpuset** %5, align 8
  %105 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.cpuset*, %struct.cpuset** %5, align 8
  %108 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.cpuset*, %struct.cpuset** %5, align 8
  %111 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @cpumask_andnot(i32 %106, i32 %109, i32 %112)
  %114 = load %struct.cpuset*, %struct.cpuset** %5, align 8
  %115 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = call i64 @cpumask_weight(i32 %116)
  %118 = load %struct.cpuset*, %struct.cpuset** %5, align 8
  %119 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %118, i32 0, i32 3
  store i64 %117, i64* %119, align 8
  br label %120

120:                                              ; preds = %103, %90
  %121 = call i32 @spin_unlock_irq(i32* @callback_lock)
  %122 = load %struct.cpuset*, %struct.cpuset** %5, align 8
  %123 = call i32 @update_cpumasks_hier(%struct.cpuset* %122, %struct.tmpmasks* %9)
  %124 = load %struct.cpuset*, %struct.cpuset** %5, align 8
  %125 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %140

128:                                              ; preds = %120
  %129 = load %struct.cpuset*, %struct.cpuset** %5, align 8
  %130 = call %struct.cpuset* @parent_cs(%struct.cpuset* %129)
  store %struct.cpuset* %130, %struct.cpuset** %10, align 8
  %131 = load %struct.cpuset*, %struct.cpuset** %10, align 8
  %132 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %128
  %136 = load %struct.cpuset*, %struct.cpuset** %10, align 8
  %137 = load %struct.cpuset*, %struct.cpuset** %5, align 8
  %138 = call i32 @update_sibling_cpumasks(%struct.cpuset* %136, %struct.cpuset* %137, %struct.tmpmasks* %9)
  br label %139

139:                                              ; preds = %135, %128
  br label %140

140:                                              ; preds = %139, %120
  store i32 0, i32* %4, align 4
  br label %141

141:                                              ; preds = %140, %86, %75, %62, %55, %42, %33, %13
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

declare dso_local i32 @cpumask_clear(i32) #1

declare dso_local i32 @cpulist_parse(i8*, i32) #1

declare dso_local i32 @cpumask_subset(i32, i32) #1

declare dso_local i64 @cpumask_equal(i32, i32) #1

declare dso_local i32 @validate_change(%struct.cpuset*, %struct.cpuset*) #1

declare dso_local i64 @cpumask_empty(i32) #1

declare dso_local i64 @update_parent_subparts_cpumask(%struct.cpuset*, i32, i32, %struct.tmpmasks*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @cpumask_copy(i32, i32) #1

declare dso_local i32 @cpumask_andnot(i32, i32, i32) #1

declare dso_local i64 @cpumask_weight(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @update_cpumasks_hier(%struct.cpuset*, %struct.tmpmasks*) #1

declare dso_local %struct.cpuset* @parent_cs(%struct.cpuset*) #1

declare dso_local i32 @update_sibling_cpumasks(%struct.cpuset*, %struct.cpuset*, %struct.tmpmasks*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
