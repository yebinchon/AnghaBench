; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_base.c_proc_mem_open.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_base.c_proc_mem_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.inode = type { i32 }
%struct.task_struct = type { i32 }

@ESRCH = common dso_local global i32 0, align 4
@PTRACE_MODE_FSCREDS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mm_struct* @proc_mem_open(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca %struct.mm_struct*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.inode*, %struct.inode** %3, align 8
  %8 = call %struct.task_struct* @get_proc_task(%struct.inode* %7)
  store %struct.task_struct* %8, %struct.task_struct** %5, align 8
  %9 = load i32, i32* @ESRCH, align 4
  %10 = sub nsw i32 0, %9
  %11 = call %struct.mm_struct* @ERR_PTR(i32 %10)
  store %struct.mm_struct* %11, %struct.mm_struct** %6, align 8
  %12 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %13 = icmp ne %struct.task_struct* %12, null
  br i1 %13, label %14, label %31

14:                                               ; preds = %2
  %15 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @PTRACE_MODE_FSCREDS, align 4
  %18 = or i32 %16, %17
  %19 = call %struct.mm_struct* @mm_access(%struct.task_struct* %15, i32 %18)
  store %struct.mm_struct* %19, %struct.mm_struct** %6, align 8
  %20 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %21 = call i32 @put_task_struct(%struct.task_struct* %20)
  %22 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %23 = call i32 @IS_ERR_OR_NULL(%struct.mm_struct* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %14
  %26 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %27 = call i32 @mmgrab(%struct.mm_struct* %26)
  %28 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %29 = call i32 @mmput(%struct.mm_struct* %28)
  br label %30

30:                                               ; preds = %25, %14
  br label %31

31:                                               ; preds = %30, %2
  %32 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  ret %struct.mm_struct* %32
}

declare dso_local %struct.task_struct* @get_proc_task(%struct.inode*) #1

declare dso_local %struct.mm_struct* @ERR_PTR(i32) #1

declare dso_local %struct.mm_struct* @mm_access(%struct.task_struct*, i32) #1

declare dso_local i32 @put_task_struct(%struct.task_struct*) #1

declare dso_local i32 @IS_ERR_OR_NULL(%struct.mm_struct*) #1

declare dso_local i32 @mmgrab(%struct.mm_struct*) #1

declare dso_local i32 @mmput(%struct.mm_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
