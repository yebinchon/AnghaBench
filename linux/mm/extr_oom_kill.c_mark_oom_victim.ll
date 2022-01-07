; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_oom_kill.c_mark_oom_victim.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_oom_kill.c_mark_oom_victim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, %struct.TYPE_2__*, %struct.mm_struct* }
%struct.TYPE_2__ = type { i32 }
%struct.mm_struct = type { i32 }

@oom_killer_disabled = common dso_local global i32 0, align 4
@TIF_MEMDIE = common dso_local global i32 0, align 4
@MMF_OOM_VICTIM = common dso_local global i32 0, align 4
@oom_victims = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*)* @mark_oom_victim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_oom_victim(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca %struct.mm_struct*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %4 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %5 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %4, i32 0, i32 2
  %6 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  store %struct.mm_struct* %6, %struct.mm_struct** %3, align 8
  %7 = load i32, i32* @oom_killer_disabled, align 4
  %8 = call i32 @WARN_ON(i32 %7)
  %9 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %10 = load i32, i32* @TIF_MEMDIE, align 4
  %11 = call i64 @test_and_set_tsk_thread_flag(%struct.task_struct* %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %41

14:                                               ; preds = %1
  %15 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %16 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %20 = call i32 @cmpxchg(i32* %18, i32* null, %struct.mm_struct* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %14
  %23 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %24 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @mmgrab(i32 %27)
  %29 = load i32, i32* @MMF_OOM_VICTIM, align 4
  %30 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %31 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %30, i32 0, i32 0
  %32 = call i32 @set_bit(i32 %29, i32* %31)
  br label %33

33:                                               ; preds = %22, %14
  %34 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %35 = call i32 @__thaw_task(%struct.task_struct* %34)
  %36 = call i32 @atomic_inc(i32* @oom_victims)
  %37 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %38 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @trace_mark_victim(i32 %39)
  br label %41

41:                                               ; preds = %33, %13
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @test_and_set_tsk_thread_flag(%struct.task_struct*, i32) #1

declare dso_local i32 @cmpxchg(i32*, i32*, %struct.mm_struct*) #1

declare dso_local i32 @mmgrab(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @__thaw_task(%struct.task_struct*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @trace_mark_victim(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
