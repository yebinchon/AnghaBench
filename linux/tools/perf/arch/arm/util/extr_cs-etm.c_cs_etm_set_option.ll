; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/arch/arm/util/extr_cs-etm.c_cs_etm_set_option.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/arch/arm/util/extr_cs-etm.c_cs_etm_set_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auxtrace_record = type { i32 }
%struct.evsel = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.perf_cpu_map* }
%struct.perf_cpu_map = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ETM_OPT_CTXTID = common dso_local global i32 0, align 4
@ETM_OPT_TS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.auxtrace_record*, %struct.evsel*, i32)* @cs_etm_set_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs_etm_set_option(%struct.auxtrace_record* %0, %struct.evsel* %1, i32 %2) #0 {
  %4 = alloca %struct.auxtrace_record*, align 8
  %5 = alloca %struct.evsel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.perf_cpu_map*, align 8
  %10 = alloca %struct.perf_cpu_map*, align 8
  store %struct.auxtrace_record* %0, %struct.auxtrace_record** %4, align 8
  store %struct.evsel* %1, %struct.evsel** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %8, align 4
  %13 = load %struct.evsel*, %struct.evsel** %5, align 8
  %14 = getelementptr inbounds %struct.evsel, %struct.evsel* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %17, align 8
  store %struct.perf_cpu_map* %18, %struct.perf_cpu_map** %9, align 8
  %19 = call %struct.perf_cpu_map* @perf_cpu_map__new(i32* null)
  store %struct.perf_cpu_map* %19, %struct.perf_cpu_map** %10, align 8
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %73, %3
  %21 = load i32, i32* %7, align 4
  %22 = call i32 (...) @cpu__max_cpu()
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %76

24:                                               ; preds = %20
  %25 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %9, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @cpu_map__has(%struct.perf_cpu_map* %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %10, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @cpu_map__has(%struct.perf_cpu_map* %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29, %24
  br label %73

35:                                               ; preds = %29
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @ETM_OPT_CTXTID, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %35
  %41 = load %struct.auxtrace_record*, %struct.auxtrace_record** %4, align 8
  %42 = load %struct.evsel*, %struct.evsel** %5, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @cs_etm_set_context_id(%struct.auxtrace_record* %41, %struct.evsel* %42, i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %77

48:                                               ; preds = %40
  br label %49

49:                                               ; preds = %48, %35
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @ETM_OPT_TS, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %49
  %55 = load %struct.auxtrace_record*, %struct.auxtrace_record** %4, align 8
  %56 = load %struct.evsel*, %struct.evsel** %5, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @cs_etm_set_timestamp(%struct.auxtrace_record* %55, %struct.evsel* %56, i32 %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  br label %77

62:                                               ; preds = %54
  br label %63

63:                                               ; preds = %62, %49
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @ETM_OPT_CTXTID, align 4
  %66 = load i32, i32* @ETM_OPT_TS, align 4
  %67 = or i32 %65, %66
  %68 = xor i32 %67, -1
  %69 = and i32 %64, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  br label %77

72:                                               ; preds = %63
  br label %73

73:                                               ; preds = %72, %34
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %7, align 4
  br label %20

76:                                               ; preds = %20
  store i32 0, i32* %8, align 4
  br label %77

77:                                               ; preds = %76, %71, %61, %47
  %78 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %10, align 8
  %79 = call i32 @perf_cpu_map__put(%struct.perf_cpu_map* %78)
  %80 = load i32, i32* %8, align 4
  ret i32 %80
}

declare dso_local %struct.perf_cpu_map* @perf_cpu_map__new(i32*) #1

declare dso_local i32 @cpu__max_cpu(...) #1

declare dso_local i32 @cpu_map__has(%struct.perf_cpu_map*, i32) #1

declare dso_local i32 @cs_etm_set_context_id(%struct.auxtrace_record*, %struct.evsel*, i32) #1

declare dso_local i32 @cs_etm_set_timestamp(%struct.auxtrace_record*, %struct.evsel*, i32) #1

declare dso_local i32 @perf_cpu_map__put(%struct.perf_cpu_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
