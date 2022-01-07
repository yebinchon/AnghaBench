; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_cpuset.c_update_prstate.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_cpuset.c_update_prstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuset = type { i32, i64, i32 }
%struct.tmpmasks = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CS_CPU_EXCLUSIVE = common dso_local global i32 0, align 4
@partcmd_enable = common dso_local global i32 0, align 4
@PRS_ENABLED = common dso_local global i32 0, align 4
@PRS_ERROR = common dso_local global i32 0, align 4
@partcmd_disable = common dso_local global i32 0, align 4
@top_cpuset = common dso_local global %struct.cpuset zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpuset*, i32)* @update_prstate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_prstate(%struct.cpuset* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpuset*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cpuset*, align 8
  %8 = alloca %struct.tmpmasks, align 4
  store %struct.cpuset* %0, %struct.cpuset** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.cpuset*, %struct.cpuset** %4, align 8
  %10 = call %struct.cpuset* @parent_cs(%struct.cpuset* %9)
  store %struct.cpuset* %10, %struct.cpuset** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 1
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %123

19:                                               ; preds = %13, %2
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.cpuset*, %struct.cpuset** %4, align 8
  %22 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %123

26:                                               ; preds = %19
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %26
  %30 = load %struct.cpuset*, %struct.cpuset** %4, align 8
  %31 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %123

37:                                               ; preds = %29, %26
  %38 = call i64 @alloc_cpumasks(i32* null, %struct.tmpmasks* %8)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %123

43:                                               ; preds = %37
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %6, align 4
  %46 = load %struct.cpuset*, %struct.cpuset** %4, align 8
  %47 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %78, label %50

50:                                               ; preds = %43
  %51 = load %struct.cpuset*, %struct.cpuset** %4, align 8
  %52 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @cpumask_empty(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %120

57:                                               ; preds = %50
  %58 = load i32, i32* @CS_CPU_EXCLUSIVE, align 4
  %59 = load %struct.cpuset*, %struct.cpuset** %4, align 8
  %60 = call i32 @update_flag(i32 %58, %struct.cpuset* %59, i32 1)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %120

64:                                               ; preds = %57
  %65 = load %struct.cpuset*, %struct.cpuset** %4, align 8
  %66 = load i32, i32* @partcmd_enable, align 4
  %67 = call i32 @update_parent_subparts_cpumask(%struct.cpuset* %65, i32 %66, i32* null, %struct.tmpmasks* %8)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load i32, i32* @CS_CPU_EXCLUSIVE, align 4
  %72 = load %struct.cpuset*, %struct.cpuset** %4, align 8
  %73 = call i32 @update_flag(i32 %71, %struct.cpuset* %72, i32 0)
  br label %120

74:                                               ; preds = %64
  %75 = load i32, i32* @PRS_ENABLED, align 4
  %76 = load %struct.cpuset*, %struct.cpuset** %4, align 8
  %77 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  br label %103

78:                                               ; preds = %43
  %79 = load %struct.cpuset*, %struct.cpuset** %4, align 8
  %80 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @PRS_ERROR, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %78
  %85 = load %struct.cpuset*, %struct.cpuset** %4, align 8
  %86 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %85, i32 0, i32 0
  store i32 0, i32* %86, align 8
  %87 = load i32, i32* @CS_CPU_EXCLUSIVE, align 4
  %88 = load %struct.cpuset*, %struct.cpuset** %4, align 8
  %89 = call i32 @update_flag(i32 %87, %struct.cpuset* %88, i32 0)
  store i32 0, i32* %6, align 4
  br label %120

90:                                               ; preds = %78
  %91 = load %struct.cpuset*, %struct.cpuset** %4, align 8
  %92 = load i32, i32* @partcmd_disable, align 4
  %93 = call i32 @update_parent_subparts_cpumask(%struct.cpuset* %91, i32 %92, i32* null, %struct.tmpmasks* %8)
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %90
  br label %120

97:                                               ; preds = %90
  %98 = load %struct.cpuset*, %struct.cpuset** %4, align 8
  %99 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %98, i32 0, i32 0
  store i32 0, i32* %99, align 8
  %100 = load i32, i32* @CS_CPU_EXCLUSIVE, align 4
  %101 = load %struct.cpuset*, %struct.cpuset** %4, align 8
  %102 = call i32 @update_flag(i32 %100, %struct.cpuset* %101, i32 0)
  br label %103

103:                                              ; preds = %97, %74
  %104 = load %struct.cpuset*, %struct.cpuset** %7, align 8
  %105 = icmp ne %struct.cpuset* %104, @top_cpuset
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = load %struct.cpuset*, %struct.cpuset** %7, align 8
  %108 = call i32 @update_tasks_cpumask(%struct.cpuset* %107)
  br label %109

109:                                              ; preds = %106, %103
  %110 = load %struct.cpuset*, %struct.cpuset** %7, align 8
  %111 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %109
  %115 = load %struct.cpuset*, %struct.cpuset** %7, align 8
  %116 = load %struct.cpuset*, %struct.cpuset** %4, align 8
  %117 = call i32 @update_sibling_cpumasks(%struct.cpuset* %115, %struct.cpuset* %116, %struct.tmpmasks* %8)
  br label %118

118:                                              ; preds = %114, %109
  %119 = call i32 (...) @rebuild_sched_domains_locked()
  br label %120

120:                                              ; preds = %118, %96, %84, %70, %63, %56
  %121 = call i32 @free_cpumasks(i32* null, %struct.tmpmasks* %8)
  %122 = load i32, i32* %6, align 4
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %120, %40, %34, %25, %16
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local %struct.cpuset* @parent_cs(%struct.cpuset*) #1

declare dso_local i64 @alloc_cpumasks(i32*, %struct.tmpmasks*) #1

declare dso_local i64 @cpumask_empty(i32) #1

declare dso_local i32 @update_flag(i32, %struct.cpuset*, i32) #1

declare dso_local i32 @update_parent_subparts_cpumask(%struct.cpuset*, i32, i32*, %struct.tmpmasks*) #1

declare dso_local i32 @update_tasks_cpumask(%struct.cpuset*) #1

declare dso_local i32 @update_sibling_cpumasks(%struct.cpuset*, %struct.cpuset*, %struct.tmpmasks*) #1

declare dso_local i32 @rebuild_sched_domains_locked(...) #1

declare dso_local i32 @free_cpumasks(i32*, %struct.tmpmasks*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
