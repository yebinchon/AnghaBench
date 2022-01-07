; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_check_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_check_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32*, i32*, i32 }
%struct.TYPE_3__ = type { i32, %struct.bpf_insn* }
%struct.bpf_insn = type { i64, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DISCOVERED = common dso_local global i32 0, align 4
@BPF_JMP = common dso_local global i64 0, align 8
@BPF_JMP32 = common dso_local global i64 0, align 8
@BPF_EXIT = common dso_local global i64 0, align 8
@BPF_CALL = common dso_local global i64 0, align 8
@FALLTHROUGH = common dso_local global i32 0, align 4
@BPF_PSEUDO_CALL = common dso_local global i64 0, align 8
@BRANCH = common dso_local global i32 0, align 4
@BPF_JA = common dso_local global i64 0, align 8
@BPF_K = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EXPLORED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"pop stack internal bug\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"unreachable insn %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_verifier_env*)* @check_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_cfg(%struct.bpf_verifier_env* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bpf_verifier_env*, align 8
  %4 = alloca %struct.bpf_insn*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %3, align 8
  %12 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %13 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load %struct.bpf_insn*, %struct.bpf_insn** %15, align 8
  store %struct.bpf_insn* %16, %struct.bpf_insn** %4, align 8
  %17 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %18 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i8* @kvcalloc(i32 %22, i32 4, i32 %23)
  %25 = bitcast i8* %24 to i32*
  %26 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %27 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i32* %25, i32** %28, align 8
  store i32* %25, i32** %7, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %1
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %347

34:                                               ; preds = %1
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i8* @kvcalloc(i32 %35, i32 4, i32 %36)
  %38 = bitcast i8* %37 to i32*
  %39 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %40 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  store i32* %38, i32** %41, align 8
  store i32* %38, i32** %6, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %34
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 @kvfree(i32* %45)
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %347

49:                                               ; preds = %34
  %50 = load i32, i32* @DISCOVERED, align 4
  %51 = load i32*, i32** %7, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  store i32 %50, i32* %52, align 4
  %53 = load i32*, i32** %6, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  store i32 0, i32* %54, align 4
  %55 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %56 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  store i32 1, i32* %57, align 8
  br label %58

58:                                               ; preds = %310, %285, %266, %244, %204, %163, %119, %49
  %59 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %60 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %311

65:                                               ; preds = %58
  %66 = load i32*, i32** %6, align 8
  %67 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %68 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = sub nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %66, i64 %72
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %10, align 4
  %75 = load %struct.bpf_insn*, %struct.bpf_insn** %4, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %75, i64 %77
  %79 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = call i64 @BPF_CLASS(i32 %80)
  %82 = load i64, i64* @BPF_JMP, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %94, label %84

84:                                               ; preds = %65
  %85 = load %struct.bpf_insn*, %struct.bpf_insn** %4, align 8
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %85, i64 %87
  %89 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = call i64 @BPF_CLASS(i32 %90)
  %92 = load i64, i64* @BPF_JMP32, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %276

94:                                               ; preds = %84, %65
  %95 = load %struct.bpf_insn*, %struct.bpf_insn** %4, align 8
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %95, i64 %97
  %99 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = call i64 @BPF_OP(i32 %100)
  store i64 %101, i64* %11, align 8
  %102 = load i64, i64* %11, align 8
  %103 = load i64, i64* @BPF_EXIT, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %94
  br label %293

106:                                              ; preds = %94
  %107 = load i64, i64* %11, align 8
  %108 = load i64, i64* @BPF_CALL, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %171

110:                                              ; preds = %106
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %10, align 4
  %113 = add nsw i32 %112, 1
  %114 = load i32, i32* @FALLTHROUGH, align 4
  %115 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %116 = call i32 @push_insn(i32 %111, i32 %113, i32 %114, %struct.bpf_verifier_env* %115, i32 0)
  store i32 %116, i32* %8, align 4
  %117 = load i32, i32* %8, align 4
  %118 = icmp eq i32 %117, 1
  br i1 %118, label %119, label %120

119:                                              ; preds = %110
  br label %58

120:                                              ; preds = %110
  %121 = load i32, i32* %8, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  br label %335

124:                                              ; preds = %120
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %10, align 4
  %127 = add nsw i32 %126, 1
  %128 = load i32, i32* %5, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %135

130:                                              ; preds = %125
  %131 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %132 = load i32, i32* %10, align 4
  %133 = add nsw i32 %132, 1
  %134 = call i32 @init_explored_state(%struct.bpf_verifier_env* %131, i32 %133)
  br label %135

135:                                              ; preds = %130, %125
  %136 = load %struct.bpf_insn*, %struct.bpf_insn** %4, align 8
  %137 = load i32, i32* %10, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %136, i64 %138
  %140 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @BPF_PSEUDO_CALL, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %170

144:                                              ; preds = %135
  %145 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %146 = load i32, i32* %10, align 4
  %147 = call i32 @init_explored_state(%struct.bpf_verifier_env* %145, i32 %146)
  %148 = load i32, i32* %10, align 4
  %149 = load i32, i32* %10, align 4
  %150 = load %struct.bpf_insn*, %struct.bpf_insn** %4, align 8
  %151 = load i32, i32* %10, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %150, i64 %152
  %154 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = add nsw i32 %149, %155
  %157 = add nsw i32 %156, 1
  %158 = load i32, i32* @BRANCH, align 4
  %159 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %160 = call i32 @push_insn(i32 %148, i32 %157, i32 %158, %struct.bpf_verifier_env* %159, i32 0)
  store i32 %160, i32* %8, align 4
  %161 = load i32, i32* %8, align 4
  %162 = icmp eq i32 %161, 1
  br i1 %162, label %163, label %164

163:                                              ; preds = %144
  br label %58

164:                                              ; preds = %144
  %165 = load i32, i32* %8, align 4
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %164
  br label %335

168:                                              ; preds = %164
  br label %169

169:                                              ; preds = %168
  br label %170

170:                                              ; preds = %169, %135
  br label %274

171:                                              ; preds = %106
  %172 = load i64, i64* %11, align 8
  %173 = load i64, i64* @BPF_JA, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %175, label %232

175:                                              ; preds = %171
  %176 = load %struct.bpf_insn*, %struct.bpf_insn** %4, align 8
  %177 = load i32, i32* %10, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %176, i64 %178
  %180 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 8
  %182 = call i64 @BPF_SRC(i32 %181)
  %183 = load i64, i64* @BPF_K, align 8
  %184 = icmp ne i64 %182, %183
  br i1 %184, label %185, label %188

185:                                              ; preds = %175
  %186 = load i32, i32* @EINVAL, align 4
  %187 = sub nsw i32 0, %186
  store i32 %187, i32* %8, align 4
  br label %335

188:                                              ; preds = %175
  %189 = load i32, i32* %10, align 4
  %190 = load i32, i32* %10, align 4
  %191 = load %struct.bpf_insn*, %struct.bpf_insn** %4, align 8
  %192 = load i32, i32* %10, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %191, i64 %193
  %195 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 4
  %197 = add nsw i32 %190, %196
  %198 = add nsw i32 %197, 1
  %199 = load i32, i32* @FALLTHROUGH, align 4
  %200 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %201 = call i32 @push_insn(i32 %189, i32 %198, i32 %199, %struct.bpf_verifier_env* %200, i32 1)
  store i32 %201, i32* %8, align 4
  %202 = load i32, i32* %8, align 4
  %203 = icmp eq i32 %202, 1
  br i1 %203, label %204, label %205

204:                                              ; preds = %188
  br label %58

205:                                              ; preds = %188
  %206 = load i32, i32* %8, align 4
  %207 = icmp slt i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %205
  br label %335

209:                                              ; preds = %205
  br label %210

210:                                              ; preds = %209
  %211 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %212 = load i32, i32* %10, align 4
  %213 = load %struct.bpf_insn*, %struct.bpf_insn** %4, align 8
  %214 = load i32, i32* %10, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %213, i64 %215
  %217 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 4
  %219 = add nsw i32 %212, %218
  %220 = add nsw i32 %219, 1
  %221 = call i32 @init_explored_state(%struct.bpf_verifier_env* %211, i32 %220)
  %222 = load i32, i32* %10, align 4
  %223 = add nsw i32 %222, 1
  %224 = load i32, i32* %5, align 4
  %225 = icmp slt i32 %223, %224
  br i1 %225, label %226, label %231

226:                                              ; preds = %210
  %227 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %228 = load i32, i32* %10, align 4
  %229 = add nsw i32 %228, 1
  %230 = call i32 @init_explored_state(%struct.bpf_verifier_env* %227, i32 %229)
  br label %231

231:                                              ; preds = %226, %210
  br label %273

232:                                              ; preds = %171
  %233 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %234 = load i32, i32* %10, align 4
  %235 = call i32 @init_explored_state(%struct.bpf_verifier_env* %233, i32 %234)
  %236 = load i32, i32* %10, align 4
  %237 = load i32, i32* %10, align 4
  %238 = add nsw i32 %237, 1
  %239 = load i32, i32* @FALLTHROUGH, align 4
  %240 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %241 = call i32 @push_insn(i32 %236, i32 %238, i32 %239, %struct.bpf_verifier_env* %240, i32 1)
  store i32 %241, i32* %8, align 4
  %242 = load i32, i32* %8, align 4
  %243 = icmp eq i32 %242, 1
  br i1 %243, label %244, label %245

244:                                              ; preds = %232
  br label %58

245:                                              ; preds = %232
  %246 = load i32, i32* %8, align 4
  %247 = icmp slt i32 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %245
  br label %335

249:                                              ; preds = %245
  br label %250

250:                                              ; preds = %249
  %251 = load i32, i32* %10, align 4
  %252 = load i32, i32* %10, align 4
  %253 = load %struct.bpf_insn*, %struct.bpf_insn** %4, align 8
  %254 = load i32, i32* %10, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %253, i64 %255
  %257 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 4
  %259 = add nsw i32 %252, %258
  %260 = add nsw i32 %259, 1
  %261 = load i32, i32* @BRANCH, align 4
  %262 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %263 = call i32 @push_insn(i32 %251, i32 %260, i32 %261, %struct.bpf_verifier_env* %262, i32 1)
  store i32 %263, i32* %8, align 4
  %264 = load i32, i32* %8, align 4
  %265 = icmp eq i32 %264, 1
  br i1 %265, label %266, label %267

266:                                              ; preds = %250
  br label %58

267:                                              ; preds = %250
  %268 = load i32, i32* %8, align 4
  %269 = icmp slt i32 %268, 0
  br i1 %269, label %270, label %271

270:                                              ; preds = %267
  br label %335

271:                                              ; preds = %267
  br label %272

272:                                              ; preds = %271
  br label %273

273:                                              ; preds = %272, %231
  br label %274

274:                                              ; preds = %273, %170
  br label %275

275:                                              ; preds = %274
  br label %292

276:                                              ; preds = %84
  %277 = load i32, i32* %10, align 4
  %278 = load i32, i32* %10, align 4
  %279 = add nsw i32 %278, 1
  %280 = load i32, i32* @FALLTHROUGH, align 4
  %281 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %282 = call i32 @push_insn(i32 %277, i32 %279, i32 %280, %struct.bpf_verifier_env* %281, i32 0)
  store i32 %282, i32* %8, align 4
  %283 = load i32, i32* %8, align 4
  %284 = icmp eq i32 %283, 1
  br i1 %284, label %285, label %286

285:                                              ; preds = %276
  br label %58

286:                                              ; preds = %276
  %287 = load i32, i32* %8, align 4
  %288 = icmp slt i32 %287, 0
  br i1 %288, label %289, label %290

289:                                              ; preds = %286
  br label %335

290:                                              ; preds = %286
  br label %291

291:                                              ; preds = %290
  br label %292

292:                                              ; preds = %291, %275
  br label %293

293:                                              ; preds = %292, %105
  %294 = load i32, i32* @EXPLORED, align 4
  %295 = load i32*, i32** %7, align 8
  %296 = load i32, i32* %10, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32, i32* %295, i64 %297
  store i32 %294, i32* %298, align 4
  %299 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %300 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %300, i32 0, i32 2
  %302 = load i32, i32* %301, align 8
  %303 = add nsw i32 %302, -1
  store i32 %303, i32* %301, align 8
  %304 = icmp sle i32 %302, 0
  br i1 %304, label %305, label %310

305:                                              ; preds = %293
  %306 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %307 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %306, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %308 = load i32, i32* @EFAULT, align 4
  %309 = sub nsw i32 0, %308
  store i32 %309, i32* %8, align 4
  br label %335

310:                                              ; preds = %293
  br label %58

311:                                              ; preds = %64
  store i32 0, i32* %9, align 4
  br label %312

312:                                              ; preds = %331, %311
  %313 = load i32, i32* %9, align 4
  %314 = load i32, i32* %5, align 4
  %315 = icmp slt i32 %313, %314
  br i1 %315, label %316, label %334

316:                                              ; preds = %312
  %317 = load i32*, i32** %7, align 8
  %318 = load i32, i32* %9, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i32, i32* %317, i64 %319
  %321 = load i32, i32* %320, align 4
  %322 = load i32, i32* @EXPLORED, align 4
  %323 = icmp ne i32 %321, %322
  br i1 %323, label %324, label %330

324:                                              ; preds = %316
  %325 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %326 = load i32, i32* %9, align 4
  %327 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %325, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %326)
  %328 = load i32, i32* @EINVAL, align 4
  %329 = sub nsw i32 0, %328
  store i32 %329, i32* %8, align 4
  br label %335

