; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_base.c_proc_task_readdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_base.c_proc_task_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i64 }
%struct.dir_context = type { i64 }
%struct.inode = type { i32 }
%struct.task_struct = type { i32 }
%struct.pid_namespace = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@proc_task_instantiate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.dir_context*)* @proc_task_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_task_readdir(%struct.file* %0, %struct.dir_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.dir_context*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.task_struct*, align 8
  %8 = alloca %struct.pid_namespace*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [11 x i8], align 1
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.dir_context* %1, %struct.dir_context** %5, align 8
  %12 = load %struct.file*, %struct.file** %4, align 8
  %13 = call %struct.inode* @file_inode(%struct.file* %12)
  store %struct.inode* %13, %struct.inode** %6, align 8
  %14 = load %struct.inode*, %struct.inode** %6, align 8
  %15 = call i64 @proc_inode_is_dead(%struct.inode* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOENT, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %78

20:                                               ; preds = %2
  %21 = load %struct.file*, %struct.file** %4, align 8
  %22 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %23 = call i32 @dir_emit_dots(%struct.file* %21, %struct.dir_context* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %78

26:                                               ; preds = %20
  %27 = load %struct.inode*, %struct.inode** %6, align 8
  %28 = call %struct.pid_namespace* @proc_pid_ns(%struct.inode* %27)
  store %struct.pid_namespace* %28, %struct.pid_namespace** %8, align 8
  %29 = load %struct.file*, %struct.file** %4, align 8
  %30 = getelementptr inbounds %struct.file, %struct.file* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %9, align 4
  %33 = load %struct.file*, %struct.file** %4, align 8
  %34 = getelementptr inbounds %struct.file, %struct.file* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  %35 = load %struct.inode*, %struct.inode** %6, align 8
  %36 = call i32 @proc_pid(%struct.inode* %35)
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %39 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = sub nsw i64 %40, 2
  %42 = load %struct.pid_namespace*, %struct.pid_namespace** %8, align 8
  %43 = call %struct.task_struct* @first_tid(i32 %36, i32 %37, i64 %41, %struct.pid_namespace* %42)
  store %struct.task_struct* %43, %struct.task_struct** %7, align 8
  br label %44

44:                                               ; preds = %70, %26
  %45 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %46 = icmp ne %struct.task_struct* %45, null
  br i1 %46, label %47, label %77

47:                                               ; preds = %44
  %48 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %49 = load %struct.pid_namespace*, %struct.pid_namespace** %8, align 8
  %50 = call i32 @task_pid_nr_ns(%struct.task_struct* %48, %struct.pid_namespace* %49)
  store i32 %50, i32* %9, align 4
  %51 = getelementptr inbounds [11 x i8], [11 x i8]* %10, i64 0, i64 0
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @snprintf(i8* %51, i32 11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %52)
  store i32 %53, i32* %11, align 4
  %54 = load %struct.file*, %struct.file** %4, align 8
  %55 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %56 = getelementptr inbounds [11 x i8], [11 x i8]* %10, i64 0, i64 0
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @proc_task_instantiate, align 4
  %59 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %60 = call i32 @proc_fill_cache(%struct.file* %54, %struct.dir_context* %55, i8* %56, i32 %57, i32 %58, %struct.task_struct* %59, i32* null)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %47
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = load %struct.file*, %struct.file** %4, align 8
  %66 = getelementptr inbounds %struct.file, %struct.file* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  %67 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %68 = call i32 @put_task_struct(%struct.task_struct* %67)
  br label %77

69:                                               ; preds = %47
  br label %70

70:                                               ; preds = %69
  %71 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %72 = call %struct.task_struct* @next_tid(%struct.task_struct* %71)
  store %struct.task_struct* %72, %struct.task_struct** %7, align 8
  %73 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %74 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %75, 1
  store i64 %76, i64* %74, align 8
  br label %44

77:                                               ; preds = %62, %44
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %77, %25, %17
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i64 @proc_inode_is_dead(%struct.inode*) #1

declare dso_local i32 @dir_emit_dots(%struct.file*, %struct.dir_context*) #1

declare dso_local %struct.pid_namespace* @proc_pid_ns(%struct.inode*) #1

declare dso_local %struct.task_struct* @first_tid(i32, i32, i64, %struct.pid_namespace*) #1

declare dso_local i32 @proc_pid(%struct.inode*) #1

declare dso_local i32 @task_pid_nr_ns(%struct.task_struct*, %struct.pid_namespace*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @proc_fill_cache(%struct.file*, %struct.dir_context*, i8*, i32, i32, %struct.task_struct*, i32*) #1

declare dso_local i32 @put_task_struct(%struct.task_struct*) #1

declare dso_local %struct.task_struct* @next_tid(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
