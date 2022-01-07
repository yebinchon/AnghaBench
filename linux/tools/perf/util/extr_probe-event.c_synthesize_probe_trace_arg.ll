; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-event.c_synthesize_probe_trace_arg.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-event.c_synthesize_probe_trace_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.probe_trace_arg = type { i8*, i64, %struct.probe_trace_arg_ref*, i64 }
%struct.probe_trace_arg_ref = type { i32, %struct.probe_trace_arg_ref* }
%struct.strbuf = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c" %s=\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s%+ld\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c":%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.probe_trace_arg*, %struct.strbuf*)* @synthesize_probe_trace_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @synthesize_probe_trace_arg(%struct.probe_trace_arg* %0, %struct.strbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.probe_trace_arg*, align 8
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca %struct.probe_trace_arg_ref*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.probe_trace_arg* %0, %struct.probe_trace_arg** %4, align 8
  store %struct.strbuf* %1, %struct.strbuf** %5, align 8
  %9 = load %struct.probe_trace_arg*, %struct.probe_trace_arg** %4, align 8
  %10 = getelementptr inbounds %struct.probe_trace_arg, %struct.probe_trace_arg* %9, i32 0, i32 2
  %11 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %10, align 8
  store %struct.probe_trace_arg_ref* %11, %struct.probe_trace_arg_ref** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.probe_trace_arg*, %struct.probe_trace_arg** %4, align 8
  %13 = getelementptr inbounds %struct.probe_trace_arg, %struct.probe_trace_arg* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %18 = load %struct.probe_trace_arg*, %struct.probe_trace_arg** %4, align 8
  %19 = getelementptr inbounds %struct.probe_trace_arg, %struct.probe_trace_arg* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i8*
  %22 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %21)
  store i32 %22, i32* %8, align 4
  br label %26

23:                                               ; preds = %2
  %24 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %25 = call i32 @strbuf_addch(%struct.strbuf* %24, i8 signext 32)
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %23, %16
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %3, align 4
  br label %120

31:                                               ; preds = %26
  %32 = load %struct.probe_trace_arg*, %struct.probe_trace_arg** %4, align 8
  %33 = getelementptr inbounds %struct.probe_trace_arg, %struct.probe_trace_arg* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 64
  br i1 %38, label %39, label %48

39:                                               ; preds = %31
  %40 = load %struct.probe_trace_arg*, %struct.probe_trace_arg** %4, align 8
  %41 = getelementptr inbounds %struct.probe_trace_arg, %struct.probe_trace_arg* %40, i32 0, i32 2
  %42 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %41, align 8
  %43 = icmp ne %struct.probe_trace_arg_ref* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %6, align 8
  %46 = getelementptr inbounds %struct.probe_trace_arg_ref, %struct.probe_trace_arg_ref* %45, i32 0, i32 1
  %47 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %46, align 8
  store %struct.probe_trace_arg_ref* %47, %struct.probe_trace_arg_ref** %6, align 8
  br label %48

48:                                               ; preds = %44, %39, %31
  %49 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %6, align 8
  %50 = icmp ne %struct.probe_trace_arg_ref* %49, null
  br i1 %50, label %51, label %60

51:                                               ; preds = %48
  %52 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %6, align 8
  %53 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %54 = call i32 @__synthesize_probe_trace_arg_ref(%struct.probe_trace_arg_ref* %52, %struct.strbuf* %53, i32 1)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %3, align 4
  br label %120

59:                                               ; preds = %51
  br label %60

60:                                               ; preds = %59, %48
  %61 = load %struct.probe_trace_arg*, %struct.probe_trace_arg** %4, align 8
  %62 = getelementptr inbounds %struct.probe_trace_arg, %struct.probe_trace_arg* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 0
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 64
  br i1 %67, label %68, label %84

68:                                               ; preds = %60
  %69 = load %struct.probe_trace_arg*, %struct.probe_trace_arg** %4, align 8
  %70 = getelementptr inbounds %struct.probe_trace_arg, %struct.probe_trace_arg* %69, i32 0, i32 2
  %71 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %70, align 8
  %72 = icmp ne %struct.probe_trace_arg_ref* %71, null
  br i1 %72, label %73, label %84

73:                                               ; preds = %68
  %74 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %75 = load %struct.probe_trace_arg*, %struct.probe_trace_arg** %4, align 8
  %76 = getelementptr inbounds %struct.probe_trace_arg, %struct.probe_trace_arg* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = load %struct.probe_trace_arg*, %struct.probe_trace_arg** %4, align 8
  %79 = getelementptr inbounds %struct.probe_trace_arg, %struct.probe_trace_arg* %78, i32 0, i32 2
  %80 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %79, align 8
  %81 = getelementptr inbounds %struct.probe_trace_arg_ref, %struct.probe_trace_arg_ref* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %74, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %77, i32 %82)
  store i32 %83, i32* %8, align 4
  br label %90

84:                                               ; preds = %68, %60
  %85 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %86 = load %struct.probe_trace_arg*, %struct.probe_trace_arg** %4, align 8
  %87 = getelementptr inbounds %struct.probe_trace_arg, %struct.probe_trace_arg* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @strbuf_addstr(%struct.strbuf* %85, i8* %88)
  store i32 %89, i32* %8, align 4
  br label %90

90:                                               ; preds = %84, %73
  br label %91

91:                                               ; preds = %100, %90
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %91
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %7, align 4
  %97 = icmp ne i32 %95, 0
  br label %98

98:                                               ; preds = %94, %91
  %99 = phi i1 [ false, %91 ], [ %97, %94 ]
  br i1 %99, label %100, label %103

100:                                              ; preds = %98
  %101 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %102 = call i32 @strbuf_addch(%struct.strbuf* %101, i8 signext 41)
  store i32 %102, i32* %8, align 4
  br label %91

103:                                              ; preds = %98
  %104 = load i32, i32* %8, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %118, label %106

106:                                              ; preds = %103
  %107 = load %struct.probe_trace_arg*, %struct.probe_trace_arg** %4, align 8
  %108 = getelementptr inbounds %struct.probe_trace_arg, %struct.probe_trace_arg* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %106
  %112 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %113 = load %struct.probe_trace_arg*, %struct.probe_trace_arg** %4, align 8
  %114 = getelementptr inbounds %struct.probe_trace_arg, %struct.probe_trace_arg* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = inttoptr i64 %115 to i8*
  %117 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %112, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %116)
  store i32 %117, i32* %8, align 4
  br label %118

118:                                              ; preds = %111, %106, %103
  %119 = load i32, i32* %8, align 4
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %118, %57, %29
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*, ...) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

declare dso_local i32 @__synthesize_probe_trace_arg_ref(%struct.probe_trace_arg_ref*, %struct.strbuf*, i32) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
