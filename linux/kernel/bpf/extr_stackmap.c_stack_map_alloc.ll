; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_stackmap.c_stack_map_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_stackmap.c_stack_map_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_map = type { i32, i32 }
%union.bpf_attr = type { i64 }
%struct.bpf_stack_map = type { i32, %struct.bpf_map }
%struct.bpf_map_memory = type { i32 }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@STACK_CREATE_FLAG_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@BPF_F_STACK_BUILD_ID = common dso_local global i32 0, align 4
@sysctl_perf_event_max_stack = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bpf_map* (%union.bpf_attr*)* @stack_map_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bpf_map* @stack_map_alloc(%union.bpf_attr* %0) #0 {
  %2 = alloca %struct.bpf_map*, align 8
  %3 = alloca %union.bpf_attr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bpf_stack_map*, align 8
  %6 = alloca %struct.bpf_map_memory, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %union.bpf_attr* %0, %union.bpf_attr** %3, align 8
  %10 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %11 = bitcast %union.bpf_attr* %10 to i32*
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %14 = call i32 @capable(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @EPERM, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.bpf_map* @ERR_PTR(i32 %18)
  store %struct.bpf_map* %19, %struct.bpf_map** %2, align 8
  br label %165

20:                                               ; preds = %1
  %21 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %22 = bitcast %union.bpf_attr* %21 to i32*
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @STACK_CREATE_FLAG_MASK, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  %31 = call %struct.bpf_map* @ERR_PTR(i32 %30)
  store %struct.bpf_map* %31, %struct.bpf_map** %2, align 8
  br label %165

32:                                               ; preds = %20
  %33 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %34 = bitcast %union.bpf_attr* %33 to i64*
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %49, label %37

37:                                               ; preds = %32
  %38 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %39 = bitcast %union.bpf_attr* %38 to i32*
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 4
  br i1 %41, label %49, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* %4, align 4
  %44 = icmp slt i32 %43, 8
  br i1 %44, label %49, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %4, align 4
  %47 = srem i32 %46, 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %45, %42, %37, %32
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  %52 = call %struct.bpf_map* @ERR_PTR(i32 %51)
  store %struct.bpf_map* %52, %struct.bpf_map** %2, align 8
  br label %165

53:                                               ; preds = %45
  %54 = call i32 @BUILD_BUG_ON(i32 0)
  %55 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %56 = bitcast %union.bpf_attr* %55 to i32*
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @BPF_F_STACK_BUILD_ID, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %78

61:                                               ; preds = %53
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = urem i64 %63, 4
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %61
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = udiv i64 %68, 4
  %70 = load i32, i32* @sysctl_perf_event_max_stack, align 4
  %71 = sext i32 %70 to i64
  %72 = icmp ugt i64 %69, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %66, %61
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  %76 = call %struct.bpf_map* @ERR_PTR(i32 %75)
  store %struct.bpf_map* %76, %struct.bpf_map** %2, align 8
  br label %165

77:                                               ; preds = %66
  br label %88

78:                                               ; preds = %53
  %79 = load i32, i32* %4, align 4
  %80 = sdiv i32 %79, 8
  %81 = load i32, i32* @sysctl_perf_event_max_stack, align 4
  %82 = icmp sgt i32 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  %86 = call %struct.bpf_map* @ERR_PTR(i32 %85)
  store %struct.bpf_map* %86, %struct.bpf_map** %2, align 8
  br label %165

87:                                               ; preds = %78
  br label %88

88:                                               ; preds = %87, %77
  %89 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %90 = bitcast %union.bpf_attr* %89 to i64*
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @roundup_pow_of_two(i64 %91)
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = mul i64 %94, 8
  %96 = add i64 %95, 12
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = load i32, i32* %4, align 4
  %101 = sext i32 %100 to i64
  %102 = add i64 %101, 4
  %103 = mul i64 %99, %102
  %104 = load i32, i32* %7, align 4
  %105 = sext i32 %104 to i64
  %106 = add i64 %105, %103
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %7, align 4
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @bpf_map_charge_init(%struct.bpf_map_memory* %6, i32 %108)
  store i32 %109, i32* %9, align 4
  %110 = load i32, i32* %9, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %88
  %113 = load i32, i32* %9, align 4
  %114 = call %struct.bpf_map* @ERR_PTR(i32 %113)
  store %struct.bpf_map* %114, %struct.bpf_map** %2, align 8
  br label %165

115:                                              ; preds = %88
  %116 = load i32, i32* %7, align 4
  %117 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %118 = call i32 @bpf_map_attr_numa_node(%union.bpf_attr* %117)
  %119 = call %struct.bpf_stack_map* @bpf_map_area_alloc(i32 %116, i32 %118)
  store %struct.bpf_stack_map* %119, %struct.bpf_stack_map** %5, align 8
  %120 = load %struct.bpf_stack_map*, %struct.bpf_stack_map** %5, align 8
  %121 = icmp ne %struct.bpf_stack_map* %120, null
  br i1 %121, label %127, label %122

122:                                              ; preds = %115
  %123 = call i32 @bpf_map_charge_finish(%struct.bpf_map_memory* %6)
  %124 = load i32, i32* @ENOMEM, align 4
  %125 = sub nsw i32 0, %124
  %126 = call %struct.bpf_map* @ERR_PTR(i32 %125)
  store %struct.bpf_map* %126, %struct.bpf_map** %2, align 8
  br label %165

127:                                              ; preds = %115
  %128 = load %struct.bpf_stack_map*, %struct.bpf_stack_map** %5, align 8
  %129 = getelementptr inbounds %struct.bpf_stack_map, %struct.bpf_stack_map* %128, i32 0, i32 1
  %130 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %131 = call i32 @bpf_map_init_from_attr(%struct.bpf_map* %129, %union.bpf_attr* %130)
  %132 = load i32, i32* %4, align 4
  %133 = load %struct.bpf_stack_map*, %struct.bpf_stack_map** %5, align 8
  %134 = getelementptr inbounds %struct.bpf_stack_map, %struct.bpf_stack_map* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %134, i32 0, i32 0
  store i32 %132, i32* %135, align 4
  %136 = load i32, i32* %8, align 4
  %137 = load %struct.bpf_stack_map*, %struct.bpf_stack_map** %5, align 8
  %138 = getelementptr inbounds %struct.bpf_stack_map, %struct.bpf_stack_map* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 4
  %139 = load i32, i32* @sysctl_perf_event_max_stack, align 4
  %140 = call i32 @get_callchain_buffers(i32 %139)
  store i32 %140, i32* %9, align 4
  %141 = load i32, i32* %9, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %127
  br label %159

144:                                              ; preds = %127
  %145 = load %struct.bpf_stack_map*, %struct.bpf_stack_map** %5, align 8
  %146 = call i32 @prealloc_elems_and_freelist(%struct.bpf_stack_map* %145)
  store i32 %146, i32* %9, align 4
  %147 = load i32, i32* %9, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %144
  br label %157

150:                                              ; preds = %144
  %151 = load %struct.bpf_stack_map*, %struct.bpf_stack_map** %5, align 8
  %152 = getelementptr inbounds %struct.bpf_stack_map, %struct.bpf_stack_map* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %152, i32 0, i32 1
  %154 = call i32 @bpf_map_charge_move(i32* %153, %struct.bpf_map_memory* %6)
  %155 = load %struct.bpf_stack_map*, %struct.bpf_stack_map** %5, align 8
  %156 = getelementptr inbounds %struct.bpf_stack_map, %struct.bpf_stack_map* %155, i32 0, i32 1
  store %struct.bpf_map* %156, %struct.bpf_map** %2, align 8
  br label %165

157:                                              ; preds = %149
  %158 = call i32 (...) @put_callchain_buffers()
  br label %159

159:                                              ; preds = %157, %143
  %160 = call i32 @bpf_map_charge_finish(%struct.bpf_map_memory* %6)
  %161 = load %struct.bpf_stack_map*, %struct.bpf_stack_map** %5, align 8
  %162 = call i32 @bpf_map_area_free(%struct.bpf_stack_map* %161)
  %163 = load i32, i32* %9, align 4
  %164 = call %struct.bpf_map* @ERR_PTR(i32 %163)
  store %struct.bpf_map* %164, %struct.bpf_map** %2, align 8
  br label %165

165:                                              ; preds = %159, %150, %122, %112, %83, %73, %49, %28, %16
  %166 = load %struct.bpf_map*, %struct.bpf_map** %2, align 8
  ret %struct.bpf_map* %166
}

declare dso_local i32 @capable(i32) #1

declare dso_local %struct.bpf_map* @ERR_PTR(i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @roundup_pow_of_two(i64) #1

declare dso_local i32 @bpf_map_charge_init(%struct.bpf_map_memory*, i32) #1

declare dso_local %struct.bpf_stack_map* @bpf_map_area_alloc(i32, i32) #1

declare dso_local i32 @bpf_map_attr_numa_node(%union.bpf_attr*) #1

declare dso_local i32 @bpf_map_charge_finish(%struct.bpf_map_memory*) #1

declare dso_local i32 @bpf_map_init_from_attr(%struct.bpf_map*, %union.bpf_attr*) #1

declare dso_local i32 @get_callchain_buffers(i32) #1

declare dso_local i32 @prealloc_elems_and_freelist(%struct.bpf_stack_map*) #1

declare dso_local i32 @bpf_map_charge_move(i32*, %struct.bpf_map_memory*) #1

declare dso_local i32 @put_callchain_buffers(...) #1

declare dso_local i32 @bpf_map_area_free(%struct.bpf_stack_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
