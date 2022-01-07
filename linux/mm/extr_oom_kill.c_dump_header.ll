; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_oom_kill.c_dump_header.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_oom_kill.c_dump_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.oom_control = type { i32, i32, i64, i32 }
%struct.task_struct = type { i32 }

@.str = private unnamed_addr constant [72 x i8] c"%s invoked oom-killer: gfp_mask=%#x(%pGg), order=%d, oom_score_adj=%hd\0A\00", align 1
@current = common dso_local global %struct.TYPE_4__* null, align 8
@CONFIG_COMPACTION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"COMPACTION is disabled!!!\0A\00", align 1
@SHOW_MEM_FILTER_NODES = common dso_local global i32 0, align 4
@sysctl_oom_dump_tasks = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oom_control*, %struct.task_struct*)* @dump_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_header(%struct.oom_control* %0, %struct.task_struct* %1) #0 {
  %3 = alloca %struct.oom_control*, align 8
  %4 = alloca %struct.task_struct*, align 8
  store %struct.oom_control* %0, %struct.oom_control** %3, align 8
  store %struct.task_struct* %1, %struct.task_struct** %4, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.oom_control*, %struct.oom_control** %3, align 8
  %9 = getelementptr inbounds %struct.oom_control, %struct.oom_control* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.oom_control*, %struct.oom_control** %3, align 8
  %12 = getelementptr inbounds %struct.oom_control, %struct.oom_control* %11, i32 0, i32 3
  %13 = load %struct.oom_control*, %struct.oom_control** %3, align 8
  %14 = getelementptr inbounds %struct.oom_control, %struct.oom_control* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %10, i32* %12, i64 %15, i32 %20)
  %22 = load i32, i32* @CONFIG_COMPACTION, align 4
  %23 = call i32 @IS_ENABLED(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %2
  %26 = load %struct.oom_control*, %struct.oom_control** %3, align 8
  %27 = getelementptr inbounds %struct.oom_control, %struct.oom_control* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %25, %2
  %33 = call i32 (...) @dump_stack()
  %34 = load %struct.oom_control*, %struct.oom_control** %3, align 8
  %35 = call i64 @is_memcg_oom(%struct.oom_control* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.oom_control*, %struct.oom_control** %3, align 8
  %39 = getelementptr inbounds %struct.oom_control, %struct.oom_control* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @mem_cgroup_print_oom_meminfo(i32 %40)
  br label %53

42:                                               ; preds = %32
  %43 = load i32, i32* @SHOW_MEM_FILTER_NODES, align 4
  %44 = load %struct.oom_control*, %struct.oom_control** %3, align 8
  %45 = getelementptr inbounds %struct.oom_control, %struct.oom_control* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @show_mem(i32 %43, i32 %46)
  %48 = call i64 (...) @is_dump_unreclaim_slabs()
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = call i32 (...) @dump_unreclaimable_slab()
  br label %52

52:                                               ; preds = %50, %42
  br label %53

53:                                               ; preds = %52, %37
  %54 = load i64, i64* @sysctl_oom_dump_tasks, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load %struct.oom_control*, %struct.oom_control** %3, align 8
  %58 = call i32 @dump_tasks(%struct.oom_control* %57)
  br label %59

59:                                               ; preds = %56, %53
  %60 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %61 = icmp ne %struct.task_struct* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load %struct.oom_control*, %struct.oom_control** %3, align 8
  %64 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %65 = call i32 @dump_oom_summary(%struct.oom_control* %63, %struct.task_struct* %64)
  br label %66

66:                                               ; preds = %62, %59
  ret void
}

declare dso_local i32 @pr_warn(i8*, ...) #1

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @dump_stack(...) #1

declare dso_local i64 @is_memcg_oom(%struct.oom_control*) #1

declare dso_local i32 @mem_cgroup_print_oom_meminfo(i32) #1

declare dso_local i32 @show_mem(i32, i32) #1

declare dso_local i64 @is_dump_unreclaim_slabs(...) #1

declare dso_local i32 @dump_unreclaimable_slab(...) #1

declare dso_local i32 @dump_tasks(%struct.oom_control*) #1

declare dso_local i32 @dump_oom_summary(%struct.oom_control*, %struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
