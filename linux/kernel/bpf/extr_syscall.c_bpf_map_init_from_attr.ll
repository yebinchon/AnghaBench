; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_syscall.c_bpf_map_init_from_attr.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_syscall.c_bpf_map_init_from_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_map = type { i32, i32, i32, i32, i32, i32 }
%union.bpf_attr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bpf_map_init_from_attr(%struct.bpf_map* %0, %union.bpf_attr* %1) #0 {
  %3 = alloca %struct.bpf_map*, align 8
  %4 = alloca %union.bpf_attr*, align 8
  store %struct.bpf_map* %0, %struct.bpf_map** %3, align 8
  store %union.bpf_attr* %1, %union.bpf_attr** %4, align 8
  %5 = load %union.bpf_attr*, %union.bpf_attr** %4, align 8
  %6 = bitcast %union.bpf_attr* %5 to i32*
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.bpf_map*, %struct.bpf_map** %3, align 8
  %9 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %8, i32 0, i32 5
  store i32 %7, i32* %9, align 4
  %10 = load %union.bpf_attr*, %union.bpf_attr** %4, align 8
  %11 = bitcast %union.bpf_attr* %10 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.bpf_map*, %struct.bpf_map** %3, align 8
  %14 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %13, i32 0, i32 4
  store i32 %12, i32* %14, align 4
  %15 = load %union.bpf_attr*, %union.bpf_attr** %4, align 8
  %16 = bitcast %union.bpf_attr* %15 to i32*
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.bpf_map*, %struct.bpf_map** %3, align 8
  %19 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 4
  %20 = load %union.bpf_attr*, %union.bpf_attr** %4, align 8
  %21 = bitcast %union.bpf_attr* %20 to i32*
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.bpf_map*, %struct.bpf_map** %3, align 8
  %24 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load %union.bpf_attr*, %union.bpf_attr** %4, align 8
  %26 = bitcast %union.bpf_attr* %25 to i32*
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @bpf_map_flags_retain_permanent(i32 %27)
  %29 = load %struct.bpf_map*, %struct.bpf_map** %3, align 8
  %30 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %union.bpf_attr*, %union.bpf_attr** %4, align 8
  %32 = call i32 @bpf_map_attr_numa_node(%union.bpf_attr* %31)
  %33 = load %struct.bpf_map*, %struct.bpf_map** %3, align 8
  %34 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  ret void
}

declare dso_local i32 @bpf_map_flags_retain_permanent(i32) #1

declare dso_local i32 @bpf_map_attr_numa_node(%union.bpf_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
