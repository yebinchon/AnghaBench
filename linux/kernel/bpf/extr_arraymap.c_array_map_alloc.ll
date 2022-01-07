; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_arraymap.c_array_map_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_arraymap.c_array_map_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_map = type { i32, %struct.bpf_map_memory }
%struct.bpf_map_memory = type { i32 }
%union.bpf_attr = type { i64 }
%struct.bpf_array = type { i32, i32, %struct.bpf_map }

@BPF_MAP_TYPE_PERCPU_ARRAY = common dso_local global i64 0, align 8
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bpf_map* (%union.bpf_attr*)* @array_map_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bpf_map* @array_map_alloc(%union.bpf_attr* %0) #0 {
  %2 = alloca %struct.bpf_map*, align 8
  %3 = alloca %union.bpf_attr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.bpf_map_memory, align 4
  %15 = alloca %struct.bpf_array*, align 8
  store %union.bpf_attr* %0, %union.bpf_attr** %3, align 8
  %16 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %17 = bitcast %union.bpf_attr* %16 to i64*
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @BPF_MAP_TYPE_PERCPU_ARRAY, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %4, align 4
  %22 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %23 = call i32 @bpf_map_attr_numa_node(%union.bpf_attr* %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %25 = call i32 @capable(i32 %24)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %10, align 4
  %29 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %30 = bitcast %union.bpf_attr* %29 to i32*
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @round_up(i32 %31, i32 8)
  store i32 %32, i32* %7, align 4
  %33 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %34 = bitcast %union.bpf_attr* %33 to i32*
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = sub nsw i32 %36, 1
  %38 = call i64 @fls_long(i32 %37)
  store i64 %38, i64* %13, align 8
  %39 = load i64, i64* %13, align 8
  %40 = shl i64 1, %39
  store i64 %40, i64* %13, align 8
  %41 = load i64, i64* %13, align 8
  %42 = sub i64 %41, 1
  store i64 %42, i64* %13, align 8
  %43 = load i64, i64* %13, align 8
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %1
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %52 = bitcast %union.bpf_attr* %51 to i32*
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %47
  %56 = load i32, i32* @E2BIG, align 4
  %57 = sub nsw i32 0, %56
  %58 = call %struct.bpf_map* @ERR_PTR(i32 %57)
  store %struct.bpf_map* %58, %struct.bpf_map** %2, align 8
  br label %150

59:                                               ; preds = %47
  br label %60

60:                                               ; preds = %59, %1
  store i64 16, i64* %12, align 8
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = mul i64 %65, 8
  %67 = load i64, i64* %12, align 8
  %68 = add i64 %67, %66
  store i64 %68, i64* %12, align 8
  br label %77

69:                                               ; preds = %60
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = mul i64 %71, %73
  %75 = load i64, i64* %12, align 8
  %76 = add i64 %75, %74
  store i64 %76, i64* %12, align 8
  br label %77

77:                                               ; preds = %69, %63
  %78 = load i64, i64* %12, align 8
  store i64 %78, i64* %11, align 8
  %79 = load i32, i32* %4, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %93

81:                                               ; preds = %77
  %82 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %83 = bitcast %union.bpf_attr* %82 to i32*
  %84 = load i32, i32* %83, align 8
  %85 = sext i32 %84 to i64
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = mul i64 %85, %87
  %89 = call i64 (...) @num_possible_cpus()
  %90 = mul i64 %88, %89
  %91 = load i64, i64* %11, align 8
  %92 = add i64 %91, %90
  store i64 %92, i64* %11, align 8
  br label %93

93:                                               ; preds = %81, %77
  %94 = load i64, i64* %11, align 8
  %95 = call i32 @bpf_map_charge_init(%struct.bpf_map_memory* %14, i64 %94)
  store i32 %95, i32* %5, align 4
  %96 = load i32, i32* %5, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load i32, i32* %5, align 4
  %100 = call %struct.bpf_map* @ERR_PTR(i32 %99)
  store %struct.bpf_map* %100, %struct.bpf_map** %2, align 8
  br label %150

101:                                              ; preds = %93
  %102 = load i64, i64* %12, align 8
  %103 = load i32, i32* %6, align 4
  %104 = call %struct.bpf_array* @bpf_map_area_alloc(i64 %102, i32 %103)
  store %struct.bpf_array* %104, %struct.bpf_array** %15, align 8
  %105 = load %struct.bpf_array*, %struct.bpf_array** %15, align 8
  %106 = icmp ne %struct.bpf_array* %105, null
  br i1 %106, label %112, label %107

107:                                              ; preds = %101
  %108 = call i32 @bpf_map_charge_finish(%struct.bpf_map_memory* %14)
  %109 = load i32, i32* @ENOMEM, align 4
  %110 = sub nsw i32 0, %109
  %111 = call %struct.bpf_map* @ERR_PTR(i32 %110)
  store %struct.bpf_map* %111, %struct.bpf_map** %2, align 8
  br label %150

112:                                              ; preds = %101
  %113 = load i32, i32* %8, align 4
  %114 = load %struct.bpf_array*, %struct.bpf_array** %15, align 8
  %115 = getelementptr inbounds %struct.bpf_array, %struct.bpf_array* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* %10, align 4
  %117 = load %struct.bpf_array*, %struct.bpf_array** %15, align 8
  %118 = getelementptr inbounds %struct.bpf_array, %struct.bpf_array* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %118, i32 0, i32 0
  store i32 %116, i32* %119, align 4
  %120 = load %struct.bpf_array*, %struct.bpf_array** %15, align 8
  %121 = getelementptr inbounds %struct.bpf_array, %struct.bpf_array* %120, i32 0, i32 2
  %122 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %123 = call i32 @bpf_map_init_from_attr(%struct.bpf_map* %121, %union.bpf_attr* %122)
  %124 = load %struct.bpf_array*, %struct.bpf_array** %15, align 8
  %125 = getelementptr inbounds %struct.bpf_array, %struct.bpf_array* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %125, i32 0, i32 1
  %127 = call i32 @bpf_map_charge_move(%struct.bpf_map_memory* %126, %struct.bpf_map_memory* %14)
  %128 = load i32, i32* %7, align 4
  %129 = load %struct.bpf_array*, %struct.bpf_array** %15, align 8
  %130 = getelementptr inbounds %struct.bpf_array, %struct.bpf_array* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  %131 = load i32, i32* %4, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %147

133:                                              ; preds = %112
  %134 = load %struct.bpf_array*, %struct.bpf_array** %15, align 8
  %135 = call i64 @bpf_array_alloc_percpu(%struct.bpf_array* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %147

137:                                              ; preds = %133
  %138 = load %struct.bpf_array*, %struct.bpf_array** %15, align 8
  %139 = getelementptr inbounds %struct.bpf_array, %struct.bpf_array* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %139, i32 0, i32 1
  %141 = call i32 @bpf_map_charge_finish(%struct.bpf_map_memory* %140)
  %142 = load %struct.bpf_array*, %struct.bpf_array** %15, align 8
  %143 = call i32 @bpf_map_area_free(%struct.bpf_array* %142)
  %144 = load i32, i32* @ENOMEM, align 4
  %145 = sub nsw i32 0, %144
  %146 = call %struct.bpf_map* @ERR_PTR(i32 %145)
  store %struct.bpf_map* %146, %struct.bpf_map** %2, align 8
  br label %150

147:                                              ; preds = %133, %112
  %148 = load %struct.bpf_array*, %struct.bpf_array** %15, align 8
  %149 = getelementptr inbounds %struct.bpf_array, %struct.bpf_array* %148, i32 0, i32 2
  store %struct.bpf_map* %149, %struct.bpf_map** %2, align 8
  br label %150

150:                                              ; preds = %147, %137, %107, %98, %55
  %151 = load %struct.bpf_map*, %struct.bpf_map** %2, align 8
  ret %struct.bpf_map* %151
}

declare dso_local i32 @bpf_map_attr_numa_node(%union.bpf_attr*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @round_up(i32, i32) #1

declare dso_local i64 @fls_long(i32) #1

declare dso_local %struct.bpf_map* @ERR_PTR(i32) #1

declare dso_local i64 @num_possible_cpus(...) #1

declare dso_local i32 @bpf_map_charge_init(%struct.bpf_map_memory*, i64) #1

declare dso_local %struct.bpf_array* @bpf_map_area_alloc(i64, i32) #1

declare dso_local i32 @bpf_map_charge_finish(%struct.bpf_map_memory*) #1

declare dso_local i32 @bpf_map_init_from_attr(%struct.bpf_map*, %union.bpf_attr*) #1

declare dso_local i32 @bpf_map_charge_move(%struct.bpf_map_memory*, %struct.bpf_map_memory*) #1

declare dso_local i64 @bpf_array_alloc_percpu(%struct.bpf_array*) #1

declare dso_local i32 @bpf_map_area_free(%struct.bpf_array*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
