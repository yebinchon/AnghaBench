; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c_map_symbol__annotation_dump.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c_map_symbol__annotation_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map_symbol = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8* }
%struct.evsel = type { i32 }
%struct.annotation_options = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"%s.annotation\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"%s() %s\0AEvent: %s\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @map_symbol__annotation_dump(%struct.map_symbol* %0, %struct.evsel* %1, %struct.annotation_options* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.map_symbol*, align 8
  %6 = alloca %struct.evsel*, align 8
  %7 = alloca %struct.annotation_options*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [1024 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.map_symbol* %0, %struct.map_symbol** %5, align 8
  store %struct.evsel* %1, %struct.evsel** %6, align 8
  store %struct.annotation_options* %2, %struct.annotation_options** %7, align 8
  %13 = load %struct.evsel*, %struct.evsel** %6, align 8
  %14 = call i8* @perf_evsel__name(%struct.evsel* %13)
  store i8* %14, i8** %8, align 8
  store i32 -1, i32* %11, align 4
  %15 = load %struct.map_symbol*, %struct.map_symbol** %5, align 8
  %16 = getelementptr inbounds %struct.map_symbol, %struct.map_symbol* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i64 @asprintf(i8** %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %19)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %66

23:                                               ; preds = %3
  %24 = load i8*, i8** %10, align 8
  %25 = call i32* @fopen(i8* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %25, i32** %12, align 8
  %26 = load i32*, i32** %12, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %62

29:                                               ; preds = %23
  %30 = load %struct.evsel*, %struct.evsel** %6, align 8
  %31 = call i64 @perf_evsel__is_group_event(%struct.evsel* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load %struct.evsel*, %struct.evsel** %6, align 8
  %35 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %36 = call i32 @perf_evsel__group_desc(%struct.evsel* %34, i8* %35, i32 1024)
  %37 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  store i8* %37, i8** %8, align 8
  br label %38

38:                                               ; preds = %33, %29
  %39 = load i32*, i32** %12, align 8
  %40 = load %struct.map_symbol*, %struct.map_symbol** %5, align 8
  %41 = getelementptr inbounds %struct.map_symbol, %struct.map_symbol* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.map_symbol*, %struct.map_symbol** %5, align 8
  %46 = getelementptr inbounds %struct.map_symbol, %struct.map_symbol* %45, i32 0, i32 1
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = call i32 @fprintf(i32* %39, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %44, i8* %51, i8* %52)
  %54 = load %struct.map_symbol*, %struct.map_symbol** %5, align 8
  %55 = getelementptr inbounds %struct.map_symbol, %struct.map_symbol* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = load i32*, i32** %12, align 8
  %58 = load %struct.annotation_options*, %struct.annotation_options** %7, align 8
  %59 = call i32 @symbol__annotate_fprintf2(%struct.TYPE_6__* %56, i32* %57, %struct.annotation_options* %58)
  %60 = load i32*, i32** %12, align 8
  %61 = call i32 @fclose(i32* %60)
  store i32 0, i32* %11, align 4
  br label %62

62:                                               ; preds = %38, %28
  %63 = load i8*, i8** %10, align 8
  %64 = call i32 @free(i8* %63)
  %65 = load i32, i32* %11, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %62, %22
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i8* @perf_evsel__name(%struct.evsel*) #1

declare dso_local i64 @asprintf(i8**, i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i64 @perf_evsel__is_group_event(%struct.evsel*) #1

declare dso_local i32 @perf_evsel__group_desc(%struct.evsel*, i8*, i32) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @symbol__annotate_fprintf2(%struct.TYPE_6__*, i32*, %struct.annotation_options*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
