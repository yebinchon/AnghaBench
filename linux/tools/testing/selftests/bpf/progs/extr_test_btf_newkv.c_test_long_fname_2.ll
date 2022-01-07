; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_test_btf_newkv.c_test_long_fname_2.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_test_btf_newkv.c_test_long_fname_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dummy_tracepoint_args = type { i32 }
%struct.ipv_counts = type { i32 }

@btf_map = common dso_local global i32 0, align 4
@btf_map_legacy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dummy_tracepoint_args*)* @test_long_fname_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_long_fname_2(%struct.dummy_tracepoint_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dummy_tracepoint_args*, align 8
  %4 = alloca %struct.ipv_counts*, align 8
  %5 = alloca i32, align 4
  store %struct.dummy_tracepoint_args* %0, %struct.dummy_tracepoint_args** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.dummy_tracepoint_args*, %struct.dummy_tracepoint_args** %3, align 8
  %7 = getelementptr inbounds %struct.dummy_tracepoint_args, %struct.dummy_tracepoint_args* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %26

11:                                               ; preds = %1
  %12 = call %struct.ipv_counts* @bpf_map_lookup_elem(i32* @btf_map, i32* %5)
  store %struct.ipv_counts* %12, %struct.ipv_counts** %4, align 8
  %13 = load %struct.ipv_counts*, %struct.ipv_counts** %4, align 8
  %14 = icmp ne %struct.ipv_counts* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %26

16:                                               ; preds = %11
  %17 = load %struct.ipv_counts*, %struct.ipv_counts** %4, align 8
  %18 = getelementptr inbounds %struct.ipv_counts, %struct.ipv_counts* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4
  %21 = call %struct.ipv_counts* @bpf_map_lookup_elem(i32* @btf_map_legacy, i32* %5)
  store %struct.ipv_counts* %21, %struct.ipv_counts** %4, align 8
  %22 = load %struct.ipv_counts*, %struct.ipv_counts** %4, align 8
  %23 = icmp ne %struct.ipv_counts* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %26

25:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %24, %15, %10
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local %struct.ipv_counts* @bpf_map_lookup_elem(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
