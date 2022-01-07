; ModuleID = '/home/carl/AnghaBench/linux/scripts/kconfig/extr_confdata.c_conf_write_dep.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/kconfig/extr_confdata.c_conf_write_dep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i8*, %struct.file* }

@.str = private unnamed_addr constant [13 x i8] c"..config.tmp\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"deps_config := \\\0A\00", align 1
@file_list = common dso_local global %struct.file* null, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"\09%s \\\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"\09%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"\0A%s: \\\0A\09$(deps_config)\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"\0A$(deps_config): ;\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @conf_write_dep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @conf_write_dep(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  %6 = call i32* @fopen(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %6, i32** %5, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %57

10:                                               ; preds = %1
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 (i32*, i8*, ...) @fprintf(i32* %11, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %13 = load %struct.file*, %struct.file** @file_list, align 8
  store %struct.file* %13, %struct.file** %4, align 8
  br label %14

14:                                               ; preds = %35, %10
  %15 = load %struct.file*, %struct.file** %4, align 8
  %16 = icmp ne %struct.file* %15, null
  br i1 %16, label %17, label %39

17:                                               ; preds = %14
  %18 = load %struct.file*, %struct.file** %4, align 8
  %19 = getelementptr inbounds %struct.file, %struct.file* %18, i32 0, i32 1
  %20 = load %struct.file*, %struct.file** %19, align 8
  %21 = icmp ne %struct.file* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load i32*, i32** %5, align 8
  %24 = load %struct.file*, %struct.file** %4, align 8
  %25 = getelementptr inbounds %struct.file, %struct.file* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 (i32*, i8*, ...) @fprintf(i32* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %26)
  br label %34

28:                                               ; preds = %17
  %29 = load i32*, i32** %5, align 8
  %30 = load %struct.file*, %struct.file** %4, align 8
  %31 = getelementptr inbounds %struct.file, %struct.file* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 (i32*, i8*, ...) @fprintf(i32* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %32)
  br label %34

34:                                               ; preds = %28, %22
  br label %35

35:                                               ; preds = %34
  %36 = load %struct.file*, %struct.file** %4, align 8
  %37 = getelementptr inbounds %struct.file, %struct.file* %36, i32 0, i32 1
  %38 = load %struct.file*, %struct.file** %37, align 8
  store %struct.file* %38, %struct.file** %4, align 8
  br label %14

39:                                               ; preds = %14
  %40 = load i32*, i32** %5, align 8
  %41 = call i8* (...) @conf_get_autoconfig_name()
  %42 = call i32 (i32*, i8*, ...) @fprintf(i32* %40, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* %41)
  %43 = load i32*, i32** %5, align 8
  %44 = call i8* (...) @conf_get_autoconfig_name()
  %45 = call i32 @env_write_dep(i32* %43, i8* %44)
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 (i32*, i8*, ...) @fprintf(i32* %46, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @fclose(i32* %48)
  %50 = load i8*, i8** %3, align 8
  %51 = call i64 @make_parent_dir(i8* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %39
  store i32 1, i32* %2, align 4
  br label %57

54:                                               ; preds = %39
  %55 = load i8*, i8** %3, align 8
  %56 = call i32 @rename(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %55)
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %54, %53, %9
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i8* @conf_get_autoconfig_name(...) #1

declare dso_local i32 @env_write_dep(i32*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @make_parent_dir(i8*) #1

declare dso_local i32 @rename(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
