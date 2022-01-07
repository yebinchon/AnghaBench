; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_verifier.c_bpf_fill_rand_ld_dw.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_verifier.c_bpf_fill_rand_ld_dw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_test = type { i32, i32, %struct.bpf_insn* }
%struct.bpf_insn = type { i32 }

@BPF_REG_0 = common dso_local global i32 0, align 4
@BPF_REG_1 = common dso_local global i32 0, align 4
@BPF_XOR = common dso_local global i32 0, align 4
@BPF_RSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpf_test*)* @bpf_fill_rand_ld_dw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bpf_fill_rand_ld_dw(%struct.bpf_test* %0) #0 {
  %2 = alloca %struct.bpf_test*, align 8
  %3 = alloca %struct.bpf_insn*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.bpf_insn, align 4
  %7 = alloca i32, align 4
  %8 = alloca [2 x %struct.bpf_insn], align 4
  %9 = alloca %struct.bpf_insn, align 4
  %10 = alloca %struct.bpf_insn, align 4
  %11 = alloca %struct.bpf_insn, align 4
  %12 = alloca %struct.bpf_insn, align 4
  %13 = alloca %struct.bpf_insn, align 4
  store %struct.bpf_test* %0, %struct.bpf_test** %2, align 8
  %14 = load %struct.bpf_test*, %struct.bpf_test** %2, align 8
  %15 = getelementptr inbounds %struct.bpf_test, %struct.bpf_test* %14, i32 0, i32 2
  %16 = load %struct.bpf_insn*, %struct.bpf_insn** %15, align 8
  store %struct.bpf_insn* %16, %struct.bpf_insn** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %17 = load %struct.bpf_insn*, %struct.bpf_insn** %3, align 8
  %18 = load i32, i32* %5, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %5, align 4
  %20 = sext i32 %18 to i64
  %21 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %17, i64 %20
  %22 = load i32, i32* @BPF_REG_0, align 4
  %23 = call i32 @BPF_MOV32_IMM(i32 %22, i32 0)
  %24 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %6, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = bitcast %struct.bpf_insn* %21 to i8*
  %26 = bitcast %struct.bpf_insn* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 %26, i64 4, i1 false)
  br label %27

27:                                               ; preds = %47, %1
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.bpf_test*, %struct.bpf_test** %2, align 8
  %30 = getelementptr inbounds %struct.bpf_test, %struct.bpf_test* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %79

33:                                               ; preds = %27
  %34 = call i32 (...) @bpf_semi_rand_get()
  store i32 %34, i32* %7, align 4
  %35 = getelementptr inbounds [2 x %struct.bpf_insn], [2 x %struct.bpf_insn]* %8, i64 0, i64 0
  %36 = load i32, i32* @BPF_REG_1, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @BPF_LD_IMM64(i32 %36, i32 %37)
  %39 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %35, i32 0, i32 0
  store i32 %38, i32* %39, align 4
  %40 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %35, i64 1
  %41 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %35, i64 2
  br label %42

42:                                               ; preds = %42, %33
  %43 = phi %struct.bpf_insn* [ %40, %33 ], [ %45, %42 ]
  %44 = bitcast %struct.bpf_insn* %43 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %44, i8 0, i64 4, i1 false)
  %45 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %43, i64 1
  %46 = icmp eq %struct.bpf_insn* %45, %41
  br i1 %46, label %47, label %42

47:                                               ; preds = %42
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %4, align 4
  %50 = xor i32 %49, %48
  store i32 %50, i32* %4, align 4
  %51 = load %struct.bpf_insn*, %struct.bpf_insn** %3, align 8
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %51, i64 %54
  %56 = getelementptr inbounds [2 x %struct.bpf_insn], [2 x %struct.bpf_insn]* %8, i64 0, i64 0
  %57 = bitcast %struct.bpf_insn* %55 to i8*
  %58 = bitcast %struct.bpf_insn* %56 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %57, i8* align 4 %58, i64 4, i1 false)
  %59 = load %struct.bpf_insn*, %struct.bpf_insn** %3, align 8
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %5, align 4
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %59, i64 %62
  %64 = getelementptr inbounds [2 x %struct.bpf_insn], [2 x %struct.bpf_insn]* %8, i64 0, i64 1
  %65 = bitcast %struct.bpf_insn* %63 to i8*
  %66 = bitcast %struct.bpf_insn* %64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %65, i8* align 4 %66, i64 4, i1 false)
  %67 = load %struct.bpf_insn*, %struct.bpf_insn** %3, align 8
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %5, align 4
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %67, i64 %70
  %72 = load i32, i32* @BPF_XOR, align 4
  %73 = load i32, i32* @BPF_REG_0, align 4
  %74 = load i32, i32* @BPF_REG_1, align 4
  %75 = call i32 @BPF_ALU64_REG(i32 %72, i32 %73, i32 %74)
  %76 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %9, i32 0, i32 0
  store i32 %75, i32* %76, align 4
  %77 = bitcast %struct.bpf_insn* %71 to i8*
  %78 = bitcast %struct.bpf_insn* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %77, i8* align 4 %78, i64 4, i1 false)
  br label %27

