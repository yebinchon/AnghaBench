; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_jit_subprogs.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_jit_subprogs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { i32, %struct.TYPE_5__*, %struct.TYPE_6__*, %struct.bpf_prog* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.bpf_prog = type { i32, i32, i32, i32, i8*, %struct.bpf_insn*, %struct.TYPE_4__*, i32 }
%struct.bpf_insn = type { i32, i64, i32, i32 }
%struct.TYPE_4__ = type { i32, float*, i32, %struct.bpf_prog**, i32, i32, i32, i32, i32, i32, i32 }

@BPF_JMP = common dso_local global i32 0, align 4
@BPF_CALL = common dso_local global i32 0, align 4
@BPF_PSEUDO_CALL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"verifier bug. No program starts at insn %d\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_USER = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@__bpf_call_base = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"JIT doesn't support bpf-to-bpf calls\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_verifier_env*)* @jit_subprogs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jit_subprogs(%struct.bpf_verifier_env* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bpf_verifier_env*, align 8
  %4 = alloca %struct.bpf_prog*, align 8
  %5 = alloca %struct.bpf_prog**, align 8
  %6 = alloca %struct.bpf_prog*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.bpf_insn*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %3, align 8
  %16 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %17 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %16, i32 0, i32 3
  %18 = load %struct.bpf_prog*, %struct.bpf_prog** %17, align 8
  store %struct.bpf_prog* %18, %struct.bpf_prog** %4, align 8
  store i32 0, i32* %10, align 4
  %19 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %20 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sle i32 %21, 1
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %651

24:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  %25 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %26 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %25, i32 0, i32 5
  %27 = load %struct.bpf_insn*, %struct.bpf_insn** %26, align 8
  store %struct.bpf_insn* %27, %struct.bpf_insn** %13, align 8
  br label %28

28:                                               ; preds = %86, %24
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %31 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %91

34:                                               ; preds = %28
  %35 = load %struct.bpf_insn*, %struct.bpf_insn** %13, align 8
  %36 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @BPF_JMP, align 4
  %39 = load i32, i32* @BPF_CALL, align 4
  %40 = or i32 %38, %39
  %41 = icmp ne i32 %37, %40
  br i1 %41, label %48, label %42

42:                                               ; preds = %34
  %43 = load %struct.bpf_insn*, %struct.bpf_insn** %13, align 8
  %44 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @BPF_PSEUDO_CALL, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42, %34
  br label %86

49:                                               ; preds = %42
  %50 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.bpf_insn*, %struct.bpf_insn** %13, align 8
  %53 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %51, %54
  %56 = add nsw i32 %55, 1
  %57 = call i32 @find_subprog(%struct.bpf_verifier_env* %50, i32 %56)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %49
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.bpf_insn*, %struct.bpf_insn** %13, align 8
  %63 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %61, %64
  %66 = add nsw i32 %65, 1
  %67 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* @EFAULT, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %651

70:                                               ; preds = %49
  %71 = load i32, i32* %12, align 4
  %72 = load %struct.bpf_insn*, %struct.bpf_insn** %13, align 8
  %73 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 4
  %74 = load %struct.bpf_insn*, %struct.bpf_insn** %13, align 8
  %75 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %78 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %77, i32 0, i32 1
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  store i32 %76, i32* %83, align 4
  %84 = load %struct.bpf_insn*, %struct.bpf_insn** %13, align 8
  %85 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %84, i32 0, i32 2
  store i32 1, i32* %85, align 8
  br label %86

86:                                               ; preds = %70, %48
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %7, align 4
  %89 = load %struct.bpf_insn*, %struct.bpf_insn** %13, align 8
  %90 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %89, i32 1
  store %struct.bpf_insn* %90, %struct.bpf_insn** %13, align 8
  br label %28

91:                                               ; preds = %28
  %92 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %93 = call i32 @bpf_prog_alloc_jited_linfo(%struct.bpf_prog* %92)
  store i32 %93, i32* %15, align 4
  %94 = load i32, i32* %15, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  br label %602

97:                                               ; preds = %91
  %98 = load i32, i32* @ENOMEM, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %15, align 4
  %100 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %101 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @GFP_KERNEL, align 4
  %104 = call %struct.bpf_prog** @kcalloc(i32 %102, i32 8, i32 %103)
  store %struct.bpf_prog** %104, %struct.bpf_prog*** %5, align 8
  %105 = load %struct.bpf_prog**, %struct.bpf_prog*** %5, align 8
  %106 = icmp ne %struct.bpf_prog** %105, null
  br i1 %106, label %108, label %107

107:                                              ; preds = %97
  br label %602

108:                                              ; preds = %97
  store i32 0, i32* %7, align 4
  br label %109

109:                                              ; preds = %339, %108
  %110 = load i32, i32* %7, align 4
  %111 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %112 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp slt i32 %110, %113
  br i1 %114, label %115, label %342

115:                                              ; preds = %109
  %116 = load i32, i32* %10, align 4
  store i32 %116, i32* %9, align 4
  %117 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %118 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %117, i32 0, i32 2
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %118, align 8
  %120 = load i32, i32* %7, align 4
  %121 = add nsw i32 %120, 1
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  store i32 %125, i32* %10, align 4
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* %9, align 4
  %128 = sub nsw i32 %126, %127
  store i32 %128, i32* %11, align 4
  %129 = load i32, i32* %11, align 4
  %130 = call i32 @bpf_prog_size(i32 %129)
  %131 = load i32, i32* @GFP_USER, align 4
  %132 = call %struct.bpf_prog* @bpf_prog_alloc_no_stats(i32 %130, i32 %131)
  %133 = load %struct.bpf_prog**, %struct.bpf_prog*** %5, align 8
  %134 = load i32, i32* %7, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.bpf_prog*, %struct.bpf_prog** %133, i64 %135
  store %struct.bpf_prog* %132, %struct.bpf_prog** %136, align 8
  %137 = load %struct.bpf_prog**, %struct.bpf_prog*** %5, align 8
  %138 = load i32, i32* %7, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.bpf_prog*, %struct.bpf_prog** %137, i64 %139
  %141 = load %struct.bpf_prog*, %struct.bpf_prog** %140, align 8
  %142 = icmp ne %struct.bpf_prog* %141, null
  br i1 %142, label %144, label %143

143:                                              ; preds = %115
  br label %574

144:                                              ; preds = %115
  %145 = load %struct.bpf_prog**, %struct.bpf_prog*** %5, align 8
  %146 = load i32, i32* %7, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.bpf_prog*, %struct.bpf_prog** %145, i64 %147
  %149 = load %struct.bpf_prog*, %struct.bpf_prog** %148, align 8
  %150 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %149, i32 0, i32 5
  %151 = load %struct.bpf_insn*, %struct.bpf_insn** %150, align 8
  %152 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %153 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %152, i32 0, i32 5
  %154 = load %struct.bpf_insn*, %struct.bpf_insn** %153, align 8
  %155 = load i32, i32* %9, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %154, i64 %156
  %158 = load i32, i32* %11, align 4
  %159 = sext i32 %158 to i64
  %160 = mul i64 %159, 24
  %161 = trunc i64 %160 to i32
  %162 = call i32 @memcpy(%struct.bpf_insn* %151, %struct.bpf_insn* %157, i32 %161)
  %163 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %164 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %163, i32 0, i32 7
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.bpf_prog**, %struct.bpf_prog*** %5, align 8
  %167 = load i32, i32* %7, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.bpf_prog*, %struct.bpf_prog** %166, i64 %168
  %170 = load %struct.bpf_prog*, %struct.bpf_prog** %169, align 8
  %171 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %170, i32 0, i32 7
  store i32 %165, i32* %171, align 8
  %172 = load i32, i32* %11, align 4
  %173 = load %struct.bpf_prog**, %struct.bpf_prog*** %5, align 8
  %174 = load i32, i32* %7, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.bpf_prog*, %struct.bpf_prog** %173, i64 %175
  %177 = load %struct.bpf_prog*, %struct.bpf_prog** %176, align 8
  %178 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %177, i32 0, i32 0
  store i32 %172, i32* %178, align 8
  %179 = load %struct.bpf_prog**, %struct.bpf_prog*** %5, align 8
  %180 = load i32, i32* %7, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.bpf_prog*, %struct.bpf_prog** %179, i64 %181
  %183 = load %struct.bpf_prog*, %struct.bpf_prog** %182, align 8
  %184 = call i64 @bpf_prog_calc_tag(%struct.bpf_prog* %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %144
  br label %574

187:                                              ; preds = %144
  %188 = load %struct.bpf_prog**, %struct.bpf_prog*** %5, align 8
  %189 = load i32, i32* %7, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.bpf_prog*, %struct.bpf_prog** %188, i64 %190
  %192 = load %struct.bpf_prog*, %struct.bpf_prog** %191, align 8
  %193 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %192, i32 0, i32 1
  store i32 1, i32* %193, align 4
  %194 = load i32, i32* %7, align 4
  %195 = load %struct.bpf_prog**, %struct.bpf_prog*** %5, align 8
  %196 = load i32, i32* %7, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.bpf_prog*, %struct.bpf_prog** %195, i64 %197
  %199 = load %struct.bpf_prog*, %struct.bpf_prog** %198, align 8
  %200 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %199, i32 0, i32 6
  %201 = load %struct.TYPE_4__*, %struct.TYPE_4__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 0
  store i32 %194, i32* %202, align 8
  %203 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %204 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %203, i32 0, i32 6
  %205 = load %struct.TYPE_4__*, %struct.TYPE_4__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 10
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.bpf_prog**, %struct.bpf_prog*** %5, align 8
  %209 = load i32, i32* %7, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.bpf_prog*, %struct.bpf_prog** %208, i64 %210
  %212 = load %struct.bpf_prog*, %struct.bpf_prog** %211, align 8
  %213 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %212, i32 0, i32 6
  %214 = load %struct.TYPE_4__*, %struct.TYPE_4__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 10
  store i32 %207, i32* %215, align 8
  %216 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %217 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %216, i32 0, i32 6
  %218 = load %struct.TYPE_4__*, %struct.TYPE_4__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 9
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.bpf_prog**, %struct.bpf_prog*** %5, align 8
  %222 = load i32, i32* %7, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.bpf_prog*, %struct.bpf_prog** %221, i64 %223
  %225 = load %struct.bpf_prog*, %struct.bpf_prog** %224, align 8
  %226 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %225, i32 0, i32 6
  %227 = load %struct.TYPE_4__*, %struct.TYPE_4__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 9
  store i32 %220, i32* %228, align 4
  %229 = load %struct.bpf_prog**, %struct.bpf_prog*** %5, align 8
  %230 = load i32, i32* %7, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.bpf_prog*, %struct.bpf_prog** %229, i64 %231
  %233 = load %struct.bpf_prog*, %struct.bpf_prog** %232, align 8
  %234 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %233, i32 0, i32 6
  %235 = load %struct.TYPE_4__*, %struct.TYPE_4__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 1
  %237 = load float*, float** %236, align 8
  %238 = getelementptr inbounds float, float* %237, i64 0
  store float 7.000000e+01, float* %238, align 4
  %239 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %240 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %239, i32 0, i32 2
  %241 = load %struct.TYPE_6__*, %struct.TYPE_6__** %240, align 8
  %242 = load i32, i32* %7, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i64 %243
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.bpf_prog**, %struct.bpf_prog*** %5, align 8
  %248 = load i32, i32* %7, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.bpf_prog*, %struct.bpf_prog** %247, i64 %249
  %251 = load %struct.bpf_prog*, %struct.bpf_prog** %250, align 8
  %252 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %251, i32 0, i32 6
  %253 = load %struct.TYPE_4__*, %struct.TYPE_4__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %253, i32 0, i32 8
  store i32 %246, i32* %254, align 8
  %255 = load %struct.bpf_prog**, %struct.bpf_prog*** %5, align 8
  %256 = load i32, i32* %7, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.bpf_prog*, %struct.bpf_prog** %255, i64 %257
  %259 = load %struct.bpf_prog*, %struct.bpf_prog** %258, align 8
  %260 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %259, i32 0, i32 2
  store i32 1, i32* %260, align 8
  %261 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %262 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %261, i32 0, i32 6
  %263 = load %struct.TYPE_4__*, %struct.TYPE_4__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %263, i32 0, i32 7
  %265 = load i32, i32* %264, align 4
  %266 = load %struct.bpf_prog**, %struct.bpf_prog*** %5, align 8
  %267 = load i32, i32* %7, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds %struct.bpf_prog*, %struct.bpf_prog** %266, i64 %268
  %270 = load %struct.bpf_prog*, %struct.bpf_prog** %269, align 8
  %271 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %270, i32 0, i32 6
  %272 = load %struct.TYPE_4__*, %struct.TYPE_4__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %272, i32 0, i32 7
  store i32 %265, i32* %273, align 4
  %274 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %275 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %274, i32 0, i32 6
  %276 = load %struct.TYPE_4__*, %struct.TYPE_4__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %276, i32 0, i32 6
  %278 = load i32, i32* %277, align 8
  %279 = load %struct.bpf_prog**, %struct.bpf_prog*** %5, align 8
  %280 = load i32, i32* %7, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.bpf_prog*, %struct.bpf_prog** %279, i64 %281
  %283 = load %struct.bpf_prog*, %struct.bpf_prog** %282, align 8
  %284 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %283, i32 0, i32 6
  %285 = load %struct.TYPE_4__*, %struct.TYPE_4__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %285, i32 0, i32 6
  store i32 %278, i32* %286, align 8
  %287 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %288 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %287, i32 0, i32 6
  %289 = load %struct.TYPE_4__*, %struct.TYPE_4__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %289, i32 0, i32 5
  %291 = load i32, i32* %290, align 4
  %292 = load %struct.bpf_prog**, %struct.bpf_prog*** %5, align 8
  %293 = load i32, i32* %7, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.bpf_prog*, %struct.bpf_prog** %292, i64 %294
  %296 = load %struct.bpf_prog*, %struct.bpf_prog** %295, align 8
  %297 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %296, i32 0, i32 6
  %298 = load %struct.TYPE_4__*, %struct.TYPE_4__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %298, i32 0, i32 5
  store i32 %291, i32* %299, align 4
  %300 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %301 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %300, i32 0, i32 2
  %302 = load %struct.TYPE_6__*, %struct.TYPE_6__** %301, align 8
  %303 = load i32, i32* %7, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %302, i64 %304
  %306 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 4
  %308 = load %struct.bpf_prog**, %struct.bpf_prog*** %5, align 8
  %309 = load i32, i32* %7, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds %struct.bpf_prog*, %struct.bpf_prog** %308, i64 %310
  %312 = load %struct.bpf_prog*, %struct.bpf_prog** %311, align 8
  %313 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %312, i32 0, i32 6
  %314 = load %struct.TYPE_4__*, %struct.TYPE_4__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %314, i32 0, i32 4
  store i32 %307, i32* %315, align 8
  %316 = load %struct.bpf_prog**, %struct.bpf_prog*** %5, align 8
  %317 = load i32, i32* %7, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds %struct.bpf_prog*, %struct.bpf_prog** %316, i64 %318
  %320 = load %struct.bpf_prog*, %struct.bpf_prog** %319, align 8
  %321 = call %struct.bpf_prog* @bpf_int_jit_compile(%struct.bpf_prog* %320)
  %322 = load %struct.bpf_prog**, %struct.bpf_prog*** %5, align 8
  %323 = load i32, i32* %7, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds %struct.bpf_prog*, %struct.bpf_prog** %322, i64 %324
  store %struct.bpf_prog* %321, %struct.bpf_prog** %325, align 8
  %326 = load %struct.bpf_prog**, %struct.bpf_prog*** %5, align 8
  %327 = load i32, i32* %7, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds %struct.bpf_prog*, %struct.bpf_prog** %326, i64 %328
  %330 = load %struct.bpf_prog*, %struct.bpf_prog** %329, align 8
  %331 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %330, i32 0, i32 3
  %332 = load i32, i32* %331, align 4
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %337, label %334

334:                                              ; preds = %187
  %335 = load i32, i32* @ENOTSUPP, align 4
  %336 = sub nsw i32 0, %335
  store i32 %336, i32* %15, align 4
  br label %574

337:                                              ; preds = %187
  %338 = call i32 (...) @cond_resched()
  br label %339

339:                                              ; preds = %337
  %340 = load i32, i32* %7, align 4
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %7, align 4
  br label %109

342:                                              ; preds = %109
  store i32 0, i32* %7, align 4
  br label %343

343:                                              ; preds = %424, %342
  %344 = load i32, i32* %7, align 4
  %345 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %346 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 8
  %348 = icmp slt i32 %344, %347
  br i1 %348, label %349, label %427

349:                                              ; preds = %343
  %350 = load %struct.bpf_prog**, %struct.bpf_prog*** %5, align 8
  %351 = load i32, i32* %7, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds %struct.bpf_prog*, %struct.bpf_prog** %350, i64 %352
  %354 = load %struct.bpf_prog*, %struct.bpf_prog** %353, align 8
  %355 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %354, i32 0, i32 5
  %356 = load %struct.bpf_insn*, %struct.bpf_insn** %355, align 8
  store %struct.bpf_insn* %356, %struct.bpf_insn** %13, align 8
  store i32 0, i32* %8, align 4
  br label %357

357:                                              ; preds = %398, %349
  %358 = load i32, i32* %8, align 4
  %359 = load %struct.bpf_prog**, %struct.bpf_prog*** %5, align 8
  %360 = load i32, i32* %7, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds %struct.bpf_prog*, %struct.bpf_prog** %359, i64 %361
  %363 = load %struct.bpf_prog*, %struct.bpf_prog** %362, align 8
  %364 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 8
  %366 = icmp slt i32 %358, %365
  br i1 %366, label %367, label %403

367:                                              ; preds = %357
  %368 = load %struct.bpf_insn*, %struct.bpf_insn** %13, align 8
  %369 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 8
  %371 = load i32, i32* @BPF_JMP, align 4
  %372 = load i32, i32* @BPF_CALL, align 4
  %373 = or i32 %371, %372
  %374 = icmp ne i32 %370, %373
  br i1 %374, label %381, label %375

375:                                              ; preds = %367
  %376 = load %struct.bpf_insn*, %struct.bpf_insn** %13, align 8
  %377 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %376, i32 0, i32 1
  %378 = load i64, i64* %377, align 8
  %379 = load i64, i64* @BPF_PSEUDO_CALL, align 8
  %380 = icmp ne i64 %378, %379
  br i1 %380, label %381, label %382

381:                                              ; preds = %375, %367
  br label %398

382:                                              ; preds = %375
  %383 = load %struct.bpf_insn*, %struct.bpf_insn** %13, align 8
  %384 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %383, i32 0, i32 3
  %385 = load i32, i32* %384, align 4
  store i32 %385, i32* %12, align 4
  %386 = load %struct.bpf_prog**, %struct.bpf_prog*** %5, align 8
  %387 = load i32, i32* %12, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds %struct.bpf_prog*, %struct.bpf_prog** %386, i64 %388
  %390 = load %struct.bpf_prog*, %struct.bpf_prog** %389, align 8
  %391 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %390, i32 0, i32 4
  %392 = load i8*, i8** %391, align 8
  %393 = call i32 @BPF_CAST_CALL(i8* %392)
  %394 = load i32, i32* @__bpf_call_base, align 4
  %395 = sub nsw i32 %393, %394
  %396 = load %struct.bpf_insn*, %struct.bpf_insn** %13, align 8
  %397 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %396, i32 0, i32 2
  store i32 %395, i32* %397, align 8
  br label %398

398:                                              ; preds = %382, %381
  %399 = load i32, i32* %8, align 4
  %400 = add nsw i32 %399, 1
  store i32 %400, i32* %8, align 4
  %401 = load %struct.bpf_insn*, %struct.bpf_insn** %13, align 8
  %402 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %401, i32 1
  store %struct.bpf_insn* %402, %struct.bpf_insn** %13, align 8
  br label %357

403:                                              ; preds = %357
  %404 = load %struct.bpf_prog**, %struct.bpf_prog*** %5, align 8
  %405 = load %struct.bpf_prog**, %struct.bpf_prog*** %5, align 8
  %406 = load i32, i32* %7, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds %struct.bpf_prog*, %struct.bpf_prog** %405, i64 %407
  %409 = load %struct.bpf_prog*, %struct.bpf_prog** %408, align 8
  %410 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %409, i32 0, i32 6
  %411 = load %struct.TYPE_4__*, %struct.TYPE_4__** %410, align 8
  %412 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %411, i32 0, i32 3
  store %struct.bpf_prog** %404, %struct.bpf_prog*** %412, align 8
  %413 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %414 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %413, i32 0, i32 0
  %415 = load i32, i32* %414, align 8
  %416 = load %struct.bpf_prog**, %struct.bpf_prog*** %5, align 8
  %417 = load i32, i32* %7, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds %struct.bpf_prog*, %struct.bpf_prog** %416, i64 %418
  %420 = load %struct.bpf_prog*, %struct.bpf_prog** %419, align 8
  %421 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %420, i32 0, i32 6
  %422 = load %struct.TYPE_4__*, %struct.TYPE_4__** %421, align 8
  %423 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %422, i32 0, i32 2
  store i32 %415, i32* %423, align 8
  br label %424

424:                                              ; preds = %403
  %425 = load i32, i32* %7, align 4
  %426 = add nsw i32 %425, 1
  store i32 %426, i32* %7, align 4
  br label %343

427:                                              ; preds = %343
  store i32 0, i32* %7, align 4
  br label %428

428:                                              ; preds = %472, %427
  %429 = load i32, i32* %7, align 4
  %430 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %431 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %430, i32 0, i32 0
  %432 = load i32, i32* %431, align 8
  %433 = icmp slt i32 %429, %432
  br i1 %433, label %434, label %475

434:                                              ; preds = %428
  %435 = load %struct.bpf_prog**, %struct.bpf_prog*** %5, align 8
  %436 = load i32, i32* %7, align 4
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds %struct.bpf_prog*, %struct.bpf_prog** %435, i64 %437
  %439 = load %struct.bpf_prog*, %struct.bpf_prog** %438, align 8
  %440 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %439, i32 0, i32 4
  %441 = load i8*, i8** %440, align 8
  store i8* %441, i8** %14, align 8
  %442 = load %struct.bpf_prog**, %struct.bpf_prog*** %5, align 8
  %443 = load i32, i32* %7, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds %struct.bpf_prog*, %struct.bpf_prog** %442, i64 %444
  %446 = load %struct.bpf_prog*, %struct.bpf_prog** %445, align 8
  %447 = call %struct.bpf_prog* @bpf_int_jit_compile(%struct.bpf_prog* %446)
  store %struct.bpf_prog* %447, %struct.bpf_prog** %6, align 8
  %448 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %449 = load %struct.bpf_prog**, %struct.bpf_prog*** %5, align 8
  %450 = load i32, i32* %7, align 4
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds %struct.bpf_prog*, %struct.bpf_prog** %449, i64 %451
  %453 = load %struct.bpf_prog*, %struct.bpf_prog** %452, align 8
  %454 = icmp ne %struct.bpf_prog* %448, %453
  br i1 %454, label %465, label %455

455:                                              ; preds = %434
  %456 = load %struct.bpf_prog**, %struct.bpf_prog*** %5, align 8
  %457 = load i32, i32* %7, align 4
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds %struct.bpf_prog*, %struct.bpf_prog** %456, i64 %458
  %460 = load %struct.bpf_prog*, %struct.bpf_prog** %459, align 8
  %461 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %460, i32 0, i32 4
  %462 = load i8*, i8** %461, align 8
  %463 = load i8*, i8** %14, align 8
  %464 = icmp ne i8* %462, %463
  br i1 %464, label %465, label %470

465:                                              ; preds = %455, %434
  %466 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %467 = call i32 @verbose(%struct.bpf_verifier_env* %466, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %468 = load i32, i32* @ENOTSUPP, align 4
  %469 = sub nsw i32 0, %468
  store i32 %469, i32* %15, align 4
  br label %574

470:                                              ; preds = %455
  %471 = call i32 (...) @cond_resched()
  br label %472

472:                                              ; preds = %470
  %473 = load i32, i32* %7, align 4
  %474 = add nsw i32 %473, 1
  store i32 %474, i32* %7, align 4
  br label %428

475:                                              ; preds = %428
  store i32 0, i32* %7, align 4
  br label %476

476:                                              ; preds = %495, %475
  %477 = load i32, i32* %7, align 4
  %478 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %479 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %478, i32 0, i32 0
  %480 = load i32, i32* %479, align 8
  %481 = icmp slt i32 %477, %480
  br i1 %481, label %482, label %498

482:                                              ; preds = %476
  %483 = load %struct.bpf_prog**, %struct.bpf_prog*** %5, align 8
  %484 = load i32, i32* %7, align 4
  %485 = sext i32 %484 to i64
  %486 = getelementptr inbounds %struct.bpf_prog*, %struct.bpf_prog** %483, i64 %485
  %487 = load %struct.bpf_prog*, %struct.bpf_prog** %486, align 8
  %488 = call i32 @bpf_prog_lock_ro(%struct.bpf_prog* %487)
  %489 = load %struct.bpf_prog**, %struct.bpf_prog*** %5, align 8
  %490 = load i32, i32* %7, align 4
  %491 = sext i32 %490 to i64
  %492 = getelementptr inbounds %struct.bpf_prog*, %struct.bpf_prog** %489, i64 %491
  %493 = load %struct.bpf_prog*, %struct.bpf_prog** %492, align 8
  %494 = call i32 @bpf_prog_kallsyms_add(%struct.bpf_prog* %493)
  br label %495

495:                                              ; preds = %482
  %496 = load i32, i32* %7, align 4
  %497 = add nsw i32 %496, 1
  store i32 %497, i32* %7, align 4
  br label %476

498:                                              ; preds = %476
  store i32 0, i32* %7, align 4
  %499 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %500 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %499, i32 0, i32 5
  %501 = load %struct.bpf_insn*, %struct.bpf_insn** %500, align 8
  store %struct.bpf_insn* %501, %struct.bpf_insn** %13, align 8
  br label %502

502:                                              ; preds = %545, %498
  %503 = load i32, i32* %7, align 4
  %504 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %505 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %504, i32 0, i32 0
  %506 = load i32, i32* %505, align 8
  %507 = icmp slt i32 %503, %506
  br i1 %507, label %508, label %550

508:                                              ; preds = %502
  %509 = load %struct.bpf_insn*, %struct.bpf_insn** %13, align 8
  %510 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %509, i32 0, i32 0
  %511 = load i32, i32* %510, align 8
  %512 = load i32, i32* @BPF_JMP, align 4
  %513 = load i32, i32* @BPF_CALL, align 4
  %514 = or i32 %512, %513
  %515 = icmp ne i32 %511, %514
  br i1 %515, label %522, label %516

516:                                              ; preds = %508
  %517 = load %struct.bpf_insn*, %struct.bpf_insn** %13, align 8
  %518 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %517, i32 0, i32 1
  %519 = load i64, i64* %518, align 8
  %520 = load i64, i64* @BPF_PSEUDO_CALL, align 8
  %521 = icmp ne i64 %519, %520
  br i1 %521, label %522, label %523

522:                                              ; preds = %516, %508
  br label %545

523:                                              ; preds = %516
  %524 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %525 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %524, i32 0, i32 1
  %526 = load %struct.TYPE_5__*, %struct.TYPE_5__** %525, align 8
  %527 = load i32, i32* %7, align 4
  %528 = sext i32 %527 to i64
  %529 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %526, i64 %528
  %530 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %529, i32 0, i32 0
  %531 = load i32, i32* %530, align 4
  %532 = load %struct.bpf_insn*, %struct.bpf_insn** %13, align 8
  %533 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %532, i32 0, i32 3
  store i32 %531, i32* %533, align 4
  %534 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %535 = load i32, i32* %7, align 4
  %536 = load %struct.bpf_insn*, %struct.bpf_insn** %13, align 8
  %537 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %536, i32 0, i32 3
  %538 = load i32, i32* %537, align 4
  %539 = add nsw i32 %535, %538
  %540 = add nsw i32 %539, 1
  %541 = call i32 @find_subprog(%struct.bpf_verifier_env* %534, i32 %540)
  store i32 %541, i32* %12, align 4
  %542 = load i32, i32* %12, align 4
  %543 = load %struct.bpf_insn*, %struct.bpf_insn** %13, align 8
  %544 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %543, i32 0, i32 2
  store i32 %542, i32* %544, align 8
  br label %545

545:                                              ; preds = %523, %522
  %546 = load i32, i32* %7, align 4
  %547 = add nsw i32 %546, 1
  store i32 %547, i32* %7, align 4
  %548 = load %struct.bpf_insn*, %struct.bpf_insn** %13, align 8
  %549 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %548, i32 1
  store %struct.bpf_insn* %549, %struct.bpf_insn** %13, align 8
  br label %502

550:                                              ; preds = %502
  %551 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %552 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %551, i32 0, i32 3
  store i32 1, i32* %552, align 4
  %553 = load %struct.bpf_prog**, %struct.bpf_prog*** %5, align 8
  %554 = getelementptr inbounds %struct.bpf_prog*, %struct.bpf_prog** %553, i64 0
  %555 = load %struct.bpf_prog*, %struct.bpf_prog** %554, align 8
  %556 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %555, i32 0, i32 4
  %557 = load i8*, i8** %556, align 8
  %558 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %559 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %558, i32 0, i32 4
  store i8* %557, i8** %559, align 8
  %560 = load %struct.bpf_prog**, %struct.bpf_prog*** %5, align 8
  %561 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %562 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %561, i32 0, i32 6
  %563 = load %struct.TYPE_4__*, %struct.TYPE_4__** %562, align 8
  %564 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %563, i32 0, i32 3
  store %struct.bpf_prog** %560, %struct.bpf_prog*** %564, align 8
  %565 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %566 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %565, i32 0, i32 0
  %567 = load i32, i32* %566, align 8
  %568 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %569 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %568, i32 0, i32 6
  %570 = load %struct.TYPE_4__*, %struct.TYPE_4__** %569, align 8
  %571 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %570, i32 0, i32 2
  store i32 %567, i32* %571, align 8
  %572 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %573 = call i32 @bpf_prog_free_unused_jited_linfo(%struct.bpf_prog* %572)
  store i32 0, i32* %2, align 4
  br label %651

574:                                              ; preds = %465, %334, %186, %143
  store i32 0, i32* %7, align 4
  br label %575

575:                                              ; preds = %596, %574
  %576 = load i32, i32* %7, align 4
  %577 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %578 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %577, i32 0, i32 0
  %579 = load i32, i32* %578, align 8
  %580 = icmp slt i32 %576, %579
  br i1 %580, label %581, label %599

581:                                              ; preds = %575
  %582 = load %struct.bpf_prog**, %struct.bpf_prog*** %5, align 8
  %583 = load i32, i32* %7, align 4
  %584 = sext i32 %583 to i64
  %585 = getelementptr inbounds %struct.bpf_prog*, %struct.bpf_prog** %582, i64 %584
  %586 = load %struct.bpf_prog*, %struct.bpf_prog** %585, align 8
  %587 = icmp ne %struct.bpf_prog* %586, null
  br i1 %587, label %588, label %595

588:                                              ; preds = %581
  %589 = load %struct.bpf_prog**, %struct.bpf_prog*** %5, align 8
  %590 = load i32, i32* %7, align 4
  %591 = sext i32 %590 to i64
  %592 = getelementptr inbounds %struct.bpf_prog*, %struct.bpf_prog** %589, i64 %591
  %593 = load %struct.bpf_prog*, %struct.bpf_prog** %592, align 8
  %594 = call i32 @bpf_jit_free(%struct.bpf_prog* %593)
  br label %595

595:                                              ; preds = %588, %581
  br label %596

596:                                              ; preds = %595
  %597 = load i32, i32* %7, align 4
  %598 = add nsw i32 %597, 1
  store i32 %598, i32* %7, align 4
  br label %575

599:                                              ; preds = %575
  %600 = load %struct.bpf_prog**, %struct.bpf_prog*** %5, align 8
  %601 = call i32 @kfree(%struct.bpf_prog** %600)
  br label %602

602:                                              ; preds = %599, %107, %96
  %603 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %604 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %603, i32 0, i32 2
  store i32 0, i32* %604, align 8
  store i32 0, i32* %7, align 4
  %605 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %606 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %605, i32 0, i32 5
  %607 = load %struct.bpf_insn*, %struct.bpf_insn** %606, align 8
  store %struct.bpf_insn* %607, %struct.bpf_insn** %13, align 8
  br label %608

608:                                              ; preds = %642, %602
  %609 = load i32, i32* %7, align 4
  %610 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %611 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %610, i32 0, i32 0
  %612 = load i32, i32* %611, align 8
  %613 = icmp slt i32 %609, %612
  br i1 %613, label %614, label %647

614:                                              ; preds = %608
  %615 = load %struct.bpf_insn*, %struct.bpf_insn** %13, align 8
  %616 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %615, i32 0, i32 0
  %617 = load i32, i32* %616, align 8
  %618 = load i32, i32* @BPF_JMP, align 4
  %619 = load i32, i32* @BPF_CALL, align 4
  %620 = or i32 %618, %619
  %621 = icmp ne i32 %617, %620
  br i1 %621, label %628, label %622

622:                                              ; preds = %614
  %623 = load %struct.bpf_insn*, %struct.bpf_insn** %13, align 8
  %624 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %623, i32 0, i32 1
  %625 = load i64, i64* %624, align 8
  %626 = load i64, i64* @BPF_PSEUDO_CALL, align 8
  %627 = icmp ne i64 %625, %626
  br i1 %627, label %628, label %629

628:                                              ; preds = %622, %614
  br label %642

629:                                              ; preds = %622
  %630 = load %struct.bpf_insn*, %struct.bpf_insn** %13, align 8
  %631 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %630, i32 0, i32 3
  store i32 0, i32* %631, align 4
  %632 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %633 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %632, i32 0, i32 1
  %634 = load %struct.TYPE_5__*, %struct.TYPE_5__** %633, align 8
  %635 = load i32, i32* %7, align 4
  %636 = sext i32 %635 to i64
  %637 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %634, i64 %636
  %638 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %637, i32 0, i32 0
  %639 = load i32, i32* %638, align 4
  %640 = load %struct.bpf_insn*, %struct.bpf_insn** %13, align 8
  %641 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %640, i32 0, i32 2
  store i32 %639, i32* %641, align 8
  br label %642

642:                                              ; preds = %629, %628
  %643 = load i32, i32* %7, align 4
  %644 = add nsw i32 %643, 1
  store i32 %644, i32* %7, align 4
  %645 = load %struct.bpf_insn*, %struct.bpf_insn** %13, align 8
  %646 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %645, i32 1
  store %struct.bpf_insn* %646, %struct.bpf_insn** %13, align 8
  br label %608

647:                                              ; preds = %608
  %648 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %649 = call i32 @bpf_prog_free_jited_linfo(%struct.bpf_prog* %648)
  %650 = load i32, i32* %15, align 4
  store i32 %650, i32* %2, align 4
  br label %651

651:                                              ; preds = %647, %550, %60, %23
  %652 = load i32, i32* %2, align 4
  ret i32 %652
}

declare dso_local i32 @find_subprog(%struct.bpf_verifier_env*, i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32) #1

declare dso_local i32 @bpf_prog_alloc_jited_linfo(%struct.bpf_prog*) #1

declare dso_local %struct.bpf_prog** @kcalloc(i32, i32, i32) #1

declare dso_local %struct.bpf_prog* @bpf_prog_alloc_no_stats(i32, i32) #1

declare dso_local i32 @bpf_prog_size(i32) #1

declare dso_local i32 @memcpy(%struct.bpf_insn*, %struct.bpf_insn*, i32) #1

declare dso_local i64 @bpf_prog_calc_tag(%struct.bpf_prog*) #1

declare dso_local %struct.bpf_prog* @bpf_int_jit_compile(%struct.bpf_prog*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @BPF_CAST_CALL(i8*) #1

declare dso_local i32 @verbose(%struct.bpf_verifier_env*, i8*) #1

declare dso_local i32 @bpf_prog_lock_ro(%struct.bpf_prog*) #1

declare dso_local i32 @bpf_prog_kallsyms_add(%struct.bpf_prog*) #1

declare dso_local i32 @bpf_prog_free_unused_jited_linfo(%struct.bpf_prog*) #1

declare dso_local i32 @bpf_jit_free(%struct.bpf_prog*) #1

declare dso_local i32 @kfree(%struct.bpf_prog**) #1

declare dso_local i32 @bpf_prog_free_jited_linfo(%struct.bpf_prog*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
