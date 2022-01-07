; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_fd.c_tid_fd_mode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_fd.c_tid_fd_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.files_struct = type { i32 }
%struct.file = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, i32, i32*)* @tid_fd_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tid_fd_mode(%struct.task_struct* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.files_struct*, align 8
  %9 = alloca %struct.file*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %11 = call %struct.files_struct* @get_files_struct(%struct.task_struct* %10)
  store %struct.files_struct* %11, %struct.files_struct** %8, align 8
  %12 = load %struct.files_struct*, %struct.files_struct** %8, align 8
  %13 = icmp ne %struct.files_struct* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %36

15:                                               ; preds = %3
  %16 = call i32 (...) @rcu_read_lock()
  %17 = load %struct.files_struct*, %struct.files_struct** %8, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call %struct.file* @fcheck_files(%struct.files_struct* %17, i32 %18)
  store %struct.file* %19, %struct.file** %9, align 8
  %20 = load %struct.file*, %struct.file** %9, align 8
  %21 = icmp ne %struct.file* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %15
  %23 = load %struct.file*, %struct.file** %9, align 8
  %24 = getelementptr inbounds %struct.file, %struct.file* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %7, align 8
  store i32 %25, i32* %26, align 4
  br label %27

27:                                               ; preds = %22, %15
  %28 = call i32 (...) @rcu_read_unlock()
  %29 = load %struct.files_struct*, %struct.files_struct** %8, align 8
  %30 = call i32 @put_files_struct(%struct.files_struct* %29)
  %31 = load %struct.file*, %struct.file** %9, align 8
  %32 = icmp ne %struct.file* %31, null
  %33 = xor i1 %32, true
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %27, %14
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local %struct.files_struct* @get_files_struct(%struct.task_struct*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.file* @fcheck_files(%struct.files_struct*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @put_files_struct(%struct.files_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