79:                                               ; preds = %27
  %80 = load %struct.bpf_insn*, %struct.bpf_insn** %3, align 8
  %81 = load i32, i32* %5, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %5, align 4
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %80, i64 %83
  %85 = load i32, i32* @BPF_REG_1, align 4
  %86 = load i32, i32* @BPF_REG_0, align 4
  %87 = call i32 @BPF_MOV64_REG(i32 %85, i32 %86)
  %88 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %10, i32 0, i32 0
  store i32 %87, i32* %88, align 4
  %89 = bitcast %struct.bpf_insn* %84 to i8*
  %90 = bitcast %struct.bpf_insn* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %89, i8* align 4 %90, i64 4, i1 false)
  %91 = load %struct.bpf_insn*, %struct.bpf_insn** %3, align 8
  %92 = load i32, i32* %5, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %5, align 4
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %91, i64 %94
  %96 = load i32, i32* @BPF_RSH, align 4
  %97 = load i32, i32* @BPF_REG_1, align 4
  %98 = call i32 @BPF_ALU64_IMM(i32 %96, i32 %97, i32 32)
  %99 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %11, i32 0, i32 0
  store i32 %98, i32* %99, align 4
  %100 = bitcast %struct.bpf_insn* %95 to i8*
  %101 = bitcast %struct.bpf_insn* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %100, i8* align 4 %101, i64 4, i1 false)
  %102 = load %struct.bpf_insn*, %struct.bpf_insn** %3, align 8
  %103 = load i32, i32* %5, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %5, align 4
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %102, i64 %105
  %107 = load i32, i32* @BPF_XOR, align 4
  %108 = load i32, i32* @BPF_REG_0, align 4
  %109 = load i32, i32* @BPF_REG_1, align 4
  %110 = call i32 @BPF_ALU64_REG(i32 %107, i32 %108, i32 %109)
  %111 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %12, i32 0, i32 0
  store i32 %110, i32* %111, align 4
  %112 = bitcast %struct.bpf_insn* %106 to i8*
  %113 = bitcast %struct.bpf_insn* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %112, i8* align 4 %113, i64 4, i1 false)
  %114 = load %struct.bpf_insn*, %struct.bpf_insn** %3, align 8
  %115 = load i32, i32* %5, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %114, i64 %116
  %118 = call i32 (...) @BPF_EXIT_INSN()
  %119 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %13, i32 0, i32 0
  store i32 %118, i32* %119, align 4
  %120 = bitcast %struct.bpf_insn* %117 to i8*
  %121 = bitcast %struct.bpf_insn* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %120, i8* align 4 %121, i64 4, i1 false)
  %122 = load i32, i32* %5, align 4
  %123 = add nsw i32 %122, 1
  %124 = load %struct.bpf_test*, %struct.bpf_test** %2, align 8
  %125 = getelementptr inbounds %struct.bpf_test, %struct.bpf_test* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 4
  %126 = load i32, i32* %4, align 4
  %127 = ashr i32 %126, 32
  %128 = load i32, i32* %4, align 4
  %129 = xor i32 %128, %127
  store i32 %129, i32* %4, align 4
  %130 = load i32, i32* %4, align 4
  %131 = load %struct.bpf_test*, %struct.bpf_test** %2, align 8
  %132 = getelementptr inbounds %struct.bpf_test, %struct.bpf_test* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 8
  ret void
}

declare dso_local i32 @BPF_MOV32_IMM(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @bpf_semi_rand_get(...) #1

declare dso_local i32 @BPF_LD_IMM64(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @BPF_ALU64_REG(i32, i32, i32) #1

declare dso_local i32 @BPF_MOV64_REG(i32, i32) #1

declare dso_local i32 @BPF_ALU64_IMM(i32, i32, i32) #1

declare dso_local i32 @BPF_EXIT_INSN(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
