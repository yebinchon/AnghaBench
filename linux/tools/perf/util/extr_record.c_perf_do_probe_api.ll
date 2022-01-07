; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_record.c_perf_do_probe_api.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_record.c_perf_do_probe_api.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evsel = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.evlist = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@perf_do_probe_api.pid = internal global i32 -1, align 4
@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EACCES = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32 (%struct.evsel*)*, i32, i8*)* @perf_do_probe_api to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_do_probe_api(i32 (%struct.evsel*)* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32 (%struct.evsel*)*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.evlist*, align 8
  %9 = alloca %struct.evsel*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 (%struct.evsel*)* %0, i32 (%struct.evsel*)** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %13 = call i64 (...) @perf_event_open_cloexec_flag()
  store i64 %13, i64* %10, align 8
  %14 = load i32, i32* @EAGAIN, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %11, align 4
  %16 = call %struct.evlist* (...) @evlist__new()
  store %struct.evlist* %16, %struct.evlist** %8, align 8
  %17 = load %struct.evlist*, %struct.evlist** %8, align 8
  %18 = icmp ne %struct.evlist* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %82

22:                                               ; preds = %3
  %23 = load %struct.evlist*, %struct.evlist** %8, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i64 @parse_events(%struct.evlist* %23, i8* %24, i32* null)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %78

28:                                               ; preds = %22
  %29 = load %struct.evlist*, %struct.evlist** %8, align 8
  %30 = call %struct.evsel* @evlist__first(%struct.evlist* %29)
  store %struct.evsel* %30, %struct.evsel** %9, align 8
  br label %31

31:                                               ; preds = %28, %48
  %32 = load %struct.evsel*, %struct.evsel** %9, align 8
  %33 = getelementptr inbounds %struct.evsel, %struct.evsel* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* @perf_do_probe_api.pid, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i64, i64* %10, align 8
  %38 = call i32 @sys_perf_event_open(i32* %34, i32 %35, i32 %36, i32 -1, i64 %37)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %31
  %42 = load i32, i32* @perf_do_probe_api.pid, align 4
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load i64, i64* @errno, align 8
  %46 = load i64, i64* @EACCES, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i32 0, i32* @perf_do_probe_api.pid, align 4
  br label %31

49:                                               ; preds = %44, %41
  br label %78

50:                                               ; preds = %31
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @close(i32 %52)
  %54 = load i32 (%struct.evsel*)*, i32 (%struct.evsel*)** %5, align 8
  %55 = load %struct.evsel*, %struct.evsel** %9, align 8
  %56 = call i32 %54(%struct.evsel* %55)
  %57 = load %struct.evsel*, %struct.evsel** %9, align 8
  %58 = getelementptr inbounds %struct.evsel, %struct.evsel* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* @perf_do_probe_api.pid, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i64, i64* %10, align 8
  %63 = call i32 @sys_perf_event_open(i32* %59, i32 %60, i32 %61, i32 -1, i64 %62)
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %51
  %67 = load i64, i64* @errno, align 8
  %68 = load i64, i64* @EINVAL, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load i64, i64* @EINVAL, align 8
  %72 = sub nsw i64 0, %71
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %11, align 4
  br label %74

74:                                               ; preds = %70, %66
  br label %78

75:                                               ; preds = %51
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @close(i32 %76)
  store i32 0, i32* %11, align 4
  br label %78

78:                                               ; preds = %75, %74, %49, %27
  %79 = load %struct.evlist*, %struct.evlist** %8, align 8
  %80 = call i32 @evlist__delete(%struct.evlist* %79)
  %81 = load i32, i32* %11, align 4
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %78, %19
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i64 @perf_event_open_cloexec_flag(...) #1

declare dso_local %struct.evlist* @evlist__new(...) #1

declare dso_local i64 @parse_events(%struct.evlist*, i8*, i32*) #1

declare dso_local %struct.evsel* @evlist__first(%struct.evlist*) #1

declare dso_local i32 @sys_perf_event_open(i32*, i32, i32, i32, i64) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @evlist__delete(%struct.evlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
