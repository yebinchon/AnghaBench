; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_parse-events.c_parse_breakpoint_type.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_parse-events.c_parse_breakpoint_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event_attr = type { i32 }

@HW_BREAKPOINT_R = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@HW_BREAKPOINT_W = common dso_local global i32 0, align 4
@HW_BREAKPOINT_X = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.perf_event_attr*)* @parse_breakpoint_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_breakpoint_type(i8* %0, %struct.perf_event_attr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.perf_event_attr*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.perf_event_attr* %1, %struct.perf_event_attr** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %89, %2
  %8 = load i32, i32* %6, align 4
  %9 = icmp slt i32 %8, 3
  br i1 %9, label %10, label %92

10:                                               ; preds = %7
  %11 = load i8*, i8** %4, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %10
  %14 = load i8*, i8** %4, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = icmp ne i8 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %13, %10
  br label %92

21:                                               ; preds = %13
  %22 = load i8*, i8** %4, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  switch i32 %27, label %85 [
    i32 114, label %28
    i32 119, label %47
    i32 120, label %66
  ]

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %28
  %30 = load %struct.perf_event_attr*, %struct.perf_event_attr** %5, align 8
  %31 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @HW_BREAKPOINT_R, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %104

39:                                               ; preds = %29
  %40 = load i32, i32* @HW_BREAKPOINT_R, align 4
  %41 = load %struct.perf_event_attr*, %struct.perf_event_attr** %5, align 8
  %42 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %39
  br label %46

46:                                               ; preds = %45
  br label %88

47:                                               ; preds = %21
  br label %48

48:                                               ; preds = %47
  %49 = load %struct.perf_event_attr*, %struct.perf_event_attr** %5, align 8
  %50 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @HW_BREAKPOINT_W, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %104

58:                                               ; preds = %48
  %59 = load i32, i32* @HW_BREAKPOINT_W, align 4
  %60 = load %struct.perf_event_attr*, %struct.perf_event_attr** %5, align 8
  %61 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %58
  br label %65

65:                                               ; preds = %64
  br label %88

66:                                               ; preds = %21
  br label %67

67:                                               ; preds = %66
  %68 = load %struct.perf_event_attr*, %struct.perf_event_attr** %5, align 8
  %69 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @HW_BREAKPOINT_X, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %67
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %104

77:                                               ; preds = %67
  %78 = load i32, i32* @HW_BREAKPOINT_X, align 4
  %79 = load %struct.perf_event_attr*, %struct.perf_event_attr** %5, align 8
  %80 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %77
  br label %84

84:                                               ; preds = %83
  br label %88

85:                                               ; preds = %21
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %104

88:                                               ; preds = %84, %65, %46
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %6, align 4
  br label %7

92:                                               ; preds = %20, %7
  %93 = load %struct.perf_event_attr*, %struct.perf_event_attr** %5, align 8
  %94 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %103, label %97

97:                                               ; preds = %92
  %98 = load i32, i32* @HW_BREAKPOINT_R, align 4
  %99 = load i32, i32* @HW_BREAKPOINT_W, align 4
  %100 = or i32 %98, %99
  %101 = load %struct.perf_event_attr*, %struct.perf_event_attr** %5, align 8
  %102 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 4
  br label %103

103:                                              ; preds = %97, %92
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %103, %85, %74, %55, %36
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
