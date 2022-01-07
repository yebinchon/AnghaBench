; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_check_ld_imm.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_check_ld_imm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { i64, %struct.bpf_map** }
%struct.bpf_map = type { i32 }
%struct.bpf_insn = type { i64, i64, i64, i64, i32 }
%struct.bpf_insn_aux_data = type { i64, i32 }
%struct.bpf_reg_state = type { i32, i64, i32, %struct.bpf_map* }

@BPF_DW = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"invalid BPF_LD_IMM insn\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"BPF_LD_IMM64 uses reserved fields\0A\00", align 1
@DST_OP = common dso_local global i32 0, align 4
@SCALAR_VALUE = common dso_local global i32 0, align 4
@BPF_PSEUDO_MAP_VALUE = common dso_local global i64 0, align 8
@PTR_TO_MAP_VALUE = common dso_local global i32 0, align 4
@BPF_PSEUDO_MAP_FD = common dso_local global i64 0, align 8
@CONST_PTR_TO_MAP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"bpf verifier is misconfigured\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_verifier_env*, %struct.bpf_insn*)* @check_ld_imm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_ld_imm(%struct.bpf_verifier_env* %0, %struct.bpf_insn* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bpf_verifier_env*, align 8
  %5 = alloca %struct.bpf_insn*, align 8
  %6 = alloca %struct.bpf_insn_aux_data*, align 8
  %7 = alloca %struct.bpf_reg_state*, align 8
  %8 = alloca %struct.bpf_map*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %4, align 8
  store %struct.bpf_insn* %1, %struct.bpf_insn** %5, align 8
  %11 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %12 = call %struct.bpf_insn_aux_data* @cur_aux(%struct.bpf_verifier_env* %11)
  store %struct.bpf_insn_aux_data* %12, %struct.bpf_insn_aux_data** %6, align 8
  %13 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %14 = call %struct.bpf_reg_state* @cur_regs(%struct.bpf_verifier_env* %13)
  store %struct.bpf_reg_state* %14, %struct.bpf_reg_state** %7, align 8
  %15 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %16 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @BPF_SIZE(i32 %17)
  %19 = load i64, i64* @BPF_DW, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %23 = call i32 @verbose(%struct.bpf_verifier_env* %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %158

26:                                               ; preds = %2
  %27 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %28 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %33 = call i32 @verbose(%struct.bpf_verifier_env* %32, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %158

36:                                               ; preds = %26
  %37 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %38 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %39 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* @DST_OP, align 4
  %42 = call i32 @check_reg_arg(%struct.bpf_verifier_env* %37, i64 %40, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %3, align 4
  br label %158

47:                                               ; preds = %36
  %48 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %49 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %78

52:                                               ; preds = %47
  %53 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %54 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %53, i64 1
  %55 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = shl i32 %57, 32
  %59 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %60 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = trunc i64 %61 to i32
  %63 = or i32 %58, %62
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* @SCALAR_VALUE, align 4
  %65 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %7, align 8
  %66 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %67 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %65, i64 %68
  %70 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %69, i32 0, i32 0
  store i32 %64, i32* %70, align 8
  %71 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %7, align 8
  %72 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %73 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %71, i64 %74
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @__mark_reg_known(%struct.bpf_reg_state* %75, i32 %76)
  store i32 0, i32* %3, align 4
  br label %158

78:                                               ; preds = %47
  %79 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %80 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %79, i32 0, i32 1
  %81 = load %struct.bpf_map**, %struct.bpf_map*** %80, align 8
  %82 = load %struct.bpf_insn_aux_data*, %struct.bpf_insn_aux_data** %6, align 8
  %83 = getelementptr inbounds %struct.bpf_insn_aux_data, %struct.bpf_insn_aux_data* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds %struct.bpf_map*, %struct.bpf_map** %81, i64 %84
  %86 = load %struct.bpf_map*, %struct.bpf_map** %85, align 8
  store %struct.bpf_map* %86, %struct.bpf_map** %8, align 8
  %87 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %88 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %7, align 8
  %89 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %90 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @mark_reg_known_zero(%struct.bpf_verifier_env* %87, %struct.bpf_reg_state* %88, i64 %91)
  %93 = load %struct.bpf_map*, %struct.bpf_map** %8, align 8
  %94 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %7, align 8
  %95 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %96 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %94, i64 %97
  %99 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %98, i32 0, i32 3
  store %struct.bpf_map* %93, %struct.bpf_map** %99, align 8
  %100 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %101 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @BPF_PSEUDO_MAP_VALUE, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %137

105:                                              ; preds = %78
  %106 = load i32, i32* @PTR_TO_MAP_VALUE, align 4
  %107 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %7, align 8
  %108 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %109 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %107, i64 %110
  %112 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %111, i32 0, i32 0
  store i32 %106, i32* %112, align 8
  %113 = load %struct.bpf_insn_aux_data*, %struct.bpf_insn_aux_data** %6, align 8
  %114 = getelementptr inbounds %struct.bpf_insn_aux_data, %struct.bpf_insn_aux_data* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %7, align 8
  %117 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %118 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %116, i64 %119
  %121 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %120, i32 0, i32 2
  store i32 %115, i32* %121, align 8
  %122 = load %struct.bpf_map*, %struct.bpf_map** %8, align 8
  %123 = call i64 @map_value_has_spin_lock(%struct.bpf_map* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %136

125:                                              ; preds = %105
  %126 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %127 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = add nsw i64 %128, 1
  store i64 %129, i64* %127, align 8
  %130 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %7, align 8
  %131 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %132 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %130, i64 %133
  %135 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %134, i32 0, i32 1
  store i64 %129, i64* %135, align 8
  br label %136

136:                                              ; preds = %125, %105
  br label %157

137:                                              ; preds = %78
  %138 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %139 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @BPF_PSEUDO_MAP_FD, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %151

143:                                              ; preds = %137
  %144 = load i32, i32* @CONST_PTR_TO_MAP, align 4
  %145 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %7, align 8
  %146 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %147 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %145, i64 %148
  %150 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %149, i32 0, i32 0
  store i32 %144, i32* %150, align 8
  br label %156

151:                                              ; preds = %137
  %152 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %153 = call i32 @verbose(%struct.bpf_verifier_env* %152, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %154 = load i32, i32* @EINVAL, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %3, align 4
  br label %158

156:                                              ; preds = %143
  br label %157

157:                                              ; preds = %156, %136
  store i32 0, i32* %3, align 4
  br label %158

158:                                              ; preds = %157, %151, %52, %45, %31, %21
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

declare dso_local %struct.bpf_insn_aux_data* @cur_aux(%struct.bpf_verifier_env*) #1

declare dso_local %struct.bpf_reg_state* @cur_regs(%struct.bpf_verifier_env*) #1

declare dso_local i64 @BPF_SIZE(i32) #1

declare dso_local i32 @verbose(%struct.bpf_verifier_env*, i8*) #1

declare dso_local i32 @check_reg_arg(%struct.bpf_verifier_env*, i64, i32) #1

declare dso_local i32 @__mark_reg_known(%struct.bpf_reg_state*, i32) #1

declare dso_local i32 @mark_reg_known_zero(%struct.bpf_verifier_env*, %struct.bpf_reg_state*, i64) #1

declare dso_local i64 @map_value_has_spin_lock(%struct.bpf_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
