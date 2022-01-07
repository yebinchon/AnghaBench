; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_verifier.c_bpf_fill_scale2.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_verifier.c_bpf_fill_scale2.c"
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
@FUNC_NEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpf_test*)* @bpf_fill_scale2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bpf_fill_scale2(%struct.bpf_test* %0) #0 {
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
  %13 = alloca %struct.bpf_insn, align 4
  %14 = alloca %struct.bpf_insn, align 4
  store %struct.bpf_test* %0, %struct.bpf_test** %2, align 8
  %15 = load %struct.bpf_test*, %struct.bpf_test** %2, align 8
  %16 = getelementptr inbounds %struct.bpf_test, %struct.bpf_test* %15, i32 0, i32 2
  %17 = load %struct.bpf_insn*, %struct.bpf_insn** %16, align 8
  store %struct.bpf_insn* %17, %struct.bpf_insn** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %40, %1
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 7
  br i1 %20, label %21, label %43

21:                                               ; preds = %18
  %22 = load %struct.bpf_insn*, %struct.bpf_insn** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %4, align 4
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %22, i64 %25
  %27 = call i32 @BPF_CALL_REL(i32 1)
  %28 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %6, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = bitcast %struct.bpf_insn* %26 to i8*
  %30 = bitcast %struct.bpf_insn* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %29, i8* align 4 %30, i64 4, i1 false)
  %31 = load %struct.bpf_insn*, %struct.bpf_insn** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %31, i64 %34
  %36 = call i32 (...) @BPF_EXIT_INSN()
  %37 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %7, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = bitcast %struct.bpf_insn* %35 to i8*
  %39 = bitcast %struct.bpf_insn* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %38, i8* align 4 %39, i64 4, i1 false)
  br label %40

40:                                               ; preds = %21
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %18

43:                                               ; preds = %18
  %44 = load %struct.bpf_insn*, %struct.bpf_insn** %3, align 8
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %4, align 4
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %44, i64 %47
  %49 = load i32, i32* @BPF_REG_6, align 4
  %50 = load i32, i32* @BPF_REG_1, align 4
  %51 = call i32 @BPF_MOV64_REG(i32 %49, i32 %50)
  %52 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %8, i32 0, i32 0
  store i32 %51, i32* %52, align 4
  %53 = bitcast %struct.bpf_insn* %48 to i8*
  %54 = bitcast %struct.bpf_insn* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %53, i8* align 4 %54, i64 4, i1 false)
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %60, %43
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* @MAX_JMP_SEQ, align 4
  %59 = icmp slt i32 %56, %58
  br i1 %59, label %60, label %113

60:                                               ; preds = %55
  %61 = load %struct.bpf_insn*, %struct.bpf_insn** %3, align 8
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %4, align 4
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %61, i64 %64
  %66 = load i32, i32* @BPF_JMP, align 4
  %67 = load i32, i32* @BPF_CALL, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @BPF_FUNC_get_prandom_u32, align 4
  %70 = call i32 @BPF_RAW_INSN(i32 %68, i32 0, i32 0, i32 0, i32 %69)
  %71 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %9, i32 0, i32 0
  store i32 %70, i32* %71, align 4
  %72 = bitcast %struct.bpf_insn* %65 to i8*
  %73 = bitcast %struct.bpf_insn* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %72, i8* align 4 %73, i64 4, i1 false)
  %74 = load %struct.bpf_insn*, %struct.bpf_insn** %3, align 8
  %75 = load i32, i32* %4, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %4, align 4
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %74, i64 %77
  %79 = load i32, i32* @BPF_JEQ, align 4
  %80 = load i32, i32* @BPF_REG_0, align 4
  %81 = call i32 (...) @bpf_semi_rand_get()
  %82 = call i32 @BPF_JMP_IMM(i32 %79, i32 %80, i32 %81, i32 2)
  %83 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %10, i32 0, i32 0
  store i32 %82, i32* %83, align 4
  %84 = bitcast %struct.bpf_insn* %78 to i8*
  %85 = bitcast %struct.bpf_insn* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %84, i8* align 4 %85, i64 4, i1 false)
  %86 = load %struct.bpf_insn*, %struct.bpf_insn** %3, align 8
  %87 = load i32, i32* %4, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %4, align 4
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %86, i64 %89
  %91 = load i32, i32* @BPF_REG_1, align 4
  %92 = load i32, i32* @BPF_REG_10, align 4
  %93 = call i32 @BPF_MOV64_REG(i32 %91, i32 %92)
  %94 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %11, i32 0, i32 0
  store i32 %93, i32* %94, align 4
  %95 = bitcast %struct.bpf_insn* %90 to i8*
  %96 = bitcast %struct.bpf_insn* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %95, i8* align 4 %96, i64 4, i1 false)
  %97 = load %struct.bpf_insn*, %struct.bpf_insn** %3, align 8
  %98 = load i32, i32* %4, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %4, align 4
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %97, i64 %100
  %102 = load i32, i32* @BPF_DW, align 4
  %103 = load i32, i32* @BPF_REG_1, align 4
  %104 = load i32, i32* @BPF_REG_6, align 4
  %105 = load i32, i32* %5, align 4
  %106 = srem i32 %105, 36
  %107 = add nsw i32 %106, 1
  %108 = mul nsw i32 -8, %107
  %109 = call i32 @BPF_STX_MEM(i32 %102, i32 %103, i32 %104, i32 %108)
  %110 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %12, i32 0, i32 0
  store i32 %109, i32* %110, align 4
  %111 = bitcast %struct.bpf_insn* %101 to i8*
  %112 = bitcast %struct.bpf_insn* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %111, i8* align 4 %112, i64 4, i1 false)
  br label %55