330:                                              ; preds = %316
  br label %331

331:                                              ; preds = %330
  %332 = load i32, i32* %9, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %9, align 4
  br label %312

334:                                              ; preds = %312
  store i32 0, i32* %8, align 4
  br label %335

335:                                              ; preds = %334, %324, %305, %289, %270, %248, %208, %185, %167, %123
  %336 = load i32*, i32** %7, align 8
  %337 = call i32 @kvfree(i32* %336)
  %338 = load i32*, i32** %6, align 8
  %339 = call i32 @kvfree(i32* %338)
  %340 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %341 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %340, i32 0, i32 0
  %342 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %341, i32 0, i32 1
  store i32* null, i32** %342, align 8
  %343 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %344 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %343, i32 0, i32 0
  %345 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %344, i32 0, i32 0
  store i32* null, i32** %345, align 8
  %346 = load i32, i32* %8, align 4
  store i32 %346, i32* %2, align 4
  br label %347

347:                                              ; preds = %335, %44, %31
  %348 = load i32, i32* %2, align 4
  ret i32 %348
}

declare dso_local i8* @kvcalloc(i32, i32, i32) #1

declare dso_local i32 @kvfree(i32*) #1

declare dso_local i64 @BPF_CLASS(i32) #1

declare dso_local i64 @BPF_OP(i32) #1

declare dso_local i32 @push_insn(i32, i32, i32, %struct.bpf_verifier_env*, i32) #1

declare dso_local i32 @init_explored_state(%struct.bpf_verifier_env*, i32) #1

declare dso_local i64 @BPF_SRC(i32) #1

declare dso_local i32 @verbose(%struct.bpf_verifier_env*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
