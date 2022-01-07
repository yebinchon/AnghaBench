; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_fd.c_proc_readfd_common.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_fd.c_proc_readfd_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.dir_context = type { i32 }
%struct.task_struct = type { i32 }
%struct.files_struct = type { i32 }
%struct.fd_data = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.dir_context*, i32)* @proc_readfd_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_readfd_common(%struct.file* %0, %struct.dir_context* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.dir_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.task_struct*, align 8
  %9 = alloca %struct.files_struct*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.file*, align 8
  %12 = alloca %struct.fd_data, align 4
  %13 = alloca [11 x i8], align 1
  %14 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.dir_context* %1, %struct.dir_context** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.file*, %struct.file** %5, align 8
  %16 = call i32 @file_inode(%struct.file* %15)
  %17 = call %struct.task_struct* @get_proc_task(i32 %16)
  store %struct.task_struct* %17, %struct.task_struct** %8, align 8
  %18 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %19 = icmp ne %struct.task_struct* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @ENOENT, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %93

23:                                               ; preds = %3
  %24 = load %struct.file*, %struct.file** %5, align 8
  %25 = load %struct.dir_context*, %struct.dir_context** %6, align 8
  %26 = call i32 @dir_emit_dots(%struct.file* %24, %struct.dir_context* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  br label %90

29:                                               ; preds = %23
  %30 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %31 = call %struct.files_struct* @get_files_struct(%struct.task_struct* %30)
  store %struct.files_struct* %31, %struct.files_struct** %9, align 8
  %32 = load %struct.files_struct*, %struct.files_struct** %9, align 8
  %33 = icmp ne %struct.files_struct* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  br label %90

35:                                               ; preds = %29
  %36 = call i32 (...) @rcu_read_lock()
  %37 = load %struct.dir_context*, %struct.dir_context** %6, align 8
  %38 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %39, 2
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %78, %35
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.files_struct*, %struct.files_struct** %9, align 8
  %44 = call %struct.TYPE_2__* @files_fdtable(%struct.files_struct* %43)
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ult i32 %42, %46
  br i1 %47, label %48, label %85

48:                                               ; preds = %41
  %49 = load %struct.files_struct*, %struct.files_struct** %9, align 8
  %50 = load i32, i32* %10, align 4
  %51 = call %struct.file* @fcheck_files(%struct.files_struct* %49, i32 %50)
  store %struct.file* %51, %struct.file** %11, align 8
  %52 = load %struct.file*, %struct.file** %11, align 8
  %53 = icmp ne %struct.file* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %48
  br label %78

55:                                               ; preds = %48
  %56 = load %struct.file*, %struct.file** %11, align 8
  %57 = getelementptr inbounds %struct.file, %struct.file* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %12, i32 0, i32 1
  store i32 %58, i32* %59, align 4
  %60 = call i32 (...) @rcu_read_unlock()
  %61 = load i32, i32* %10, align 4
  %62 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %12, i32 0, i32 0
  store i32 %61, i32* %62, align 4
  %63 = getelementptr inbounds [11 x i8], [11 x i8]* %13, i64 0, i64 0
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @snprintf(i8* %63, i32 11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %64)
  store i32 %65, i32* %14, align 4
  %66 = load %struct.file*, %struct.file** %5, align 8
  %67 = load %struct.dir_context*, %struct.dir_context** %6, align 8
  %68 = getelementptr inbounds [11 x i8], [11 x i8]* %13, i64 0, i64 0
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %72 = call i32 @proc_fill_cache(%struct.file* %66, %struct.dir_context* %67, i8* %68, i32 %69, i32 %70, %struct.task_struct* %71, %struct.fd_data* %12)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %55
  br label %87

75:                                               ; preds = %55
  %76 = call i32 (...) @cond_resched()
  %77 = call i32 (...) @rcu_read_lock()
  br label %78

78:                                               ; preds = %75, %54
  %79 = load i32, i32* %10, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %10, align 4
  %81 = load %struct.dir_context*, %struct.dir_context** %6, align 8
  %82 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 4
  br label %41

85:                                               ; preds = %41
  %86 = call i32 (...) @rcu_read_unlock()
  br label %87

87:                                               ; preds = %85, %74
  %88 = load %struct.files_struct*, %struct.files_struct** %9, align 8
  %89 = call i32 @put_files_struct(%struct.files_struct* %88)
  br label %90

90:                                               ; preds = %87, %34, %28
  %91 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %92 = call i32 @put_task_struct(%struct.task_struct* %91)
  store i32 0, i32* %4, align 4
  br label %93

93:                                               ; preds = %90, %20
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local %struct.task_struct* @get_proc_task(i32) #1

declare dso_local i32 @file_inode(%struct.file*) #1

declare dso_local i32 @dir_emit_dots(%struct.file*, %struct.dir_context*) #1

declare dso_local %struct.files_struct* @get_files_struct(%struct.task_struct*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.TYPE_2__* @files_fdtable(%struct.files_struct*) #1

declare dso_local %struct.file* @fcheck_files(%struct.files_struct*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @proc_fill_cache(%struct.file*, %struct.dir_context*, i8*, i32, i32, %struct.task_struct*, %struct.fd_data*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @put_files_struct(%struct.files_struct*) #1

declare dso_local i32 @put_task_struct(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
