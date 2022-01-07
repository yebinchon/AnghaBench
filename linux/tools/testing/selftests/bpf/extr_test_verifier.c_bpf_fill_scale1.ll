; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_verifier.c_bpf_fill_scale1.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_verifier.c_bpf_fill_scale1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_test = type { i32, i32, %struct.bpf_insn* }
%struct.bpf_insn = type { i32 }

@BPF_REG_6 = common dso_local global i32 0, align 4
@BPF_REG_1 = common dso_local global i32 0, align 4
@MAX_JMP_SEQ = common dso_local global i32 0, align 4
@BPF_JMP = common dso_local global i32 0, align 4
@BPF_CALL = common dso_local global i32 0, align 4
@BPF_FUNC_get_prandom_u32 = common dso_local global i32 0, align 4
@BPF_JEQ = common dso_local global i32 0, align 4
@BPF_REG_0 = common dso_local global i32 0, align 4
@BPF_REG_10 = common dso_local global i32 0, align 4
@BPF_DW = common dso_local global i32 0, align 4
@MAX_TEST_INSNS = common dso_local global i32 0, align 4
@BPF_MOV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpf_test*)* @bpf_fill_scale1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bpf_fill_scale1(%struct.bpf_test* %0) #0 {
  %2 = alloca %struct.bpf_test*, align 8
  %3 = alloca %struct.bpf_insn*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.bpf_insn, align 4
  %7 = alloca %struct.bpf_insn, align 4
  %8 = alloca %struct.bpf_insn, align 4
  %9 = alloca %struct.bpf_insn, align 4
  %10 = alloca %struct.bpf_insn, align 4
  %11 = alloca %struct.bpf_insn, align 4
  %12 = alloca %struct.bpf_insn, align 4
  store %struct.bpf_test* %0, %struct.bpf_test** %2, align 8
  %13 = load %struct.bpf_test*, %struct.bpf_test** %2, align 8
  %14 = getelementptr inbounds %struct.bpf_test, %struct.bpf_test* %13, i32 0, i32 2
  %15 = load %struct.bpf_insn*, %struct.bpf_insn** %14, align 8
  store %struct.bpf_insn* %15, %struct.bpf_insn** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %16 = load %struct.bpf_insn*, %struct.bpf_insn** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %4, align 4
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %16, i64 %19
  %21 = load i32, i32* @BPF_REG_6, align 4
  %22 = load i32, i32* @BPF_REG_1, align 4
  %23 = call i32 @BPF_MOV64_REG(i32 %21, i32 %22)
  %24 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %6, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = bitcast %struct.bpf_insn* %20 to i8*
  %26 = bitcast %struct.bpf_insn* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 %26, i64 4, i1 false)
  br label %27

27:                                               ; preds = %32, %1
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* @MAX_JMP_SEQ, align 4
  %31 = icmp slt i32 %28, %30
  br i1 %31, label %32, label %85

