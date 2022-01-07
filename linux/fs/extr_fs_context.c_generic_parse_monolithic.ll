; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_fs_context.c_generic_parse_monolithic.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_fs_context.c_generic_parse_monolithic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_context = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c",\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @generic_parse_monolithic(%struct.fs_context* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fs_context*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store %struct.fs_context* %0, %struct.fs_context** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  store i8* %11, i8** %6, align 8
  store i32 0, i32* %8, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %60

15:                                               ; preds = %2
  %16 = load i8*, i8** %6, align 8
  %17 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %18 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %17, i32 0, i32 0
  %19 = call i32 @security_sb_eat_lsm_opts(i8* %16, i32* %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %3, align 4
  br label %60

24:                                               ; preds = %15
  br label %25

25:                                               ; preds = %57, %41, %24
  %26 = call i8* @strsep(i8** %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %26, i8** %7, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %58

28:                                               ; preds = %25
  %29 = load i8*, i8** %7, align 8
  %30 = load i8, i8* %29, align 1
  %31 = icmp ne i8 %30, 0
  br i1 %31, label %32, label %57

32:                                               ; preds = %28
  store i64 0, i64* %9, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = call i8* @strchr(i8* %33, i8 signext 61)
  store i8* %34, i8** %10, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %47

37:                                               ; preds = %32
  %38 = load i8*, i8** %10, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = icmp eq i8* %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %25

42:                                               ; preds = %37
  %43 = load i8*, i8** %10, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %10, align 8
  store i8 0, i8* %43, align 1
  %45 = load i8*, i8** %10, align 8
  %46 = call i64 @strlen(i8* %45)
  store i64 %46, i64* %9, align 8
  br label %47

47:                                               ; preds = %42, %32
  %48 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = load i64, i64* %9, align 8
  %52 = call i32 @vfs_parse_fs_string(%struct.fs_context* %48, i8* %49, i8* %50, i64 %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  br label %58

56:                                               ; preds = %47
  br label %57

57:                                               ; preds = %56, %28
  br label %25

58:                                               ; preds = %55, %25
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %58, %22, %14
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @security_sb_eat_lsm_opts(i8*, i32*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @vfs_parse_fs_string(%struct.fs_context*, i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
