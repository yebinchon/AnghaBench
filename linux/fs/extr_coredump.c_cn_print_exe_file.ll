; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_coredump.c_cn_print_exe_file.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_coredump.c_cn_print_exe_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32 }
%struct.core_name = type { i32 }
%struct.file = type { i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"%s (path unknown)\00", align 1
@PATH_MAX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.core_name*)* @cn_print_exe_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cn_print_exe_file(%struct.core_name* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.core_name*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.core_name* %0, %struct.core_name** %3, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.file* @get_mm_exe_file(i32 %10)
  store %struct.file* %11, %struct.file** %4, align 8
  %12 = load %struct.file*, %struct.file** %4, align 8
  %13 = icmp ne %struct.file* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load %struct.core_name*, %struct.core_name** %3, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @cn_esc_printf(%struct.core_name* %15, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %18)
  store i32 %19, i32* %2, align 4
  br label %51

20:                                               ; preds = %1
  %21 = load i32, i32* @PATH_MAX, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i8* @kmalloc(i32 %21, i32 %22)
  store i8* %23, i8** %5, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %7, align 4
  br label %47

29:                                               ; preds = %20
  %30 = load %struct.file*, %struct.file** %4, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = load i32, i32* @PATH_MAX, align 4
  %33 = call i8* @file_path(%struct.file* %30, i8* %31, i32 %32)
  store i8* %33, i8** %6, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = call i64 @IS_ERR(i8* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %29
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @PTR_ERR(i8* %38)
  store i32 %39, i32* %7, align 4
  br label %44

40:                                               ; preds = %29
  %41 = load %struct.core_name*, %struct.core_name** %3, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @cn_esc_printf(%struct.core_name* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %40, %37
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 @kfree(i8* %45)
  br label %47

47:                                               ; preds = %44, %26
  %48 = load %struct.file*, %struct.file** %4, align 8
  %49 = call i32 @fput(%struct.file* %48)
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %47, %14
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.file* @get_mm_exe_file(i32) #1

declare dso_local i32 @cn_esc_printf(%struct.core_name*, i8*, i8*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i8* @file_path(%struct.file*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @fput(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
