; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_lru_map.c_bpf_map_lookup_elem_with_ref_bit.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_lru_map.c_bpf_map_lookup_elem_with_ref_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_load_program_attr = type { i32, i32, i32, i8*, i32, %struct.bpf_insn*, i32, i32 }
%struct.bpf_insn = type { i32 }
%struct.bpf_create_map_attr = type { i32, i32, i32, i8*, i32, %struct.bpf_insn*, i32, i32 }

@BPF_REG_9 = common dso_local global i32 0, align 4
@BPF_REG_1 = common dso_local global i32 0, align 4
@BPF_REG_3 = common dso_local global i32 0, align 4
@BPF_REG_2 = common dso_local global i32 0, align 4
@BPF_REG_10 = common dso_local global i32 0, align 4
@BPF_ADD = common dso_local global i32 0, align 4
@BPF_DW = common dso_local global i32 0, align 4
@BPF_FUNC_map_lookup_elem = common dso_local global i32 0, align 4
@BPF_JEQ = common dso_local global i32 0, align 4
@BPF_REG_0 = common dso_local global i32 0, align 4
@BPF_JA = common dso_local global i32 0, align 4
@BPF_MAP_TYPE_ARRAY = common dso_local global i32 0, align 4
@BPF_PROG_TYPE_SCHED_CLS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"GPL\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i8*)* @bpf_map_lookup_elem_with_ref_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_map_lookup_elem_with_ref_bit(i32 %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.bpf_load_program_attr, align 8
  %9 = alloca %struct.bpf_create_map_attr, align 8
  %10 = alloca [14 x %struct.bpf_insn], align 16
  %11 = alloca [64 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %17 = getelementptr inbounds [14 x %struct.bpf_insn], [14 x %struct.bpf_insn]* %10, i64 0, i64 0
  %18 = load i32, i32* @BPF_REG_9, align 4
  %19 = call i32 @BPF_LD_MAP_VALUE(i32 %18, i32 0, i32 0)
  %20 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %17, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %17, i64 1
  %22 = load i32, i32* @BPF_REG_1, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @BPF_LD_MAP_FD(i32 %22, i32 %23)
  %25 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %21, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %21, i64 1
  %27 = load i32, i32* @BPF_REG_3, align 4
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @BPF_LD_IMM64(i32 %27, i64 %28)
  %30 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %26, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %26, i64 1
  %32 = load i32, i32* @BPF_REG_2, align 4
  %33 = load i32, i32* @BPF_REG_10, align 4
  %34 = call i32 @BPF_MOV64_REG(i32 %32, i32 %33)
  %35 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %31, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %31, i64 1
  %37 = load i32, i32* @BPF_ADD, align 4
  %38 = load i32, i32* @BPF_REG_2, align 4
  %39 = call i32 @BPF_ALU64_IMM(i32 %37, i32 %38, i32 -8)
  %40 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %36, i32 0, i32 0
  store i32 %39, i32* %40, align 4
  %41 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %36, i64 1
  %42 = load i32, i32* @BPF_DW, align 4
  %43 = load i32, i32* @BPF_REG_2, align 4
  %44 = load i32, i32* @BPF_REG_3, align 4
  %45 = call i32 @BPF_STX_MEM(i32 %42, i32 %43, i32 %44, i32 0)
  %46 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %41, i32 0, i32 0
  store i32 %45, i32* %46, align 4
  %47 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %41, i64 1
  %48 = load i32, i32* @BPF_FUNC_map_lookup_elem, align 4
  %49 = call i32 @BPF_EMIT_CALL(i32 %48)
  %50 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %47, i32 0, i32 0
  store i32 %49, i32* %50, align 4
  %51 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %47, i64 1
  %52 = load i32, i32* @BPF_JEQ, align 4
  %53 = load i32, i32* @BPF_REG_0, align 4
  %54 = call i32 @BPF_JMP_IMM(i32 %52, i32 %53, i32 0, i32 4)
  %55 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %51, i32 0, i32 0
  store i32 %54, i32* %55, align 4
  %56 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %51, i64 1
  %57 = load i32, i32* @BPF_DW, align 4
  %58 = load i32, i32* @BPF_REG_1, align 4
  %59 = load i32, i32* @BPF_REG_0, align 4
  %60 = call i32 @BPF_LDX_MEM(i32 %57, i32 %58, i32 %59, i32 0)
  %61 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %56, i32 0, i32 0
  store i32 %60, i32* %61, align 4
  %62 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %56, i64 1
  %63 = load i32, i32* @BPF_DW, align 4
  %64 = load i32, i32* @BPF_REG_9, align 4
  %65 = load i32, i32* @BPF_REG_1, align 4
  %66 = call i32 @BPF_STX_MEM(i32 %63, i32 %64, i32 %65, i32 0)
  %67 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %62, i32 0, i32 0
  store i32 %66, i32* %67, align 4
  %68 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %62, i64 1
  %69 = load i32, i32* @BPF_REG_0, align 4
  %70 = call i32 @BPF_MOV64_IMM(i32 %69, i32 42)
  %71 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %68, i32 0, i32 0
  store i32 %70, i32* %71, align 4
  %72 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %68, i64 1
  %73 = load i32, i32* @BPF_JA, align 4
  %74 = call i32 @BPF_JMP_IMM(i32 %73, i32 0, i32 0, i32 1)
  %75 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %72, i32 0, i32 0
  store i32 %74, i32* %75, align 4
  %76 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %72, i64 1
  %77 = load i32, i32* @BPF_REG_0, align 4
  %78 = call i32 @BPF_MOV64_IMM(i32 %77, i32 1)
  %79 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %76, i32 0, i32 0
  store i32 %78, i32* %79, align 4
  %80 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %76, i64 1
  %81 = call i32 (...) @BPF_EXIT_INSN()
  %82 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %80, i32 0, i32 0
  store i32 %81, i32* %82, align 4
  %83 = bitcast [64 x i32]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %83, i8 0, i64 256, i1 false)
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %84 = bitcast %struct.bpf_create_map_attr* %9 to %struct.bpf_load_program_attr*
  %85 = call i32 @memset(%struct.bpf_load_program_attr* %84, i32 0, i32 48)
  %86 = load i32, i32* @BPF_MAP_TYPE_ARRAY, align 4
  %87 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %9, i32 0, i32 7
  store i32 %86, i32* %87, align 4
  %88 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %9, i32 0, i32 0
  store i32 4, i32* %88, align 8
  %89 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %9, i32 0, i32 1
  store i32 8, i32* %89, align 4
  %90 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %9, i32 0, i32 2
  store i32 1, i32* %90, align 8
  %91 = bitcast %struct.bpf_create_map_attr* %9 to %struct.bpf_load_program_attr*
  %92 = call i32 @bpf_create_map_xattr(%struct.bpf_load_program_attr* %91)
  store i32 %92, i32* %12, align 4
  %93 = load i32, i32* %12, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %139

