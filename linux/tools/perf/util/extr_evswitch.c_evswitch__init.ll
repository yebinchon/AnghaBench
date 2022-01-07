; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_evswitch.c_evswitch__init.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_evswitch.c_evswitch__init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evswitch = type { i32, i64, i32*, i64, i32* }
%struct.evlist = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"on\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"off\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evswitch__init(%struct.evswitch* %0, %struct.evlist* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.evswitch*, align 8
  %6 = alloca %struct.evlist*, align 8
  %7 = alloca i32*, align 8
  store %struct.evswitch* %0, %struct.evswitch** %5, align 8
  store %struct.evlist* %1, %struct.evlist** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load %struct.evswitch*, %struct.evswitch** %5, align 8
  %9 = getelementptr inbounds %struct.evswitch, %struct.evswitch* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %36

12:                                               ; preds = %3
  %13 = load %struct.evlist*, %struct.evlist** %6, align 8
  %14 = load %struct.evswitch*, %struct.evswitch** %5, align 8
  %15 = getelementptr inbounds %struct.evswitch, %struct.evswitch* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = call i8* @perf_evlist__find_evsel_by_str(%struct.evlist* %13, i64 %16)
  %18 = bitcast i8* %17 to i32*
  %19 = load %struct.evswitch*, %struct.evswitch** %5, align 8
  %20 = getelementptr inbounds %struct.evswitch, %struct.evswitch* %19, i32 0, i32 4
  store i32* %18, i32** %20, align 8
  %21 = load %struct.evswitch*, %struct.evswitch** %5, align 8
  %22 = getelementptr inbounds %struct.evswitch, %struct.evswitch* %21, i32 0, i32 4
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %12
  %26 = load i32*, i32** %7, align 8
  %27 = load %struct.evswitch*, %struct.evswitch** %5, align 8
  %28 = getelementptr inbounds %struct.evswitch, %struct.evswitch* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @evswitch__fprintf_enoent(i32* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 %29)
  %31 = load i32, i32* @ENOENT, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %64

33:                                               ; preds = %12
  %34 = load %struct.evswitch*, %struct.evswitch** %5, align 8
  %35 = getelementptr inbounds %struct.evswitch, %struct.evswitch* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  br label %36

36:                                               ; preds = %33, %3
  %37 = load %struct.evswitch*, %struct.evswitch** %5, align 8
  %38 = getelementptr inbounds %struct.evswitch, %struct.evswitch* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %63

41:                                               ; preds = %36
  %42 = load %struct.evlist*, %struct.evlist** %6, align 8
  %43 = load %struct.evswitch*, %struct.evswitch** %5, align 8
  %44 = getelementptr inbounds %struct.evswitch, %struct.evswitch* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i8* @perf_evlist__find_evsel_by_str(%struct.evlist* %42, i64 %45)
  %47 = bitcast i8* %46 to i32*
  %48 = load %struct.evswitch*, %struct.evswitch** %5, align 8
  %49 = getelementptr inbounds %struct.evswitch, %struct.evswitch* %48, i32 0, i32 2
  store i32* %47, i32** %49, align 8
  %50 = load %struct.evswitch*, %struct.evswitch** %5, align 8
  %51 = getelementptr inbounds %struct.evswitch, %struct.evswitch* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %62

54:                                               ; preds = %41
  %55 = load i32*, i32** %7, align 8
  %56 = load %struct.evswitch*, %struct.evswitch** %5, align 8
  %57 = getelementptr inbounds %struct.evswitch, %struct.evswitch* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @evswitch__fprintf_enoent(i32* %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 %58)
  %60 = load i32, i32* @ENOENT, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %64

62:                                               ; preds = %41
  br label %63

63:                                               ; preds = %62, %36
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %54, %25
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i8* @perf_evlist__find_evsel_by_str(%struct.evlist*, i64) #1

declare dso_local i32 @evswitch__fprintf_enoent(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
