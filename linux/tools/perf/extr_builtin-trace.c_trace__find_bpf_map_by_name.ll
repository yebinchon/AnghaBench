; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_trace__find_bpf_map_by_name.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_trace__find_bpf_map_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_map = type { i32 }
%struct.trace = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bpf_map* (%struct.trace*, i8*)* @trace__find_bpf_map_by_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bpf_map* @trace__find_bpf_map_by_name(%struct.trace* %0, i8* %1) #0 {
  %3 = alloca %struct.bpf_map*, align 8
  %4 = alloca %struct.trace*, align 8
  %5 = alloca i8*, align 8
  store %struct.trace* %0, %struct.trace** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.trace*, %struct.trace** %4, align 8
  %7 = getelementptr inbounds %struct.trace, %struct.trace* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store %struct.bpf_map* null, %struct.bpf_map** %3, align 8
  br label %17

11:                                               ; preds = %2
  %12 = load %struct.trace*, %struct.trace** %4, align 8
  %13 = getelementptr inbounds %struct.trace, %struct.trace* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call %struct.bpf_map* @bpf_object__find_map_by_name(i32* %14, i8* %15)
  store %struct.bpf_map* %16, %struct.bpf_map** %3, align 8
  br label %17

17:                                               ; preds = %11, %10
  %18 = load %struct.bpf_map*, %struct.bpf_map** %3, align 8
  ret %struct.bpf_map* %18
}

declare dso_local %struct.bpf_map* @bpf_object__find_map_by_name(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
