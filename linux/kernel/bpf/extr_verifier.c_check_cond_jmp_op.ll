; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_check_cond_jmp_op.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_check_cond_jmp_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { %struct.TYPE_4__, %struct.bpf_verifier_state* }
%struct.TYPE_4__ = type { i32 }
%struct.bpf_verifier_state = type { i64, %struct.TYPE_6__** }
%struct.TYPE_6__ = type { %struct.bpf_reg_state* }
%struct.bpf_reg_state = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.bpf_insn = type { i64, i64, i32, i32, i64 }

@BPF_JA = common dso_local global i64 0, align 8
@BPF_JSLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"invalid BPF_JMP/JMP32 opcode %x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@BPF_X = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"BPF_JMP/JMP32 uses reserved fields\0A\00", align 1
@SRC_OP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"R%d pointer comparison prohibited\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@BPF_REG_0 = common dso_local global i64 0, align 8
@BPF_JMP32 = common dso_local global i64 0, align 8
@BPF_K = common dso_local global i64 0, align 8
@SCALAR_VALUE = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@BPF_JEQ = common dso_local global i64 0, align 8
@BPF_JNE = common dso_local global i64 0, align 8
@BPF_LOG_LEVEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_verifier_env*, %struct.bpf_insn*, i32*)* @check_cond_jmp_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_cond_jmp_op(%struct.bpf_verifier_env* %0, %struct.bpf_insn* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bpf_verifier_env*, align 8
  %6 = alloca %struct.bpf_insn*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.bpf_verifier_state*, align 8
  %9 = alloca %struct.bpf_verifier_state*, align 8
  %10 = alloca %struct.bpf_reg_state*, align 8
  %11 = alloca %struct.bpf_reg_state*, align 8
  %12 = alloca %struct.bpf_reg_state*, align 8
  %13 = alloca %struct.bpf_reg_state*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.bpf_reg_state*, align 8
  %19 = alloca %struct.bpf_reg_state, align 8
  %20 = alloca %struct.bpf_reg_state, align 8
  %21 = alloca %struct.bpf_reg_state*, align 8
  %22 = alloca %struct.bpf_reg_state*, align 8
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %5, align 8
  store %struct.bpf_insn* %1, %struct.bpf_insn** %6, align 8
  store i32* %2, i32** %7, align 8
  %23 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %24 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %23, i32 0, i32 1
  %25 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %24, align 8
  store %struct.bpf_verifier_state* %25, %struct.bpf_verifier_state** %8, align 8
  %26 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %8, align 8
  %27 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %26, i32 0, i32 1
  %28 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %27, align 8
  %29 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %8, align 8
  %30 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %28, i64 %31
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %34, align 8
  store %struct.bpf_reg_state* %35, %struct.bpf_reg_state** %10, align 8
  store %struct.bpf_reg_state* null, %struct.bpf_reg_state** %13, align 8
  %36 = load %struct.bpf_insn*, %struct.bpf_insn** %6, align 8
  %37 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @BPF_OP(i32 %38)
  store i64 %39, i64* %14, align 8
  store i32 -1, i32* %16, align 4
  %40 = load i64, i64* %14, align 8
  %41 = load i64, i64* @BPF_JA, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %3
  %44 = load i64, i64* %14, align 8
  %45 = load i64, i64* @BPF_JSLE, align 8
  %46 = icmp sgt i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %43, %3
  %48 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %49 = load i64, i64* %14, align 8
  %50 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %48, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %49)
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %512

53:                                               ; preds = %43
  %54 = load %struct.bpf_insn*, %struct.bpf_insn** %6, align 8
  %55 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @BPF_SRC(i32 %56)
  %58 = load i64, i64* @BPF_X, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %102

60:                                               ; preds = %53
  %61 = load %struct.bpf_insn*, %struct.bpf_insn** %6, align 8
  %62 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %67 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %66, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  br label %512

