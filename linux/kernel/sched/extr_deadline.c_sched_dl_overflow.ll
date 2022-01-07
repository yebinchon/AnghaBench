; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_deadline.c_sched_dl_overflow.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_deadline.c_sched_dl_overflow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.sched_attr = type { i64, i64, i32, i64 }
%struct.dl_bw = type { i32 }

@SCHED_FLAG_SUGOV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sched_dl_overflow(%struct.task_struct* %0, i32 %1, %struct.sched_attr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sched_attr*, align 8
  %8 = alloca %struct.dl_bw*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sched_attr* %2, %struct.sched_attr** %7, align 8
  %14 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %15 = call i32 @task_cpu(%struct.task_struct* %14)
  %16 = call %struct.dl_bw* @dl_bw_of(i32 %15)
  store %struct.dl_bw* %16, %struct.dl_bw** %8, align 8
  %17 = load %struct.sched_attr*, %struct.sched_attr** %7, align 8
  %18 = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %26

22:                                               ; preds = %3
  %23 = load %struct.sched_attr*, %struct.sched_attr** %7, align 8
  %24 = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  br label %26

26:                                               ; preds = %22, %21
  %27 = phi i64 [ %19, %21 ], [ %25, %22 ]
  store i64 %27, i64* %9, align 8
  %28 = load %struct.sched_attr*, %struct.sched_attr** %7, align 8
  %29 = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %10, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i64 @dl_policy(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %26
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* %10, align 8
  %37 = call i64 @to_ratio(i64 %35, i64 %36)
  br label %39

38:                                               ; preds = %26
  br label %39

39:                                               ; preds = %38, %34
  %40 = phi i64 [ %37, %34 ], [ 0, %38 ]
  store i64 %40, i64* %11, align 8
  store i32 -1, i32* %13, align 4
  %41 = load %struct.sched_attr*, %struct.sched_attr** %7, align 8
  %42 = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @SCHED_FLAG_SUGOV, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %148

48:                                               ; preds = %39
  %49 = load i64, i64* %11, align 8
  %50 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %51 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %49, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %48
  %56 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %57 = call i64 @task_has_dl_policy(%struct.task_struct* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  store i32 0, i32* %4, align 4
  br label %148

60:                                               ; preds = %55, %48
  %61 = load %struct.dl_bw*, %struct.dl_bw** %8, align 8
  %62 = getelementptr inbounds %struct.dl_bw, %struct.dl_bw* %61, i32 0, i32 0
  %63 = call i32 @raw_spin_lock(i32* %62)
  %64 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %65 = call i32 @task_cpu(%struct.task_struct* %64)
  %66 = call i32 @dl_bw_cpus(i32 %65)
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %6, align 4
  %68 = call i64 @dl_policy(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %99

70:                                               ; preds = %60
  %71 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %72 = call i64 @task_has_dl_policy(%struct.task_struct* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %99, label %74

74:                                               ; preds = %70
  %75 = load %struct.dl_bw*, %struct.dl_bw** %8, align 8
  %76 = load i32, i32* %12, align 4
  %77 = load i64, i64* %11, align 8
  %78 = call i32 @__dl_overflow(%struct.dl_bw* %75, i32 %76, i64 0, i64 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %99, label %80

80:                                               ; preds = %74
  %81 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %82 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = call i64 @hrtimer_active(i32* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %80
  %87 = load %struct.dl_bw*, %struct.dl_bw** %8, align 8
  %88 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %89 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i32, i32* %12, align 4
  %93 = call i32 @__dl_sub(%struct.dl_bw* %87, i64 %91, i32 %92)
  br label %94

94:                                               ; preds = %86, %80
  %95 = load %struct.dl_bw*, %struct.dl_bw** %8, align 8
  %96 = load i64, i64* %11, align 8
  %97 = load i32, i32* %12, align 4
  %98 = call i32 @__dl_add(%struct.dl_bw* %95, i64 %96, i32 %97)
  store i32 0, i32* %13, align 4
  br label %143

99:                                               ; preds = %74, %70, %60
  %100 = load i32, i32* %6, align 4
  %101 = call i64 @dl_policy(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %132

103:                                              ; preds = %99
  %104 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %105 = call i64 @task_has_dl_policy(%struct.task_struct* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %132

107:                                              ; preds = %103
  %108 = load %struct.dl_bw*, %struct.dl_bw** %8, align 8
  %109 = load i32, i32* %12, align 4
  %110 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %111 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* %11, align 8
  %115 = call i32 @__dl_overflow(%struct.dl_bw* %108, i32 %109, i64 %113, i64 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %132, label %117

117:                                              ; preds = %107
  %118 = load %struct.dl_bw*, %struct.dl_bw** %8, align 8
  %119 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %120 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i32, i32* %12, align 4
  %124 = call i32 @__dl_sub(%struct.dl_bw* %118, i64 %122, i32 %123)
  %125 = load %struct.dl_bw*, %struct.dl_bw** %8, align 8
  %126 = load i64, i64* %11, align 8
  %127 = load i32, i32* %12, align 4
  %128 = call i32 @__dl_add(%struct.dl_bw* %125, i64 %126, i32 %127)
  %129 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %130 = load i64, i64* %11, align 8
  %131 = call i32 @dl_change_utilization(%struct.task_struct* %129, i64 %130)
  store i32 0, i32* %13, align 4
  br label %142

132:                                              ; preds = %107, %103, %99
  %133 = load i32, i32* %6, align 4
  %134 = call i64 @dl_policy(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %141, label %136

136:                                              ; preds = %132
  %137 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %138 = call i64 @task_has_dl_policy(%struct.task_struct* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %136
  store i32 0, i32* %13, align 4
  br label %141

141:                                              ; preds = %140, %136, %132
  br label %142

142:                                              ; preds = %141, %117
  br label %143

143:                                              ; preds = %142, %94
  %144 = load %struct.dl_bw*, %struct.dl_bw** %8, align 8
  %145 = getelementptr inbounds %struct.dl_bw, %struct.dl_bw* %144, i32 0, i32 0
  %146 = call i32 @raw_spin_unlock(i32* %145)
  %147 = load i32, i32* %13, align 4
  store i32 %147, i32* %4, align 4
  br label %148

148:                                              ; preds = %143, %59, %47
  %149 = load i32, i32* %4, align 4
  ret i32 %149
}

declare dso_local %struct.dl_bw* @dl_bw_of(i32) #1

declare dso_local i32 @task_cpu(%struct.task_struct*) #1

declare dso_local i64 @dl_policy(i32) #1

declare dso_local i64 @to_ratio(i64, i64) #1

declare dso_local i64 @task_has_dl_policy(%struct.task_struct*) #1

declare dso_local i32 @raw_spin_lock(i32*) #1

declare dso_local i32 @dl_bw_cpus(i32) #1

declare dso_local i32 @__dl_overflow(%struct.dl_bw*, i32, i64, i64) #1

declare dso_local i64 @hrtimer_active(i32*) #1

declare dso_local i32 @__dl_sub(%struct.dl_bw*, i64, i32) #1

declare dso_local i32 @__dl_add(%struct.dl_bw*, i64, i32) #1

declare dso_local i32 @dl_change_utilization(%struct.task_struct*, i64) #1

declare dso_local i32 @raw_spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
