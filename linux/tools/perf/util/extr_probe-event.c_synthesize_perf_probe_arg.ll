; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-event.c_synthesize_perf_probe_arg.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-event.c_synthesize_perf_probe_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_probe_arg = type { i8*, i32, i64, %struct.perf_probe_arg_field* }
%struct.perf_probe_arg_field = type { i8*, %struct.perf_probe_arg_field*, i64 }
%struct.strbuf = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"%s=%s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"->\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c":%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @synthesize_perf_probe_arg(%struct.perf_probe_arg* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.perf_probe_arg*, align 8
  %4 = alloca %struct.perf_probe_arg_field*, align 8
  %5 = alloca %struct.strbuf, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.perf_probe_arg* %0, %struct.perf_probe_arg** %3, align 8
  %8 = load %struct.perf_probe_arg*, %struct.perf_probe_arg** %3, align 8
  %9 = getelementptr inbounds %struct.perf_probe_arg, %struct.perf_probe_arg* %8, i32 0, i32 3
  %10 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %9, align 8
  store %struct.perf_probe_arg_field* %10, %struct.perf_probe_arg_field** %4, align 8
  store i8* null, i8** %6, align 8
  %11 = call i64 @strbuf_init(%struct.strbuf* %5, i32 64)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %107

14:                                               ; preds = %1
  %15 = load %struct.perf_probe_arg*, %struct.perf_probe_arg** %3, align 8
  %16 = getelementptr inbounds %struct.perf_probe_arg, %struct.perf_probe_arg* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %14
  %20 = load %struct.perf_probe_arg*, %struct.perf_probe_arg** %3, align 8
  %21 = getelementptr inbounds %struct.perf_probe_arg, %struct.perf_probe_arg* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %19
  %25 = load %struct.perf_probe_arg*, %struct.perf_probe_arg** %3, align 8
  %26 = getelementptr inbounds %struct.perf_probe_arg, %struct.perf_probe_arg* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i8*
  %29 = load %struct.perf_probe_arg*, %struct.perf_probe_arg** %3, align 8
  %30 = getelementptr inbounds %struct.perf_probe_arg, %struct.perf_probe_arg* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %28, i8* %31)
  store i32 %32, i32* %7, align 4
  br label %47

33:                                               ; preds = %19, %14
  %34 = load %struct.perf_probe_arg*, %struct.perf_probe_arg** %3, align 8
  %35 = getelementptr inbounds %struct.perf_probe_arg, %struct.perf_probe_arg* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = inttoptr i64 %36 to i8*
  br label %44

40:                                               ; preds = %33
  %41 = load %struct.perf_probe_arg*, %struct.perf_probe_arg** %3, align 8
  %42 = getelementptr inbounds %struct.perf_probe_arg, %struct.perf_probe_arg* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  br label %44

44:                                               ; preds = %40, %38
  %45 = phi i8* [ %39, %38 ], [ %43, %40 ]
  %46 = call i32 @strbuf_addstr(%struct.strbuf* %5, i8* %45)
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %44, %24
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  br label %104

51:                                               ; preds = %47
  br label %52

52:                                               ; preds = %86, %51
  %53 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %4, align 8
  %54 = icmp ne %struct.perf_probe_arg_field* %53, null
  br i1 %54, label %55, label %87

55:                                               ; preds = %52
  %56 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %4, align 8
  %57 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 0
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 91
  br i1 %62, label %63, label %68

63:                                               ; preds = %55
  %64 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %4, align 8
  %65 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @strbuf_addstr(%struct.strbuf* %5, i8* %66)
  store i32 %67, i32* %7, align 4
  br label %79

68:                                               ; preds = %55
  %69 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %4, align 8
  %70 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %75 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %4, align 8
  %76 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %74, i8* %77)
  store i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %68, %63
  %80 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %4, align 8
  %81 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %80, i32 0, i32 1
  %82 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %81, align 8
  store %struct.perf_probe_arg_field* %82, %struct.perf_probe_arg_field** %4, align 8
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  br label %104

86:                                               ; preds = %79
  br label %52

87:                                               ; preds = %52
  %88 = load %struct.perf_probe_arg*, %struct.perf_probe_arg** %3, align 8
  %89 = getelementptr inbounds %struct.perf_probe_arg, %struct.perf_probe_arg* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %87
  %93 = load %struct.perf_probe_arg*, %struct.perf_probe_arg** %3, align 8
  %94 = getelementptr inbounds %struct.perf_probe_arg, %struct.perf_probe_arg* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = sext i32 %95 to i64
  %97 = inttoptr i64 %96 to i8*
  %98 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %97)
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %92
  br label %104

101:                                              ; preds = %92
  br label %102

102:                                              ; preds = %101, %87
  %103 = call i8* @strbuf_detach(%struct.strbuf* %5, i32* null)
  store i8* %103, i8** %6, align 8
  br label %104

104:                                              ; preds = %102, %100, %85, %50
  %105 = call i32 @strbuf_release(%struct.strbuf* %5)
  %106 = load i8*, i8** %6, align 8
  store i8* %106, i8** %2, align 8
  br label %107

107:                                              ; preds = %104, %13
  %108 = load i8*, i8** %2, align 8
  ret i8* %108
}

declare dso_local i64 @strbuf_init(%struct.strbuf*, i32) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*, ...) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

declare dso_local i8* @strbuf_detach(%struct.strbuf*, i32*) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