70:                                               ; preds = %60
  %71 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %72 = load %struct.bpf_insn*, %struct.bpf_insn** %6, align 8
  %73 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* @SRC_OP, align 4
  %76 = call i32 @check_reg_arg(%struct.bpf_verifier_env* %71, i64 %74, i32 %75)
  store i32 %76, i32* %17, align 4
  %77 = load i32, i32* %17, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %70
  %80 = load i32, i32* %17, align 4
  store i32 %80, i32* %4, align 4
  br label %512

81:                                               ; preds = %70
  %82 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %83 = load %struct.bpf_insn*, %struct.bpf_insn** %6, align 8
  %84 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i64 @is_pointer_value(%struct.bpf_verifier_env* %82, i64 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %81
  %89 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %90 = load %struct.bpf_insn*, %struct.bpf_insn** %6, align 8
  %91 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %89, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %92)
  %94 = load i32, i32* @EACCES, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %4, align 4
  br label %512

96:                                               ; preds = %81
  %97 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %10, align 8
  %98 = load %struct.bpf_insn*, %struct.bpf_insn** %6, align 8
  %99 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %97, i64 %100
  store %struct.bpf_reg_state* %101, %struct.bpf_reg_state** %13, align 8
  br label %114

102:                                              ; preds = %53
  %103 = load %struct.bpf_insn*, %struct.bpf_insn** %6, align 8
  %104 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @BPF_REG_0, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %113

108:                                              ; preds = %102
  %109 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %110 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %109, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %4, align 4
  br label %512

113:                                              ; preds = %102
  br label %114

114:                                              ; preds = %113, %96
  %115 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %116 = load %struct.bpf_insn*, %struct.bpf_insn** %6, align 8
  %117 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load i32, i32* @SRC_OP, align 4
  %120 = call i32 @check_reg_arg(%struct.bpf_verifier_env* %115, i64 %118, i32 %119)
  store i32 %120, i32* %17, align 4
  %121 = load i32, i32* %17, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %114
  %124 = load i32, i32* %17, align 4
  store i32 %124, i32* %4, align 4
  br label %512

125:                                              ; preds = %114
  %126 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %10, align 8
  %127 = load %struct.bpf_insn*, %struct.bpf_insn** %6, align 8
  %128 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %126, i64 %129
  store %struct.bpf_reg_state* %130, %struct.bpf_reg_state** %11, align 8
  %131 = load %struct.bpf_insn*, %struct.bpf_insn** %6, align 8
  %132 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = call i64 @BPF_CLASS(i32 %133)
  %135 = load i64, i64* @BPF_JMP32, align 8
  %136 = icmp eq i64 %134, %135
  %137 = zext i1 %136 to i32
  store i32 %137, i32* %15, align 4
  %138 = load %struct.bpf_insn*, %struct.bpf_insn** %6, align 8
  %139 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = call i64 @BPF_SRC(i32 %140)
  %142 = load i64, i64* @BPF_K, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %152

144:                                              ; preds = %125
  %145 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %11, align 8
  %146 = load %struct.bpf_insn*, %struct.bpf_insn** %6, align 8
  %147 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = load i64, i64* %14, align 8
  %150 = load i32, i32* %15, align 4
  %151 = call i32 @is_branch_taken(%struct.bpf_reg_state* %145, i32 %148, i64 %149, i32 %150)
  store i32 %151, i32* %16, align 4
  br label %175

152:                                              ; preds = %125
  %153 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %13, align 8
  %154 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @SCALAR_VALUE, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %174

