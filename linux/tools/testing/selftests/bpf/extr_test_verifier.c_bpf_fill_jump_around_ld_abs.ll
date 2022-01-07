; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_verifier.c_bpf_fill_jump_around_ld_abs.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_verifier.c_bpf_fill_jump_around_ld_abs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_test = type { i32, %struct.bpf_insn* }
%struct.bpf_insn = type { i32 }

@BPF_REG_6 = common dso_local global i32 0, align 4
@BPF_REG_1 = common dso_local global i32 0, align 4
@BPF_B = common dso_local global i32 0, align 4
@BPF_JEQ = common dso_local global i32 0, align 4
@BPF_REG_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpf_test*)* @bpf_fill_jump_around_ld_abs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bpf_fill_jump_around_ld_abs(%struct.bpf_test* %0) #0 {
  %2 = alloca %struct.bpf_test*, align 8
  %3 = alloca %struct.bpf_insn*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.bpf_insn, align 4
  %7 = alloca %struct.bpf_insn, align 4
  %8 = alloca %struct.bpf_insn, align 4
  %9 = alloca %struct.bpf_insn, align 4
  %10 = alloca %struct.bpf_insn, align 4
  store %struct.bpf_test* %0, %struct.bpf_test** %2, align 8
  %11 = load %struct.bpf_test*, %struct.bpf_test** %2, align 8
  %12 = getelementptr inbounds %struct.bpf_test, %struct.bpf_test* %11, i32 0, i32 1
  %13 = load %struct.bpf_insn*, %struct.bpf_insn** %12, align 8
  store %struct.bpf_insn* %13, %struct.bpf_insn** %3, align 8
  store i32 4681, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %14 = load %struct.bpf_insn*, %struct.bpf_insn** %3, align 8
  %15 = load i32, i32* %5, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %5, align 4
  %17 = sext i32 %15 to i64
  %18 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %14, i64 %17
  %19 = load i32, i32* @BPF_REG_6, align 4
  %20 = load i32, i32* @BPF_REG_1, align 4
  %21 = call i32 @BPF_MOV64_REG(i32 %19, i32 %20)
  %22 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %6, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = bitcast %struct.bpf_insn* %18 to i8*
  %24 = bitcast %struct.bpf_insn* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 %24, i64 4, i1 false)
  %25 = load %struct.bpf_insn*, %struct.bpf_insn** %3, align 8
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  %28 = sext i32 %26 to i64
  %29 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %25, i64 %28
  %30 = load i32, i32* @BPF_B, align 4
  %31 = call i32 @BPF_LD_ABS(i32 %30, i32 0)
  %32 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %7, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = bitcast %struct.bpf_insn* %29 to i8*
  %34 = bitcast %struct.bpf_insn* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %33, i8* align 4 %34, i64 4, i1 false)
  %35 = load %struct.bpf_insn*, %struct.bpf_insn** %3, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %35, i64 %37
  %39 = load i32, i32* @BPF_JEQ, align 4
  %40 = load i32, i32* @BPF_REG_0, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %5, align 4
  %43 = sub i32 %41, %42
  %44 = sub i32 %43, 2
  %45 = call i32 @BPF_JMP_IMM(i32 %39, i32 %40, i32 10, i32 %44)
  %46 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %8, i32 0, i32 0
  store i32 %45, i32* %46, align 4
  %47 = bitcast %struct.bpf_insn* %38 to i8*
  %48 = bitcast %struct.bpf_insn* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %47, i8* align 4 %48, i64 4, i1 false)
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %56, %1
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %4, align 4
  %54 = sub i32 %53, 1
  %55 = icmp ult i32 %52, %54
  br i1 %55, label %56, label %67

56:                                               ; preds = %51
  %57 = load %struct.bpf_insn*, %struct.bpf_insn** %3, align 8
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %5, align 4
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %57, i64 %60
  %62 = load i32, i32* @BPF_B, align 4
  %63 = call i32 @BPF_LD_ABS(i32 %62, i32 1)
  %64 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %9, i32 0, i32 0
  store i32 %63, i32* %64, align 4
  %65 = bitcast %struct.bpf_insn* %61 to i8*
  %66 = bitcast %struct.bpf_insn* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %65, i8* align 4 %66, i64 4, i1 false)
  br label %51

67:                                               ; preds = %51
  %68 = load %struct.bpf_insn*, %struct.bpf_insn** %3, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %68, i64 %70
  %72 = call i32 (...) @BPF_EXIT_INSN()
  %73 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %10, i32 0, i32 0
  store i32 %72, i32* %73, align 4
  %74 = bitcast %struct.bpf_insn* %71 to i8*
  %75 = bitcast %struct.bpf_insn* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %74, i8* align 4 %75, i64 4, i1 false)
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, 1
  %78 = load %struct.bpf_test*, %struct.bpf_test** %2, align 8
  %79 = getelementptr inbounds %struct.bpf_test, %struct.bpf_test* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  ret void
}

declare dso_local i32 @BPF_MOV64_REG(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @BPF_LD_ABS(i32, i32) #1

declare dso_local i32 @BPF_JMP_IMM(i32, i32, i32, i32) #1

declare dso_local i32 @BPF_EXIT_INSN(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