96:                                               ; preds = %3
  %97 = load i32, i32* %12, align 4
  %98 = getelementptr inbounds [14 x %struct.bpf_insn], [14 x %struct.bpf_insn]* %10, i64 0, i64 0
  %99 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 16
  %100 = call i32 @memset(%struct.bpf_load_program_attr* %8, i32 0, i32 48)
  %101 = load i32, i32* @BPF_PROG_TYPE_SCHED_CLS, align 4
  %102 = getelementptr inbounds %struct.bpf_load_program_attr, %struct.bpf_load_program_attr* %8, i32 0, i32 6
  store i32 %101, i32* %102, align 8
  %103 = getelementptr inbounds [14 x %struct.bpf_insn], [14 x %struct.bpf_insn]* %10, i64 0, i64 0
  %104 = getelementptr inbounds %struct.bpf_load_program_attr, %struct.bpf_load_program_attr* %8, i32 0, i32 5
  store %struct.bpf_insn* %103, %struct.bpf_insn** %104, align 8
  %105 = getelementptr inbounds [14 x %struct.bpf_insn], [14 x %struct.bpf_insn]* %10, i64 0, i64 0
  %106 = call i32 @ARRAY_SIZE(%struct.bpf_insn* %105)
  %107 = getelementptr inbounds %struct.bpf_load_program_attr, %struct.bpf_load_program_attr* %8, i32 0, i32 4
  store i32 %106, i32* %107, align 8
  %108 = getelementptr inbounds %struct.bpf_load_program_attr, %struct.bpf_load_program_attr* %8, i32 0, i32 3
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %108, align 8
  %109 = call i32 @bpf_load_program_xattr(%struct.bpf_load_program_attr* %8, i32* null, i32 0)
  store i32 %109, i32* %13, align 4
  %110 = load i32, i32* %13, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %96
  %113 = load i32, i32* %12, align 4
  %114 = call i32 @close(i32 %113)
  store i32 -1, i32* %4, align 4
  br label %139

