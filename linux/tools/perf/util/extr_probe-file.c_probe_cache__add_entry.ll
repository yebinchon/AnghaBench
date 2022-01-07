; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-file.c_probe_cache__add_entry.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-file.c_probe_cache__add_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.probe_cache = type { i32 }
%struct.perf_probe_event = type { i32 }
%struct.probe_trace_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.probe_cache_entry = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Added probe cache: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to add probe caches\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @probe_cache__add_entry(%struct.probe_cache* %0, %struct.perf_probe_event* %1, %struct.probe_trace_event* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.probe_cache*, align 8
  %7 = alloca %struct.perf_probe_event*, align 8
  %8 = alloca %struct.probe_trace_event*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.probe_cache_entry*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.probe_cache* %0, %struct.probe_cache** %6, align 8
  store %struct.perf_probe_event* %1, %struct.perf_probe_event** %7, align 8
  store %struct.probe_trace_event* %2, %struct.probe_trace_event** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.probe_cache_entry* null, %struct.probe_cache_entry** %10, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.probe_cache*, %struct.probe_cache** %6, align 8
  %15 = icmp ne %struct.probe_cache* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %4
  %17 = load %struct.perf_probe_event*, %struct.perf_probe_event** %7, align 8
  %18 = icmp ne %struct.perf_probe_event* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load %struct.probe_trace_event*, %struct.probe_trace_event** %8, align 8
  %21 = icmp ne %struct.probe_trace_event* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* %9, align 4
  %24 = icmp sle i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22, %19, %16, %4
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %13, align 4
  br label %91

28:                                               ; preds = %22
  %29 = load %struct.probe_cache*, %struct.probe_cache** %6, align 8
  %30 = load %struct.perf_probe_event*, %struct.perf_probe_event** %7, align 8
  %31 = call %struct.probe_cache_entry* @probe_cache__find(%struct.probe_cache* %29, %struct.perf_probe_event* %30)
  store %struct.probe_cache_entry* %31, %struct.probe_cache_entry** %10, align 8
  %32 = load %struct.probe_cache_entry*, %struct.probe_cache_entry** %10, align 8
  %33 = icmp ne %struct.probe_cache_entry* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = load %struct.probe_cache_entry*, %struct.probe_cache_entry** %10, align 8
  %36 = getelementptr inbounds %struct.probe_cache_entry, %struct.probe_cache_entry* %35, i32 0, i32 0
  %37 = call i32 @list_del_init(i32* %36)
  %38 = load %struct.probe_cache_entry*, %struct.probe_cache_entry** %10, align 8
  %39 = call i32 @probe_cache_entry__delete(%struct.probe_cache_entry* %38)
  br label %40

40:                                               ; preds = %34, %28
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %13, align 4
  %43 = load %struct.perf_probe_event*, %struct.perf_probe_event** %7, align 8
  %44 = call %struct.probe_cache_entry* @probe_cache_entry__new(%struct.perf_probe_event* %43)
  store %struct.probe_cache_entry* %44, %struct.probe_cache_entry** %10, align 8
  %45 = load %struct.probe_cache_entry*, %struct.probe_cache_entry** %10, align 8
  %46 = icmp ne %struct.probe_cache_entry* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %40
  br label %91

48:                                               ; preds = %40
  store i32 0, i32* %12, align 4
  br label %49

49:                                               ; preds = %80, %48
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %83

53:                                               ; preds = %49
  %54 = load %struct.probe_trace_event*, %struct.probe_trace_event** %8, align 8
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %54, i64 %56
  %58 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %53
  br label %80

63:                                               ; preds = %53
  %64 = load %struct.probe_trace_event*, %struct.probe_trace_event** %8, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %64, i64 %66
  %68 = call i8* @synthesize_probe_trace_command(%struct.probe_trace_event* %67)
  store i8* %68, i8** %11, align 8
  %69 = load i8*, i8** %11, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %63
  br label %91

72:                                               ; preds = %63
  %73 = load %struct.probe_cache_entry*, %struct.probe_cache_entry** %10, align 8
  %74 = getelementptr inbounds %struct.probe_cache_entry, %struct.probe_cache_entry* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i8*, i8** %11, align 8
  %77 = call i32 @strlist__add(i32 %75, i8* %76)
  %78 = load i8*, i8** %11, align 8
  %79 = call i32 @free(i8* %78)
  br label %80

80:                                               ; preds = %72, %62
  %81 = load i32, i32* %12, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %12, align 4
  br label %49

83:                                               ; preds = %49
  %84 = load %struct.probe_cache_entry*, %struct.probe_cache_entry** %10, align 8
  %85 = getelementptr inbounds %struct.probe_cache_entry, %struct.probe_cache_entry* %84, i32 0, i32 0
  %86 = load %struct.probe_cache*, %struct.probe_cache** %6, align 8
  %87 = getelementptr inbounds %struct.probe_cache, %struct.probe_cache* %86, i32 0, i32 0
  %88 = call i32 @list_add_tail(i32* %85, i32* %87)
  %89 = load i32, i32* %9, align 4
  %90 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %89)
  store i32 0, i32* %5, align 4
  br label %96

91:                                               ; preds = %71, %47, %25
  %92 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %93 = load %struct.probe_cache_entry*, %struct.probe_cache_entry** %10, align 8
  %94 = call i32 @probe_cache_entry__delete(%struct.probe_cache_entry* %93)
  %95 = load i32, i32* %13, align 4
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %91, %83
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local %struct.probe_cache_entry* @probe_cache__find(%struct.probe_cache*, %struct.perf_probe_event*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @probe_cache_entry__delete(%struct.probe_cache_entry*) #1

declare dso_local %struct.probe_cache_entry* @probe_cache_entry__new(%struct.perf_probe_event*) #1

declare dso_local i8* @synthesize_probe_trace_command(%struct.probe_trace_event*) #1

declare dso_local i32 @strlist__add(i32, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
