; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_oom_kill.c_dump_task.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_oom_kill.c_dump_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, %struct.TYPE_5__*, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.oom_control = type { i32 }

@.str = private unnamed_addr constant [51 x i8] c"[%7d] %5d %5d %8lu %8lu %8ld %8lu         %5hd %s\0A\00", align 1
@init_user_ns = common dso_local global i32 0, align 4
@MM_SWAPENTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, i8*)* @dump_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_task(%struct.task_struct* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.oom_control*, align 8
  %7 = alloca %struct.task_struct*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.oom_control*
  store %struct.oom_control* %9, %struct.oom_control** %6, align 8
  %10 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %11 = call i64 @oom_unkillable_task(%struct.task_struct* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %69

14:                                               ; preds = %2
  %15 = load %struct.oom_control*, %struct.oom_control** %6, align 8
  %16 = call i32 @is_memcg_oom(%struct.oom_control* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %14
  %19 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %20 = load %struct.oom_control*, %struct.oom_control** %6, align 8
  %21 = call i32 @oom_cpuset_eligible(%struct.task_struct* %19, %struct.oom_control* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %69

24:                                               ; preds = %18, %14
  %25 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %26 = call %struct.task_struct* @find_lock_task_mm(%struct.task_struct* %25)
  store %struct.task_struct* %26, %struct.task_struct** %7, align 8
  %27 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %28 = icmp ne %struct.task_struct* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %69

30:                                               ; preds = %24
  %31 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %32 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %35 = call i32 @task_uid(%struct.task_struct* %34)
  %36 = call i32 @from_kuid(i32* @init_user_ns, i32 %35)
  %37 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %38 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %41 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %40, i32 0, i32 2
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %46 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %45, i32 0, i32 2
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = call i32 @get_mm_rss(%struct.TYPE_6__* %47)
  %49 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %50 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %49, i32 0, i32 2
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = call i32 @mm_pgtables_bytes(%struct.TYPE_6__* %51)
  %53 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %54 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %53, i32 0, i32 2
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = load i32, i32* @MM_SWAPENTS, align 4
  %57 = call i32 @get_mm_counter(%struct.TYPE_6__* %55, i32 %56)
  %58 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %59 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %58, i32 0, i32 1
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %64 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @pr_info(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %36, i32 %39, i32 %44, i32 %48, i32 %52, i32 %57, i32 %62, i32 %65)
  %67 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %68 = call i32 @task_unlock(%struct.task_struct* %67)
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %30, %29, %23, %13
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i64 @oom_unkillable_task(%struct.task_struct*) #1

declare dso_local i32 @is_memcg_oom(%struct.oom_control*) #1

declare dso_local i32 @oom_cpuset_eligible(%struct.task_struct*, %struct.oom_control*) #1

declare dso_local %struct.task_struct* @find_lock_task_mm(%struct.task_struct*) #1

declare dso_local i32 @pr_info(i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @from_kuid(i32*, i32) #1

declare dso_local i32 @task_uid(%struct.task_struct*) #1

declare dso_local i32 @get_mm_rss(%struct.TYPE_6__*) #1

declare dso_local i32 @mm_pgtables_bytes(%struct.TYPE_6__*) #1

declare dso_local i32 @get_mm_counter(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @task_unlock(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
