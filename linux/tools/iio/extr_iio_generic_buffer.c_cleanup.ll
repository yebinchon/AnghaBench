; ModuleID = '/home/carl/AnghaBench/linux/tools/iio/extr_iio_generic_buffer.c_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/tools/iio/extr_iio_generic_buffer.c_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dev_dir_name = common dso_local global i64 0, align 8
@current_trigger_set = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"trigger/current_trigger\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to disable trigger: %s\0A\00", align 1
@buf_dir_name = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Failed to disable buffer: %s\0A\00", align 1
@autochannels = common dso_local global i64 0, align 8
@AUTOCHANNELS_ACTIVE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [32 x i8] c"Failed to disable all channels\0A\00", align 1
@AUTOCHANNELS_DISABLED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cleanup() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @dev_dir_name, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %19

4:                                                ; preds = %0
  %5 = load i32, i32* @current_trigger_set, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %19

7:                                                ; preds = %4
  %8 = load i64, i64* @dev_dir_name, align 8
  %9 = call i32 @write_sysfs_string(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* %1, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %7
  %13 = load i32, i32* @stderr, align 4
  %14 = load i32, i32* %1, align 4
  %15 = sub nsw i32 0, %14
  %16 = call i8* @strerror(i32 %15)
  %17 = call i32 (i32, i8*, ...) @fprintf(i32 %13, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %16)
  br label %18

18:                                               ; preds = %12, %7
  store i32 0, i32* @current_trigger_set, align 4
  br label %19

19:                                               ; preds = %18, %4, %0
  %20 = load i64, i64* @buf_dir_name, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %19
  %23 = load i64, i64* @buf_dir_name, align 8
  %24 = call i32 @write_sysfs_int(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i64 %23, i32 0)
  store i32 %24, i32* %1, align 4
  %25 = load i32, i32* %1, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load i32, i32* @stderr, align 4
  %29 = load i32, i32* %1, align 4
  %30 = sub nsw i32 0, %29
  %31 = call i8* @strerror(i32 %30)
  %32 = call i32 (i32, i8*, ...) @fprintf(i32 %28, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8* %31)
  br label %33

33:                                               ; preds = %27, %22
  br label %34

34:                                               ; preds = %33, %19
  %35 = load i64, i64* @dev_dir_name, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %34
  %38 = load i64, i64* @autochannels, align 8
  %39 = load i64, i64* @AUTOCHANNELS_ACTIVE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %37
  %42 = load i64, i64* @dev_dir_name, align 8
  %43 = call i32 @enable_disable_all_channels(i64 %42, i32 0)
  store i32 %43, i32* %1, align 4
  %44 = load i32, i32* %1, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* @stderr, align 4
  %48 = call i32 (i32, i8*, ...) @fprintf(i32 %47, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  br label %49

49:                                               ; preds = %46, %41
  %50 = load i64, i64* @AUTOCHANNELS_DISABLED, align 8
  store i64 %50, i64* @autochannels, align 8
  br label %51

51:                                               ; preds = %49, %37, %34
  ret void
}

declare dso_local i32 @write_sysfs_string(i8*, i64, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @write_sysfs_int(i8*, i64, i32) #1

declare dso_local i32 @enable_disable_all_channels(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
