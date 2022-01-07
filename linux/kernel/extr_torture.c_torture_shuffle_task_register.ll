; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_torture.c_torture_shuffle_task_register.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_torture.c_torture_shuffle_task_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.shuffle_task = type { i32, %struct.task_struct* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@shuffle_task_mutex = common dso_local global i32 0, align 4
@shuffle_task_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @torture_shuffle_task_register(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca %struct.shuffle_task*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %4 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %5 = icmp eq %struct.task_struct* %4, null
  %6 = zext i1 %5 to i32
  %7 = call i64 @WARN_ON_ONCE(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %28

10:                                               ; preds = %1
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.shuffle_task* @kmalloc(i32 16, i32 %11)
  store %struct.shuffle_task* %12, %struct.shuffle_task** %3, align 8
  %13 = load %struct.shuffle_task*, %struct.shuffle_task** %3, align 8
  %14 = icmp eq %struct.shuffle_task* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i64 @WARN_ON_ONCE(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  br label %28

19:                                               ; preds = %10
  %20 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %21 = load %struct.shuffle_task*, %struct.shuffle_task** %3, align 8
  %22 = getelementptr inbounds %struct.shuffle_task, %struct.shuffle_task* %21, i32 0, i32 1
  store %struct.task_struct* %20, %struct.task_struct** %22, align 8
  %23 = call i32 @mutex_lock(i32* @shuffle_task_mutex)
  %24 = load %struct.shuffle_task*, %struct.shuffle_task** %3, align 8
  %25 = getelementptr inbounds %struct.shuffle_task, %struct.shuffle_task* %24, i32 0, i32 0
  %26 = call i32 @list_add(i32* %25, i32* @shuffle_task_list)
  %27 = call i32 @mutex_unlock(i32* @shuffle_task_mutex)
  br label %28

28:                                               ; preds = %19, %18, %9
  ret void
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local %struct.shuffle_task* @kmalloc(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