158:                                              ; preds = %152
  %159 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %13, align 8
  %160 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = call i64 @tnum_is_const(i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %174

165:                                              ; preds = %158
  %166 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %11, align 8
  %167 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %13, align 8
  %168 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i64, i64* %14, align 8
  %172 = load i32, i32* %15, align 4
  %173 = call i32 @is_branch_taken(%struct.bpf_reg_state* %166, i32 %170, i64 %171, i32 %172)
  store i32 %173, i32* %16, align 4
  br label %174

174:                                              ; preds = %165, %158, %152
  br label %175

175:                                              ; preds = %174, %144
  %176 = load i32, i32* %16, align 4
  %177 = icmp sge i32 %176, 0
  br i1 %177, label %178, label %205

178:                                              ; preds = %175
  %179 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %180 = load %struct.bpf_insn*, %struct.bpf_insn** %6, align 8
  %181 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = call i32 @mark_chain_precision(%struct.bpf_verifier_env* %179, i64 %182)
  store i32 %183, i32* %17, align 4
  %184 = load %struct.bpf_insn*, %struct.bpf_insn** %6, align 8
  %185 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 4
  %187 = call i64 @BPF_SRC(i32 %186)
  %188 = load i64, i64* @BPF_X, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %190, label %199

190:                                              ; preds = %178
  %191 = load i32, i32* %17, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %199, label %193

193:                                              ; preds = %190
  %194 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %195 = load %struct.bpf_insn*, %struct.bpf_insn** %6, align 8
  %196 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = call i32 @mark_chain_precision(%struct.bpf_verifier_env* %194, i64 %197)
  store i32 %198, i32* %17, align 4
  br label %199

199:                                              ; preds = %193, %190, %178
  %200 = load i32, i32* %17, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %199
  %203 = load i32, i32* %17, align 4
  store i32 %203, i32* %4, align 4
  br label %512

204:                                              ; preds = %199
  br label %205

205:                                              ; preds = %204, %175
  %206 = load i32, i32* %16, align 4
  %207 = icmp eq i32 %206, 1
  br i1 %207, label %208, label %217

208:                                              ; preds = %205
  %209 = load %struct.bpf_insn*, %struct.bpf_insn** %6, align 8
  %210 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %209, i32 0, i32 4
  %211 = load i64, i64* %210, align 8
  %212 = load i32*, i32** %7, align 8
  %213 = load i32, i32* %212, align 4
  %214 = sext i32 %213 to i64
  %215 = add nsw i64 %214, %211
  %216 = trunc i64 %215 to i32
  store i32 %216, i32* %212, align 4
  store i32 0, i32* %4, align 4
  br label %512

217:                                              ; preds = %205
  %218 = load i32, i32* %16, align 4
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %217
  store i32 0, i32* %4, align 4
  br label %512

221:                                              ; preds = %217
  br label %222

222:                                              ; preds = %221
  %223 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %224 = load i32*, i32** %7, align 8
  %225 = load i32, i32* %224, align 4
  %226 = sext i32 %225 to i64
  %227 = load %struct.bpf_insn*, %struct.bpf_insn** %6, align 8
  %228 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %227, i32 0, i32 4
  %229 = load i64, i64* %228, align 8
  %230 = add nsw i64 %226, %229
  %231 = add nsw i64 %230, 1
  %232 = load i32*, i32** %7, align 8
  %233 = load i32, i32* %232, align 4
  %234 = call %struct.bpf_verifier_state* @push_stack(%struct.bpf_verifier_env* %223, i64 %231, i32 %233, i32 0)
  store %struct.bpf_verifier_state* %234, %struct.bpf_verifier_state** %9, align 8
  %235 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %9, align 8
  %236 = icmp ne %struct.bpf_verifier_state* %235, null
  br i1 %236, label %240, label %237

237:                                              ; preds = %222
  %238 = load i32, i32* @EFAULT, align 4
  %239 = sub nsw i32 0, %238
  store i32 %239, i32* %4, align 4
  br label %512

240:                                              ; preds = %222
  %241 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %9, align 8
  %242 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %241, i32 0, i32 1
  %243 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %242, align 8
  %244 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %9, align 8
  %245 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %243, i64 %246
  %248 = load %struct.TYPE_6__*, %struct.TYPE_6__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i32 0, i32 0
  %250 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %249, align 8
  store %struct.bpf_reg_state* %250, %struct.bpf_reg_state** %12, align 8
  %251 = load %struct.bpf_insn*, %struct.bpf_insn** %6, align 8
  %252 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %251, i32 0, i32 3
  %253 = load i32, i32* %252, align 4
  %254 = call i64 @BPF_SRC(i32 %253)
  %255 = load i64, i64* @BPF_X, align 8
  %256 = icmp eq i64 %254, %255
  br i1 %256, label %257, label %396

257:                                              ; preds = %240
  %258 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %10, align 8
  %259 = load %struct.bpf_insn*, %struct.bpf_insn** %6, align 8
  %260 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %258, i64 %261
  store %struct.bpf_reg_state* %262, %struct.bpf_reg_state** %18, align 8
  %263 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %11, align 8
  %264 = bitcast %struct.bpf_reg_state* %19 to i8*
  %265 = bitcast %struct.bpf_reg_state* %263 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %264, i8* align 8 %265, i64 16, i1 false)
  %266 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %18, align 8
  %267 = bitcast %struct.bpf_reg_state* %20 to i8*
  %268 = bitcast %struct.bpf_reg_state* %266 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %267, i8* align 8 %268, i64 16, i1 false)
  store %struct.bpf_reg_state* %19, %struct.bpf_reg_state** %22, align 8
  store %struct.bpf_reg_state* %20, %struct.bpf_reg_state** %21, align 8
  %269 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %22, align 8
  %270 = call i32 @coerce_reg_to_size(%struct.bpf_reg_state* %269, i32 4)
  %271 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %21, align 8
  %272 = call i32 @coerce_reg_to_size(%struct.bpf_reg_state* %271, i32 4)
  %273 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %11, align 8
  %274 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = load i64, i64* @SCALAR_VALUE, align 8
  %277 = icmp eq i64 %275, %276
  br i1 %277, label %278, label %395

