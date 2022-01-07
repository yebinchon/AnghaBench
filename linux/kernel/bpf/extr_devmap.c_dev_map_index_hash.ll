; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_devmap.c_dev_map_index_hash.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_devmap.c_dev_map_index_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hlist_head = type { i32 }
%struct.bpf_dtab = type { i32, %struct.hlist_head* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hlist_head* (%struct.bpf_dtab*, i32)* @dev_map_index_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hlist_head* @dev_map_index_hash(%struct.bpf_dtab* %0, i32 %1) #0 {
  %3 = alloca %struct.bpf_dtab*, align 8
  %4 = alloca i32, align 4
  store %struct.bpf_dtab* %0, %struct.bpf_dtab** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bpf_dtab*, %struct.bpf_dtab** %3, align 8
  %6 = getelementptr inbounds %struct.bpf_dtab, %struct.bpf_dtab* %5, i32 0, i32 1
  %7 = load %struct.hlist_head*, %struct.hlist_head** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.bpf_dtab*, %struct.bpf_dtab** %3, align 8
  %10 = getelementptr inbounds %struct.bpf_dtab, %struct.bpf_dtab* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sub nsw i32 %11, 1
  %13 = and i32 %8, %12
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %7, i64 %14
  ret %struct.hlist_head* %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
