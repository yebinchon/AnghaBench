; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-event.c_synthesize_perf_probe_command.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-event.c_synthesize_perf_probe_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_probe_event = type { i32, i64, i32, i64, i64 }
%struct.strbuf = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"%s:%s=\00", align 1
@PERFPROBE_GROUP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c" %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @synthesize_perf_probe_command(%struct.perf_probe_event* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.perf_probe_event*, align 8
  %4 = alloca %struct.strbuf, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.perf_probe_event* %0, %struct.perf_probe_event** %3, align 8
  store i8* null, i8** %6, align 8
  %8 = call i64 @strbuf_init(%struct.strbuf* %4, i32 64)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %81

11:                                               ; preds = %1
  %12 = load %struct.perf_probe_event*, %struct.perf_probe_event** %3, align 8
  %13 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %11
  %17 = load %struct.perf_probe_event*, %struct.perf_probe_event** %3, align 8
  %18 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %25

22:                                               ; preds = %16
  %23 = load i32, i32* @PERFPROBE_GROUP, align 4
  %24 = sext i32 %23 to i64
  br label %25

25:                                               ; preds = %22, %21
  %26 = phi i64 [ %19, %21 ], [ %24, %22 ]
  %27 = inttoptr i64 %26 to i8*
  %28 = load %struct.perf_probe_event*, %struct.perf_probe_event** %3, align 8
  %29 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = call i64 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %27, i64 %30)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %78

34:                                               ; preds = %25
  br label %35

35:                                               ; preds = %34, %11
  %36 = load %struct.perf_probe_event*, %struct.perf_probe_event** %3, align 8
  %37 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %36, i32 0, i32 2
  %38 = call i8* @synthesize_perf_probe_point(i32* %37)
  store i8* %38, i8** %5, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load i8*, i8** %5, align 8
  %43 = call i64 @strbuf_addstr(%struct.strbuf* %4, i8* %42)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41, %35
  br label %78

46:                                               ; preds = %41
  %47 = load i8*, i8** %5, align 8
  %48 = call i32 @free(i8* %47)
  store i32 0, i32* %7, align 4
  br label %49

49:                                               ; preds = %73, %46
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.perf_probe_event*, %struct.perf_probe_event** %3, align 8
  %52 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %76

55:                                               ; preds = %49
  %56 = load %struct.perf_probe_event*, %struct.perf_probe_event** %3, align 8
  %57 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %58, %60
  %62 = call i8* @synthesize_perf_probe_arg(i64 %61)
  store i8* %62, i8** %5, align 8
  %63 = load i8*, i8** %5, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %55
  %66 = load i8*, i8** %5, align 8
  %67 = call i64 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %66)
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %65, %55
  br label %78

70:                                               ; preds = %65
  %71 = load i8*, i8** %5, align 8
  %72 = call i32 @free(i8* %71)
  br label %73

73:                                               ; preds = %70
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %7, align 4
  br label %49

76:                                               ; preds = %49
  %77 = call i8* @strbuf_detach(%struct.strbuf* %4, i32* null)
  store i8* %77, i8** %6, align 8
  br label %78

78:                                               ; preds = %76, %69, %45, %33
  %79 = call i32 @strbuf_release(%struct.strbuf* %4)
  %80 = load i8*, i8** %6, align 8
  store i8* %80, i8** %2, align 8
  br label %81

81:                                               ; preds = %78, %10
  %82 = load i8*, i8** %2, align 8
  ret i8* %82
}

declare dso_local i64 @strbuf_init(%struct.strbuf*, i32) #1

declare dso_local i64 @strbuf_addf(%struct.strbuf*, i8*, i8*, ...) #1

declare dso_local i8* @synthesize_perf_probe_point(i32*) #1

declare dso_local i64 @strbuf_addstr(%struct.strbuf*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @synthesize_perf_probe_arg(i64) #1

declare dso_local i8* @strbuf_detach(%struct.strbuf*, i32*) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