278:                                              ; preds = %257
  %279 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %18, align 8
  %280 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %279, i32 0, i32 0
  %281 = load i64, i64* %280, align 8
  %282 = load i64, i64* @SCALAR_VALUE, align 8
  %283 = icmp eq i64 %281, %282
  br i1 %283, label %284, label %395

284:                                              ; preds = %278
  %285 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %18, align 8
  %286 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %285, i32 0, i32 1
  %287 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = call i64 @tnum_is_const(i32 %288)
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %301, label %291

291:                                              ; preds = %284
  %292 = load i32, i32* %15, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %325

294:                                              ; preds = %291
  %295 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %21, align 8
  %296 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %295, i32 0, i32 1
  %297 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = call i64 @tnum_is_const(i32 %298)
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %325

301:                                              ; preds = %294, %284
  %302 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %12, align 8
  %303 = load %struct.bpf_insn*, %struct.bpf_insn** %6, align 8
  %304 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %303, i32 0, i32 1
  %305 = load i64, i64* %304, align 8
  %306 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %302, i64 %305
  %307 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %11, align 8
  %308 = load i32, i32* %15, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %315

310:                                              ; preds = %301
  %311 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %21, align 8
  %312 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %311, i32 0, i32 1
  %313 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  br label %320

315:                                              ; preds = %301
  %316 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %18, align 8
  %317 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %316, i32 0, i32 1
  %318 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  br label %320

320:                                              ; preds = %315, %310
  %321 = phi i32 [ %314, %310 ], [ %319, %315 ]
  %322 = load i64, i64* %14, align 8
  %323 = load i32, i32* %15, align 4
  %324 = call i32 @reg_set_min_max(%struct.bpf_reg_state* %306, %struct.bpf_reg_state* %307, i32 %321, i64 %322, i32 %323)
  br label %394

325:                                              ; preds = %294, %291
  %326 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %11, align 8
  %327 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %326, i32 0, i32 1
  %328 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  %330 = call i64 @tnum_is_const(i32 %329)
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %342, label %332

332:                                              ; preds = %325
  %333 = load i32, i32* %15, align 4
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %366