32:                                               ; preds = %27
  %33 = load %struct.bpf_insn*, %struct.bpf_insn** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %4, align 4
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %33, i64 %36
  %38 = load i32, i32* @BPF_JMP, align 4
  %39 = load i32, i32* @BPF_CALL, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @BPF_FUNC_get_prandom_u32, align 4
  %42 = call i32 @BPF_RAW_INSN(i32 %40, i32 0, i32 0, i32 0, i32 %41)
  %43 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %7, i32 0, i32 0
  store i32 %42, i32* %43, align 4
  %44 = bitcast %struct.bpf_insn* %37 to i8*
  %45 = bitcast %struct.bpf_insn* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %44, i8* align 4 %45, i64 4, i1 false)
  %46 = load %struct.bpf_insn*, %struct.bpf_insn** %3, align 8
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %4, align 4
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %46, i64 %49
  %51 = load i32, i32* @BPF_JEQ, align 4
  %52 = load i32, i32* @BPF_REG_0, align 4
  %53 = call i32 (...) @bpf_semi_rand_get()
  %54 = call i32 @BPF_JMP_IMM(i32 %51, i32 %52, i32 %53, i32 2)
  %55 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %8, i32 0, i32 0
  store i32 %54, i32* %55, align 4
  %56 = bitcast %struct.bpf_insn* %50 to i8*
  %57 = bitcast %struct.bpf_insn* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %56, i8* align 4 %57, i64 4, i1 false)
  %58 = load %struct.bpf_insn*, %struct.bpf_insn** %3, align 8
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %4, align 4
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %58, i64 %61
  %63 = load i32, i32* @BPF_REG_1, align 4
  %64 = load i32, i32* @BPF_REG_10, align 4
  %65 = call i32 @BPF_MOV64_REG(i32 %63, i32 %64)
  %66 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %9, i32 0, i32 0
  store i32 %65, i32* %66, align 4
  %67 = bitcast %struct.bpf_insn* %62 to i8*
  %68 = bitcast %struct.bpf_insn* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %67, i8* align 4 %68, i64 4, i1 false)
  %69 = load %struct.bpf_insn*, %struct.bpf_insn** %3, align 8
  %70 = load i32, i32* %4, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %4, align 4
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %69, i64 %72
  %74 = load i32, i32* @BPF_DW, align 4
  %75 = load i32, i32* @BPF_REG_1, align 4
  %76 = load i32, i32* @BPF_REG_6, align 4
  %77 = load i32, i32* %5, align 4
  %78 = srem i32 %77, 64
  %79 = add nsw i32 %78, 1
  %80 = mul nsw i32 -8, %79
  %81 = call i32 @BPF_STX_MEM(i32 %74, i32 %75, i32 %76, i32 %80)
  %82 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %10, i32 0, i32 0
  store i32 %81, i32* %82, align 4
  %83 = bitcast %struct.bpf_insn* %73 to i8*
  %84 = bitcast %struct.bpf_insn* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %83, i8* align 4 %84, i64 4, i1 false)
  br label %27

85:                                               ; preds = %27
  br label %86

86:                                               ; preds = %93, %85
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* @MAX_TEST_INSNS, align 4
  %89 = load i32, i32* @MAX_JMP_SEQ, align 4
  %90 = mul nsw i32 %89, 4
  %91 = sub nsw i32 %88, %90
  %92 = icmp slt i32 %87, %91
  br i1 %92, label %93, label %105

93:                                               ; preds = %86
  %94 = load %struct.bpf_insn*, %struct.bpf_insn** %3, align 8
  %95 = load i32, i32* %4, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %4, align 4
  %97 = sext i32 %95 to i64
  %98 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %94, i64 %97
  %99 = load i32, i32* @BPF_MOV, align 4
  %100 = load i32, i32* @BPF_REG_0, align 4
  %101 = call i32 @BPF_ALU64_IMM(i32 %99, i32 %100, i32 42)
  %102 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %11, i32 0, i32 0
  store i32 %101, i32* %102, align 4
  %103 = bitcast %struct.bpf_insn* %98 to i8*
  %104 = bitcast %struct.bpf_insn* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %103, i8* align 4 %104, i64 4, i1 false)
  br label %86

105:                                              ; preds = %86
  %106 = load %struct.bpf_insn*, %struct.bpf_insn** %3, align 8
  %107 = load i32, i32* %4, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %106, i64 %108
  %110 = call i32 (...) @BPF_EXIT_INSN()
  %111 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %12, i32 0, i32 0
  store i32 %110, i32* %111, align 4
  %112 = bitcast %struct.bpf_insn* %109 to i8*
  %113 = bitcast %struct.bpf_insn* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %112, i8* align 4 %113, i64 4, i1 false)
  %114 = load i32, i32* %4, align 4
  %115 = add nsw i32 %114, 1
  %116 = load %struct.bpf_test*, %struct.bpf_test** %2, align 8
  %117 = getelementptr inbounds %struct.bpf_test, %struct.bpf_test* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  %118 = load %struct.bpf_test*, %struct.bpf_test** %2, align 8
  %119 = getelementptr inbounds %struct.bpf_test, %struct.bpf_test* %118, i32 0, i32 1
  store i32 42, i32* %119, align 4
  ret void
}

declare dso_local i32 @BPF_MOV64_REG(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @BPF_RAW_INSN(i32, i32, i32, i32, i32) #1

declare dso_local i32 @BPF_JMP_IMM(i32, i32, i32, i32) #1

declare dso_local i32 @bpf_semi_rand_get(...) #1

declare dso_local i32 @BPF_STX_MEM(i32, i32, i32, i32) #1

declare dso_local i32 @BPF_ALU64_IMM(i32, i32, i32) #1

declare dso_local i32 @BPF_EXIT_INSN(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
