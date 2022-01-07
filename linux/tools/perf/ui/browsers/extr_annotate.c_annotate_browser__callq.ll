; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_annotate.c_annotate_browser__callq.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_annotate.c_annotate_browser__callq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.annotate_browser = type { %struct.TYPE_14__, %struct.TYPE_16__*, i32 }
%struct.TYPE_14__ = type { %struct.map_symbol* }
%struct.map_symbol = type { i32, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.evsel = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.hist_browser_timer = type { i32 }
%struct.disasm_line = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.annotation = type { i32 }

@SYM_TITLE_MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"The called function was not found.\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Not enough memory for annotating '%s' symbol!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.annotate_browser*, %struct.evsel*, %struct.hist_browser_timer*)* @annotate_browser__callq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @annotate_browser__callq(%struct.annotate_browser* %0, %struct.evsel* %1, %struct.hist_browser_timer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.annotate_browser*, align 8
  %6 = alloca %struct.evsel*, align 8
  %7 = alloca %struct.hist_browser_timer*, align 8
  %8 = alloca %struct.map_symbol*, align 8
  %9 = alloca %struct.disasm_line*, align 8
  %10 = alloca %struct.annotation*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.annotate_browser* %0, %struct.annotate_browser** %5, align 8
  store %struct.evsel* %1, %struct.evsel** %6, align 8
  store %struct.hist_browser_timer* %2, %struct.hist_browser_timer** %7, align 8
  %14 = load %struct.annotate_browser*, %struct.annotate_browser** %5, align 8
  %15 = getelementptr inbounds %struct.annotate_browser, %struct.annotate_browser* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %17 = load %struct.map_symbol*, %struct.map_symbol** %16, align 8
  store %struct.map_symbol* %17, %struct.map_symbol** %8, align 8
  %18 = load %struct.annotate_browser*, %struct.annotate_browser** %5, align 8
  %19 = getelementptr inbounds %struct.annotate_browser, %struct.annotate_browser* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.disasm_line* @disasm_line(i32 %20)
  store %struct.disasm_line* %21, %struct.disasm_line** %9, align 8
  %22 = load i32, i32* @SYM_TITLE_MAX_SIZE, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %11, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %12, align 8
  %26 = load %struct.disasm_line*, %struct.disasm_line** %9, align 8
  %27 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %29, align 8
  %31 = icmp ne %struct.TYPE_15__* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %3
  %33 = call i32 @ui_helpline__puts(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %103

34:                                               ; preds = %3
  %35 = load %struct.disasm_line*, %struct.disasm_line** %9, align 8
  %36 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %38, align 8
  %40 = call %struct.annotation* @symbol__annotation(%struct.TYPE_15__* %39)
  store %struct.annotation* %40, %struct.annotation** %10, align 8
  %41 = load %struct.annotation*, %struct.annotation** %10, align 8
  %42 = getelementptr inbounds %struct.annotation, %struct.annotation* %41, i32 0, i32 0
  %43 = call i32 @pthread_mutex_lock(i32* %42)
  %44 = load %struct.disasm_line*, %struct.disasm_line** %9, align 8
  %45 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %47, align 8
  %49 = load %struct.evsel*, %struct.evsel** %6, align 8
  %50 = getelementptr inbounds %struct.evsel, %struct.evsel* %49, i32 0, i32 0
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @symbol__hists(%struct.TYPE_15__* %48, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %69, label %57

57:                                               ; preds = %34
  %58 = load %struct.annotation*, %struct.annotation** %10, align 8
  %59 = getelementptr inbounds %struct.annotation, %struct.annotation* %58, i32 0, i32 0
  %60 = call i32 @pthread_mutex_unlock(i32* %59)
  %61 = load %struct.disasm_line*, %struct.disasm_line** %9, align 8
  %62 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @ui__warning(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  store i32 1, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %103

69:                                               ; preds = %34
  %70 = load %struct.annotation*, %struct.annotation** %10, align 8
  %71 = getelementptr inbounds %struct.annotation, %struct.annotation* %70, i32 0, i32 0
  %72 = call i32 @pthread_mutex_unlock(i32* %71)
  %73 = load %struct.disasm_line*, %struct.disasm_line** %9, align 8
  %74 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %76, align 8
  %78 = load %struct.map_symbol*, %struct.map_symbol** %8, align 8
  %79 = getelementptr inbounds %struct.map_symbol, %struct.map_symbol* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.evsel*, %struct.evsel** %6, align 8
  %82 = load %struct.hist_browser_timer*, %struct.hist_browser_timer** %7, align 8
  %83 = load %struct.annotate_browser*, %struct.annotate_browser** %5, align 8
  %84 = getelementptr inbounds %struct.annotate_browser, %struct.annotate_browser* %83, i32 0, i32 1
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %84, align 8
  %86 = call i32 @symbol__tui_annotate(%struct.TYPE_15__* %77, i32 %80, %struct.evsel* %81, %struct.hist_browser_timer* %82, %struct.TYPE_16__* %85)
  %87 = load %struct.map_symbol*, %struct.map_symbol** %8, align 8
  %88 = getelementptr inbounds %struct.map_symbol, %struct.map_symbol* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.map_symbol*, %struct.map_symbol** %8, align 8
  %91 = getelementptr inbounds %struct.map_symbol, %struct.map_symbol* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = trunc i64 %23 to i32
  %94 = load %struct.annotate_browser*, %struct.annotate_browser** %5, align 8
  %95 = getelementptr inbounds %struct.annotate_browser, %struct.annotate_browser* %94, i32 0, i32 1
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @sym_title(i32 %89, i32 %92, i8* %25, i32 %93, i32 %98)
  %100 = load %struct.annotate_browser*, %struct.annotate_browser** %5, align 8
  %101 = getelementptr inbounds %struct.annotate_browser, %struct.annotate_browser* %100, i32 0, i32 0
  %102 = call i32 @ui_browser__show_title(%struct.TYPE_14__* %101, i8* %25)
  store i32 1, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %103

103:                                              ; preds = %69, %57, %32
  %104 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %104)
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local %struct.disasm_line* @disasm_line(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @ui_helpline__puts(i8*) #1

declare dso_local %struct.annotation* @symbol__annotation(%struct.TYPE_15__*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @symbol__hists(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @ui__warning(i8*, i32) #1

declare dso_local i32 @symbol__tui_annotate(%struct.TYPE_15__*, i32, %struct.evsel*, %struct.hist_browser_timer*, %struct.TYPE_16__*) #1

declare dso_local i32 @sym_title(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @ui_browser__show_title(%struct.TYPE_14__*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