335:                                              ; preds = %332
  %336 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %22, align 8
  %337 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %336, i32 0, i32 1
  %338 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 8
  %340 = call i64 @tnum_is_const(i32 %339)
  %341 = icmp ne i64 %340, 0
  br i1 %341, label %342, label %366

342:                                              ; preds = %335, %325
  %343 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %12, align 8
  %344 = load %struct.bpf_insn*, %struct.bpf_insn** %6, align 8
  %345 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %344, i32 0, i32 0
  %346 = load i64, i64* %345, align 8
  %347 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %343, i64 %346
  %348 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %18, align 8
  %349 = load i32, i32* %15, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %356

351:                                              ; preds = %342
  %352 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %22, align 8
  %353 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %352, i32 0, i32 1
  %354 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 8
  br label %361

356:                                              ; preds = %342
  %357 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %11, align 8
  %358 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %357, i32 0, i32 1
  %359 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 8
  br label %361

361:                                              ; preds = %356, %351
  %362 = phi i32 [ %355, %351 ], [ %360, %356 ]
  %363 = load i64, i64* %14, align 8
  %364 = load i32, i32* %15, align 4
  %365 = call i32 @reg_set_min_max_inv(%struct.bpf_reg_state* %347, %struct.bpf_reg_state* %348, i32 %362, i64 %363, i32 %364)
  br label %393

366:                                              ; preds = %335, %332
  %367 = load i32, i32* %15, align 4
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %392, label %369

369:                                              ; preds = %366
  %370 = load i64, i64* %14, align 8
  %371 = load i64, i64* @BPF_JEQ, align 8
  %372 = icmp eq i64 %370, %371
  br i1 %372, label %377, label %373

373:                                              ; preds = %369
  %374 = load i64, i64* %14, align 8
  %375 = load i64, i64* @BPF_JNE, align 8
  %376 = icmp eq i64 %374, %375
  br i1 %376, label %377, label %392

377:                                              ; preds = %373, %369
  %378 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %12, align 8
  %379 = load %struct.bpf_insn*, %struct.bpf_insn** %6, align 8
  %380 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %379, i32 0, i32 0
  %381 = load i64, i64* %380, align 8
  %382 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %378, i64 %381
  %383 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %12, align 8
  %384 = load %struct.bpf_insn*, %struct.bpf_insn** %6, align 8
  %385 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %384, i32 0, i32 1
  %386 = load i64, i64* %385, align 8
  %387 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %383, i64 %386
  %388 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %18, align 8
  %389 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %11, align 8
  %390 = load i64, i64* %14, align 8
  %391 = call i32 @reg_combine_min_max(%struct.bpf_reg_state* %382, %struct.bpf_reg_state* %387, %struct.bpf_reg_state* %388, %struct.bpf_reg_state* %389, i64 %390)
  br label %392

392:                                              ; preds = %377, %373, %366
  br label %393

393:                                              ; preds = %392, %361
  br label %394

394:                                              ; preds = %393, %320
  br label %395

395:                                              ; preds = %394, %278, %257
  br label %416

396:                                              ; preds = %240
  %397 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %11, align 8
  %398 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %397, i32 0, i32 0
  %399 = load i64, i64* %398, align 8
  %400 = load i64, i64* @SCALAR_VALUE, align 8
  %401 = icmp eq i64 %399, %400
  br i1 %401, label %402, label %415

402:                                              ; preds = %396
  %403 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %12, align 8
  %404 = load %struct.bpf_insn*, %struct.bpf_insn** %6, align 8
  %405 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %404, i32 0, i32 1
  %406 = load i64, i64* %405, align 8
  %407 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %403, i64 %406
  %408 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %11, align 8
  %409 = load %struct.bpf_insn*, %struct.bpf_insn** %6, align 8
  %410 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %409, i32 0, i32 2
  %411 = load i32, i32* %410, align 8
  %412 = load i64, i64* %14, align 8
  %413 = load i32, i32* %15, align 4
  %414 = call i32 @reg_set_min_max(%struct.bpf_reg_state* %407, %struct.bpf_reg_state* %408, i32 %411, i64 %412, i32 %413)
  br label %415

