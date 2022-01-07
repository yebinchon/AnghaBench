; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_evlist.c_perf_evlist__set_tp_filter_pids.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_evlist.c_perf_evlist__set_tp_filter_pids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evlist = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"common_pid != %d\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"%s && common_pid != %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_evlist__set_tp_filter_pids(%struct.evlist* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.evlist*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store %struct.evlist* %0, %struct.evlist** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 -1, i32* %9, align 4
  store i64 0, i64* %10, align 8
  br label %12

12:                                               ; preds = %44, %3
  %13 = load i64, i64* %10, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %47

16:                                               ; preds = %12
  %17 = load i64, i64* %10, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %16
  %20 = load i32*, i32** %7, align 8
  %21 = load i64, i64* %10, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i8*
  %26 = call i64 (i8**, i8*, i8*, ...) @asprintf(i8** %8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  store i32 -1, i32* %4, align 4
  br label %55

29:                                               ; preds = %19
  br label %43

30:                                               ; preds = %16
  %31 = load i8*, i8** %8, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = load i64, i64* %10, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i64 (i8**, i8*, i8*, ...) @asprintf(i8** %11, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %31, i32 %35)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %51

39:                                               ; preds = %30
  %40 = load i8*, i8** %8, align 8
  %41 = call i32 @free(i8* %40)
  %42 = load i8*, i8** %11, align 8
  store i8* %42, i8** %8, align 8
  br label %43

43:                                               ; preds = %39, %29
  br label %44

44:                                               ; preds = %43
  %45 = load i64, i64* %10, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %10, align 8
  br label %12

47:                                               ; preds = %12
  %48 = load %struct.evlist*, %struct.evlist** %5, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = call i32 @perf_evlist__set_tp_filter(%struct.evlist* %48, i8* %49)
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %47, %38
  %52 = load i8*, i8** %8, align 8
  %53 = call i32 @free(i8* %52)
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %51, %28
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i64 @asprintf(i8**, i8*, i8*, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @perf_evlist__set_tp_filter(%struct.evlist*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
