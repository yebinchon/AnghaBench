; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_hists.c_hist_browser__dump.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_hists.c_hist_browser__dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_browser = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"perf.hist.%d\00", align 1
@F_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Too many perf.hist.N files, nothing written!\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Couldn't write to %s: %s\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"%s written!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hist_browser*)* @hist_browser__dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hist_browser__dump(%struct.hist_browser* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hist_browser*, align 8
  %4 = alloca [64 x i8], align 16
  %5 = alloca i32*, align 8
  %6 = alloca [64 x i8], align 16
  %7 = alloca i8*, align 8
  store %struct.hist_browser* %0, %struct.hist_browser** %3, align 8
  br label %8

8:                                                ; preds = %1, %27
  %9 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %10 = load %struct.hist_browser*, %struct.hist_browser** %3, align 8
  %11 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @scnprintf(i8* %9, i32 64, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %15 = load i32, i32* @F_OK, align 4
  %16 = call i64 @access(i8* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %8
  br label %28

19:                                               ; preds = %8
  %20 = load %struct.hist_browser*, %struct.hist_browser** %3, align 8
  %21 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  %24 = icmp eq i32 %23, 8192
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = call i32 (i8*, ...) @ui_helpline__fpush(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %52

27:                                               ; preds = %19
  br label %8

28:                                               ; preds = %18
  %29 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %30 = call i32* @fopen(i8* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %30, i32** %5, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = load i32, i32* @errno, align 4
  %35 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %36 = call i8* @str_error_r(i32 %34, i8* %35, i32 64)
  store i8* %36, i8** %7, align 8
  %37 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 (i8*, ...) @ui_helpline__fpush(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %37, i8* %38)
  store i32 -1, i32* %2, align 4
  br label %52

40:                                               ; preds = %28
  %41 = load %struct.hist_browser*, %struct.hist_browser** %3, align 8
  %42 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  %45 = load %struct.hist_browser*, %struct.hist_browser** %3, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @hist_browser__fprintf(%struct.hist_browser* %45, i32* %46)
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @fclose(i32* %48)
  %50 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %51 = call i32 (i8*, ...) @ui_helpline__fpush(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %50)
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %40, %33, %25
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @scnprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @access(i8*, i32) #1

declare dso_local i32 @ui_helpline__fpush(i8*, ...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i8* @str_error_r(i32, i8*, i32) #1

declare dso_local i32 @hist_browser__fprintf(%struct.hist_browser*, i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
