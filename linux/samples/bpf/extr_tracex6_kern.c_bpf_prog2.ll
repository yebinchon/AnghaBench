; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_tracex6_kern.c_bpf_prog2.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_tracex6_kern.c_bpf_prog2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }
%struct.bpf_perf_event_value = type { i32 }

@counters = common dso_local global i32 0, align 4
@values2 = common dso_local global i32 0, align 4
@BPF_NOEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpf_prog2(%struct.pt_regs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bpf_perf_event_value*, align 8
  %6 = alloca %struct.bpf_perf_event_value, align 4
  %7 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  %8 = call i32 (...) @bpf_get_smp_processor_id()
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @bpf_perf_event_read_value(i32* @counters, i32 %9, %struct.bpf_perf_event_value* %6, i32 4)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %26

14:                                               ; preds = %1
  %15 = call %struct.bpf_perf_event_value* @bpf_map_lookup_elem(i32* @values2, i32* %4)
  store %struct.bpf_perf_event_value* %15, %struct.bpf_perf_event_value** %5, align 8
  %16 = load %struct.bpf_perf_event_value*, %struct.bpf_perf_event_value** %5, align 8
  %17 = icmp ne %struct.bpf_perf_event_value* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load %struct.bpf_perf_event_value*, %struct.bpf_perf_event_value** %5, align 8
  %20 = bitcast %struct.bpf_perf_event_value* %19 to i8*
  %21 = bitcast %struct.bpf_perf_event_value* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %21, i64 4, i1 false)
  br label %25

22:                                               ; preds = %14
  %23 = load i32, i32* @BPF_NOEXIST, align 4
  %24 = call i32 @bpf_map_update_elem(i32* @values2, i32* %4, %struct.bpf_perf_event_value* %6, i32 %23)
  br label %25

25:                                               ; preds = %22, %18
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %13
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @bpf_get_smp_processor_id(...) #1

declare dso_local i32 @bpf_perf_event_read_value(i32*, i32, %struct.bpf_perf_event_value*, i32) #1

declare dso_local %struct.bpf_perf_event_value* @bpf_map_lookup_elem(i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @bpf_map_update_elem(i32*, i32*, %struct.bpf_perf_event_value*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