415:                                              ; preds = %402, %396
  br label %416

416:                                              ; preds = %415, %395
  %417 = load i32, i32* %15, align 4
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %464, label %419

419:                                              ; preds = %416
  %420 = load %struct.bpf_insn*, %struct.bpf_insn** %6, align 8
  %421 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %420, i32 0, i32 3
  %422 = load i32, i32* %421, align 4
  %423 = call i64 @BPF_SRC(i32 %422)
  %424 = load i64, i64* @BPF_K, align 8
  %425 = icmp eq i64 %423, %424
  br i1 %425, label %426, label %464

426:                                              ; preds = %419
  %427 = load %struct.bpf_insn*, %struct.bpf_insn** %6, align 8
  %428 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %427, i32 0, i32 2
  %429 = load i32, i32* %428, align 8
  %430 = icmp eq i32 %429, 0
  br i1 %430, label %431, label %464

431:                                              ; preds = %426
  %432 = load i64, i64* %14, align 8
  %433 = load i64, i64* @BPF_JEQ, align 8
  %434 = icmp eq i64 %432, %433
  br i1 %434, label %439, label %435

435:                                              ; preds = %431
  %436 = load i64, i64* %14, align 8
  %437 = load i64, i64* @BPF_JNE, align 8
  %438 = icmp eq i64 %436, %437
  br i1 %438, label %439, label %464

439:                                              ; preds = %435, %431
  %440 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %11, align 8
  %441 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %440, i32 0, i32 0
  %442 = load i64, i64* %441, align 8
  %443 = call i64 @reg_type_may_be_null(i64 %442)
  %444 = icmp ne i64 %443, 0
  br i1 %444, label %445, label %464

445:                                              ; preds = %439
  %446 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %8, align 8
  %447 = load %struct.bpf_insn*, %struct.bpf_insn** %6, align 8
  %448 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %447, i32 0, i32 1
  %449 = load i64, i64* %448, align 8
  %450 = load i64, i64* %14, align 8
  %451 = load i64, i64* @BPF_JNE, align 8
  %452 = icmp eq i64 %450, %451
  %453 = zext i1 %452 to i32
  %454 = call i32 @mark_ptr_or_null_regs(%struct.bpf_verifier_state* %446, i64 %449, i32 %453)
  %455 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %9, align 8
  %456 = load %struct.bpf_insn*, %struct.bpf_insn** %6, align 8
  %457 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %456, i32 0, i32 1
  %458 = load i64, i64* %457, align 8
  %459 = load i64, i64* %14, align 8
  %460 = load i64, i64* @BPF_JEQ, align 8
  %461 = icmp eq i64 %459, %460
  %462 = zext i1 %461 to i32
  %463 = call i32 @mark_ptr_or_null_regs(%struct.bpf_verifier_state* %455, i64 %458, i32 %462)
  br label %492

464:                                              ; preds = %439, %435, %426, %419, %416
  %465 = load %struct.bpf_insn*, %struct.bpf_insn** %6, align 8
  %466 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %11, align 8
  %467 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %10, align 8
  %468 = load %struct.bpf_insn*, %struct.bpf_insn** %6, align 8
  %469 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %468, i32 0, i32 0
  %470 = load i64, i64* %469, align 8
  %471 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %467, i64 %470
  %472 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %8, align 8
  %473 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %9, align 8
  %474 = call i32 @try_match_pkt_pointers(%struct.bpf_insn* %465, %struct.bpf_reg_state* %466, %struct.bpf_reg_state* %471, %struct.bpf_verifier_state* %472, %struct.bpf_verifier_state* %473)
  %475 = icmp ne i32 %474, 0
  br i1 %475, label %491, label %476

