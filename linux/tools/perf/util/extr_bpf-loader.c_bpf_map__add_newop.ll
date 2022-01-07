; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_bpf-loader.c_bpf_map__add_newop.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_bpf-loader.c_bpf_map__add_newop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_map_op = type { i32 }
%struct.bpf_map = type { i32 }
%struct.parse_events_term = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bpf_map_op* (%struct.bpf_map*, %struct.parse_events_term*)* @bpf_map__add_newop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bpf_map_op* @bpf_map__add_newop(%struct.bpf_map* %0, %struct.parse_events_term* %1) #0 {
  %3 = alloca %struct.bpf_map_op*, align 8
  %4 = alloca %struct.bpf_map*, align 8
  %5 = alloca %struct.parse_events_term*, align 8
  %6 = alloca %struct.bpf_map_op*, align 8
  %7 = alloca i32, align 4
  store %struct.bpf_map* %0, %struct.bpf_map** %4, align 8
  store %struct.parse_events_term* %1, %struct.parse_events_term** %5, align 8
  %8 = load %struct.parse_events_term*, %struct.parse_events_term** %5, align 8
  %9 = call %struct.bpf_map_op* @bpf_map_op__new(%struct.parse_events_term* %8)
  store %struct.bpf_map_op* %9, %struct.bpf_map_op** %6, align 8
  %10 = load %struct.bpf_map_op*, %struct.bpf_map_op** %6, align 8
  %11 = call i64 @IS_ERR(%struct.bpf_map_op* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load %struct.bpf_map_op*, %struct.bpf_map_op** %6, align 8
  store %struct.bpf_map_op* %14, %struct.bpf_map_op** %3, align 8
  br label %28

15:                                               ; preds = %2
  %16 = load %struct.bpf_map*, %struct.bpf_map** %4, align 8
  %17 = load %struct.bpf_map_op*, %struct.bpf_map_op** %6, align 8
  %18 = call i32 @bpf_map__add_op(%struct.bpf_map* %16, %struct.bpf_map_op* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load %struct.bpf_map_op*, %struct.bpf_map_op** %6, align 8
  %23 = call i32 @bpf_map_op__delete(%struct.bpf_map_op* %22)
  %24 = load i32, i32* %7, align 4
  %25 = call %struct.bpf_map_op* @ERR_PTR(i32 %24)
  store %struct.bpf_map_op* %25, %struct.bpf_map_op** %3, align 8
  br label %28

26:                                               ; preds = %15
  %27 = load %struct.bpf_map_op*, %struct.bpf_map_op** %6, align 8
  store %struct.bpf_map_op* %27, %struct.bpf_map_op** %3, align 8
  br label %28

28:                                               ; preds = %26, %21, %13
  %29 = load %struct.bpf_map_op*, %struct.bpf_map_op** %3, align 8
  ret %struct.bpf_map_op* %29
}

declare dso_local %struct.bpf_map_op* @bpf_map_op__new(%struct.parse_events_term*) #1

declare dso_local i64 @IS_ERR(%struct.bpf_map_op*) #1

declare dso_local i32 @bpf_map__add_op(%struct.bpf_map*, %struct.bpf_map_op*) #1

declare dso_local i32 @bpf_map_op__delete(%struct.bpf_map_op*) #1

declare dso_local %struct.bpf_map_op* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
