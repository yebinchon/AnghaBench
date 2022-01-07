; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-top.c_perf_top__parse_source.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-top.c_perf_top__parse_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_top = type { %struct.hist_entry*, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.hist_entry = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.map*, %struct.symbol* }
%struct.map = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.symbol = type { i32 }
%struct.evsel = type { i32 }
%struct.annotation = type { i32 }

@DSO_BINARY_TYPE__KALLSYMS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [58 x i8] c"Can't annotate %s: No vmlinux file was found in the path\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Not enough memory for annotating '%s' symbol!\0A\00", align 1
@BUFSIZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Couldn't annotate %s: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_top*, %struct.hist_entry*)* @perf_top__parse_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_top__parse_source(%struct.perf_top* %0, %struct.hist_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_top*, align 8
  %5 = alloca %struct.hist_entry*, align 8
  %6 = alloca %struct.evsel*, align 8
  %7 = alloca %struct.symbol*, align 8
  %8 = alloca %struct.annotation*, align 8
  %9 = alloca %struct.map*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.perf_top* %0, %struct.perf_top** %4, align 8
  store %struct.hist_entry* %1, %struct.hist_entry** %5, align 8
  store i32 -1, i32* %10, align 4
  %13 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %14 = icmp ne %struct.hist_entry* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %17 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load %struct.symbol*, %struct.symbol** %18, align 8
  %20 = icmp ne %struct.symbol* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %15, %2
  store i32 -1, i32* %3, align 4
  br label %112

22:                                               ; preds = %15
  %23 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %24 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call %struct.evsel* @hists_to_evsel(i32 %25)
  store %struct.evsel* %26, %struct.evsel** %6, align 8
  %27 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %28 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load %struct.symbol*, %struct.symbol** %29, align 8
  store %struct.symbol* %30, %struct.symbol** %7, align 8
  %31 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %32 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load %struct.map*, %struct.map** %33, align 8
  store %struct.map* %34, %struct.map** %9, align 8
  %35 = load %struct.map*, %struct.map** %9, align 8
  %36 = getelementptr inbounds %struct.map, %struct.map* %35, i32 0, i32 0
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @DSO_BINARY_TYPE__KALLSYMS, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %22
  %43 = load %struct.map*, %struct.map** %9, align 8
  %44 = getelementptr inbounds %struct.map, %struct.map* %43, i32 0, i32 0
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = call i32 @dso__is_kcore(%struct.TYPE_8__* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %42
  %49 = load %struct.symbol*, %struct.symbol** %7, align 8
  %50 = getelementptr inbounds %struct.symbol, %struct.symbol* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = call i32 @sleep(i32 1)
  store i32 -1, i32* %3, align 4
  br label %112

54:                                               ; preds = %42, %22
  %55 = load %struct.symbol*, %struct.symbol** %7, align 8
  %56 = call %struct.annotation* @symbol__annotation(%struct.symbol* %55)
  store %struct.annotation* %56, %struct.annotation** %8, align 8
  %57 = load %struct.annotation*, %struct.annotation** %8, align 8
  %58 = getelementptr inbounds %struct.annotation, %struct.annotation* %57, i32 0, i32 0
  %59 = call i32 @pthread_mutex_lock(i32* %58)
  %60 = load %struct.symbol*, %struct.symbol** %7, align 8
  %61 = load %struct.perf_top*, %struct.perf_top** %4, align 8
  %62 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %61, i32 0, i32 2
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @symbol__hists(%struct.symbol* %60, i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %79, label %69

69:                                               ; preds = %54
  %70 = load %struct.annotation*, %struct.annotation** %8, align 8
  %71 = getelementptr inbounds %struct.annotation, %struct.annotation* %70, i32 0, i32 0
  %72 = call i32 @pthread_mutex_unlock(i32* %71)
  %73 = load %struct.symbol*, %struct.symbol** %7, align 8
  %74 = getelementptr inbounds %struct.symbol, %struct.symbol* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  %77 = call i32 @sleep(i32 1)
  %78 = load i32, i32* %10, align 4
  store i32 %78, i32* %3, align 4
  br label %112

79:                                               ; preds = %54
  %80 = load %struct.symbol*, %struct.symbol** %7, align 8
  %81 = load %struct.map*, %struct.map** %9, align 8
  %82 = load %struct.evsel*, %struct.evsel** %6, align 8
  %83 = load %struct.perf_top*, %struct.perf_top** %4, align 8
  %84 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %83, i32 0, i32 1
  %85 = call i32 @symbol__annotate(%struct.symbol* %80, %struct.map* %81, %struct.evsel* %82, i32 0, i32* %84, i32* null)
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %79
  %89 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %90 = load %struct.perf_top*, %struct.perf_top** %4, align 8
  %91 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %90, i32 0, i32 0
  store %struct.hist_entry* %89, %struct.hist_entry** %91, align 8
  br label %107

92:                                               ; preds = %79
  %93 = load i32, i32* @BUFSIZ, align 4
  %94 = zext i32 %93 to i64
  %95 = call i8* @llvm.stacksave()
  store i8* %95, i8** %11, align 8
  %96 = alloca i8, i64 %94, align 16
  store i64 %94, i64* %12, align 8
  %97 = load %struct.symbol*, %struct.symbol** %7, align 8
  %98 = load %struct.map*, %struct.map** %9, align 8
  %99 = load i32, i32* %10, align 4
  %100 = trunc i64 %94 to i32
  %101 = call i32 @symbol__strerror_disassemble(%struct.symbol* %97, %struct.map* %98, i32 %99, i8* %96, i32 %100)
  %102 = load %struct.symbol*, %struct.symbol** %7, align 8
  %103 = getelementptr inbounds %struct.symbol, %struct.symbol* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %104, i8* %96)
  %106 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %106)
  br label %107

107:                                              ; preds = %92, %88
  %108 = load %struct.annotation*, %struct.annotation** %8, align 8
  %109 = getelementptr inbounds %struct.annotation, %struct.annotation* %108, i32 0, i32 0
  %110 = call i32 @pthread_mutex_unlock(i32* %109)
  %111 = load i32, i32* %10, align 4
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %107, %69, %48, %21
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local %struct.evsel* @hists_to_evsel(i32) #1

declare dso_local i32 @dso__is_kcore(%struct.TYPE_8__*) #1

declare dso_local i32 @pr_err(i8*, i32, ...) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local %struct.annotation* @symbol__annotation(%struct.symbol*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @symbol__hists(%struct.symbol*, i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @symbol__annotate(%struct.symbol*, %struct.map*, %struct.evsel*, i32, i32*, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @symbol__strerror_disassemble(%struct.symbol*, %struct.map*, i32, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
