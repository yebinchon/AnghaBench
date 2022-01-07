; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_adjust_reg_min_max_vals.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_adjust_reg_min_max_vals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { i64, %struct.bpf_verifier_state* }
%struct.bpf_verifier_state = type { i64, %struct.bpf_func_state** }
%struct.bpf_func_state = type { %struct.bpf_reg_state* }
%struct.bpf_reg_state = type { i64, i32 }
%struct.bpf_insn = type { i64, i64, i32, i32 }

@SCALAR_VALUE = common dso_local global i64 0, align 8
@BPF_X = common dso_local global i64 0, align 8
@BPF_SUB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"R%d pointer %s pointer prohibited\0A\00", align 1
@bpf_alu_string = common dso_local global i32* null, align 8
@EACCES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"verifier internal error: unexpected ptr_reg\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"verifier internal error: no src_reg\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_verifier_env*, %struct.bpf_insn*)* @adjust_reg_min_max_vals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adjust_reg_min_max_vals(%struct.bpf_verifier_env* %0, %struct.bpf_insn* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bpf_verifier_env*, align 8
  %5 = alloca %struct.bpf_insn*, align 8
  %6 = alloca %struct.bpf_verifier_state*, align 8
  %7 = alloca %struct.bpf_func_state*, align 8
  %8 = alloca %struct.bpf_reg_state*, align 8
  %9 = alloca %struct.bpf_reg_state*, align 8
  %10 = alloca %struct.bpf_reg_state*, align 8
  %11 = alloca %struct.bpf_reg_state*, align 8
  %12 = alloca %struct.bpf_reg_state, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %4, align 8
  store %struct.bpf_insn* %1, %struct.bpf_insn** %5, align 8
  %15 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %16 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %15, i32 0, i32 1
  %17 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %16, align 8
  store %struct.bpf_verifier_state* %17, %struct.bpf_verifier_state** %6, align 8
  %18 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %6, align 8
  %19 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %18, i32 0, i32 1
  %20 = load %struct.bpf_func_state**, %struct.bpf_func_state*** %19, align 8
  %21 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %6, align 8
  %22 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.bpf_func_state*, %struct.bpf_func_state** %20, i64 %23
  %25 = load %struct.bpf_func_state*, %struct.bpf_func_state** %24, align 8
  store %struct.bpf_func_state* %25, %struct.bpf_func_state** %7, align 8
  %26 = load %struct.bpf_func_state*, %struct.bpf_func_state** %7, align 8
  %27 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %26, i32 0, i32 0
  %28 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %27, align 8
  store %struct.bpf_reg_state* %28, %struct.bpf_reg_state** %8, align 8
  store %struct.bpf_reg_state* null, %struct.bpf_reg_state** %11, align 8
  %29 = bitcast %struct.bpf_reg_state* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %29, i8 0, i64 16, i1 false)
  %30 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %31 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @BPF_OP(i32 %32)
  store i32 %33, i32* %13, align 4
  %34 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %35 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %36 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %34, i64 %37
  store %struct.bpf_reg_state* %38, %struct.bpf_reg_state** %9, align 8
  store %struct.bpf_reg_state* null, %struct.bpf_reg_state** %10, align 8
  %39 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %9, align 8
  %40 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @SCALAR_VALUE, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %2
  %45 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %9, align 8
  store %struct.bpf_reg_state* %45, %struct.bpf_reg_state** %11, align 8
  br label %46

46:                                               ; preds = %44, %2
  %47 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %48 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @BPF_SRC(i32 %49)
  %51 = load i64, i64* @BPF_X, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %137

53:                                               ; preds = %46
  %54 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %55 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %56 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %54, i64 %57
  store %struct.bpf_reg_state* %58, %struct.bpf_reg_state** %10, align 8
  %59 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %10, align 8
  %60 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @SCALAR_VALUE, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %116

64:                                               ; preds = %53
  %65 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %9, align 8
  %66 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @SCALAR_VALUE, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %100

70:                                               ; preds = %64
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* @BPF_SUB, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %86

74:                                               ; preds = %70
  %75 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %76 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %74
  %80 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %81 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %82 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %83 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @mark_reg_unknown(%struct.bpf_verifier_env* %80, %struct.bpf_reg_state* %81, i64 %84)
  store i32 0, i32* %3, align 4
  br label %191

86:                                               ; preds = %74, %70
  %87 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %88 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %89 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i32*, i32** @bpf_alu_string, align 8
  %92 = load i32, i32* %13, align 4
  %93 = ashr i32 %92, 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %91, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %87, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %90, i32 %96)
  %98 = load i32, i32* @EACCES, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %3, align 4
  br label %191

100:                                              ; preds = %64
  %101 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %102 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %103 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @mark_chain_precision(%struct.bpf_verifier_env* %101, i64 %104)
  store i32 %105, i32* %14, align 4
  %106 = load i32, i32* %14, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %100
  %109 = load i32, i32* %14, align 4
  store i32 %109, i32* %3, align 4
  br label %191

110:                                              ; preds = %100
  %111 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %112 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %113 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %10, align 8
  %114 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %9, align 8
  %115 = call i32 @adjust_ptr_min_max_vals(%struct.bpf_verifier_env* %111, %struct.bpf_insn* %112, %struct.bpf_reg_state* %113, %struct.bpf_reg_state* %114)
  store i32 %115, i32* %3, align 4
  br label %191

