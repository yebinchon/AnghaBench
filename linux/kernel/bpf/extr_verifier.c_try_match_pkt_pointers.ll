; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_try_match_pkt_pointers.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_try_match_pkt_pointers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_insn = type { i32 }
%struct.bpf_reg_state = type { i32 }
%struct.bpf_verifier_state = type { i32 }

@BPF_X = common dso_local global i64 0, align 8
@BPF_JMP32 = common dso_local global i64 0, align 8
@PTR_TO_PACKET = common dso_local global i32 0, align 4
@PTR_TO_PACKET_END = common dso_local global i32 0, align 4
@PTR_TO_PACKET_META = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_insn*, %struct.bpf_reg_state*, %struct.bpf_reg_state*, %struct.bpf_verifier_state*, %struct.bpf_verifier_state*)* @try_match_pkt_pointers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_match_pkt_pointers(%struct.bpf_insn* %0, %struct.bpf_reg_state* %1, %struct.bpf_reg_state* %2, %struct.bpf_verifier_state* %3, %struct.bpf_verifier_state* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bpf_insn*, align 8
  %8 = alloca %struct.bpf_reg_state*, align 8
  %9 = alloca %struct.bpf_reg_state*, align 8
  %10 = alloca %struct.bpf_verifier_state*, align 8
  %11 = alloca %struct.bpf_verifier_state*, align 8
  store %struct.bpf_insn* %0, %struct.bpf_insn** %7, align 8
  store %struct.bpf_reg_state* %1, %struct.bpf_reg_state** %8, align 8
  store %struct.bpf_reg_state* %2, %struct.bpf_reg_state** %9, align 8
  store %struct.bpf_verifier_state* %3, %struct.bpf_verifier_state** %10, align 8
  store %struct.bpf_verifier_state* %4, %struct.bpf_verifier_state** %11, align 8
  %12 = load %struct.bpf_insn*, %struct.bpf_insn** %7, align 8
  %13 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @BPF_SRC(i32 %14)
  %16 = load i64, i64* @BPF_X, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %286

19:                                               ; preds = %5
  %20 = load %struct.bpf_insn*, %struct.bpf_insn** %7, align 8
  %21 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @BPF_CLASS(i32 %22)
  %24 = load i64, i64* @BPF_JMP32, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  store i32 0, i32* %6, align 4
  br label %286

27:                                               ; preds = %19
  %28 = load %struct.bpf_insn*, %struct.bpf_insn** %7, align 8
  %29 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @BPF_OP(i32 %30)
  switch i32 %31, label %284 [
    i32 130, label %32
    i32 128, label %95
    i32 131, label %158
    i32 129, label %221
  ]

32:                                               ; preds = %27
  %33 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %34 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @PTR_TO_PACKET, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %9, align 8
  %40 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @PTR_TO_PACKET_END, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %55, label %44

44:                                               ; preds = %38, %32
  %45 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %46 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @PTR_TO_PACKET_META, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %44
  %51 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %9, align 8
  %52 = load i32, i32* @PTR_TO_PACKET, align 4
  %53 = call i32 @reg_is_init_pkt_pointer(%struct.bpf_reg_state* %51, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %50, %38
  %56 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %10, align 8
  %57 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %58 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %59 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @find_good_pkt_pointers(%struct.bpf_verifier_state* %56, %struct.bpf_reg_state* %57, i32 %60, i32 0)
  br label %94

62:                                               ; preds = %50, %44
  %63 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %64 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @PTR_TO_PACKET_END, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %62
  %69 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %9, align 8
  %70 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @PTR_TO_PACKET, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %85, label %74

74:                                               ; preds = %68, %62
  %75 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %76 = load i32, i32* @PTR_TO_PACKET, align 4
  %77 = call i32 @reg_is_init_pkt_pointer(%struct.bpf_reg_state* %75, i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %92

79:                                               ; preds = %74
  %80 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %9, align 8
  %81 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @PTR_TO_PACKET_META, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %79, %68
  %86 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %11, align 8
  %87 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %9, align 8
  %88 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %9, align 8
  %89 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @find_good_pkt_pointers(%struct.bpf_verifier_state* %86, %struct.bpf_reg_state* %87, i32 %90, i32 1)
  br label %93

92:                                               ; preds = %79, %74
  store i32 0, i32* %6, align 4
  br label %286

93:                                               ; preds = %85
  br label %94

94:                                               ; preds = %93, %55
  br label %285

95:                                               ; preds = %27
  %96 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %97 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @PTR_TO_PACKET, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %95
  %102 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %9, align 8
  %103 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @PTR_TO_PACKET_END, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %118, label %107

107:                                              ; preds = %101, %95
  %108 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %109 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @PTR_TO_PACKET_META, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %125

113:                                              ; preds = %107
  %114 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %9, align 8
  %115 = load i32, i32* @PTR_TO_PACKET, align 4
  %116 = call i32 @reg_is_init_pkt_pointer(%struct.bpf_reg_state* %114, i32 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %113, %101
  %119 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %11, align 8
  %120 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %121 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %122 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @find_good_pkt_pointers(%struct.bpf_verifier_state* %119, %struct.bpf_reg_state* %120, i32 %123, i32 1)
  br label %157

125:                                              ; preds = %113, %107
  %126 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %127 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @PTR_TO_PACKET_END, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %137

131:                                              ; preds = %125
  %132 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %9, align 8
  %133 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @PTR_TO_PACKET, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %148, label %137

137:                                              ; preds = %131, %125
  %138 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %139 = load i32, i32* @PTR_TO_PACKET, align 4
  %140 = call i32 @reg_is_init_pkt_pointer(%struct.bpf_reg_state* %138, i32 %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %155

142:                                              ; preds = %137
  %143 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %9, align 8
  %144 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @PTR_TO_PACKET_META, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %155

148:                                              ; preds = %142, %131
  %149 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %10, align 8
  %150 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %9, align 8
  %151 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %9, align 8
  %152 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @find_good_pkt_pointers(%struct.bpf_verifier_state* %149, %struct.bpf_reg_state* %150, i32 %153, i32 0)
  br label %156

155:                                              ; preds = %142, %137
  store i32 0, i32* %6, align 4
  br label %286

156:                                              ; preds = %148
  br label %157

157:                                              ; preds = %156, %118
  br label %285

158:                                              ; preds = %27
  %159 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %160 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @PTR_TO_PACKET, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %170

164:                                              ; preds = %158
  %165 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %9, align 8
  %166 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @PTR_TO_PACKET_END, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %181, label %170

170:                                              ; preds = %164, %158
  %171 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %172 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @PTR_TO_PACKET_META, align 4
  %175 = icmp eq i32 %173, %174
  br i1 %175, label %176, label %188

176:                                              ; preds = %170
  %177 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %9, align 8
  %178 = load i32, i32* @PTR_TO_PACKET, align 4
  %179 = call i32 @reg_is_init_pkt_pointer(%struct.bpf_reg_state* %177, i32 %178)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %188

181:                                              ; preds = %176, %164
  %182 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %10, align 8
  %183 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %184 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %185 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @find_good_pkt_pointers(%struct.bpf_verifier_state* %182, %struct.bpf_reg_state* %183, i32 %186, i32 1)
  br label %220

188:                                              ; preds = %176, %170
  %189 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %190 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @PTR_TO_PACKET_END, align 4
  %193 = icmp eq i32 %191, %192
  br i1 %193, label %194, label %200

194:                                              ; preds = %188
  %195 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %9, align 8
  %196 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @PTR_TO_PACKET, align 4
  %199 = icmp eq i32 %197, %198
  br i1 %199, label %211, label %200

200:                                              ; preds = %194, %188
  %201 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %202 = load i32, i32* @PTR_TO_PACKET, align 4
  %203 = call i32 @reg_is_init_pkt_pointer(%struct.bpf_reg_state* %201, i32 %202)
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %218

205:                                              ; preds = %200
  %206 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %9, align 8
  %207 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* @PTR_TO_PACKET_META, align 4
  %210 = icmp eq i32 %208, %209
  br i1 %210, label %211, label %218

211:                                              ; preds = %205, %194
  %212 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %11, align 8
  %213 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %9, align 8
  %214 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %9, align 8
  %215 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @find_good_pkt_pointers(%struct.bpf_verifier_state* %212, %struct.bpf_reg_state* %213, i32 %216, i32 0)
  br label %219

218:                                              ; preds = %205, %200
  store i32 0, i32* %6, align 4
  br label %286

219:                                              ; preds = %211
  br label %220

220:                                              ; preds = %219, %181
  br label %285

221:                                              ; preds = %27
  %222 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %223 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* @PTR_TO_PACKET, align 4
  %226 = icmp eq i32 %224, %225
  br i1 %226, label %227, label %233

227:                                              ; preds = %221
  %228 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %9, align 8
  %229 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* @PTR_TO_PACKET_END, align 4
  %232 = icmp eq i32 %230, %231
  br i1 %232, label %244, label %233

233:                                              ; preds = %227, %221
  %234 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %235 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* @PTR_TO_PACKET_META, align 4
  %238 = icmp eq i32 %236, %237
  br i1 %238, label %239, label %251

239:                                              ; preds = %233
  %240 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %9, align 8
  %241 = load i32, i32* @PTR_TO_PACKET, align 4
  %242 = call i32 @reg_is_init_pkt_pointer(%struct.bpf_reg_state* %240, i32 %241)
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %251

244:                                              ; preds = %239, %227
  %245 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %11, align 8
  %246 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %247 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %248 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = call i32 @find_good_pkt_pointers(%struct.bpf_verifier_state* %245, %struct.bpf_reg_state* %246, i32 %249, i32 0)
  br label %283

251:                                              ; preds = %239, %233
  %252 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %253 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = load i32, i32* @PTR_TO_PACKET_END, align 4
  %256 = icmp eq i32 %254, %255
  br i1 %256, label %257, label %263

257:                                              ; preds = %251
  %258 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %9, align 8
  %259 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* @PTR_TO_PACKET, align 4
  %262 = icmp eq i32 %260, %261
  br i1 %262, label %274, label %263

263:                                              ; preds = %257, %251
  %264 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %265 = load i32, i32* @PTR_TO_PACKET, align 4
  %266 = call i32 @reg_is_init_pkt_pointer(%struct.bpf_reg_state* %264, i32 %265)
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %281

268:                                              ; preds = %263
  %269 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %9, align 8
  %270 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = load i32, i32* @PTR_TO_PACKET_META, align 4
  %273 = icmp eq i32 %271, %272
  br i1 %273, label %274, label %281

274:                                              ; preds = %268, %257
  %275 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %10, align 8
  %276 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %9, align 8
  %277 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %9, align 8
  %278 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = call i32 @find_good_pkt_pointers(%struct.bpf_verifier_state* %275, %struct.bpf_reg_state* %276, i32 %279, i32 1)
  br label %282

281:                                              ; preds = %268, %263
  store i32 0, i32* %6, align 4
  br label %286

282:                                              ; preds = %274
  br label %283

283:                                              ; preds = %282, %244
  br label %285

284:                                              ; preds = %27
  store i32 0, i32* %6, align 4
  br label %286

285:                                              ; preds = %283, %220, %157, %94
  store i32 1, i32* %6, align 4
  br label %286

286:                                              ; preds = %285, %284, %281, %218, %155, %92, %26, %18
  %287 = load i32, i32* %6, align 4
  ret i32 %287
}

declare dso_local i64 @BPF_SRC(i32) #1

declare dso_local i64 @BPF_CLASS(i32) #1

declare dso_local i32 @BPF_OP(i32) #1

declare dso_local i32 @reg_is_init_pkt_pointer(%struct.bpf_reg_state*, i32) #1

declare dso_local i32 @find_good_pkt_pointers(%struct.bpf_verifier_state*, %struct.bpf_reg_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
