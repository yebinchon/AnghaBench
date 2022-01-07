; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_reuseport_array.c_reuseport_array_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_reuseport_array.c_reuseport_array_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_map = type { i32 }
%union.bpf_attr = type { i64 }
%struct.reuseport_array = type { %struct.bpf_map }
%struct.bpf_map_memory = type { i32 }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bpf_map* (%union.bpf_attr*)* @reuseport_array_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bpf_map* @reuseport_array_alloc(%union.bpf_attr* %0) #0 {
  %2 = alloca %struct.bpf_map*, align 8
  %3 = alloca %union.bpf_attr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.reuseport_array*, align 8
  %7 = alloca %struct.bpf_map_memory, align 4
  %8 = alloca i32, align 4
  store %union.bpf_attr* %0, %union.bpf_attr** %3, align 8
  %9 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %10 = call i32 @bpf_map_attr_numa_node(%union.bpf_attr* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %12 = call i32 @capable(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @EPERM, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.bpf_map* @ERR_PTR(i32 %16)
  store %struct.bpf_map* %17, %struct.bpf_map** %2, align 8
  br label %58

18:                                               ; preds = %1
  store i32 4, i32* %8, align 4
  %19 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %20 = bitcast %union.bpf_attr* %19 to i64*
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i32
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = add i64 %26, %24
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @bpf_map_charge_init(%struct.bpf_map_memory* %7, i32 %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %18
  %34 = load i32, i32* %4, align 4
  %35 = call %struct.bpf_map* @ERR_PTR(i32 %34)
  store %struct.bpf_map* %35, %struct.bpf_map** %2, align 8
  br label %58

36:                                               ; preds = %18
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call %struct.reuseport_array* @bpf_map_area_alloc(i32 %37, i32 %38)
  store %struct.reuseport_array* %39, %struct.reuseport_array** %6, align 8
  %40 = load %struct.reuseport_array*, %struct.reuseport_array** %6, align 8
  %41 = icmp ne %struct.reuseport_array* %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %36
  %43 = call i32 @bpf_map_charge_finish(%struct.bpf_map_memory* %7)
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  %46 = call %struct.bpf_map* @ERR_PTR(i32 %45)
  store %struct.bpf_map* %46, %struct.bpf_map** %2, align 8
  br label %58

47:                                               ; preds = %36
  %48 = load %struct.reuseport_array*, %struct.reuseport_array** %6, align 8
  %49 = getelementptr inbounds %struct.reuseport_array, %struct.reuseport_array* %48, i32 0, i32 0
  %50 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %51 = call i32 @bpf_map_init_from_attr(%struct.bpf_map* %49, %union.bpf_attr* %50)
  %52 = load %struct.reuseport_array*, %struct.reuseport_array** %6, align 8
  %53 = getelementptr inbounds %struct.reuseport_array, %struct.reuseport_array* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %53, i32 0, i32 0
  %55 = call i32 @bpf_map_charge_move(i32* %54, %struct.bpf_map_memory* %7)
  %56 = load %struct.reuseport_array*, %struct.reuseport_array** %6, align 8
  %57 = getelementptr inbounds %struct.reuseport_array, %struct.reuseport_array* %56, i32 0, i32 0
  store %struct.bpf_map* %57, %struct.bpf_map** %2, align 8
  br label %58

58:                                               ; preds = %47, %42, %33, %14
  %59 = load %struct.bpf_map*, %struct.bpf_map** %2, align 8
  ret %struct.bpf_map* %59
}

declare dso_local i32 @bpf_map_attr_numa_node(%union.bpf_attr*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local %struct.bpf_map* @ERR_PTR(i32) #1

declare dso_local i32 @bpf_map_charge_init(%struct.bpf_map_memory*, i32) #1

declare dso_local %struct.reuseport_array* @bpf_map_area_alloc(i32, i32) #1

declare dso_local i32 @bpf_map_charge_finish(%struct.bpf_map_memory*) #1

declare dso_local i32 @bpf_map_init_from_attr(%struct.bpf_map*, %union.bpf_attr*) #1

declare dso_local i32 @bpf_map_charge_move(i32*, %struct.bpf_map_memory*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