113:                                              ; preds = %55
  br label %114

114:                                              ; preds = %121, %113
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* @MAX_TEST_INSNS, align 4
  %117 = load i32, i32* @MAX_JMP_SEQ, align 4
  %118 = mul nsw i32 %117, 4
  %119 = sub nsw i32 %116, %118
  %120 = icmp slt i32 %115, %119
  br i1 %120, label %121, label %133

121:                                              ; preds = %114
  %122 = load %struct.bpf_insn*, %struct.bpf_insn** %3, align 8
  %123 = load i32, i32* %4, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %4, align 4
  %125 = sext i32 %123 to i64
  %126 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %122, i64 %125
  %127 = load i32, i32* @BPF_MOV, align 4
  %128 = load i32, i32* @BPF_REG_0, align 4
  %129 = call i32 @BPF_ALU64_IMM(i32 %127, i32 %128, i32 42)
  %130 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %13, i32 0, i32 0
  store i32 %129, i32* %130, align 4
  %131 = bitcast %struct.bpf_insn* %126 to i8*
  %132 = bitcast %struct.bpf_insn* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %131, i8* align 4 %132, i64 4, i1 false)
  br label %114

133:                                              ; preds = %114
  %134 = load %struct.bpf_insn*, %struct.bpf_insn** %3, align 8
  %135 = load i32, i32* %4, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %134, i64 %136
  %138 = call i32 (...) @BPF_EXIT_INSN()
  %139 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %14, i32 0, i32 0
  store i32 %138, i32* %139, align 4
  %140 = bitcast %struct.bpf_insn* %137 to i8*
  %141 = bitcast %struct.bpf_insn* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %140, i8* align 4 %141, i64 4, i1 false)
  %142 = load i32, i32* %4, align 4
  %143 = add nsw i32 %142, 1
  %144 = load %struct.bpf_test*, %struct.bpf_test** %2, align 8
  %145 = getelementptr inbounds %struct.bpf_test, %struct.bpf_test* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 8
  %146 = load %struct.bpf_test*, %struct.bpf_test** %2, align 8
  %147 = getelementptr inbounds %struct.bpf_test, %struct.bpf_test* %146, i32 0, i32 1
  store i32 42, i32* %147, align 4
  ret void
}

declare dso_local i32 @BPF_CALL_REL(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @BPF_EXIT_INSN(...) #1

declare dso_local i32 @BPF_MOV64_REG(i32, i32) #1

declare dso_local i32 @BPF_RAW_INSN(i32, i32, i32, i32, i32) #1

declare dso_local i32 @BPF_JMP_IMM(i32, i32, i32, i32) #1

declare dso_local i32 @bpf_semi_rand_get(...) #1

declare dso_local i32 @BPF_STX_MEM(i32, i32, i32, i32) #1

declare dso_local i32 @BPF_ALU64_IMM(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
