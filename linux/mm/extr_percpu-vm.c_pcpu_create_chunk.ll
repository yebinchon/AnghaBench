; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_percpu-vm.c_pcpu_create_chunk.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_percpu-vm.c_pcpu_create_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcpu_chunk = type { i64, %struct.vm_struct** }
%struct.vm_struct = type { i64 }

@pcpu_group_offsets = common dso_local global i64* null, align 8
@pcpu_group_sizes = common dso_local global i32 0, align 4
@pcpu_nr_groups = common dso_local global i32 0, align 4
@pcpu_atom_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pcpu_chunk* (i32)* @pcpu_create_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pcpu_chunk* @pcpu_create_chunk(i32 %0) #0 {
  %2 = alloca %struct.pcpu_chunk*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.pcpu_chunk*, align 8
  %5 = alloca %struct.vm_struct**, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.pcpu_chunk* @pcpu_alloc_chunk(i32 %6)
  store %struct.pcpu_chunk* %7, %struct.pcpu_chunk** %4, align 8
  %8 = load %struct.pcpu_chunk*, %struct.pcpu_chunk** %4, align 8
  %9 = icmp ne %struct.pcpu_chunk* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.pcpu_chunk* null, %struct.pcpu_chunk** %2, align 8
  br label %43

11:                                               ; preds = %1
  %12 = load i64*, i64** @pcpu_group_offsets, align 8
  %13 = load i32, i32* @pcpu_group_sizes, align 4
  %14 = load i32, i32* @pcpu_nr_groups, align 4
  %15 = load i32, i32* @pcpu_atom_size, align 4
  %16 = call %struct.vm_struct** @pcpu_get_vm_areas(i64* %12, i32 %13, i32 %14, i32 %15)
  store %struct.vm_struct** %16, %struct.vm_struct*** %5, align 8
  %17 = load %struct.vm_struct**, %struct.vm_struct*** %5, align 8
  %18 = icmp ne %struct.vm_struct** %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %11
  %20 = load %struct.pcpu_chunk*, %struct.pcpu_chunk** %4, align 8
  %21 = call i32 @pcpu_free_chunk(%struct.pcpu_chunk* %20)
  store %struct.pcpu_chunk* null, %struct.pcpu_chunk** %2, align 8
  br label %43

22:                                               ; preds = %11
  %23 = load %struct.vm_struct**, %struct.vm_struct*** %5, align 8
  %24 = load %struct.pcpu_chunk*, %struct.pcpu_chunk** %4, align 8
  %25 = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %24, i32 0, i32 1
  store %struct.vm_struct** %23, %struct.vm_struct*** %25, align 8
  %26 = load %struct.vm_struct**, %struct.vm_struct*** %5, align 8
  %27 = getelementptr inbounds %struct.vm_struct*, %struct.vm_struct** %26, i64 0
  %28 = load %struct.vm_struct*, %struct.vm_struct** %27, align 8
  %29 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64*, i64** @pcpu_group_offsets, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 0
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %30, %33
  %35 = load %struct.pcpu_chunk*, %struct.pcpu_chunk** %4, align 8
  %36 = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = call i32 (...) @pcpu_stats_chunk_alloc()
  %38 = load %struct.pcpu_chunk*, %struct.pcpu_chunk** %4, align 8
  %39 = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @trace_percpu_create_chunk(i64 %40)
  %42 = load %struct.pcpu_chunk*, %struct.pcpu_chunk** %4, align 8
  store %struct.pcpu_chunk* %42, %struct.pcpu_chunk** %2, align 8
  br label %43

43:                                               ; preds = %22, %19, %10
  %44 = load %struct.pcpu_chunk*, %struct.pcpu_chunk** %2, align 8
  ret %struct.pcpu_chunk* %44
}

declare dso_local %struct.pcpu_chunk* @pcpu_alloc_chunk(i32) #1

declare dso_local %struct.vm_struct** @pcpu_get_vm_areas(i64*, i32, i32, i32) #1

declare dso_local i32 @pcpu_free_chunk(%struct.pcpu_chunk*) #1

declare dso_local i32 @pcpu_stats_chunk_alloc(...) #1

declare dso_local i32 @trace_percpu_create_chunk(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
