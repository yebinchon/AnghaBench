; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_check_map_prealloc.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_check_map_prealloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_map = type { i64, i32 }

@BPF_MAP_TYPE_HASH = common dso_local global i64 0, align 8
@BPF_MAP_TYPE_PERCPU_HASH = common dso_local global i64 0, align 8
@BPF_MAP_TYPE_HASH_OF_MAPS = common dso_local global i64 0, align 8
@BPF_F_NO_PREALLOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_map*)* @check_map_prealloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_map_prealloc(%struct.bpf_map* %0) #0 {
  %2 = alloca %struct.bpf_map*, align 8
  store %struct.bpf_map* %0, %struct.bpf_map** %2, align 8
  %3 = load %struct.bpf_map*, %struct.bpf_map** %2, align 8
  %4 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @BPF_MAP_TYPE_HASH, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %20

8:                                                ; preds = %1
  %9 = load %struct.bpf_map*, %struct.bpf_map** %2, align 8
  %10 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @BPF_MAP_TYPE_PERCPU_HASH, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %8
  %15 = load %struct.bpf_map*, %struct.bpf_map** %2, align 8
  %16 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @BPF_MAP_TYPE_HASH_OF_MAPS, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %28, label %20

20:                                               ; preds = %14, %8, %1
  %21 = load %struct.bpf_map*, %struct.bpf_map** %2, align 8
  %22 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @BPF_F_NO_PREALLOC, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  br label %28

28:                                               ; preds = %20, %14
  %29 = phi i1 [ true, %14 ], [ %27, %20 ]
  %30 = zext i1 %29 to i32
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
