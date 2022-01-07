; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_backtrack_insn.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_backtrack_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.bpf_insn* }
%struct.bpf_insn = type { i64, i32, i32, i32 }
%struct.bpf_insn_cbs = type { %struct.bpf_verifier_env*, i32 (%struct.bpf_verifier_env*, i8*, i32)* }

@BPF_LOG_LEVEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"regs=%x stack=%llx before \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%d: \00", align 1
@BPF_ALU = common dso_local global i64 0, align 8
@BPF_ALU64 = common dso_local global i64 0, align 8
@BPF_MOV = common dso_local global i64 0, align 8
@BPF_X = common dso_local global i64 0, align 8
@BPF_LDX = common dso_local global i64 0, align 8
@BPF_REG_FP = common dso_local global i32 0, align 4
@BPF_DW = common dso_local global i64 0, align 8
@BPF_REG_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"BUG spi %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"verifier backtracking bug\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@BPF_STX = common dso_local global i64 0, align 8
@BPF_ST = common dso_local global i64 0, align 8
@ENOTSUPP = common dso_local global i32 0, align 4
@BPF_JMP = common dso_local global i64 0, align 8
@BPF_JMP32 = common dso_local global i64 0, align 8
@BPF_CALL = common dso_local global i64 0, align 8
@BPF_PSEUDO_CALL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"BUG regs %x\0A\00", align 1
@BPF_EXIT = common dso_local global i64 0, align 8
@BPF_LD = common dso_local global i64 0, align 8
@BPF_IND = common dso_local global i64 0, align 8
@BPF_ABS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_verifier_env*, i32, i32*, i64*)* @backtrack_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @backtrack_insn(%struct.bpf_verifier_env* %0, i32 %1, i32* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bpf_verifier_env*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.bpf_insn_cbs, align 8
  %11 = alloca %struct.bpf_insn*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  %18 = getelementptr inbounds %struct.bpf_insn_cbs, %struct.bpf_insn_cbs* %10, i32 0, i32 0
  %19 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  store %struct.bpf_verifier_env* %19, %struct.bpf_verifier_env** %18, align 8
  %20 = getelementptr inbounds %struct.bpf_insn_cbs, %struct.bpf_insn_cbs* %10, i32 0, i32 1
  store i32 (%struct.bpf_verifier_env*, i8*, i32)* bitcast (i32 (%struct.bpf_verifier_env*, i8*, i32, ...)* @verbose to i32 (%struct.bpf_verifier_env*, i8*, i32)*), i32 (%struct.bpf_verifier_env*, i8*, i32)** %20, align 8
  %21 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %22 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %21, i32 0, i32 2
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.bpf_insn*, %struct.bpf_insn** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %25, i64 %27
  store %struct.bpf_insn* %28, %struct.bpf_insn** %11, align 8
  %29 = load %struct.bpf_insn*, %struct.bpf_insn** %11, align 8
  %30 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i64 @BPF_CLASS(i64 %31)
  store i64 %32, i64* %12, align 8
  %33 = load %struct.bpf_insn*, %struct.bpf_insn** %11, align 8
  %34 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i64 @BPF_OP(i64 %35)
  store i64 %36, i64* %13, align 8
  %37 = load %struct.bpf_insn*, %struct.bpf_insn** %11, align 8
  %38 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i64 @BPF_MODE(i64 %39)
  store i64 %40, i64* %14, align 8
  %41 = load %struct.bpf_insn*, %struct.bpf_insn** %11, align 8
  %42 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = shl i32 1, %43
  store i32 %44, i32* %15, align 4
  %45 = load %struct.bpf_insn*, %struct.bpf_insn** %11, align 8
  %46 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 1, %47
  store i32 %48, i32* %16, align 4
  %49 = load %struct.bpf_insn*, %struct.bpf_insn** %11, align 8
  %50 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %344

54:                                               ; preds = %4
  %55 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %56 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @BPF_LOG_LEVEL, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %77

62:                                               ; preds = %54
  %63 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %64 = load i32*, i32** %8, align 8
  %65 = load i32, i32* %64, align 4
  %66 = load i64*, i64** %9, align 8
  %67 = load i64, i64* %66, align 8
  %68 = call i32 (%struct.bpf_verifier_env*, i8*, i32, ...) @verbose(%struct.bpf_verifier_env* %63, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %65, i64 %67)
  %69 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i32 (%struct.bpf_verifier_env*, i8*, i32, ...) @verbose(%struct.bpf_verifier_env* %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  %72 = load %struct.bpf_insn*, %struct.bpf_insn** %11, align 8
  %73 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %74 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @print_bpf_insn(%struct.bpf_insn_cbs* %10, %struct.bpf_insn* %72, i32 %75)
  br label %77

77:                                               ; preds = %62, %54
  %78 = load i64, i64* %12, align 8
  %79 = load i64, i64* @BPF_ALU, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %85, label %81

81:                                               ; preds = %77
  %82 = load i64, i64* %12, align 8
  %83 = load i64, i64* @BPF_ALU64, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %134

85:                                               ; preds = %81, %77
  %86 = load i32*, i32** %8, align 8
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %15, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %85
  store i32 0, i32* %5, align 4
  br label %344

92:                                               ; preds = %85
  %93 = load i64, i64* %13, align 8
  %94 = load i64, i64* @BPF_MOV, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %120

96:                                               ; preds = %92
  %97 = load %struct.bpf_insn*, %struct.bpf_insn** %11, align 8
  %98 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = call i64 @BPF_SRC(i64 %99)
  %101 = load i64, i64* @BPF_X, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %113

103:                                              ; preds = %96
  %104 = load i32, i32* %15, align 4
  %105 = xor i32 %104, -1
  %106 = load i32*, i32** %8, align 8
  %107 = load i32, i32* %106, align 4
  %108 = and i32 %107, %105
  store i32 %108, i32* %106, align 4
  %109 = load i32, i32* %16, align 4
  %110 = load i32*, i32** %8, align 8
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %111, %109
  store i32 %112, i32* %110, align 4
  br label %119

113:                                              ; preds = %96
  %114 = load i32, i32* %15, align 4
  %115 = xor i32 %114, -1
  %116 = load i32*, i32** %8, align 8
  %117 = load i32, i32* %116, align 4
  %118 = and i32 %117, %115
  store i32 %118, i32* %116, align 4
  br label %119

119:                                              ; preds = %113, %103
  br label %133

120:                                              ; preds = %92
  %121 = load %struct.bpf_insn*, %struct.bpf_insn** %11, align 8
  %122 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = call i64 @BPF_SRC(i64 %123)
  %125 = load i64, i64* @BPF_X, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %132

127:                                              ; preds = %120
  %128 = load i32, i32* %16, align 4
  %129 = load i32*, i32** %8, align 8
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %130, %128
  store i32 %131, i32* %129, align 4
  br label %132

132:                                              ; preds = %127, %120
  br label %133

133:                                              ; preds = %132, %119
  br label %343

134:                                              ; preds = %81
  %135 = load i64, i64* %12, align 8
  %136 = load i64, i64* @BPF_LDX, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %189

138:                                              ; preds = %134
  %139 = load i32*, i32** %8, align 8
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %15, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %138
  store i32 0, i32* %5, align 4
  br label %344

145:                                              ; preds = %138
  %146 = load i32, i32* %15, align 4
  %147 = xor i32 %146, -1
  %148 = load i32*, i32** %8, align 8
  %149 = load i32, i32* %148, align 4
  %150 = and i32 %149, %147
  store i32 %150, i32* %148, align 4
  %151 = load %struct.bpf_insn*, %struct.bpf_insn** %11, align 8
  %152 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @BPF_REG_FP, align 4
  %155 = icmp ne i32 %153, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %145
  store i32 0, i32* %5, align 4
  br label %344

157:                                              ; preds = %145
  %158 = load %struct.bpf_insn*, %struct.bpf_insn** %11, align 8
  %159 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = call i64 @BPF_SIZE(i64 %160)
  %162 = load i64, i64* @BPF_DW, align 8
  %163 = icmp ne i64 %161, %162
  br i1 %163, label %164, label %165

164:                                              ; preds = %157
  store i32 0, i32* %5, align 4
  br label %344

165:                                              ; preds = %157
  %166 = load %struct.bpf_insn*, %struct.bpf_insn** %11, align 8
  %167 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 8
  %169 = sub nsw i32 0, %168
  %170 = sub nsw i32 %169, 1
  %171 = load i32, i32* @BPF_REG_SIZE, align 4
  %172 = sdiv i32 %170, %171
  store i32 %172, i32* %17, align 4
  %173 = load i32, i32* %17, align 4
  %174 = icmp sge i32 %173, 64
  br i1 %174, label %175, label %182

175:                                              ; preds = %165
  %176 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %177 = load i32, i32* %17, align 4
  %178 = call i32 (%struct.bpf_verifier_env*, i8*, i32, ...) @verbose(%struct.bpf_verifier_env* %176, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %177)
  %179 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %180 = load i32, i32* @EFAULT, align 4
  %181 = sub nsw i32 0, %180
  store i32 %181, i32* %5, align 4
  br label %344

182:                                              ; preds = %165
  %183 = load i32, i32* %17, align 4
  %184 = zext i32 %183 to i64
  %185 = shl i64 1, %184
  %186 = load i64*, i64** %9, align 8
  %187 = load i64, i64* %186, align 8
  %188 = or i64 %187, %185
  store i64 %188, i64* %186, align 8
  br label %342

189:                                              ; preds = %134
  %190 = load i64, i64* %12, align 8
  %191 = load i64, i64* @BPF_STX, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %197, label %193

193:                                              ; preds = %189
  %194 = load i64, i64* %12, align 8
  %195 = load i64, i64* @BPF_ST, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %264

197:                                              ; preds = %193, %189
  %198 = load i32*, i32** %8, align 8
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* %15, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %197
  %204 = load i32, i32* @ENOTSUPP, align 4
  %205 = sub nsw i32 0, %204
  store i32 %205, i32* %5, align 4
  br label %344

206:                                              ; preds = %197
  %207 = load %struct.bpf_insn*, %struct.bpf_insn** %11, align 8
  %208 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @BPF_REG_FP, align 4
  %211 = icmp ne i32 %209, %210
  br i1 %211, label %212, label %213

212:                                              ; preds = %206
  store i32 0, i32* %5, align 4
  br label %344

213:                                              ; preds = %206
  %214 = load %struct.bpf_insn*, %struct.bpf_insn** %11, align 8
  %215 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = call i64 @BPF_SIZE(i64 %216)
  %218 = load i64, i64* @BPF_DW, align 8
  %219 = icmp ne i64 %217, %218
  br i1 %219, label %220, label %221

220:                                              ; preds = %213
  store i32 0, i32* %5, align 4
  br label %344

221:                                              ; preds = %213
  %222 = load %struct.bpf_insn*, %struct.bpf_insn** %11, align 8
  %223 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %222, i32 0, i32 3
  %224 = load i32, i32* %223, align 8
  %225 = sub nsw i32 0, %224
  %226 = sub nsw i32 %225, 1
  %227 = load i32, i32* @BPF_REG_SIZE, align 4
  %228 = sdiv i32 %226, %227
  store i32 %228, i32* %17, align 4
  %229 = load i32, i32* %17, align 4
  %230 = icmp sge i32 %229, 64
  br i1 %230, label %231, label %238

231:                                              ; preds = %221
  %232 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %233 = load i32, i32* %17, align 4
  %234 = call i32 (%struct.bpf_verifier_env*, i8*, i32, ...) @verbose(%struct.bpf_verifier_env* %232, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %233)
  %235 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %236 = load i32, i32* @EFAULT, align 4
  %237 = sub nsw i32 0, %236
  store i32 %237, i32* %5, align 4
  br label %344

238:                                              ; preds = %221
  %239 = load i64*, i64** %9, align 8
  %240 = load i64, i64* %239, align 8
  %241 = load i32, i32* %17, align 4
  %242 = zext i32 %241 to i64
  %243 = shl i64 1, %242
  %244 = and i64 %240, %243
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %247, label %246

246:                                              ; preds = %238
  store i32 0, i32* %5, align 4
  br label %344

247:                                              ; preds = %238
  %248 = load i32, i32* %17, align 4
  %249 = zext i32 %248 to i64
  %250 = shl i64 1, %249
  %251 = xor i64 %250, -1
  %252 = load i64*, i64** %9, align 8
  %253 = load i64, i64* %252, align 8
  %254 = and i64 %253, %251
  store i64 %254, i64* %252, align 8
  %255 = load i64, i64* %12, align 8
  %256 = load i64, i64* @BPF_STX, align 8
  %257 = icmp eq i64 %255, %256
  br i1 %257, label %258, label %263

258:                                              ; preds = %247
  %259 = load i32, i32* %16, align 4
  %260 = load i32*, i32** %8, align 8
  %261 = load i32, i32* %260, align 4
  %262 = or i32 %261, %259
  store i32 %262, i32* %260, align 4
  br label %263

263:                                              ; preds = %258, %247
  br label %341

264:                                              ; preds = %193
  %265 = load i64, i64* %12, align 8
  %266 = load i64, i64* @BPF_JMP, align 8
  %267 = icmp eq i64 %265, %266
  br i1 %267, label %272, label %268

268:                                              ; preds = %264
  %269 = load i64, i64* %12, align 8
  %270 = load i64, i64* @BPF_JMP32, align 8
  %271 = icmp eq i64 %269, %270
  br i1 %271, label %272, label %311

272:                                              ; preds = %268, %264
  %273 = load i64, i64* %13, align 8
  %274 = load i64, i64* @BPF_CALL, align 8
  %275 = icmp eq i64 %273, %274
  br i1 %275, label %276, label %302

276:                                              ; preds = %272
  %277 = load %struct.bpf_insn*, %struct.bpf_insn** %11, align 8
  %278 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %277, i32 0, i32 2
  %279 = load i32, i32* %278, align 4
  %280 = load i32, i32* @BPF_PSEUDO_CALL, align 4
  %281 = icmp eq i32 %279, %280
  br i1 %281, label %282, label %285

282:                                              ; preds = %276
  %283 = load i32, i32* @ENOTSUPP, align 4
  %284 = sub nsw i32 0, %283
  store i32 %284, i32* %5, align 4
  br label %344

285:                                              ; preds = %276
  %286 = load i32*, i32** %8, align 8
  %287 = load i32, i32* %286, align 4
  %288 = and i32 %287, -2
  store i32 %288, i32* %286, align 4
  %289 = load i32*, i32** %8, align 8
  %290 = load i32, i32* %289, align 4
  %291 = and i32 %290, 63
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %301

293:                                              ; preds = %285
  %294 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %295 = load i32*, i32** %8, align 8
  %296 = load i32, i32* %295, align 4
  %297 = call i32 (%struct.bpf_verifier_env*, i8*, i32, ...) @verbose(%struct.bpf_verifier_env* %294, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %296)
  %298 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %299 = load i32, i32* @EFAULT, align 4
  %300 = sub nsw i32 0, %299
  store i32 %300, i32* %5, align 4
  br label %344

301:                                              ; preds = %285
  br label %310

302:                                              ; preds = %272
  %303 = load i64, i64* %13, align 8
  %304 = load i64, i64* @BPF_EXIT, align 8
  %305 = icmp eq i64 %303, %304
  br i1 %305, label %306, label %309

306:                                              ; preds = %302
  %307 = load i32, i32* @ENOTSUPP, align 4
  %308 = sub nsw i32 0, %307
  store i32 %308, i32* %5, align 4
  br label %344

309:                                              ; preds = %302
  br label %310

310:                                              ; preds = %309, %301
  br label %340

311:                                              ; preds = %268
  %312 = load i64, i64* %12, align 8
  %313 = load i64, i64* @BPF_LD, align 8
  %314 = icmp eq i64 %312, %313
  br i1 %314, label %315, label %339

315:                                              ; preds = %311
  %316 = load i32*, i32** %8, align 8
  %317 = load i32, i32* %316, align 4
  %318 = load i32, i32* %15, align 4
  %319 = and i32 %317, %318
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %322, label %321

321:                                              ; preds = %315
  store i32 0, i32* %5, align 4
  br label %344

322:                                              ; preds = %315
  %323 = load i32, i32* %15, align 4
  %324 = xor i32 %323, -1
  %325 = load i32*, i32** %8, align 8
  %326 = load i32, i32* %325, align 4
  %327 = and i32 %326, %324
  store i32 %327, i32* %325, align 4
  %328 = load i64, i64* %14, align 8
  %329 = load i64, i64* @BPF_IND, align 8
  %330 = icmp eq i64 %328, %329
  br i1 %330, label %335, label %331

331:                                              ; preds = %322
  %332 = load i64, i64* %14, align 8
  %333 = load i64, i64* @BPF_ABS, align 8
  %334 = icmp eq i64 %332, %333
  br i1 %334, label %335, label %338

335:                                              ; preds = %331, %322
  %336 = load i32, i32* @ENOTSUPP, align 4
  %337 = sub nsw i32 0, %336
  store i32 %337, i32* %5, align 4
  br label %344

338:                                              ; preds = %331
  br label %339

339:                                              ; preds = %338, %311
  br label %340

340:                                              ; preds = %339, %310
  br label %341

341:                                              ; preds = %340, %263
  br label %342

342:                                              ; preds = %341, %182
  br label %343

343:                                              ; preds = %342, %133
  store i32 0, i32* %5, align 4
  br label %344

344:                                              ; preds = %343, %335, %321, %306, %293, %282, %246, %231, %220, %212, %203, %175, %164, %156, %144, %91, %53
  %345 = load i32, i32* %5, align 4
  ret i32 %345
}

declare dso_local i32 @verbose(%struct.bpf_verifier_env*, i8*, i32, ...) #1

declare dso_local i64 @BPF_CLASS(i64) #1

declare dso_local i64 @BPF_OP(i64) #1

declare dso_local i64 @BPF_MODE(i64) #1

declare dso_local i32 @print_bpf_insn(%struct.bpf_insn_cbs*, %struct.bpf_insn*, i32) #1

declare dso_local i64 @BPF_SRC(i64) #1

declare dso_local i64 @BPF_SIZE(i64) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
