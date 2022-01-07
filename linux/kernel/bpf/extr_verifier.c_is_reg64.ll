; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_is_reg64.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_is_reg64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { i32 }
%struct.bpf_insn = type { i64, i64, i32 }
%struct.bpf_reg_state = type { i64 }

@BPF_JMP = common dso_local global i64 0, align 8
@BPF_EXIT = common dso_local global i64 0, align 8
@BPF_CALL = common dso_local global i64 0, align 8
@BPF_PSEUDO_CALL = common dso_local global i64 0, align 8
@SRC_OP = common dso_local global i32 0, align 4
@BPF_ALU64 = common dso_local global i64 0, align 8
@BPF_ALU = common dso_local global i64 0, align 8
@BPF_END = common dso_local global i64 0, align 8
@BPF_JMP32 = common dso_local global i64 0, align 8
@BPF_LDX = common dso_local global i64 0, align 8
@BPF_DW = common dso_local global i64 0, align 8
@BPF_STX = common dso_local global i64 0, align 8
@SCALAR_VALUE = common dso_local global i64 0, align 8
@BPF_LD = common dso_local global i64 0, align 8
@BPF_IMM = common dso_local global i64 0, align 8
@BPF_REG_6 = common dso_local global i64 0, align 8
@BPF_ST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_verifier_env*, %struct.bpf_insn*, i64, %struct.bpf_reg_state*, i32)* @is_reg64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_reg64(%struct.bpf_verifier_env* %0, %struct.bpf_insn* %1, i64 %2, %struct.bpf_reg_state* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bpf_verifier_env*, align 8
  %8 = alloca %struct.bpf_insn*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.bpf_reg_state*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %7, align 8
  store %struct.bpf_insn* %1, %struct.bpf_insn** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.bpf_reg_state* %3, %struct.bpf_reg_state** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load %struct.bpf_insn*, %struct.bpf_insn** %8, align 8
  %17 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %12, align 8
  %19 = load i64, i64* %12, align 8
  %20 = call i64 @BPF_CLASS(i64 %19)
  store i64 %20, i64* %13, align 8
  %21 = load i64, i64* %12, align 8
  %22 = call i64 @BPF_OP(i64 %21)
  store i64 %22, i64* %14, align 8
  %23 = load i64, i64* %13, align 8
  %24 = load i64, i64* @BPF_JMP, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %49

26:                                               ; preds = %5
  %27 = load i64, i64* %14, align 8
  %28 = load i64, i64* @BPF_EXIT, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 1, i32* %6, align 4
  br label %140

31:                                               ; preds = %26
  %32 = load i64, i64* %14, align 8
  %33 = load i64, i64* @BPF_CALL, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %31
  %36 = load %struct.bpf_insn*, %struct.bpf_insn** %8, align 8
  %37 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @BPF_PSEUDO_CALL, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 0, i32* %6, align 4
  br label %140

42:                                               ; preds = %35
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* @SRC_OP, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i32 1, i32* %6, align 4
  br label %140

47:                                               ; preds = %42
  store i32 0, i32* %6, align 4
  br label %140

48:                                               ; preds = %31
  br label %49

49:                                               ; preds = %48, %5
  %50 = load i64, i64* %13, align 8
  %51 = load i64, i64* @BPF_ALU64, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %70, label %53

53:                                               ; preds = %49
  %54 = load i64, i64* %13, align 8
  %55 = load i64, i64* @BPF_JMP, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %70, label %57

57:                                               ; preds = %53
  %58 = load i64, i64* %13, align 8
  %59 = load i64, i64* @BPF_ALU, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %57
  %62 = load i64, i64* %14, align 8
  %63 = load i64, i64* @BPF_END, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %61
  %66 = load %struct.bpf_insn*, %struct.bpf_insn** %8, align 8
  %67 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = icmp eq i32 %68, 64
  br i1 %69, label %70, label %71

70:                                               ; preds = %65, %53, %49
  store i32 1, i32* %6, align 4
  br label %140

71:                                               ; preds = %65, %61, %57
  %72 = load i64, i64* %13, align 8
  %73 = load i64, i64* @BPF_ALU, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %79, label %75

75:                                               ; preds = %71
  %76 = load i64, i64* %13, align 8
  %77 = load i64, i64* @BPF_JMP32, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %75, %71
  store i32 0, i32* %6, align 4
  br label %140

80:                                               ; preds = %75
  %81 = load i64, i64* %13, align 8
  %82 = load i64, i64* @BPF_LDX, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %95

84:                                               ; preds = %80
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* @SRC_OP, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %84
  %89 = load i64, i64* %12, align 8
  %90 = call i64 @BPF_SIZE(i64 %89)
  %91 = load i64, i64* @BPF_DW, align 8
  %92 = icmp eq i64 %90, %91
  %93 = zext i1 %92 to i32
  store i32 %93, i32* %6, align 4
  br label %140

94:                                               ; preds = %84
  store i32 1, i32* %6, align 4
  br label %140

95:                                               ; preds = %80
  %96 = load i64, i64* %13, align 8
  %97 = load i64, i64* @BPF_STX, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %112

99:                                               ; preds = %95
  %100 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %10, align 8
  %101 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @SCALAR_VALUE, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %99
  store i32 1, i32* %6, align 4
  br label %140

106:                                              ; preds = %99
  %107 = load i64, i64* %12, align 8
  %108 = call i64 @BPF_SIZE(i64 %107)
  %109 = load i64, i64* @BPF_DW, align 8
  %110 = icmp eq i64 %108, %109
  %111 = zext i1 %110 to i32
  store i32 %111, i32* %6, align 4
  br label %140

112:                                              ; preds = %95
  %113 = load i64, i64* %13, align 8
  %114 = load i64, i64* @BPF_LD, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %134

116:                                              ; preds = %112
  %117 = load i64, i64* %12, align 8
  %118 = call i64 @BPF_MODE(i64 %117)
  store i64 %118, i64* %15, align 8
  %119 = load i64, i64* %15, align 8
  %120 = load i64, i64* @BPF_IMM, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %116
  store i32 1, i32* %6, align 4
  br label %140

123:                                              ; preds = %116
  %124 = load i32, i32* %11, align 4
  %125 = load i32, i32* @SRC_OP, align 4
  %126 = icmp ne i32 %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %123
  store i32 0, i32* %6, align 4
  br label %140

128:                                              ; preds = %123
  %129 = load i64, i64* %9, align 8
  %130 = load i64, i64* @BPF_REG_6, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %128
  store i32 1, i32* %6, align 4
  br label %140

133:                                              ; preds = %128
  store i32 1, i32* %6, align 4
  br label %140

134:                                              ; preds = %112
  %135 = load i64, i64* %13, align 8
  %136 = load i64, i64* @BPF_ST, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %134
  store i32 1, i32* %6, align 4
  br label %140

139:                                              ; preds = %134
  store i32 1, i32* %6, align 4
  br label %140

140:                                              ; preds = %139, %138, %133, %132, %127, %122, %106, %105, %94, %88, %79, %70, %47, %46, %41, %30
  %141 = load i32, i32* %6, align 4
  ret i32 %141
}

declare dso_local i64 @BPF_CLASS(i64) #1

declare dso_local i64 @BPF_OP(i64) #1

declare dso_local i64 @BPF_SIZE(i64) #1

declare dso_local i64 @BPF_MODE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
