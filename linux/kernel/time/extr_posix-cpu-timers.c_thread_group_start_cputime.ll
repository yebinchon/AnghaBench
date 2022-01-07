; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_posix-cpu-timers.c_thread_group_start_cputime.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_posix-cpu-timers.c_thread_group_start_cputime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.posix_cputimers, %struct.thread_group_cputimer }
%struct.posix_cputimers = type { i32 }
%struct.thread_group_cputimer = type { i32 }
%struct.task_cputime = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*, i32*)* @thread_group_start_cputime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @thread_group_start_cputime(%struct.task_struct* %0, i32* %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.thread_group_cputimer*, align 8
  %6 = alloca %struct.posix_cputimers*, align 8
  %7 = alloca %struct.task_cputime, align 4
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %9 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  store %struct.thread_group_cputimer* %11, %struct.thread_group_cputimer** %5, align 8
  %12 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %13 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.posix_cputimers* %15, %struct.posix_cputimers** %6, align 8
  %16 = load %struct.posix_cputimers*, %struct.posix_cputimers** %6, align 8
  %17 = getelementptr inbounds %struct.posix_cputimers, %struct.posix_cputimers* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @READ_ONCE(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %2
  %22 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %23 = call i32 @thread_group_cputime(%struct.task_struct* %22, %struct.task_cputime* %7)
  %24 = load %struct.thread_group_cputimer*, %struct.thread_group_cputimer** %5, align 8
  %25 = getelementptr inbounds %struct.thread_group_cputimer, %struct.thread_group_cputimer* %24, i32 0, i32 0
  %26 = call i32 @update_gt_cputime(i32* %25, %struct.task_cputime* %7)
  %27 = load %struct.posix_cputimers*, %struct.posix_cputimers** %6, align 8
  %28 = getelementptr inbounds %struct.posix_cputimers, %struct.posix_cputimers* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @WRITE_ONCE(i32 %29, i32 1)
  br label %31

31:                                               ; preds = %21, %2
  %32 = load %struct.thread_group_cputimer*, %struct.thread_group_cputimer** %5, align 8
  %33 = getelementptr inbounds %struct.thread_group_cputimer, %struct.thread_group_cputimer* %32, i32 0, i32 0
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @proc_sample_cputime_atomic(i32* %33, i32* %34)
  ret void
}

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @thread_group_cputime(%struct.task_struct*, %struct.task_cputime*) #1

declare dso_local i32 @update_gt_cputime(i32*, %struct.task_cputime*) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @proc_sample_cputime_atomic(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
