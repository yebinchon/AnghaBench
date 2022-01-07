; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_bpf-loader.c_bpf_map_op__delete.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_bpf-loader.c_bpf_map_op__delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_map_op = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@BPF_MAP_KEY_RANGES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpf_map_op*)* @bpf_map_op__delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bpf_map_op__delete(%struct.bpf_map_op* %0) #0 {
  %2 = alloca %struct.bpf_map_op*, align 8
  store %struct.bpf_map_op* %0, %struct.bpf_map_op** %2, align 8
  %3 = load %struct.bpf_map_op*, %struct.bpf_map_op** %2, align 8
  %4 = getelementptr inbounds %struct.bpf_map_op, %struct.bpf_map_op* %3, i32 0, i32 2
  %5 = call i32 @list_empty(i32* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load %struct.bpf_map_op*, %struct.bpf_map_op** %2, align 8
  %9 = getelementptr inbounds %struct.bpf_map_op, %struct.bpf_map_op* %8, i32 0, i32 2
  %10 = call i32 @list_del_init(i32* %9)
  br label %11

11:                                               ; preds = %7, %1
  %12 = load %struct.bpf_map_op*, %struct.bpf_map_op** %2, align 8
  %13 = getelementptr inbounds %struct.bpf_map_op, %struct.bpf_map_op* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @BPF_MAP_KEY_RANGES, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %11
  %18 = load %struct.bpf_map_op*, %struct.bpf_map_op** %2, align 8
  %19 = getelementptr inbounds %struct.bpf_map_op, %struct.bpf_map_op* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @parse_events__clear_array(i32* %20)
  br label %22

22:                                               ; preds = %17, %11
  %23 = load %struct.bpf_map_op*, %struct.bpf_map_op** %2, align 8
  %24 = call i32 @free(%struct.bpf_map_op* %23)
  ret void
}

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @parse_events__clear_array(i32*) #1

declare dso_local i32 @free(%struct.bpf_map_op*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
