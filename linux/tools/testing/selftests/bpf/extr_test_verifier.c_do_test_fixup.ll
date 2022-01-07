; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_verifier.c_do_test_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_verifier.c_do_test_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_test = type { i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32 (%struct.bpf_test*)*, i32 }
%struct.bpf_insn = type { i32 }

@MAX_TEST_INSNS = common dso_local global i32 0, align 4
@BPF_MAP_TYPE_HASH = common dso_local global i32 0, align 4
@BPF_MAP_TYPE_ARRAY = common dso_local global i32 0, align 4
@BPF_MAP_TYPE_SOCKMAP = common dso_local global i32 0, align 4
@BPF_MAP_TYPE_SOCKHASH = common dso_local global i32 0, align 4
@BPF_MAP_TYPE_XSKMAP = common dso_local global i32 0, align 4
@BPF_MAP_TYPE_STACK_TRACE = common dso_local global i32 0, align 4
@BPF_F_RDONLY_PROG = common dso_local global i32 0, align 4
@BPF_F_WRONLY_PROG = common dso_local global i32 0, align 4
@BPF_MAP_TYPE_PERF_EVENT_ARRAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpf_test*, i32, %struct.bpf_insn*, i32*)* @do_test_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_test_fixup(%struct.bpf_test* %0, i32 %1, %struct.bpf_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.bpf_test*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bpf_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  store %struct.bpf_test* %0, %struct.bpf_test** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.bpf_insn* %2, %struct.bpf_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  %28 = load %struct.bpf_test*, %struct.bpf_test** %5, align 8
  %29 = getelementptr inbounds %struct.bpf_test, %struct.bpf_test* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %9, align 8
  %31 = load %struct.bpf_test*, %struct.bpf_test** %5, align 8
  %32 = getelementptr inbounds %struct.bpf_test, %struct.bpf_test* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %10, align 8
  %34 = load %struct.bpf_test*, %struct.bpf_test** %5, align 8
  %35 = getelementptr inbounds %struct.bpf_test, %struct.bpf_test* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %11, align 8
  %37 = load %struct.bpf_test*, %struct.bpf_test** %5, align 8
  %38 = getelementptr inbounds %struct.bpf_test, %struct.bpf_test* %37, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %12, align 8
  %40 = load %struct.bpf_test*, %struct.bpf_test** %5, align 8
  %41 = getelementptr inbounds %struct.bpf_test, %struct.bpf_test* %40, i32 0, i32 4
  %42 = load i32*, i32** %41, align 8
  store i32* %42, i32** %13, align 8
  %43 = load %struct.bpf_test*, %struct.bpf_test** %5, align 8
  %44 = getelementptr inbounds %struct.bpf_test, %struct.bpf_test* %43, i32 0, i32 5
  %45 = load i32*, i32** %44, align 8
  store i32* %45, i32** %14, align 8
  %46 = load %struct.bpf_test*, %struct.bpf_test** %5, align 8
  %47 = getelementptr inbounds %struct.bpf_test, %struct.bpf_test* %46, i32 0, i32 6
  %48 = load i32*, i32** %47, align 8
  store i32* %48, i32** %15, align 8
  %49 = load %struct.bpf_test*, %struct.bpf_test** %5, align 8
  %50 = getelementptr inbounds %struct.bpf_test, %struct.bpf_test* %49, i32 0, i32 7
  %51 = load i32*, i32** %50, align 8
  store i32* %51, i32** %16, align 8
  %52 = load %struct.bpf_test*, %struct.bpf_test** %5, align 8
  %53 = getelementptr inbounds %struct.bpf_test, %struct.bpf_test* %52, i32 0, i32 8
  %54 = load i32*, i32** %53, align 8
  store i32* %54, i32** %17, align 8
  %55 = load %struct.bpf_test*, %struct.bpf_test** %5, align 8
  %56 = getelementptr inbounds %struct.bpf_test, %struct.bpf_test* %55, i32 0, i32 9
  %57 = load i32*, i32** %56, align 8
  store i32* %57, i32** %18, align 8
  %58 = load %struct.bpf_test*, %struct.bpf_test** %5, align 8
  %59 = getelementptr inbounds %struct.bpf_test, %struct.bpf_test* %58, i32 0, i32 10
  %60 = load i32*, i32** %59, align 8
  store i32* %60, i32** %19, align 8
  %61 = load %struct.bpf_test*, %struct.bpf_test** %5, align 8
  %62 = getelementptr inbounds %struct.bpf_test, %struct.bpf_test* %61, i32 0, i32 11
  %63 = load i32*, i32** %62, align 8
  store i32* %63, i32** %20, align 8
  %64 = load %struct.bpf_test*, %struct.bpf_test** %5, align 8
  %65 = getelementptr inbounds %struct.bpf_test, %struct.bpf_test* %64, i32 0, i32 12
  %66 = load i32*, i32** %65, align 8
  store i32* %66, i32** %21, align 8
  %67 = load %struct.bpf_test*, %struct.bpf_test** %5, align 8
  %68 = getelementptr inbounds %struct.bpf_test, %struct.bpf_test* %67, i32 0, i32 13
  %69 = load i32*, i32** %68, align 8
  store i32* %69, i32** %22, align 8
  %70 = load %struct.bpf_test*, %struct.bpf_test** %5, align 8
  %71 = getelementptr inbounds %struct.bpf_test, %struct.bpf_test* %70, i32 0, i32 14
  %72 = load i32*, i32** %71, align 8
  store i32* %72, i32** %23, align 8
  %73 = load %struct.bpf_test*, %struct.bpf_test** %5, align 8
  %74 = getelementptr inbounds %struct.bpf_test, %struct.bpf_test* %73, i32 0, i32 15
  %75 = load i32*, i32** %74, align 8
  store i32* %75, i32** %24, align 8
  %76 = load %struct.bpf_test*, %struct.bpf_test** %5, align 8
  %77 = getelementptr inbounds %struct.bpf_test, %struct.bpf_test* %76, i32 0, i32 16
  %78 = load i32*, i32** %77, align 8
  store i32* %78, i32** %25, align 8
  %79 = load %struct.bpf_test*, %struct.bpf_test** %5, align 8
  %80 = getelementptr inbounds %struct.bpf_test, %struct.bpf_test* %79, i32 0, i32 17
  %81 = load i32*, i32** %80, align 8
  store i32* %81, i32** %26, align 8
  %82 = load %struct.bpf_test*, %struct.bpf_test** %5, align 8
  %83 = getelementptr inbounds %struct.bpf_test, %struct.bpf_test* %82, i32 0, i32 18
  %84 = load i32*, i32** %83, align 8
  store i32* %84, i32** %27, align 8
  %85 = load %struct.bpf_test*, %struct.bpf_test** %5, align 8
  %86 = getelementptr inbounds %struct.bpf_test, %struct.bpf_test* %85, i32 0, i32 19
  %87 = load i32 (%struct.bpf_test*)*, i32 (%struct.bpf_test*)** %86, align 8
  %88 = icmp ne i32 (%struct.bpf_test*)* %87, null
  br i1 %88, label %89, label %99

89:                                               ; preds = %4
  %90 = load i32, i32* @MAX_TEST_INSNS, align 4
  %91 = call i32 @calloc(i32 %90, i32 4)
  %92 = load %struct.bpf_test*, %struct.bpf_test** %5, align 8
  %93 = getelementptr inbounds %struct.bpf_test, %struct.bpf_test* %92, i32 0, i32 20
  store i32 %91, i32* %93, align 8
  %94 = load %struct.bpf_test*, %struct.bpf_test** %5, align 8
  %95 = getelementptr inbounds %struct.bpf_test, %struct.bpf_test* %94, i32 0, i32 19
  %96 = load i32 (%struct.bpf_test*)*, i32 (%struct.bpf_test*)** %95, align 8
  %97 = load %struct.bpf_test*, %struct.bpf_test** %5, align 8
  %98 = call i32 %96(%struct.bpf_test* %97)
  br label %99

99:                                               ; preds = %89, %4
  %100 = load i32*, i32** %9, align 8
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %125

103:                                              ; preds = %99
  %104 = load i32, i32* @BPF_MAP_TYPE_HASH, align 4
  %105 = call i32 @create_map(i32 %104, i32 8, i32 8, i32 1)
  %106 = load i32*, i32** %8, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  store i32 %105, i32* %107, align 4
  br label %108

108:                                              ; preds = %120, %103
  %109 = load i32*, i32** %8, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.bpf_insn*, %struct.bpf_insn** %7, align 8
  %113 = load i32*, i32** %9, align 8
  %114 = load i32, i32* %113, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %112, i64 %115
  %117 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %116, i32 0, i32 0
  store i32 %111, i32* %117, align 4
  %118 = load i32*, i32** %9, align 8
  %119 = getelementptr inbounds i32, i32* %118, i32 1
  store i32* %119, i32** %9, align 8
  br label %120

120:                                              ; preds = %108
  %121 = load i32*, i32** %9, align 8
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %108, label %124

124:                                              ; preds = %120
  br label %125

125:                                              ; preds = %124, %99
  %126 = load i32*, i32** %10, align 8
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %151

129:                                              ; preds = %125
  %130 = load i32, i32* @BPF_MAP_TYPE_HASH, align 4
  %131 = call i32 @create_map(i32 %130, i32 8, i32 4, i32 1)
  %132 = load i32*, i32** %8, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 1
  store i32 %131, i32* %133, align 4
  br label %134

134:                                              ; preds = %146, %129
  %135 = load i32*, i32** %8, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.bpf_insn*, %struct.bpf_insn** %7, align 8
  %139 = load i32*, i32** %10, align 8
  %140 = load i32, i32* %139, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %138, i64 %141
  %143 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %142, i32 0, i32 0
  store i32 %137, i32* %143, align 4
  %144 = load i32*, i32** %10, align 8
  %145 = getelementptr inbounds i32, i32* %144, i32 1
  store i32* %145, i32** %10, align 8
  br label %146

146:                                              ; preds = %134
  %147 = load i32*, i32** %10, align 8
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %134, label %150

150:                                              ; preds = %146
  br label %151

151:                                              ; preds = %150, %125
  %152 = load i32*, i32** %11, align 8
  %153 = load i32, i32* %152, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %177

155:                                              ; preds = %151
  %156 = load i32, i32* @BPF_MAP_TYPE_HASH, align 4
  %157 = call i32 @create_map(i32 %156, i32 8, i32 4, i32 1)
  %158 = load i32*, i32** %8, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 2
  store i32 %157, i32* %159, align 4
  br label %160

160:                                              ; preds = %172, %155
  %161 = load i32*, i32** %8, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 2
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.bpf_insn*, %struct.bpf_insn** %7, align 8
  %165 = load i32*, i32** %11, align 8
  %166 = load i32, i32* %165, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %164, i64 %167
  %169 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %168, i32 0, i32 0
  store i32 %163, i32* %169, align 4
  %170 = load i32*, i32** %11, align 8
  %171 = getelementptr inbounds i32, i32* %170, i32 1
  store i32* %171, i32** %11, align 8
  br label %172

172:                                              ; preds = %160
  %173 = load i32*, i32** %11, align 8
  %174 = load i32, i32* %173, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %160, label %176

176:                                              ; preds = %172
  br label %177

177:                                              ; preds = %176, %151
  %178 = load i32*, i32** %12, align 8
  %179 = load i32, i32* %178, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %207

181:                                              ; preds = %177
  %182 = load i32, i32* @BPF_MAP_TYPE_ARRAY, align 4
  %183 = call i32 @create_map(i32 %182, i32 4, i32 4, i32 1)
  %184 = load i32*, i32** %8, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 3
  store i32 %183, i32* %185, align 4
  %186 = load i32*, i32** %8, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 3
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @update_map(i32 %188, i32 0)
  br label %190

190:                                              ; preds = %202, %181
  %191 = load i32*, i32** %8, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 3
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.bpf_insn*, %struct.bpf_insn** %7, align 8
  %195 = load i32*, i32** %12, align 8
  %196 = load i32, i32* %195, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %194, i64 %197
  %199 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %198, i32 0, i32 0
  store i32 %193, i32* %199, align 4
  %200 = load i32*, i32** %12, align 8
  %201 = getelementptr inbounds i32, i32* %200, i32 1
  store i32* %201, i32** %12, align 8
  br label %202

202:                                              ; preds = %190
  %203 = load i32*, i32** %12, align 8
  %204 = load i32, i32* %203, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %190, label %206

206:                                              ; preds = %202
  br label %207

207:                                              ; preds = %206, %177
  %208 = load i32*, i32** %17, align 8
  %209 = load i32, i32* %208, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %233

211:                                              ; preds = %207
  %212 = load i32, i32* %6, align 4
  %213 = call i32 @create_prog_array(i32 %212, i32 4, i32 0)
  %214 = load i32*, i32** %8, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 4
  store i32 %213, i32* %215, align 4
  br label %216

216:                                              ; preds = %228, %211
  %217 = load i32*, i32** %8, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 4
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.bpf_insn*, %struct.bpf_insn** %7, align 8
  %221 = load i32*, i32** %17, align 8
  %222 = load i32, i32* %221, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %220, i64 %223
  %225 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %224, i32 0, i32 0
  store i32 %219, i32* %225, align 4
  %226 = load i32*, i32** %17, align 8
  %227 = getelementptr inbounds i32, i32* %226, i32 1
  store i32* %227, i32** %17, align 8
  br label %228

228:                                              ; preds = %216
  %229 = load i32*, i32** %17, align 8
  %230 = load i32, i32* %229, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %216, label %232

232:                                              ; preds = %228
  br label %233

233:                                              ; preds = %232, %207
  %234 = load i32*, i32** %18, align 8
  %235 = load i32, i32* %234, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %259

237:                                              ; preds = %233
  %238 = load i32, i32* %6, align 4
  %239 = call i32 @create_prog_array(i32 %238, i32 8, i32 7)
  %240 = load i32*, i32** %8, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 5
  store i32 %239, i32* %241, align 4
  br label %242

242:                                              ; preds = %254, %237
  %243 = load i32*, i32** %8, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 5
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.bpf_insn*, %struct.bpf_insn** %7, align 8
  %247 = load i32*, i32** %18, align 8
  %248 = load i32, i32* %247, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %246, i64 %249
  %251 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %250, i32 0, i32 0
  store i32 %245, i32* %251, align 4
  %252 = load i32*, i32** %18, align 8
  %253 = getelementptr inbounds i32, i32* %252, i32 1
  store i32* %253, i32** %18, align 8
  br label %254

254:                                              ; preds = %242
  %255 = load i32*, i32** %18, align 8
  %256 = load i32, i32* %255, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %242, label %258

258:                                              ; preds = %254
  br label %259

259:                                              ; preds = %258, %233
  %260 = load i32*, i32** %19, align 8
  %261 = load i32, i32* %260, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %284

263:                                              ; preds = %259
  %264 = call i32 (...) @create_map_in_map()
  %265 = load i32*, i32** %8, align 8
  %266 = getelementptr inbounds i32, i32* %265, i64 6
  store i32 %264, i32* %266, align 4
  br label %267

267:                                              ; preds = %279, %263
  %268 = load i32*, i32** %8, align 8
  %269 = getelementptr inbounds i32, i32* %268, i64 6
  %270 = load i32, i32* %269, align 4
  %271 = load %struct.bpf_insn*, %struct.bpf_insn** %7, align 8
  %272 = load i32*, i32** %19, align 8
  %273 = load i32, i32* %272, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %271, i64 %274
  %276 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %275, i32 0, i32 0
  store i32 %270, i32* %276, align 4
  %277 = load i32*, i32** %19, align 8
  %278 = getelementptr inbounds i32, i32* %277, i32 1
  store i32* %278, i32** %19, align 8
  br label %279

279:                                              ; preds = %267
  %280 = load i32*, i32** %19, align 8
  %281 = load i32, i32* %280, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %267, label %283

283:                                              ; preds = %279
  br label %284

284:                                              ; preds = %283, %259
  %285 = load i32*, i32** %20, align 8
  %286 = load i32, i32* %285, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %309

288:                                              ; preds = %284
  %289 = call i32 @create_cgroup_storage(i32 0)
  %290 = load i32*, i32** %8, align 8
  %291 = getelementptr inbounds i32, i32* %290, i64 7
  store i32 %289, i32* %291, align 4
  br label %292

292:                                              ; preds = %304, %288
  %293 = load i32*, i32** %8, align 8
  %294 = getelementptr inbounds i32, i32* %293, i64 7
  %295 = load i32, i32* %294, align 4
  %296 = load %struct.bpf_insn*, %struct.bpf_insn** %7, align 8
  %297 = load i32*, i32** %20, align 8
  %298 = load i32, i32* %297, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %296, i64 %299
  %301 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %300, i32 0, i32 0
  store i32 %295, i32* %301, align 4
  %302 = load i32*, i32** %20, align 8
  %303 = getelementptr inbounds i32, i32* %302, i32 1
  store i32* %303, i32** %20, align 8
  br label %304

304:                                              ; preds = %292
  %305 = load i32*, i32** %20, align 8
  %306 = load i32, i32* %305, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %292, label %308

308:                                              ; preds = %304
  br label %309

309:                                              ; preds = %308, %284
  %310 = load i32*, i32** %21, align 8
  %311 = load i32, i32* %310, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %334

313:                                              ; preds = %309
  %314 = call i32 @create_cgroup_storage(i32 1)
  %315 = load i32*, i32** %8, align 8
  %316 = getelementptr inbounds i32, i32* %315, i64 8
  store i32 %314, i32* %316, align 4
  br label %317

317:                                              ; preds = %329, %313
  %318 = load i32*, i32** %8, align 8
  %319 = getelementptr inbounds i32, i32* %318, i64 8
  %320 = load i32, i32* %319, align 4
  %321 = load %struct.bpf_insn*, %struct.bpf_insn** %7, align 8
  %322 = load i32*, i32** %21, align 8
  %323 = load i32, i32* %322, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %321, i64 %324
  %326 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %325, i32 0, i32 0
  store i32 %320, i32* %326, align 4
  %327 = load i32*, i32** %21, align 8
  %328 = getelementptr inbounds i32, i32* %327, i32 1
  store i32* %328, i32** %21, align 8
  br label %329

329:                                              ; preds = %317
  %330 = load i32*, i32** %21, align 8
  %331 = load i32, i32* %330, align 4
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %317, label %333

333:                                              ; preds = %329
  br label %334

334:                                              ; preds = %333, %309
  %335 = load i32*, i32** %13, align 8
  %336 = load i32, i32* %335, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %360

338:                                              ; preds = %334
  %339 = load i32, i32* @BPF_MAP_TYPE_SOCKMAP, align 4
  %340 = call i32 @create_map(i32 %339, i32 4, i32 4, i32 1)
  %341 = load i32*, i32** %8, align 8
  %342 = getelementptr inbounds i32, i32* %341, i64 9
  store i32 %340, i32* %342, align 4
  br label %343

343:                                              ; preds = %355, %338
  %344 = load i32*, i32** %8, align 8
  %345 = getelementptr inbounds i32, i32* %344, i64 9
  %346 = load i32, i32* %345, align 4
  %347 = load %struct.bpf_insn*, %struct.bpf_insn** %7, align 8
  %348 = load i32*, i32** %13, align 8
  %349 = load i32, i32* %348, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %347, i64 %350
  %352 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %351, i32 0, i32 0
  store i32 %346, i32* %352, align 4
  %353 = load i32*, i32** %13, align 8
  %354 = getelementptr inbounds i32, i32* %353, i32 1
  store i32* %354, i32** %13, align 8
  br label %355

355:                                              ; preds = %343
  %356 = load i32*, i32** %13, align 8
  %357 = load i32, i32* %356, align 4
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %343, label %359

359:                                              ; preds = %355
  br label %360

360:                                              ; preds = %359, %334
  %361 = load i32*, i32** %14, align 8
  %362 = load i32, i32* %361, align 4
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %386

364:                                              ; preds = %360
  %365 = load i32, i32* @BPF_MAP_TYPE_SOCKHASH, align 4
  %366 = call i32 @create_map(i32 %365, i32 4, i32 4, i32 1)
  %367 = load i32*, i32** %8, align 8
  %368 = getelementptr inbounds i32, i32* %367, i64 10
  store i32 %366, i32* %368, align 4
  br label %369

369:                                              ; preds = %381, %364
  %370 = load i32*, i32** %8, align 8
  %371 = getelementptr inbounds i32, i32* %370, i64 10
  %372 = load i32, i32* %371, align 4
  %373 = load %struct.bpf_insn*, %struct.bpf_insn** %7, align 8
  %374 = load i32*, i32** %14, align 8
  %375 = load i32, i32* %374, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %373, i64 %376
  %378 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %377, i32 0, i32 0
  store i32 %372, i32* %378, align 4
  %379 = load i32*, i32** %14, align 8
  %380 = getelementptr inbounds i32, i32* %379, i32 1
  store i32* %380, i32** %14, align 8
  br label %381

381:                                              ; preds = %369
  %382 = load i32*, i32** %14, align 8
  %383 = load i32, i32* %382, align 4
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %369, label %385

385:                                              ; preds = %381
  br label %386

386:                                              ; preds = %385, %360
  %387 = load i32*, i32** %15, align 8
  %388 = load i32, i32* %387, align 4
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %390, label %412

390:                                              ; preds = %386
  %391 = load i32, i32* @BPF_MAP_TYPE_XSKMAP, align 4
  %392 = call i32 @create_map(i32 %391, i32 4, i32 4, i32 1)
  %393 = load i32*, i32** %8, align 8
  %394 = getelementptr inbounds i32, i32* %393, i64 11
  store i32 %392, i32* %394, align 4
  br label %395

395:                                              ; preds = %407, %390
  %396 = load i32*, i32** %8, align 8
  %397 = getelementptr inbounds i32, i32* %396, i64 11
  %398 = load i32, i32* %397, align 4
  %399 = load %struct.bpf_insn*, %struct.bpf_insn** %7, align 8
  %400 = load i32*, i32** %15, align 8
  %401 = load i32, i32* %400, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %399, i64 %402
  %404 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %403, i32 0, i32 0
  store i32 %398, i32* %404, align 4
  %405 = load i32*, i32** %15, align 8
  %406 = getelementptr inbounds i32, i32* %405, i32 1
  store i32* %406, i32** %15, align 8
  br label %407

407:                                              ; preds = %395
  %408 = load i32*, i32** %15, align 8
  %409 = load i32, i32* %408, align 4
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %395, label %411

411:                                              ; preds = %407
  br label %412

412:                                              ; preds = %411, %386
  %413 = load i32*, i32** %16, align 8
  %414 = load i32, i32* %413, align 4
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %416, label %438

416:                                              ; preds = %412
  %417 = load i32, i32* @BPF_MAP_TYPE_STACK_TRACE, align 4
  %418 = call i32 @create_map(i32 %417, i32 4, i32 4, i32 1)
  %419 = load i32*, i32** %8, align 8
  %420 = getelementptr inbounds i32, i32* %419, i64 12
  store i32 %418, i32* %420, align 4
  br label %421

421:                                              ; preds = %433, %416
  %422 = load i32*, i32** %8, align 8
  %423 = getelementptr inbounds i32, i32* %422, i64 12
  %424 = load i32, i32* %423, align 4
  %425 = load %struct.bpf_insn*, %struct.bpf_insn** %7, align 8
  %426 = load i32*, i32** %16, align 8
  %427 = load i32, i32* %426, align 4
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %425, i64 %428
  %430 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %429, i32 0, i32 0
  store i32 %424, i32* %430, align 4
  %431 = load i32*, i32** %16, align 8
  %432 = getelementptr inbounds i32, i32* %431, i32 1
  store i32* %432, i32** %16, align 8
  br label %433

433:                                              ; preds = %421
  %434 = load i32*, i32** %16, align 8
  %435 = load i32, i32* %434, align 4
  %436 = icmp ne i32 %435, 0
  br i1 %436, label %421, label %437

437:                                              ; preds = %433
  br label %438

438:                                              ; preds = %437, %412
  %439 = load i32*, i32** %22, align 8
  %440 = load i32, i32* %439, align 4
  %441 = icmp ne i32 %440, 0
  br i1 %441, label %442, label %463

442:                                              ; preds = %438
  %443 = call i32 (...) @create_map_spin_lock()
  %444 = load i32*, i32** %8, align 8
  %445 = getelementptr inbounds i32, i32* %444, i64 13
  store i32 %443, i32* %445, align 4
  br label %446

446:                                              ; preds = %458, %442
  %447 = load i32*, i32** %8, align 8
  %448 = getelementptr inbounds i32, i32* %447, i64 13
  %449 = load i32, i32* %448, align 4
  %450 = load %struct.bpf_insn*, %struct.bpf_insn** %7, align 8
  %451 = load i32*, i32** %22, align 8
  %452 = load i32, i32* %451, align 4
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %450, i64 %453
  %455 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %454, i32 0, i32 0
  store i32 %449, i32* %455, align 4
  %456 = load i32*, i32** %22, align 8
  %457 = getelementptr inbounds i32, i32* %456, i32 1
  store i32* %457, i32** %22, align 8
  br label %458

458:                                              ; preds = %446
  %459 = load i32*, i32** %22, align 8
  %460 = load i32, i32* %459, align 4
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %446, label %462

462:                                              ; preds = %458
  br label %463

463:                                              ; preds = %462, %438
  %464 = load i32*, i32** %23, align 8
  %465 = load i32, i32* %464, align 4
  %466 = icmp ne i32 %465, 0
  br i1 %466, label %467, label %494

467:                                              ; preds = %463
  %468 = load i32, i32* @BPF_MAP_TYPE_ARRAY, align 4
  %469 = load i32, i32* @BPF_F_RDONLY_PROG, align 4
  %470 = call i32 @__create_map(i32 %468, i32 4, i32 4, i32 1, i32 %469)
  %471 = load i32*, i32** %8, align 8
  %472 = getelementptr inbounds i32, i32* %471, i64 14
  store i32 %470, i32* %472, align 4
  %473 = load i32*, i32** %8, align 8
  %474 = getelementptr inbounds i32, i32* %473, i64 14
  %475 = load i32, i32* %474, align 4
  %476 = call i32 @update_map(i32 %475, i32 0)
  br label %477

477:                                              ; preds = %489, %467
  %478 = load i32*, i32** %8, align 8
  %479 = getelementptr inbounds i32, i32* %478, i64 14
  %480 = load i32, i32* %479, align 4
  %481 = load %struct.bpf_insn*, %struct.bpf_insn** %7, align 8
  %482 = load i32*, i32** %23, align 8
  %483 = load i32, i32* %482, align 4
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %481, i64 %484
  %486 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %485, i32 0, i32 0
  store i32 %480, i32* %486, align 4
  %487 = load i32*, i32** %23, align 8
  %488 = getelementptr inbounds i32, i32* %487, i32 1
  store i32* %488, i32** %23, align 8
  br label %489

489:                                              ; preds = %477
  %490 = load i32*, i32** %23, align 8
  %491 = load i32, i32* %490, align 4
  %492 = icmp ne i32 %491, 0
  br i1 %492, label %477, label %493

493:                                              ; preds = %489
  br label %494

494:                                              ; preds = %493, %463
  %495 = load i32*, i32** %24, align 8
  %496 = load i32, i32* %495, align 4
  %497 = icmp ne i32 %496, 0
  br i1 %497, label %498, label %525

498:                                              ; preds = %494
  %499 = load i32, i32* @BPF_MAP_TYPE_ARRAY, align 4
  %500 = load i32, i32* @BPF_F_WRONLY_PROG, align 4
  %501 = call i32 @__create_map(i32 %499, i32 4, i32 4, i32 1, i32 %500)
  %502 = load i32*, i32** %8, align 8
  %503 = getelementptr inbounds i32, i32* %502, i64 15
  store i32 %501, i32* %503, align 4
  %504 = load i32*, i32** %8, align 8
  %505 = getelementptr inbounds i32, i32* %504, i64 15
  %506 = load i32, i32* %505, align 4
  %507 = call i32 @update_map(i32 %506, i32 0)
  br label %508

508:                                              ; preds = %520, %498
  %509 = load i32*, i32** %8, align 8
  %510 = getelementptr inbounds i32, i32* %509, i64 15
  %511 = load i32, i32* %510, align 4
  %512 = load %struct.bpf_insn*, %struct.bpf_insn** %7, align 8
  %513 = load i32*, i32** %24, align 8
  %514 = load i32, i32* %513, align 4
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %512, i64 %515
  %517 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %516, i32 0, i32 0
  store i32 %511, i32* %517, align 4
  %518 = load i32*, i32** %24, align 8
  %519 = getelementptr inbounds i32, i32* %518, i32 1
  store i32* %519, i32** %24, align 8
  br label %520

520:                                              ; preds = %508
  %521 = load i32*, i32** %24, align 8
  %522 = load i32, i32* %521, align 4
  %523 = icmp ne i32 %522, 0
  br i1 %523, label %508, label %524

524:                                              ; preds = %520
  br label %525

525:                                              ; preds = %524, %494
  %526 = load i32*, i32** %25, align 8
  %527 = load i32, i32* %526, align 4
  %528 = icmp ne i32 %527, 0
  br i1 %528, label %529, label %555

529:                                              ; preds = %525
  %530 = load i32, i32* @BPF_MAP_TYPE_ARRAY, align 4
  %531 = call i32 @__create_map(i32 %530, i32 4, i32 1, i32 1, i32 0)
  %532 = load i32*, i32** %8, align 8
  %533 = getelementptr inbounds i32, i32* %532, i64 16
  store i32 %531, i32* %533, align 4
  %534 = load i32*, i32** %8, align 8
  %535 = getelementptr inbounds i32, i32* %534, i64 16
  %536 = load i32, i32* %535, align 4
  %537 = call i32 @update_map(i32 %536, i32 0)
  br label %538

538:                                              ; preds = %550, %529
  %539 = load i32*, i32** %8, align 8
  %540 = getelementptr inbounds i32, i32* %539, i64 16
  %541 = load i32, i32* %540, align 4
  %542 = load %struct.bpf_insn*, %struct.bpf_insn** %7, align 8
  %543 = load i32*, i32** %25, align 8
  %544 = load i32, i32* %543, align 4
  %545 = sext i32 %544 to i64
  %546 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %542, i64 %545
  %547 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %546, i32 0, i32 0
  store i32 %541, i32* %547, align 4
  %548 = load i32*, i32** %25, align 8
  %549 = getelementptr inbounds i32, i32* %548, i32 1
  store i32* %549, i32** %25, align 8
  br label %550

550:                                              ; preds = %538
  %551 = load i32*, i32** %25, align 8
  %552 = load i32, i32* %551, align 4
  %553 = icmp ne i32 %552, 0
  br i1 %553, label %538, label %554

554:                                              ; preds = %550
  br label %555

555:                                              ; preds = %554, %525
  %556 = load i32*, i32** %26, align 8
  %557 = load i32, i32* %556, align 4
  %558 = icmp ne i32 %557, 0
  br i1 %558, label %559, label %580

559:                                              ; preds = %555
  %560 = call i32 (...) @create_sk_storage_map()
  %561 = load i32*, i32** %8, align 8
  %562 = getelementptr inbounds i32, i32* %561, i64 17
  store i32 %560, i32* %562, align 4
  br label %563

563:                                              ; preds = %575, %559
  %564 = load i32*, i32** %8, align 8
  %565 = getelementptr inbounds i32, i32* %564, i64 17
  %566 = load i32, i32* %565, align 4
  %567 = load %struct.bpf_insn*, %struct.bpf_insn** %7, align 8
  %568 = load i32*, i32** %26, align 8
  %569 = load i32, i32* %568, align 4
  %570 = sext i32 %569 to i64
  %571 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %567, i64 %570
  %572 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %571, i32 0, i32 0
  store i32 %566, i32* %572, align 4
  %573 = load i32*, i32** %26, align 8
  %574 = getelementptr inbounds i32, i32* %573, i32 1
  store i32* %574, i32** %26, align 8
  br label %575

575:                                              ; preds = %563
  %576 = load i32*, i32** %26, align 8
  %577 = load i32, i32* %576, align 4
  %578 = icmp ne i32 %577, 0
  br i1 %578, label %563, label %579

579:                                              ; preds = %575
  br label %580

580:                                              ; preds = %579, %555
  %581 = load i32*, i32** %27, align 8
  %582 = load i32, i32* %581, align 4
  %583 = icmp ne i32 %582, 0
  br i1 %583, label %584, label %606

584:                                              ; preds = %580
  %585 = load i32, i32* @BPF_MAP_TYPE_PERF_EVENT_ARRAY, align 4
  %586 = call i32 @__create_map(i32 %585, i32 4, i32 4, i32 1, i32 0)
  %587 = load i32*, i32** %8, align 8
  %588 = getelementptr inbounds i32, i32* %587, i64 18
  store i32 %586, i32* %588, align 4
  br label %589

589:                                              ; preds = %601, %584
  %590 = load i32*, i32** %8, align 8
  %591 = getelementptr inbounds i32, i32* %590, i64 18
  %592 = load i32, i32* %591, align 4
  %593 = load %struct.bpf_insn*, %struct.bpf_insn** %7, align 8
  %594 = load i32*, i32** %27, align 8
  %595 = load i32, i32* %594, align 4
  %596 = sext i32 %595 to i64
  %597 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %593, i64 %596
  %598 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %597, i32 0, i32 0
  store i32 %592, i32* %598, align 4
  %599 = load i32*, i32** %27, align 8
  %600 = getelementptr inbounds i32, i32* %599, i32 1
  store i32* %600, i32** %27, align 8
  br label %601

601:                                              ; preds = %589
  %602 = load i32*, i32** %27, align 8
  %603 = load i32, i32* %602, align 4
  %604 = icmp ne i32 %603, 0
  br i1 %604, label %589, label %605

605:                                              ; preds = %601
  br label %606

606:                                              ; preds = %605, %580
  ret void
}

declare dso_local i32 @calloc(i32, i32) #1

declare dso_local i32 @create_map(i32, i32, i32, i32) #1

declare dso_local i32 @update_map(i32, i32) #1

declare dso_local i32 @create_prog_array(i32, i32, i32) #1

declare dso_local i32 @create_map_in_map(...) #1

declare dso_local i32 @create_cgroup_storage(i32) #1

declare dso_local i32 @create_map_spin_lock(...) #1

declare dso_local i32 @__create_map(i32, i32, i32, i32, i32) #1

declare dso_local i32 @create_sk_storage_map(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
