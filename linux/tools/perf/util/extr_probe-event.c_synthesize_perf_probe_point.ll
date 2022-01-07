; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-event.c_synthesize_perf_probe_point.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-event.c_synthesize_perf_probe_point.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_probe_point = type { i8*, i8*, i8*, i8*, i64 }
%struct.strbuf = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"+%lu\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c":%d\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%return\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"@%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @synthesize_perf_probe_point(%struct.perf_probe_point* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.perf_probe_point*, align 8
  %4 = alloca %struct.strbuf, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.perf_probe_point* %0, %struct.perf_probe_point** %3, align 8
  store i8* null, i8** %6, align 8
  store i32 0, i32* %8, align 4
  %9 = call i64 @strbuf_init(%struct.strbuf* %4, i32 64)
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %125

12:                                               ; preds = %1
  %13 = load %struct.perf_probe_point*, %struct.perf_probe_point** %3, align 8
  %14 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %58

17:                                               ; preds = %12
  %18 = load %struct.perf_probe_point*, %struct.perf_probe_point** %3, align 8
  %19 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @strbuf_addstr(%struct.strbuf* %4, i8* %20)
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %122

24:                                               ; preds = %17
  %25 = load %struct.perf_probe_point*, %struct.perf_probe_point** %3, align 8
  %26 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.perf_probe_point*, %struct.perf_probe_point** %3, align 8
  %31 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @strbuf_addf(%struct.strbuf* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %32)
  store i32 %33, i32* %8, align 4
  br label %53

34:                                               ; preds = %24
  %35 = load %struct.perf_probe_point*, %struct.perf_probe_point** %3, align 8
  %36 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %35, i32 0, i32 2
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.perf_probe_point*, %struct.perf_probe_point** %3, align 8
  %41 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %40, i32 0, i32 2
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @strbuf_addf(%struct.strbuf* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  store i32 %43, i32* %8, align 4
  br label %52

44:                                               ; preds = %34
  %45 = load %struct.perf_probe_point*, %struct.perf_probe_point** %3, align 8
  %46 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = call i32 @strbuf_addstr(%struct.strbuf* %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %49, %44
  br label %52

52:                                               ; preds = %51, %39
  br label %53

53:                                               ; preds = %52, %29
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  br label %122

57:                                               ; preds = %53
  br label %58

58:                                               ; preds = %57, %12
  %59 = load %struct.perf_probe_point*, %struct.perf_probe_point** %3, align 8
  %60 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %59, i32 0, i32 3
  %61 = load i8*, i8** %60, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %116

63:                                               ; preds = %58
  %64 = load %struct.perf_probe_point*, %struct.perf_probe_point** %3, align 8
  %65 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %64, i32 0, i32 3
  %66 = load i8*, i8** %65, align 8
  store i8* %66, i8** %5, align 8
  %67 = load i8*, i8** %5, align 8
  %68 = call i32 @strlen(i8* %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp sgt i32 %69, 30
  br i1 %70, label %71, label %95

71:                                               ; preds = %63
  %72 = load %struct.perf_probe_point*, %struct.perf_probe_point** %3, align 8
  %73 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %72, i32 0, i32 3
  %74 = load i8*, i8** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = getelementptr inbounds i8, i8* %77, i64 -30
  %79 = call i8* @strchr(i8* %78, i8 signext 47)
  store i8* %79, i8** %5, align 8
  %80 = load i8*, i8** %5, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %71
  %83 = load i8*, i8** %5, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 1
  br label %93

85:                                               ; preds = %71
  %86 = load %struct.perf_probe_point*, %struct.perf_probe_point** %3, align 8
  %87 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %86, i32 0, i32 3
  %88 = load i8*, i8** %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  %92 = getelementptr inbounds i8, i8* %91, i64 -30
  br label %93

93:                                               ; preds = %85, %82
  %94 = phi i8* [ %84, %82 ], [ %92, %85 ]
  store i8* %94, i8** %5, align 8
  br label %95

95:                                               ; preds = %93, %63
  %96 = load i8*, i8** %5, align 8
  %97 = call i32 @strbuf_addf(%struct.strbuf* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %96)
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %115, label %100

100:                                              ; preds = %95
  %101 = load %struct.perf_probe_point*, %struct.perf_probe_point** %3, align 8
  %102 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %115, label %105

105:                                              ; preds = %100
  %106 = load %struct.perf_probe_point*, %struct.perf_probe_point** %3, align 8
  %107 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %106, i32 0, i32 2
  %108 = load i8*, i8** %107, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %110, label %115

110:                                              ; preds = %105
  %111 = load %struct.perf_probe_point*, %struct.perf_probe_point** %3, align 8
  %112 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %111, i32 0, i32 2
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 @strbuf_addf(%struct.strbuf* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %113)
  store i32 %114, i32* %8, align 4
  br label %115

115:                                              ; preds = %110, %105, %100, %95
  br label %116

116:                                              ; preds = %115, %58
  %117 = load i32, i32* %8, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %116
  %120 = call i8* @strbuf_detach(%struct.strbuf* %4, i32* null)
  store i8* %120, i8** %6, align 8
  br label %121

121:                                              ; preds = %119, %116
  br label %122

122:                                              ; preds = %121, %56, %23
  %123 = call i32 @strbuf_release(%struct.strbuf* %4)
  %124 = load i8*, i8** %6, align 8
  store i8* %124, i8** %2, align 8
  br label %125

125:                                              ; preds = %122, %11
  %126 = load i8*, i8** %2, align 8
  ret i8* %126
}

declare dso_local i64 @strbuf_init(%struct.strbuf*, i32) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @strbuf_detach(%struct.strbuf*, i32*) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
