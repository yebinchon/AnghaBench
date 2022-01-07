; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-script.c_perf_evsel__do_check_stype.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-script.c_perf_evsel__do_check_stype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.evsel = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.perf_event_attr }
%struct.perf_event_attr = type { i32, i32 }

@output = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [79 x i8] c"Samples for '%s' event do not have %s attribute set. Cannot print '%s' field.\0A\00", align 1
@.str.1 = private unnamed_addr constant [75 x i8] c"Samples for '%s' event do not have %s attribute set. Skipping '%s' field.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evsel*, i32, i8*, i32, i32)* @perf_evsel__do_check_stype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_evsel__do_check_stype(%struct.evsel* %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.evsel*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.perf_event_attr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.evsel* %0, %struct.evsel** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.evsel*, %struct.evsel** %7, align 8
  %16 = getelementptr inbounds %struct.evsel, %struct.evsel* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store %struct.perf_event_attr* %17, %struct.perf_event_attr** %12, align 8
  %18 = load %struct.perf_event_attr*, %struct.perf_event_attr** %12, align 8
  %19 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @output_type(i32 %20)
  store i32 %21, i32* %13, align 4
  %22 = load %struct.perf_event_attr*, %struct.perf_event_attr** %12, align 8
  %23 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %8, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %68

29:                                               ; preds = %5
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @output, align 8
  %31 = load i32, i32* %13, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %10, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %29
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 0, i32* %6, align 4
  br label %68

43:                                               ; preds = %39
  %44 = load %struct.evsel*, %struct.evsel** %7, align 8
  %45 = call i8* @perf_evsel__name(%struct.evsel* %44)
  store i8* %45, i8** %14, align 8
  %46 = load i8*, i8** %14, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @output_field2str(i32 %48)
  %50 = call i32 @pr_err(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i8* %46, i8* %47, i32 %49)
  store i32 -1, i32* %6, align 4
  br label %68

51:                                               ; preds = %29
  %52 = load i32, i32* %10, align 4
  %53 = xor i32 %52, -1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** @output, align 8
  %55 = load i32, i32* %13, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, %53
  store i32 %60, i32* %58, align 4
  %61 = load %struct.evsel*, %struct.evsel** %7, align 8
  %62 = call i8* @perf_evsel__name(%struct.evsel* %61)
  store i8* %62, i8** %14, align 8
  %63 = load i8*, i8** %14, align 8
  %64 = load i8*, i8** %9, align 8
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @output_field2str(i32 %65)
  %67 = call i32 @pr_debug(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0), i8* %63, i8* %64, i32 %66)
  store i32 0, i32* %6, align 4
  br label %68

68:                                               ; preds = %51, %43, %42, %28
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

declare dso_local i32 @output_type(i32) #1

declare dso_local i8* @perf_evsel__name(%struct.evsel*) #1

declare dso_local i32 @pr_err(i8*, i8*, i8*, i32) #1

declare dso_local i32 @output_field2str(i32) #1

declare dso_local i32 @pr_debug(i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
