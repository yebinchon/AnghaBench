; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_umh.c_fork_usermode_blob.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_umh.c_fork_usermode_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.umh_info = type { i32 }
%struct.subprocess_info = type { i32 }
%struct.file = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ENOMEM = common dso_local global i32 0, align 4
@umh_pipe_setup = common dso_local global i32 0, align 4
@umh_clean_and_save_pid = common dso_local global i32 0, align 4
@UMH_WAIT_EXEC = common dso_local global i32 0, align 4
@umh_list_lock = common dso_local global i32 0, align 4
@umh_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fork_usermode_blob(i8* %0, i64 %1, %struct.umh_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.umh_info*, align 8
  %8 = alloca %struct.subprocess_info*, align 8
  %9 = alloca %struct.file*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.umh_info* %2, %struct.umh_info** %7, align 8
  store i32 0, i32* %11, align 4
  %13 = load i64, i64* %6, align 8
  %14 = call %struct.file* @shmem_kernel_file_setup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i64 %13, i32 0)
  store %struct.file* %14, %struct.file** %9, align 8
  %15 = load %struct.file*, %struct.file** %9, align 8
  %16 = call i64 @IS_ERR(%struct.file* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load %struct.file*, %struct.file** %9, align 8
  %20 = call i32 @PTR_ERR(%struct.file* %19)
  store i32 %20, i32* %4, align 4
  br label %66

21:                                               ; preds = %3
  %22 = load %struct.file*, %struct.file** %9, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = load i64, i64* %6, align 8
  %25 = call i64 @kernel_write(%struct.file* %22, i8* %23, i64 %24, i32* %11)
  store i64 %25, i64* %10, align 8
  %26 = load i64, i64* %10, align 8
  %27 = load i64, i64* %6, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %21
  %30 = load i64, i64* %10, align 8
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp sge i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %12, align 4
  br label %37

37:                                               ; preds = %34, %29
  br label %62

38:                                               ; preds = %21
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %12, align 4
  %41 = load %struct.file*, %struct.file** %9, align 8
  %42 = load i32, i32* @umh_pipe_setup, align 4
  %43 = load i32, i32* @umh_clean_and_save_pid, align 4
  %44 = load %struct.umh_info*, %struct.umh_info** %7, align 8
  %45 = call %struct.subprocess_info* @call_usermodehelper_setup_file(%struct.file* %41, i32 %42, i32 %43, %struct.umh_info* %44)
  store %struct.subprocess_info* %45, %struct.subprocess_info** %8, align 8
  %46 = load %struct.subprocess_info*, %struct.subprocess_info** %8, align 8
  %47 = icmp ne %struct.subprocess_info* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %38
  br label %62

49:                                               ; preds = %38
  %50 = load %struct.subprocess_info*, %struct.subprocess_info** %8, align 8
  %51 = load i32, i32* @UMH_WAIT_EXEC, align 4
  %52 = call i32 @call_usermodehelper_exec(%struct.subprocess_info* %50, i32 %51)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %49
  %56 = call i32 @mutex_lock(i32* @umh_list_lock)
  %57 = load %struct.umh_info*, %struct.umh_info** %7, align 8
  %58 = getelementptr inbounds %struct.umh_info, %struct.umh_info* %57, i32 0, i32 0
  %59 = call i32 @list_add(i32* %58, i32* @umh_list)
  %60 = call i32 @mutex_unlock(i32* @umh_list_lock)
  br label %61

61:                                               ; preds = %55, %49
  br label %62

62:                                               ; preds = %61, %48, %37
  %63 = load %struct.file*, %struct.file** %9, align 8
  %64 = call i32 @fput(%struct.file* %63)
  %65 = load i32, i32* %12, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %62, %18
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local %struct.file* @shmem_kernel_file_setup(i8*, i64, i32) #1

declare dso_local i64 @IS_ERR(%struct.file*) #1

declare dso_local i32 @PTR_ERR(%struct.file*) #1

declare dso_local i64 @kernel_write(%struct.file*, i8*, i64, i32*) #1

declare dso_local %struct.subprocess_info* @call_usermodehelper_setup_file(%struct.file*, i32, i32, %struct.umh_info*) #1

declare dso_local i32 @call_usermodehelper_exec(%struct.subprocess_info*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @fput(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
