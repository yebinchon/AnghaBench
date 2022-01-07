; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_fs_context.c_vfs_parse_fs_string.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_fs_context.c_vfs_parse_fs_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_context = type { i32 }
%struct.fs_parameter = type { i8*, i64, i32, i32 }

@fs_value_is_string = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfs_parse_fs_string(%struct.fs_context* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fs_context*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.fs_parameter, align 8
  store %struct.fs_context* %0, %struct.fs_context** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %11, i32 0, i32 0
  %13 = load i8*, i8** %7, align 8
  store i8* %13, i8** %12, align 8
  %14 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %11, i32 0, i32 1
  %15 = load i64, i64* %9, align 8
  store i64 %15, i64* %14, align 8
  %16 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %11, i32 0, i32 2
  store i32 0, i32* %16, align 8
  %17 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %11, i32 0, i32 3
  %18 = load i32, i32* @fs_value_is_string, align 4
  store i32 %18, i32* %17, align 4
  %19 = load i64, i64* %9, align 8
  %20 = icmp ugt i64 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %4
  %22 = load i8*, i8** %8, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i32 @kmemdup_nul(i8* %22, i64 %23, i32 %24)
  %26 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %11, i32 0, i32 2
  store i32 %25, i32* %26, align 8
  %27 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %11, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %21
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %41

33:                                               ; preds = %21
  br label %34

34:                                               ; preds = %33, %4
  %35 = load %struct.fs_context*, %struct.fs_context** %6, align 8
  %36 = call i32 @vfs_parse_fs_param(%struct.fs_context* %35, %struct.fs_parameter* %11)
  store i32 %36, i32* %10, align 4
  %37 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %11, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @kfree(i32 %38)
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %34, %30
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32 @kmemdup_nul(i8*, i64, i32) #1

declare dso_local i32 @vfs_parse_fs_param(%struct.fs_context*, %struct.fs_parameter*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