116:                                              ; preds = %53
  %117 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %11, align 8
  %118 = icmp ne %struct.bpf_reg_state* %117, null
  br i1 %118, label %119, label %135

119:                                              ; preds = %116
  %120 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %121 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %122 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @mark_chain_precision(%struct.bpf_verifier_env* %120, i64 %123)
  store i32 %124, i32* %14, align 4
  %125 = load i32, i32* %14, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %119
  %128 = load i32, i32* %14, align 4
  store i32 %128, i32* %3, align 4
  br label %191

129:                                              ; preds = %119
  %130 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %131 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %132 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %9, align 8
  %133 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %10, align 8
  %134 = call i32 @adjust_ptr_min_max_vals(%struct.bpf_verifier_env* %130, %struct.bpf_insn* %131, %struct.bpf_reg_state* %132, %struct.bpf_reg_state* %133)
  store i32 %134, i32* %3, align 4
  br label %191

135:                                              ; preds = %116
  br label %136

136:                                              ; preds = %135
  br label %153

137:                                              ; preds = %46
  %138 = load i64, i64* @SCALAR_VALUE, align 8
  %139 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %12, i32 0, i32 0
  store i64 %138, i64* %139, align 8
  %140 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %141 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @__mark_reg_known(%struct.bpf_reg_state* %12, i32 %142)
  store %struct.bpf_reg_state* %12, %struct.bpf_reg_state** %10, align 8
  %144 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %11, align 8
  %145 = icmp ne %struct.bpf_reg_state* %144, null
  br i1 %145, label %146, label %152

146:                                              ; preds = %137
  %147 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %148 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %149 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %11, align 8
  %150 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %10, align 8
  %151 = call i32 @adjust_ptr_min_max_vals(%struct.bpf_verifier_env* %147, %struct.bpf_insn* %148, %struct.bpf_reg_state* %149, %struct.bpf_reg_state* %150)
  store i32 %151, i32* %3, align 4
  br label %191

152:                                              ; preds = %137
  br label %153

153:                                              ; preds = %152, %136
  %154 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %11, align 8
  %155 = call i64 @WARN_ON_ONCE(%struct.bpf_reg_state* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %165

157:                                              ; preds = %153
  %158 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %159 = load %struct.bpf_func_state*, %struct.bpf_func_state** %7, align 8
  %160 = call i32 @print_verifier_state(%struct.bpf_verifier_env* %158, %struct.bpf_func_state* %159)
  %161 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %162 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %161, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %163 = load i32, i32* @EINVAL, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %3, align 4
  br label %191

165:                                              ; preds = %153
  %166 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %10, align 8
  %167 = icmp ne %struct.bpf_reg_state* %166, null
  %168 = xor i1 %167, true
  %169 = zext i1 %168 to i32
  %170 = call i64 @WARN_ON(i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %180

172:                                              ; preds = %165
  %173 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %174 = load %struct.bpf_func_state*, %struct.bpf_func_state** %7, align 8
  %175 = call i32 @print_verifier_state(%struct.bpf_verifier_env* %173, %struct.bpf_func_state* %174)
  %176 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %177 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %176, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %178 = load i32, i32* @EINVAL, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %3, align 4
  br label %191

180:                                              ; preds = %165
  %181 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %182 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %183 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %9, align 8
  %184 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %10, align 8
  %185 = bitcast %struct.bpf_reg_state* %184 to { i64, i32 }*
  %186 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %185, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @adjust_scalar_min_max_vals(%struct.bpf_verifier_env* %181, %struct.bpf_insn* %182, %struct.bpf_reg_state* %183, i64 %187, i32 %189)
  store i32 %190, i32* %3, align 4
  br label %191

191:                                              ; preds = %180, %172, %157, %146, %129, %127, %110, %108, %86, %79
  %192 = load i32, i32* %3, align 4
  ret i32 %192
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @BPF_OP(i32) #2

declare dso_local i64 @BPF_SRC(i32) #2

declare dso_local i32 @mark_reg_unknown(%struct.bpf_verifier_env*, %struct.bpf_reg_state*, i64) #2

declare dso_local i32 @verbose(%struct.bpf_verifier_env*, i8*, ...) #2

declare dso_local i32 @mark_chain_precision(%struct.bpf_verifier_env*, i64) #2

declare dso_local i32 @adjust_ptr_min_max_vals(%struct.bpf_verifier_env*, %struct.bpf_insn*, %struct.bpf_reg_state*, %struct.bpf_reg_state*) #2

declare dso_local i32 @__mark_reg_known(%struct.bpf_reg_state*, i32) #2

declare dso_local i64 @WARN_ON_ONCE(%struct.bpf_reg_state*) #2

declare dso_local i32 @print_verifier_state(%struct.bpf_verifier_env*, %struct.bpf_func_state*) #2

declare dso_local i64 @WARN_ON(i32) #2

declare dso_local i32 @adjust_scalar_min_max_vals(%struct.bpf_verifier_env*, %struct.bpf_insn*, %struct.bpf_reg_state*, i64, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
