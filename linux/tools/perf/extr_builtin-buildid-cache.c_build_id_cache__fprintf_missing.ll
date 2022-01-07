; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-buildid-cache.c_build_id_cache__fprintf_missing.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-buildid-cache.c_build_id_cache__fprintf_missing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_session = type { i32 }

@dso__missing_buildid_cache = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_session*, i32*)* @build_id_cache__fprintf_missing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_id_cache__fprintf_missing(%struct.perf_session* %0, i32* %1) #0 {
  %3 = alloca %struct.perf_session*, align 8
  %4 = alloca i32*, align 8
  store %struct.perf_session* %0, %struct.perf_session** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.perf_session*, %struct.perf_session** %3, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = load i32, i32* @dso__missing_buildid_cache, align 4
  %8 = call i32 @perf_session__fprintf_dsos_buildid(%struct.perf_session* %5, i32* %6, i32 %7, i32 0)
  ret i32 0
}

declare dso_local i32 @perf_session__fprintf_dsos_buildid(%struct.perf_session*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
