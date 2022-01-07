; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-help.c_perf_help_config.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-help.c_perf_help_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"help.format\00", align 1
@HELP_FORMAT_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"man.viewer\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"man.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @perf_help_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_help_config(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = bitcast i8* %9 to i32*
  store i32* %10, i32** %8, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %30, label %14

14:                                               ; preds = %3
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @config_error_nonbool(i8* %18)
  store i32 %19, i32* %4, align 4
  br label %52

20:                                               ; preds = %14
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @parse_help_format(i8* %21)
  %23 = load i32*, i32** %8, align 8
  store i32 %22, i32* %23, align 4
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @HELP_FORMAT_NONE, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i32 -1, i32* %4, align 4
  br label %52

29:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %52

30:                                               ; preds = %3
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @strcmp(i8* %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %30
  %35 = load i8*, i8** %6, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 @config_error_nonbool(i8* %38)
  store i32 %39, i32* %4, align 4
  br label %52

40:                                               ; preds = %34
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @add_man_viewer(i8* %41)
  store i32 0, i32* %4, align 4
  br label %52

43:                                               ; preds = %30
  %44 = load i8*, i8** %5, align 8
  %45 = call i64 @strstarts(i8* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load i8*, i8** %5, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 @add_man_viewer_info(i8* %48, i8* %49)
  store i32 %50, i32* %4, align 4
  br label %52

51:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %51, %47, %40, %37, %29, %28, %17
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @config_error_nonbool(i8*) #1

declare dso_local i32 @parse_help_format(i8*) #1

declare dso_local i32 @add_man_viewer(i8*) #1

declare dso_local i64 @strstarts(i8*, i8*) #1

declare dso_local i32 @add_man_viewer_info(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
