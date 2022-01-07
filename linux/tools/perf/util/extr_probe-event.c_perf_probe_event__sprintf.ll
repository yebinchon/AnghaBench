; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-event.c_perf_probe_event__sprintf.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-event.c_perf_probe_event__sprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_probe_event = type { i32, i32*, i32 }
%struct.strbuf = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"  %-20s (on \00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c" in %s\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c" with\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %struct.perf_probe_event*, i8*, %struct.strbuf*)* @perf_probe_event__sprintf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_probe_event__sprintf(i8* %0, i8* %1, %struct.perf_probe_event* %2, i8* %3, %struct.strbuf* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.perf_probe_event*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.strbuf*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.perf_probe_event* %2, %struct.perf_probe_event** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.strbuf* %4, %struct.strbuf** %11, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = call i64 @asprintf(i8** %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %15, i8* %16)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load i32, i32* @errno, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %109

22:                                               ; preds = %5
  %23 = load %struct.strbuf*, %struct.strbuf** %11, align 8
  %24 = load i8*, i8** %14, align 8
  %25 = call i32 @strbuf_addf(%struct.strbuf* %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  store i32 %25, i32* %13, align 4
  %26 = load i8*, i8** %14, align 8
  %27 = call i32 @free(i8* %26)
  %28 = load i32, i32* %13, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* %13, align 4
  store i32 %31, i32* %6, align 4
  br label %109

32:                                               ; preds = %22
  %33 = load %struct.perf_probe_event*, %struct.perf_probe_event** %9, align 8
  %34 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %33, i32 0, i32 2
  %35 = call i8* @synthesize_perf_probe_point(i32* %34)
  store i8* %35, i8** %14, align 8
  %36 = load i8*, i8** %14, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %109

41:                                               ; preds = %32
  %42 = load %struct.strbuf*, %struct.strbuf** %11, align 8
  %43 = load i8*, i8** %14, align 8
  %44 = call i32 @strbuf_addstr(%struct.strbuf* %42, i8* %43)
  store i32 %44, i32* %13, align 4
  %45 = load i8*, i8** %14, align 8
  %46 = call i32 @free(i8* %45)
  %47 = load i32, i32* %13, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %41
  %50 = load i8*, i8** %10, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load %struct.strbuf*, %struct.strbuf** %11, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = call i32 @strbuf_addf(%struct.strbuf* %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %54)
  store i32 %55, i32* %13, align 4
  br label %56

56:                                               ; preds = %52, %49, %41
  %57 = load i32, i32* %13, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %101, label %59

59:                                               ; preds = %56
  %60 = load %struct.perf_probe_event*, %struct.perf_probe_event** %9, align 8
  %61 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %101

64:                                               ; preds = %59
  %65 = load %struct.strbuf*, %struct.strbuf** %11, align 8
  %66 = call i32 @strbuf_add(%struct.strbuf* %65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 5)
  store i32 %66, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %67

67:                                               ; preds = %97, %64
  %68 = load i32, i32* %13, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* %12, align 4
  %72 = load %struct.perf_probe_event*, %struct.perf_probe_event** %9, align 8
  %73 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp slt i32 %71, %74
  br label %76

76:                                               ; preds = %70, %67
  %77 = phi i1 [ false, %67 ], [ %75, %70 ]
  br i1 %77, label %78, label %100

78:                                               ; preds = %76
  %79 = load %struct.perf_probe_event*, %struct.perf_probe_event** %9, align 8
  %80 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = call i8* @synthesize_perf_probe_arg(i32* %84)
  store i8* %85, i8** %14, align 8
  %86 = load i8*, i8** %14, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %78
  %89 = load i32, i32* @ENOMEM, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %6, align 4
  br label %109

91:                                               ; preds = %78
  %92 = load %struct.strbuf*, %struct.strbuf** %11, align 8
  %93 = load i8*, i8** %14, align 8
  %94 = call i32 @strbuf_addf(%struct.strbuf* %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %93)
  store i32 %94, i32* %13, align 4
  %95 = load i8*, i8** %14, align 8
  %96 = call i32 @free(i8* %95)
  br label %97

97:                                               ; preds = %91
  %98 = load i32, i32* %12, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %12, align 4
  br label %67

100:                                              ; preds = %76
  br label %101

101:                                              ; preds = %100, %59, %56
  %102 = load i32, i32* %13, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %101
  %105 = load %struct.strbuf*, %struct.strbuf** %11, align 8
  %106 = call i32 @strbuf_addch(%struct.strbuf* %105, i8 signext 41)
  store i32 %106, i32* %13, align 4
  br label %107

107:                                              ; preds = %104, %101
  %108 = load i32, i32* %13, align 4
  store i32 %108, i32* %6, align 4
  br label %109

109:                                              ; preds = %107, %88, %38, %30, %19
  %110 = load i32, i32* %6, align 4
  ret i32 %110
}

declare dso_local i64 @asprintf(i8**, i8*, i8*, i8*) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @synthesize_perf_probe_point(i32*) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

declare dso_local i32 @strbuf_add(%struct.strbuf*, i8*, i32) #1

declare dso_local i8* @synthesize_perf_probe_arg(i32*) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
