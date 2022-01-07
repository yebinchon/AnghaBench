; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_syscall.c_map_create.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_syscall.c_map_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.bpf_attr = type { i64 }
%struct.bpf_map_memory = type { i32 }
%struct.bpf_map = type { i32, %struct.TYPE_2__*, i32, %struct.bpf_map*, i64, i64, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.btf*)* }
%struct.btf = type { i32, %struct.TYPE_2__*, i32, %struct.btf*, i64, i64, i32, i32, i32 }

@BPF_MAP_CREATE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NUMA_NO_NODE = common dso_local global i32 0, align 4
@nr_node_ids = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.bpf_attr*)* @map_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_create(%union.bpf_attr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.bpf_attr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bpf_map_memory, align 4
  %6 = alloca %struct.bpf_map*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.btf*, align 8
  store %union.bpf_attr* %0, %union.bpf_attr** %3, align 8
  %10 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %11 = call i32 @bpf_map_attr_numa_node(%union.bpf_attr* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* @BPF_MAP_CREATE, align 4
  %13 = call i32 @CHECK_ATTR(i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %188

19:                                               ; preds = %1
  %20 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %21 = bitcast %union.bpf_attr* %20 to i32*
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @bpf_get_file_flag(i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %2, align 4
  br label %188

28:                                               ; preds = %19
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @NUMA_NO_NODE, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %28
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @nr_node_ids, align 4
  %35 = icmp uge i32 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @node_online(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %36, %32
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %188

43:                                               ; preds = %36, %28
  %44 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %45 = call %struct.btf* @find_and_alloc_map(%union.bpf_attr* %44)
  %46 = bitcast %struct.btf* %45 to %struct.bpf_map*
  store %struct.bpf_map* %46, %struct.bpf_map** %6, align 8
  %47 = load %struct.bpf_map*, %struct.bpf_map** %6, align 8
  %48 = bitcast %struct.bpf_map* %47 to %struct.btf*
  %49 = call i64 @IS_ERR(%struct.btf* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %43
  %52 = load %struct.bpf_map*, %struct.bpf_map** %6, align 8
  %53 = bitcast %struct.bpf_map* %52 to %struct.btf*
  %54 = call i32 @PTR_ERR(%struct.btf* %53)
  store i32 %54, i32* %2, align 4
  br label %188

55:                                               ; preds = %43
  %56 = load %struct.bpf_map*, %struct.bpf_map** %6, align 8
  %57 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %56, i32 0, i32 8
  %58 = load i32, i32* %57, align 8
  %59 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %60 = bitcast %union.bpf_attr* %59 to i32*
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @bpf_obj_name_cpy(i32 %58, i32 %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %55
  br label %169

66:                                               ; preds = %55
  %67 = load %struct.bpf_map*, %struct.bpf_map** %6, align 8
  %68 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %67, i32 0, i32 7
  %69 = call i32 @atomic_set(i32* %68, i32 1)
  %70 = load %struct.bpf_map*, %struct.bpf_map** %6, align 8
  %71 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %70, i32 0, i32 6
  %72 = call i32 @atomic_set(i32* %71, i32 1)
  %73 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %74 = bitcast %union.bpf_attr* %73 to i64*
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %66
  %78 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %79 = bitcast %union.bpf_attr* %78 to i64*
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %132

82:                                               ; preds = %77, %66
  %83 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %84 = bitcast %union.bpf_attr* %83 to i64*
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %82
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %8, align 4
  br label %169

90:                                               ; preds = %82
  %91 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %92 = bitcast %union.bpf_attr* %91 to i32*
  %93 = load i32, i32* %92, align 8
  %94 = call %struct.btf* @btf_get_by_fd(i32 %93)
  store %struct.btf* %94, %struct.btf** %9, align 8
  %95 = load %struct.btf*, %struct.btf** %9, align 8
  %96 = call i64 @IS_ERR(%struct.btf* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %90
  %99 = load %struct.btf*, %struct.btf** %9, align 8
  %100 = call i32 @PTR_ERR(%struct.btf* %99)
  store i32 %100, i32* %8, align 4
  br label %169

101:                                              ; preds = %90
  %102 = load %struct.bpf_map*, %struct.bpf_map** %6, align 8
  %103 = bitcast %struct.bpf_map* %102 to %struct.btf*
  %104 = load %struct.btf*, %struct.btf** %9, align 8
  %105 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %106 = bitcast %union.bpf_attr* %105 to i64*
  %107 = load i64, i64* %106, align 8
  %108 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %109 = bitcast %union.bpf_attr* %108 to i64*
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @map_check_btf(%struct.btf* %103, %struct.btf* %104, i64 %107, i64 %110)
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %8, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %101
  %115 = load %struct.btf*, %struct.btf** %9, align 8
  %116 = call i32 @btf_put(%struct.btf* %115)
  br label %169

117:                                              ; preds = %101
  %118 = load %struct.btf*, %struct.btf** %9, align 8
  %119 = bitcast %struct.btf* %118 to %struct.bpf_map*
  %120 = load %struct.bpf_map*, %struct.bpf_map** %6, align 8
  %121 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %120, i32 0, i32 3
  store %struct.bpf_map* %119, %struct.bpf_map** %121, align 8
  %122 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %123 = bitcast %union.bpf_attr* %122 to i64*
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.bpf_map*, %struct.bpf_map** %6, align 8
  %126 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %125, i32 0, i32 5
  store i64 %124, i64* %126, align 8
  %127 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %128 = bitcast %union.bpf_attr* %127 to i64*
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.bpf_map*, %struct.bpf_map** %6, align 8
  %131 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %130, i32 0, i32 4
  store i64 %129, i64* %131, align 8
  br label %137

132:                                              ; preds = %77
  %133 = load i32, i32* @EINVAL, align 4
  %134 = sub nsw i32 0, %133
  %135 = load %struct.bpf_map*, %struct.bpf_map** %6, align 8
  %136 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 8
  br label %137

137:                                              ; preds = %132, %117
  %138 = load %struct.bpf_map*, %struct.bpf_map** %6, align 8
  %139 = bitcast %struct.bpf_map* %138 to %struct.btf*
  %140 = call i32 @security_bpf_map_alloc(%struct.btf* %139)
  store i32 %140, i32* %8, align 4
  %141 = load i32, i32* %8, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %137
  br label %169

144:                                              ; preds = %137
  %145 = load %struct.bpf_map*, %struct.bpf_map** %6, align 8
  %146 = bitcast %struct.bpf_map* %145 to %struct.btf*
  %147 = call i32 @bpf_map_alloc_id(%struct.btf* %146)
  store i32 %147, i32* %8, align 4
  %148 = load i32, i32* %8, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %144
  br label %165

151:                                              ; preds = %144
  %152 = load %struct.bpf_map*, %struct.bpf_map** %6, align 8
  %153 = bitcast %struct.bpf_map* %152 to %struct.btf*
  %154 = load i32, i32* %7, align 4
  %155 = call i32 @bpf_map_new_fd(%struct.btf* %153, i32 %154)
  store i32 %155, i32* %8, align 4
  %156 = load i32, i32* %8, align 4
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %151
  %159 = load %struct.bpf_map*, %struct.bpf_map** %6, align 8
  %160 = bitcast %struct.bpf_map* %159 to %struct.btf*
  %161 = call i32 @bpf_map_put_with_uref(%struct.btf* %160)
  %162 = load i32, i32* %8, align 4
  store i32 %162, i32* %2, align 4
  br label %188

163:                                              ; preds = %151
  %164 = load i32, i32* %8, align 4
  store i32 %164, i32* %2, align 4
  br label %188

165:                                              ; preds = %150
  %166 = load %struct.bpf_map*, %struct.bpf_map** %6, align 8
  %167 = bitcast %struct.bpf_map* %166 to %struct.btf*
  %168 = call i32 @security_bpf_map_free(%struct.btf* %167)
  br label %169

169:                                              ; preds = %165, %143, %114, %98, %87, %65
  %170 = load %struct.bpf_map*, %struct.bpf_map** %6, align 8
  %171 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %170, i32 0, i32 3
  %172 = load %struct.bpf_map*, %struct.bpf_map** %171, align 8
  %173 = bitcast %struct.bpf_map* %172 to %struct.btf*
  %174 = call i32 @btf_put(%struct.btf* %173)
  %175 = load %struct.bpf_map*, %struct.bpf_map** %6, align 8
  %176 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %175, i32 0, i32 2
  %177 = call i32 @bpf_map_charge_move(%struct.bpf_map_memory* %5, i32* %176)
  %178 = load %struct.bpf_map*, %struct.bpf_map** %6, align 8
  %179 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %178, i32 0, i32 1
  %180 = load %struct.TYPE_2__*, %struct.TYPE_2__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 0
  %182 = load i32 (%struct.btf*)*, i32 (%struct.btf*)** %181, align 8
  %183 = load %struct.bpf_map*, %struct.bpf_map** %6, align 8
  %184 = bitcast %struct.bpf_map* %183 to %struct.btf*
  %185 = call i32 %182(%struct.btf* %184)
  %186 = call i32 @bpf_map_charge_finish(%struct.bpf_map_memory* %5)
  %187 = load i32, i32* %8, align 4
  store i32 %187, i32* %2, align 4
  br label %188

188:                                              ; preds = %169, %163, %158, %51, %40, %26, %16
  %189 = load i32, i32* %2, align 4
  ret i32 %189
}

declare dso_local i32 @bpf_map_attr_numa_node(%union.bpf_attr*) #1

declare dso_local i32 @CHECK_ATTR(i32) #1

declare dso_local i32 @bpf_get_file_flag(i32) #1

declare dso_local i32 @node_online(i32) #1

declare dso_local %struct.btf* @find_and_alloc_map(%union.bpf_attr*) #1

declare dso_local i64 @IS_ERR(%struct.btf*) #1

declare dso_local i32 @PTR_ERR(%struct.btf*) #1

declare dso_local i32 @bpf_obj_name_cpy(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local %struct.btf* @btf_get_by_fd(i32) #1

declare dso_local i32 @map_check_btf(%struct.btf*, %struct.btf*, i64, i64) #1

declare dso_local i32 @btf_put(%struct.btf*) #1

declare dso_local i32 @security_bpf_map_alloc(%struct.btf*) #1

declare dso_local i32 @bpf_map_alloc_id(%struct.btf*) #1

declare dso_local i32 @bpf_map_new_fd(%struct.btf*, i32) #1

declare dso_local i32 @bpf_map_put_with_uref(%struct.btf*) #1

declare dso_local i32 @security_bpf_map_free(%struct.btf*) #1

declare dso_local i32 @bpf_map_charge_move(%struct.bpf_map_memory*, i32*) #1

declare dso_local i32 @bpf_map_charge_finish(%struct.bpf_map_memory*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
