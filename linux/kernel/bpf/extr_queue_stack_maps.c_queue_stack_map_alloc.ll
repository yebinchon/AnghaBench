; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_queue_stack_maps.c_queue_stack_map_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_queue_stack_maps.c_queue_stack_map_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_map = type { i32 }
%union.bpf_attr = type { i64 }
%struct.bpf_map_memory = type { i32 }
%struct.bpf_queue_stack = type { i32, %struct.bpf_map, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bpf_map* (%union.bpf_attr*)* @queue_stack_map_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bpf_map* @queue_stack_map_alloc(%union.bpf_attr* %0) #0 {
  %2 = alloca %struct.bpf_map*, align 8
  %3 = alloca %union.bpf_attr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.bpf_map_memory, align 4
  %7 = alloca %struct.bpf_queue_stack*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %union.bpf_attr* %0, %union.bpf_attr** %3, align 8
  %11 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %12 = call i32 @bpf_map_attr_numa_node(%union.bpf_attr* %11)
  store i32 %12, i32* %5, align 4
  %13 = bitcast %struct.bpf_map_memory* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 4, i1 false)
  %14 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %15 = bitcast %union.bpf_attr* %14 to i64*
  %16 = load i64, i64* %15, align 8
  %17 = trunc i64 %16 to i32
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %21 = bitcast %union.bpf_attr* %20 to i32*
  %22 = load i32, i32* %21, align 8
  %23 = mul nsw i32 %19, %22
  %24 = sext i32 %23 to i64
  %25 = add i64 12, %24
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %9, align 4
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @bpf_map_charge_init(%struct.bpf_map_memory* %6, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %1
  %32 = load i32, i32* %4, align 4
  %33 = call %struct.bpf_map* @ERR_PTR(i32 %32)
  store %struct.bpf_map* %33, %struct.bpf_map** %2, align 8
  br label %64

34:                                               ; preds = %1
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call %struct.bpf_queue_stack* @bpf_map_area_alloc(i32 %35, i32 %36)
  store %struct.bpf_queue_stack* %37, %struct.bpf_queue_stack** %7, align 8
  %38 = load %struct.bpf_queue_stack*, %struct.bpf_queue_stack** %7, align 8
  %39 = icmp ne %struct.bpf_queue_stack* %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %34
  %41 = call i32 @bpf_map_charge_finish(%struct.bpf_map_memory* %6)
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  %44 = call %struct.bpf_map* @ERR_PTR(i32 %43)
  store %struct.bpf_map* %44, %struct.bpf_map** %2, align 8
  br label %64

45:                                               ; preds = %34
  %46 = load %struct.bpf_queue_stack*, %struct.bpf_queue_stack** %7, align 8
  %47 = call i32 @memset(%struct.bpf_queue_stack* %46, i32 0, i32 12)
  %48 = load %struct.bpf_queue_stack*, %struct.bpf_queue_stack** %7, align 8
  %49 = getelementptr inbounds %struct.bpf_queue_stack, %struct.bpf_queue_stack* %48, i32 0, i32 1
  %50 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %51 = call i32 @bpf_map_init_from_attr(%struct.bpf_map* %49, %union.bpf_attr* %50)
  %52 = load %struct.bpf_queue_stack*, %struct.bpf_queue_stack** %7, align 8
  %53 = getelementptr inbounds %struct.bpf_queue_stack, %struct.bpf_queue_stack* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %53, i32 0, i32 0
  %55 = call i32 @bpf_map_charge_move(i32* %54, %struct.bpf_map_memory* %6)
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.bpf_queue_stack*, %struct.bpf_queue_stack** %7, align 8
  %58 = getelementptr inbounds %struct.bpf_queue_stack, %struct.bpf_queue_stack* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load %struct.bpf_queue_stack*, %struct.bpf_queue_stack** %7, align 8
  %60 = getelementptr inbounds %struct.bpf_queue_stack, %struct.bpf_queue_stack* %59, i32 0, i32 2
  %61 = call i32 @raw_spin_lock_init(i32* %60)
  %62 = load %struct.bpf_queue_stack*, %struct.bpf_queue_stack** %7, align 8
  %63 = getelementptr inbounds %struct.bpf_queue_stack, %struct.bpf_queue_stack* %62, i32 0, i32 1
  store %struct.bpf_map* %63, %struct.bpf_map** %2, align 8
  br label %64

64:                                               ; preds = %45, %40, %31
  %65 = load %struct.bpf_map*, %struct.bpf_map** %2, align 8
  ret %struct.bpf_map* %65
}

declare dso_local i32 @bpf_map_attr_numa_node(%union.bpf_attr*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @bpf_map_charge_init(%struct.bpf_map_memory*, i32) #1

declare dso_local %struct.bpf_map* @ERR_PTR(i32) #1

declare dso_local %struct.bpf_queue_stack* @bpf_map_area_alloc(i32, i32) #1

declare dso_local i32 @bpf_map_charge_finish(%struct.bpf_map_memory*) #1

declare dso_local i32 @memset(%struct.bpf_queue_stack*, i32, i32) #1

declare dso_local i32 @bpf_map_init_from_attr(%struct.bpf_map*, %union.bpf_attr*) #1

declare dso_local i32 @bpf_map_charge_move(i32*, %struct.bpf_map_memory*) #1

declare dso_local i32 @raw_spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
