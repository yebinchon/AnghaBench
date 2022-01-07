; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_scripts.c_scripts_config.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_scripts.c_scripts_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.script_config = type { i64, i32, i32*, i32* }

@.str = private unnamed_addr constant [9 x i8] c"scripts.\00", align 1
@SCRIPT_MAX_NO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @scripts_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scripts_config(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.script_config*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = bitcast i8* %9 to %struct.script_config*
  store %struct.script_config* %10, %struct.script_config** %8, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @strstarts(i8* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %63

15:                                               ; preds = %3
  %16 = load %struct.script_config*, %struct.script_config** %8, align 8
  %17 = getelementptr inbounds %struct.script_config, %struct.script_config* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SCRIPT_MAX_NO, align 8
  %20 = icmp uge i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i32 -1, i32* %4, align 4
  br label %63

22:                                               ; preds = %15
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 7
  %25 = call i32 @strdup(i8* %24)
  %26 = load %struct.script_config*, %struct.script_config** %8, align 8
  %27 = getelementptr inbounds %struct.script_config, %struct.script_config* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.script_config*, %struct.script_config** %8, align 8
  %30 = getelementptr inbounds %struct.script_config, %struct.script_config* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  store i32 %25, i32* %32, align 4
  %33 = load %struct.script_config*, %struct.script_config** %8, align 8
  %34 = getelementptr inbounds %struct.script_config, %struct.script_config* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.script_config*, %struct.script_config** %8, align 8
  %37 = getelementptr inbounds %struct.script_config, %struct.script_config* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %22
  store i32 -1, i32* %4, align 4
  br label %63

43:                                               ; preds = %22
  %44 = load %struct.script_config*, %struct.script_config** %8, align 8
  %45 = getelementptr inbounds %struct.script_config, %struct.script_config* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.script_config*, %struct.script_config** %8, align 8
  %48 = getelementptr inbounds %struct.script_config, %struct.script_config* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = load i8*, i8** %6, align 8
  %52 = load %struct.script_config*, %struct.script_config** %8, align 8
  %53 = getelementptr inbounds %struct.script_config, %struct.script_config* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @asprintf(i32* %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %51, i32 %54)
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %43
  store i32 -1, i32* %4, align 4
  br label %63

58:                                               ; preds = %43
  %59 = load %struct.script_config*, %struct.script_config** %8, align 8
  %60 = getelementptr inbounds %struct.script_config, %struct.script_config* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %60, align 8
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %58, %57, %42, %21, %14
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @strstarts(i8*, i8*) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i64 @asprintf(i32*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