115:                                              ; preds = %96
  %116 = load i32, i32* %13, align 4
  %117 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 0
  %118 = call i32 @bpf_prog_test_run(i32 %116, i32 1, i32* %117, i32 256, i32* null, i32* null, i32* %16, i32* null)
  store i32 %118, i32* %14, align 4
  %119 = load i32, i32* %14, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %115
  %122 = load i32, i32* %16, align 4
  %123 = icmp ne i32 %122, 42
  br i1 %123, label %124, label %125

124:                                              ; preds = %121, %115
  store i32 -1, i32* %14, align 4
  br label %133

125:                                              ; preds = %121
  %126 = load i32, i32* %12, align 4
  %127 = load i8*, i8** %7, align 8
  %128 = call i32 @bpf_map_lookup_elem(i32 %126, i32* %15, i8* %127)
  %129 = icmp ne i32 %128, 0
  %130 = xor i1 %129, true
  %131 = zext i1 %130 to i32
  %132 = call i32 @assert(i32 %131)
  store i32 0, i32* %14, align 4
  br label %133

133:                                              ; preds = %125, %124
  %134 = load i32, i32* %13, align 4
  %135 = call i32 @close(i32 %134)
  %136 = load i32, i32* %12, align 4
  %137 = call i32 @close(i32 %136)
  %138 = load i32, i32* %14, align 4
  store i32 %138, i32* %4, align 4
  br label %139

139:                                              ; preds = %133, %112, %95
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

declare dso_local i32 @BPF_LD_MAP_VALUE(i32, i32, i32) #1

declare dso_local i32 @BPF_LD_MAP_FD(i32, i32) #1

declare dso_local i32 @BPF_LD_IMM64(i32, i64) #1

declare dso_local i32 @BPF_MOV64_REG(i32, i32) #1

declare dso_local i32 @BPF_ALU64_IMM(i32, i32, i32) #1

declare dso_local i32 @BPF_STX_MEM(i32, i32, i32, i32) #1

declare dso_local i32 @BPF_EMIT_CALL(i32) #1

declare dso_local i32 @BPF_JMP_IMM(i32, i32, i32, i32) #1

declare dso_local i32 @BPF_LDX_MEM(i32, i32, i32, i32) #1

declare dso_local i32 @BPF_MOV64_IMM(i32, i32) #1

declare dso_local i32 @BPF_EXIT_INSN(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @memset(%struct.bpf_load_program_attr*, i32, i32) #1

declare dso_local i32 @bpf_create_map_xattr(%struct.bpf_load_program_attr*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.bpf_insn*) #1

declare dso_local i32 @bpf_load_program_xattr(%struct.bpf_load_program_attr*, i32*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @bpf_prog_test_run(i32, i32, i32*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @bpf_map_lookup_elem(i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
