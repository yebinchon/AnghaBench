; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_fork.c_copy_files.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_fork.c_copy_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.files_struct* }
%struct.files_struct = type { i32 }
%struct.task_struct = type { %struct.files_struct* }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@CLONE_FILES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.task_struct*)* @copy_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_files(i64 %0, %struct.task_struct* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca %struct.files_struct*, align 8
  %6 = alloca %struct.files_struct*, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store %struct.task_struct* %1, %struct.task_struct** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.files_struct*, %struct.files_struct** %9, align 8
  store %struct.files_struct* %10, %struct.files_struct** %5, align 8
  %11 = load %struct.files_struct*, %struct.files_struct** %5, align 8
  %12 = icmp ne %struct.files_struct* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %33

14:                                               ; preds = %2
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @CLONE_FILES, align 8
  %17 = and i64 %15, %16
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load %struct.files_struct*, %struct.files_struct** %5, align 8
  %21 = getelementptr inbounds %struct.files_struct, %struct.files_struct* %20, i32 0, i32 0
  %22 = call i32 @atomic_inc(i32* %21)
  br label %33

23:                                               ; preds = %14
  %24 = load %struct.files_struct*, %struct.files_struct** %5, align 8
  %25 = call %struct.files_struct* @dup_fd(%struct.files_struct* %24, i32* %7)
  store %struct.files_struct* %25, %struct.files_struct** %6, align 8
  %26 = load %struct.files_struct*, %struct.files_struct** %6, align 8
  %27 = icmp ne %struct.files_struct* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  br label %33

29:                                               ; preds = %23
  %30 = load %struct.files_struct*, %struct.files_struct** %6, align 8
  %31 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %32 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %31, i32 0, i32 0
  store %struct.files_struct* %30, %struct.files_struct** %32, align 8
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %29, %28, %19, %13
  %34 = load i32, i32* %7, align 4
  ret i32 %34
}

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local %struct.files_struct* @dup_fd(%struct.files_struct*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
