; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_bpf_map.c_bpf_map_def__alloc_value.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_bpf_map.c_bpf_map_def__alloc_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_map_def = type { i32 }

@_SC_NPROCESSORS_CONF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.bpf_map_def*)* @bpf_map_def__alloc_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @bpf_map_def__alloc_value(%struct.bpf_map_def* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.bpf_map_def*, align 8
  store %struct.bpf_map_def* %0, %struct.bpf_map_def** %3, align 8
  %4 = load %struct.bpf_map_def*, %struct.bpf_map_def** %3, align 8
  %5 = call i64 @bpf_map_def__is_per_cpu(%struct.bpf_map_def* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %1
  %8 = load %struct.bpf_map_def*, %struct.bpf_map_def** %3, align 8
  %9 = getelementptr inbounds %struct.bpf_map_def, %struct.bpf_map_def* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @round_up(i32 %10, i32 8)
  %12 = load i32, i32* @_SC_NPROCESSORS_CONF, align 4
  %13 = call i32 @sysconf(i32 %12)
  %14 = mul nsw i32 %11, %13
  %15 = call i8* @malloc(i32 %14)
  store i8* %15, i8** %2, align 8
  br label %21

16:                                               ; preds = %1
  %17 = load %struct.bpf_map_def*, %struct.bpf_map_def** %3, align 8
  %18 = getelementptr inbounds %struct.bpf_map_def, %struct.bpf_map_def* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @malloc(i32 %19)
  store i8* %20, i8** %2, align 8
  br label %21

21:                                               ; preds = %16, %7
  %22 = load i8*, i8** %2, align 8
  ret i8* %22
}

declare dso_local i64 @bpf_map_def__is_per_cpu(%struct.bpf_map_def*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @round_up(i32, i32) #1

declare dso_local i32 @sysconf(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
