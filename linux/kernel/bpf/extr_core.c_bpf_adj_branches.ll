; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_core.c_bpf_adj_branches.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_core.c_bpf_adj_branches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_prog = type { i64, %struct.bpf_insn* }
%struct.bpf_insn = type { i64, i32 }

@BPF_JMP = common dso_local global i64 0, align 8
@BPF_JMP32 = common dso_local global i64 0, align 8
@BPF_EXIT = common dso_local global i64 0, align 8
@BPF_CALL = common dso_local global i64 0, align 8
@BPF_PSEUDO_CALL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_prog*, i64, i64, i64, i32)* @bpf_adj_branches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_adj_branches(%struct.bpf_prog* %0, i64 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.bpf_prog*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.bpf_insn*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.bpf_prog* %0, %struct.bpf_prog** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %17 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %5
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* %8, align 8
  %24 = sub nsw i64 %22, %23
  br label %26

25:                                               ; preds = %5
  br label %26

26:                                               ; preds = %25, %21
  %27 = phi i64 [ %24, %21 ], [ 0, %25 ]
  %28 = add nsw i64 %18, %27
  store i64 %28, i64* %12, align 8
  %29 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %30 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %29, i32 0, i32 1
  %31 = load %struct.bpf_insn*, %struct.bpf_insn** %30, align 8
  store %struct.bpf_insn* %31, %struct.bpf_insn** %13, align 8
  store i32 0, i32* %14, align 4
  store i64 0, i64* %11, align 8
  br label %32

32:                                               ; preds = %102, %26
  %33 = load i64, i64* %11, align 8
  %34 = load i64, i64* %12, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %36, label %107

36:                                               ; preds = %32
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %36
  %40 = load i64, i64* %11, align 8
  %41 = load i64, i64* %7, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %39
  %44 = load i64, i64* %9, align 8
  store i64 %44, i64* %11, align 8
  %45 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %46 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %45, i32 0, i32 1
  %47 = load %struct.bpf_insn*, %struct.bpf_insn** %46, align 8
  %48 = load i64, i64* %8, align 8
  %49 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %47, i64 %48
  store %struct.bpf_insn* %49, %struct.bpf_insn** %13, align 8
  br label %50

50:                                               ; preds = %43, %39, %36
  %51 = load %struct.bpf_insn*, %struct.bpf_insn** %13, align 8
  %52 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %15, align 4
  %54 = load i32, i32* %15, align 4
  %55 = call i64 @BPF_CLASS(i32 %54)
  %56 = load i64, i64* @BPF_JMP, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %50
  %59 = load i32, i32* %15, align 4
  %60 = call i64 @BPF_CLASS(i32 %59)
  %61 = load i64, i64* @BPF_JMP32, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %68, label %63

63:                                               ; preds = %58, %50
  %64 = load i32, i32* %15, align 4
  %65 = call i64 @BPF_OP(i32 %64)
  %66 = load i64, i64* @BPF_EXIT, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %63, %58
  br label %102

69:                                               ; preds = %63
  %70 = load i32, i32* %15, align 4
  %71 = call i64 @BPF_OP(i32 %70)
  %72 = load i64, i64* @BPF_CALL, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %89

74:                                               ; preds = %69
  %75 = load %struct.bpf_insn*, %struct.bpf_insn** %13, align 8
  %76 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @BPF_PSEUDO_CALL, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  br label %102

81:                                               ; preds = %74
  %82 = load %struct.bpf_insn*, %struct.bpf_insn** %13, align 8
  %83 = load i64, i64* %7, align 8
  %84 = load i64, i64* %8, align 8
  %85 = load i64, i64* %9, align 8
  %86 = load i64, i64* %11, align 8
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @bpf_adj_delta_to_imm(%struct.bpf_insn* %82, i64 %83, i64 %84, i64 %85, i64 %86, i32 %87)
  store i32 %88, i32* %14, align 4
  br label %97

89:                                               ; preds = %69
  %90 = load %struct.bpf_insn*, %struct.bpf_insn** %13, align 8
  %91 = load i64, i64* %7, align 8
  %92 = load i64, i64* %8, align 8
  %93 = load i64, i64* %9, align 8
  %94 = load i64, i64* %11, align 8
  %95 = load i32, i32* %10, align 4
  %96 = call i32 @bpf_adj_delta_to_off(%struct.bpf_insn* %90, i64 %91, i64 %92, i64 %93, i64 %94, i32 %95)
  store i32 %96, i32* %14, align 4
  br label %97

97:                                               ; preds = %89, %81
  %98 = load i32, i32* %14, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  br label %107

101:                                              ; preds = %97
  br label %102

102:                                              ; preds = %101, %80, %68
  %103 = load i64, i64* %11, align 8
  %104 = add nsw i64 %103, 1
  store i64 %104, i64* %11, align 8
  %105 = load %struct.bpf_insn*, %struct.bpf_insn** %13, align 8
  %106 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %105, i32 1
  store %struct.bpf_insn* %106, %struct.bpf_insn** %13, align 8
  br label %32

107:                                              ; preds = %100, %32
  %108 = load i32, i32* %14, align 4
  ret i32 %108
}

declare dso_local i64 @BPF_CLASS(i32) #1

declare dso_local i64 @BPF_OP(i32) #1

declare dso_local i32 @bpf_adj_delta_to_imm(%struct.bpf_insn*, i64, i64, i64, i64, i32) #1

declare dso_local i32 @bpf_adj_delta_to_off(%struct.bpf_insn*, i64, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
