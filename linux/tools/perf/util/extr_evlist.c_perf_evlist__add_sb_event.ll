; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_evlist.c_perf_evlist__add_sb_event.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_evlist.c_perf_evlist__add_sb_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evlist = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.perf_event_attr = type { i32 }
%struct.evsel = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i32 }

@.str = private unnamed_addr constant [49 x i8] c"enabling sample_id_all for all side band events\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_evlist__add_sb_event(%struct.evlist** %0, %struct.perf_event_attr* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.evlist**, align 8
  %7 = alloca %struct.perf_event_attr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.evsel*, align 8
  %11 = alloca i32, align 4
  store %struct.evlist** %0, %struct.evlist*** %6, align 8
  store %struct.perf_event_attr* %1, %struct.perf_event_attr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %12 = load %struct.evlist**, %struct.evlist*** %6, align 8
  %13 = load %struct.evlist*, %struct.evlist** %12, align 8
  %14 = icmp eq %struct.evlist* %13, null
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %11, align 4
  %16 = load %struct.evlist**, %struct.evlist*** %6, align 8
  %17 = load %struct.evlist*, %struct.evlist** %16, align 8
  %18 = icmp eq %struct.evlist* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = call %struct.evlist* (...) @evlist__new()
  %21 = load %struct.evlist**, %struct.evlist*** %6, align 8
  store %struct.evlist* %20, %struct.evlist** %21, align 8
  br label %22

22:                                               ; preds = %19, %4
  %23 = load %struct.evlist**, %struct.evlist*** %6, align 8
  %24 = load %struct.evlist*, %struct.evlist** %23, align 8
  %25 = icmp eq %struct.evlist* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 -1, i32* %5, align 4
  br label %69

27:                                               ; preds = %22
  %28 = load %struct.perf_event_attr*, %struct.perf_event_attr** %7, align 8
  %29 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = call i32 @pr_warning(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.perf_event_attr*, %struct.perf_event_attr** %7, align 8
  %35 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %34, i32 0, i32 0
  store i32 1, i32* %35, align 4
  br label %36

36:                                               ; preds = %32, %27
  %37 = load %struct.perf_event_attr*, %struct.perf_event_attr** %7, align 8
  %38 = load %struct.evlist**, %struct.evlist*** %6, align 8
  %39 = load %struct.evlist*, %struct.evlist** %38, align 8
  %40 = getelementptr inbounds %struct.evlist, %struct.evlist* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.evsel* @perf_evsel__new_idx(%struct.perf_event_attr* %37, i32 %42)
  store %struct.evsel* %43, %struct.evsel** %10, align 8
  %44 = load %struct.evsel*, %struct.evsel** %10, align 8
  %45 = icmp ne %struct.evsel* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %36
  br label %60

47:                                               ; preds = %36
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.evsel*, %struct.evsel** %10, align 8
  %50 = getelementptr inbounds %struct.evsel, %struct.evsel* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  store i32 %48, i32* %51, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = load %struct.evsel*, %struct.evsel** %10, align 8
  %54 = getelementptr inbounds %struct.evsel, %struct.evsel* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i8* %52, i8** %55, align 8
  %56 = load %struct.evlist**, %struct.evlist*** %6, align 8
  %57 = load %struct.evlist*, %struct.evlist** %56, align 8
  %58 = load %struct.evsel*, %struct.evsel** %10, align 8
  %59 = call i32 @evlist__add(%struct.evlist* %57, %struct.evsel* %58)
  store i32 0, i32* %5, align 4
  br label %69

60:                                               ; preds = %46
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load %struct.evlist**, %struct.evlist*** %6, align 8
  %65 = load %struct.evlist*, %struct.evlist** %64, align 8
  %66 = call i32 @evlist__delete(%struct.evlist* %65)
  %67 = load %struct.evlist**, %struct.evlist*** %6, align 8
  store %struct.evlist* null, %struct.evlist** %67, align 8
  br label %68

68:                                               ; preds = %63, %60
  store i32 -1, i32* %5, align 4
  br label %69

69:                                               ; preds = %68, %47, %26
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local %struct.evlist* @evlist__new(...) #1

declare dso_local i32 @pr_warning(i8*) #1

declare dso_local %struct.evsel* @perf_evsel__new_idx(%struct.perf_event_attr*, i32) #1

declare dso_local i32 @evlist__add(%struct.evlist*, %struct.evsel*) #1

declare dso_local i32 @evlist__delete(%struct.evlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
