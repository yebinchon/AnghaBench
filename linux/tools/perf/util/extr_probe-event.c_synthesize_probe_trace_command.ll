; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-event.c_synthesize_probe_trace_command.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-event.c_synthesize_probe_trace_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.probe_trace_event = type { i32, i32*, i64, i32, i32, %struct.probe_trace_point }
%struct.probe_trace_point = type { i32, i32, i64, i32, i64 }
%struct.strbuf = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"%c:%s/%s \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"0x0\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"%s%s0x%lx\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"%s%s%s+%lu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @synthesize_probe_trace_command(%struct.probe_trace_event* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.probe_trace_event*, align 8
  %4 = alloca %struct.probe_trace_point*, align 8
  %5 = alloca %struct.strbuf, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.probe_trace_event* %0, %struct.probe_trace_event** %3, align 8
  %9 = load %struct.probe_trace_event*, %struct.probe_trace_event** %3, align 8
  %10 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %9, i32 0, i32 5
  store %struct.probe_trace_point* %10, %struct.probe_trace_point** %4, align 8
  store i8* null, i8** %6, align 8
  %11 = load %struct.probe_trace_event*, %struct.probe_trace_event** %3, align 8
  %12 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.probe_trace_point*, %struct.probe_trace_point** %4, align 8
  %17 = getelementptr inbounds %struct.probe_trace_point, %struct.probe_trace_point* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  store i8* null, i8** %2, align 8
  br label %152

21:                                               ; preds = %15, %1
  %22 = call i64 @strbuf_init(%struct.strbuf* %5, i32 32)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i8* null, i8** %2, align 8
  br label %152

25:                                               ; preds = %21
  %26 = load %struct.probe_trace_point*, %struct.probe_trace_point** %4, align 8
  %27 = getelementptr inbounds %struct.probe_trace_point, %struct.probe_trace_point* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 114, i32 112
  %32 = load %struct.probe_trace_event*, %struct.probe_trace_event** %3, align 8
  %33 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.probe_trace_event*, %struct.probe_trace_event** %3, align 8
  %36 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = call i32 (%struct.strbuf*, i8*, ...) @strbuf_addf(%struct.strbuf* %5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %34, i32 %37)
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %25
  br label %149

41:                                               ; preds = %25
  %42 = load %struct.probe_trace_event*, %struct.probe_trace_event** %3, align 8
  %43 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %64

46:                                               ; preds = %41
  %47 = load %struct.probe_trace_point*, %struct.probe_trace_point** %4, align 8
  %48 = getelementptr inbounds %struct.probe_trace_point, %struct.probe_trace_point* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %64, label %51

51:                                               ; preds = %46
  %52 = load %struct.probe_trace_point*, %struct.probe_trace_point** %4, align 8
  %53 = getelementptr inbounds %struct.probe_trace_point, %struct.probe_trace_point* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load %struct.probe_trace_point*, %struct.probe_trace_point** %4, align 8
  %58 = getelementptr inbounds %struct.probe_trace_point, %struct.probe_trace_point* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @strcmp(i32 %59, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56, %51
  br label %149

63:                                               ; preds = %56
  br label %64

64:                                               ; preds = %63, %46, %41
  %65 = load %struct.probe_trace_event*, %struct.probe_trace_event** %3, align 8
  %66 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load %struct.probe_trace_event*, %struct.probe_trace_event** %3, align 8
  %71 = call i32 @synthesize_uprobe_trace_def(%struct.probe_trace_event* %70, %struct.strbuf* %5)
  store i32 %71, i32* %8, align 4
  br label %122

72:                                               ; preds = %64
  %73 = load %struct.probe_trace_point*, %struct.probe_trace_point** %4, align 8
  %74 = getelementptr inbounds %struct.probe_trace_point, %struct.probe_trace_point* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @strncmp(i32 %75, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %98, label %78

78:                                               ; preds = %72
  %79 = load %struct.probe_trace_point*, %struct.probe_trace_point** %4, align 8
  %80 = getelementptr inbounds %struct.probe_trace_point, %struct.probe_trace_point* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = inttoptr i64 %81 to i8*
  br label %86

85:                                               ; preds = %78
  br label %86

86:                                               ; preds = %85, %83
  %87 = phi i8* [ %84, %83 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %85 ]
  %88 = load %struct.probe_trace_point*, %struct.probe_trace_point** %4, align 8
  %89 = getelementptr inbounds %struct.probe_trace_point, %struct.probe_trace_point* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %94 = load %struct.probe_trace_point*, %struct.probe_trace_point** %4, align 8
  %95 = getelementptr inbounds %struct.probe_trace_point, %struct.probe_trace_point* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = call i32 (%struct.strbuf*, i8*, ...) @strbuf_addf(%struct.strbuf* %5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %87, i8* %93, i32 %96)
  store i32 %97, i32* %8, align 4
  br label %121

98:                                               ; preds = %72
  %99 = load %struct.probe_trace_point*, %struct.probe_trace_point** %4, align 8
  %100 = getelementptr inbounds %struct.probe_trace_point, %struct.probe_trace_point* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %98
  %104 = inttoptr i64 %101 to i8*
  br label %106

105:                                              ; preds = %98
  br label %106

106:                                              ; preds = %105, %103
  %107 = phi i8* [ %104, %103 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %105 ]
  %108 = load %struct.probe_trace_point*, %struct.probe_trace_point** %4, align 8
  %109 = getelementptr inbounds %struct.probe_trace_point, %struct.probe_trace_point* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  %112 = zext i1 %111 to i64
  %113 = select i1 %111, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %114 = load %struct.probe_trace_point*, %struct.probe_trace_point** %4, align 8
  %115 = getelementptr inbounds %struct.probe_trace_point, %struct.probe_trace_point* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.probe_trace_point*, %struct.probe_trace_point** %4, align 8
  %118 = getelementptr inbounds %struct.probe_trace_point, %struct.probe_trace_point* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 (%struct.strbuf*, i8*, ...) @strbuf_addf(%struct.strbuf* %5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* %107, i8* %113, i32 %116, i32 %119)
  store i32 %120, i32* %8, align 4
  br label %121

121:                                              ; preds = %106, %86
  br label %122

122:                                              ; preds = %121, %69
  %123 = load i32, i32* %8, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %122
  br label %149

126:                                              ; preds = %122
  store i32 0, i32* %7, align 4
  br label %127

127:                                              ; preds = %144, %126
  %128 = load i32, i32* %7, align 4
  %129 = load %struct.probe_trace_event*, %struct.probe_trace_event** %3, align 8
  %130 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp slt i32 %128, %131
  br i1 %132, label %133, label %147

133:                                              ; preds = %127
  %134 = load %struct.probe_trace_event*, %struct.probe_trace_event** %3, align 8
  %135 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %7, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = call i64 @synthesize_probe_trace_arg(i32* %139, %struct.strbuf* %5)
  %141 = icmp slt i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %133
  br label %149

143:                                              ; preds = %133
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %7, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %7, align 4
  br label %127

147:                                              ; preds = %127
  %148 = call i8* @strbuf_detach(%struct.strbuf* %5, i32* null)
  store i8* %148, i8** %6, align 8
  br label %149

149:                                              ; preds = %147, %142, %125, %62, %40
  %150 = call i32 @strbuf_release(%struct.strbuf* %5)
  %151 = load i8*, i8** %6, align 8
  store i8* %151, i8** %2, align 8
  br label %152

152:                                              ; preds = %149, %24, %20
  %153 = load i8*, i8** %2, align 8
  ret i8* %153
}

declare dso_local i64 @strbuf_init(%struct.strbuf*, i32) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, ...) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @synthesize_uprobe_trace_def(%struct.probe_trace_event*, %struct.strbuf*) #1

declare dso_local i32 @strncmp(i32, i8*, i32) #1

declare dso_local i64 @synthesize_probe_trace_arg(i32*, %struct.strbuf*) #1

declare dso_local i8* @strbuf_detach(%struct.strbuf*, i32*) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