476:                                              ; preds = %464
  %477 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %478 = load %struct.bpf_insn*, %struct.bpf_insn** %6, align 8
  %479 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %478, i32 0, i32 1
  %480 = load i64, i64* %479, align 8
  %481 = call i64 @is_pointer_value(%struct.bpf_verifier_env* %477, i64 %480)
  %482 = icmp ne i64 %481, 0
  br i1 %482, label %483, label %491

483:                                              ; preds = %476
  %484 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %485 = load %struct.bpf_insn*, %struct.bpf_insn** %6, align 8
  %486 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %485, i32 0, i32 1
  %487 = load i64, i64* %486, align 8
  %488 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %484, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %487)
  %489 = load i32, i32* @EACCES, align 4
  %490 = sub nsw i32 0, %489
  store i32 %490, i32* %4, align 4
  br label %512

491:                                              ; preds = %476, %464
  br label %492

492:                                              ; preds = %491, %445
  %493 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %494 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %493, i32 0, i32 0
  %495 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %494, i32 0, i32 0
  %496 = load i32, i32* %495, align 8
  %497 = load i32, i32* @BPF_LOG_LEVEL, align 4
  %498 = and i32 %496, %497
  %499 = icmp ne i32 %498, 0
  br i1 %499, label %500, label %511

500:                                              ; preds = %492
  %501 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %502 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %8, align 8
  %503 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %502, i32 0, i32 1
  %504 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %503, align 8
  %505 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %8, align 8
  %506 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %505, i32 0, i32 0
  %507 = load i64, i64* %506, align 8
  %508 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %504, i64 %507
  %509 = load %struct.TYPE_6__*, %struct.TYPE_6__** %508, align 8
  %510 = call i32 @print_verifier_state(%struct.bpf_verifier_env* %501, %struct.TYPE_6__* %509)
  br label %511

511:                                              ; preds = %500, %492
  store i32 0, i32* %4, align 4
  br label %512

512:                                              ; preds = %511, %483, %237, %220, %208, %202, %123, %108, %88, %79, %65, %47
  %513 = load i32, i32* %4, align 4
  ret i32 %513
}

declare dso_local i64 @BPF_OP(i32) #1

declare dso_local i32 @verbose(%struct.bpf_verifier_env*, i8*, ...) #1

declare dso_local i64 @BPF_SRC(i32) #1

declare dso_local i32 @check_reg_arg(%struct.bpf_verifier_env*, i64, i32) #1

declare dso_local i64 @is_pointer_value(%struct.bpf_verifier_env*, i64) #1

declare dso_local i64 @BPF_CLASS(i32) #1

declare dso_local i32 @is_branch_taken(%struct.bpf_reg_state*, i32, i64, i32) #1

declare dso_local i64 @tnum_is_const(i32) #1

declare dso_local i32 @mark_chain_precision(%struct.bpf_verifier_env*, i64) #1

declare dso_local %struct.bpf_verifier_state* @push_stack(%struct.bpf_verifier_env*, i64, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @coerce_reg_to_size(%struct.bpf_reg_state*, i32) #1

declare dso_local i32 @reg_set_min_max(%struct.bpf_reg_state*, %struct.bpf_reg_state*, i32, i64, i32) #1

declare dso_local i32 @reg_set_min_max_inv(%struct.bpf_reg_state*, %struct.bpf_reg_state*, i32, i64, i32) #1

declare dso_local i32 @reg_combine_min_max(%struct.bpf_reg_state*, %struct.bpf_reg_state*, %struct.bpf_reg_state*, %struct.bpf_reg_state*, i64) #1

declare dso_local i64 @reg_type_may_be_null(i64) #1

declare dso_local i32 @mark_ptr_or_null_regs(%struct.bpf_verifier_state*, i64, i32) #1

declare dso_local i32 @try_match_pkt_pointers(%struct.bpf_insn*, %struct.bpf_reg_state*, %struct.bpf_reg_state*, %struct.bpf_verifier_state*, %struct.bpf_verifier_state*) #1

declare dso_local i32 @print_verifier_state(%struct.bpf_verifier_env*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
