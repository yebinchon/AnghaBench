; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_check_map_func_compatibility.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_check_map_func_compatibility.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { i32 }
%struct.bpf_map = type { i32 }

@BPF_FUNC_map_lookup_elem = common dso_local global i32 0, align 4
@BPF_FUNC_map_delete_elem = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"tail_calls are not allowed in programs with bpf-to-bpf calls\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"cannot pass map_type %d into func %s#%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_verifier_env*, %struct.bpf_map*, i32)* @check_map_func_compatibility to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_map_func_compatibility(%struct.bpf_verifier_env* %0, %struct.bpf_map* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bpf_verifier_env*, align 8
  %6 = alloca %struct.bpf_map*, align 8
  %7 = alloca i32, align 4
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %5, align 8
  store %struct.bpf_map* %1, %struct.bpf_map** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.bpf_map*, %struct.bpf_map** %6, align 8
  %9 = icmp ne %struct.bpf_map* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %260

11:                                               ; preds = %3
  %12 = load %struct.bpf_map*, %struct.bpf_map** %6, align 8
  %13 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %132 [
    i32 136, label %15
    i32 137, label %20
    i32 129, label %31
    i32 144, label %36
    i32 143, label %44
    i32 138, label %44
    i32 141, label %49
    i32 140, label %49
    i32 142, label %58
    i32 128, label %63
    i32 145, label %72
    i32 139, label %72
    i32 131, label %78
    i32 132, label %93
    i32 134, label %108
    i32 135, label %113
    i32 130, label %113
    i32 133, label %124
  ]

15:                                               ; preds = %11
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 146
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  br label %249

19:                                               ; preds = %15
  br label %133

20:                                               ; preds = %11
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 157
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 158
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 156
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  br label %249

30:                                               ; preds = %26, %23, %20
  br label %133

31:                                               ; preds = %11
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 164
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  br label %249

35:                                               ; preds = %31
  br label %133

36:                                               ; preds = %11
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 149
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 166
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  br label %249

43:                                               ; preds = %39, %36
  br label %133

44:                                               ; preds = %11, %11
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 165
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  br label %249

48:                                               ; preds = %44
  br label %133

49:                                               ; preds = %11, %11
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 155
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @BPF_FUNC_map_lookup_elem, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %249

57:                                               ; preds = %52, %49
  br label %133

58:                                               ; preds = %11
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 155
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  br label %249

62:                                               ; preds = %58
  br label %133

63:                                               ; preds = %11
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 155
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @BPF_FUNC_map_lookup_elem, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  br label %249

71:                                               ; preds = %66, %63
  br label %133

72:                                               ; preds = %11, %11
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @BPF_FUNC_map_lookup_elem, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  br label %249

77:                                               ; preds = %72
  br label %133

78:                                               ; preds = %11
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 153
  br i1 %80, label %81, label %92

81:                                               ; preds = %78
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 147
  br i1 %83, label %84, label %92

84:                                               ; preds = %81
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @BPF_FUNC_map_delete_elem, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 159
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  br label %249

92:                                               ; preds = %88, %84, %81, %78
  br label %133

93:                                               ; preds = %11
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 154
  br i1 %95, label %96, label %107

96:                                               ; preds = %93
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 148
  br i1 %98, label %99, label %107

99:                                               ; preds = %96
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* @BPF_FUNC_map_delete_elem, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %99
  %104 = load i32, i32* %7, align 4
  %105 = icmp ne i32 %104, 160
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  br label %249

107:                                              ; preds = %103, %99, %96, %93
  br label %133

108:                                              ; preds = %11
  %109 = load i32, i32* %7, align 4
  %110 = icmp ne i32 %109, 152
  br i1 %110, label %111, label %112

111:                                              ; preds = %108
  br label %249

112:                                              ; preds = %108
  br label %133

113:                                              ; preds = %11, %11
  %114 = load i32, i32* %7, align 4
  %115 = icmp ne i32 %114, 163
  br i1 %115, label %116, label %123

116:                                              ; preds = %113
  %117 = load i32, i32* %7, align 4
  %118 = icmp ne i32 %117, 162
  br i1 %118, label %119, label %123

119:                                              ; preds = %116
  %120 = load i32, i32* %7, align 4
  %121 = icmp ne i32 %120, 161
  br i1 %121, label %122, label %123

122:                                              ; preds = %119
  br label %249

123:                                              ; preds = %119, %116, %113
  br label %133

124:                                              ; preds = %11
  %125 = load i32, i32* %7, align 4
  %126 = icmp ne i32 %125, 150
  br i1 %126, label %127, label %131

127:                                              ; preds = %124
  %128 = load i32, i32* %7, align 4
  %129 = icmp ne i32 %128, 151
  br i1 %129, label %130, label %131

130:                                              ; preds = %127
  br label %249

131:                                              ; preds = %127, %124
  br label %133

132:                                              ; preds = %11
  br label %133

133:                                              ; preds = %132, %131, %123, %112, %107, %92, %77, %71, %62, %57, %48, %43, %35, %30, %19
  %134 = load i32, i32* %7, align 4
  switch i32 %134, label %247 [
    i32 146, label %135
    i32 157, label %152
    i32 158, label %152
    i32 156, label %152
    i32 164, label %159
    i32 166, label %166
    i32 149, label %166
    i32 155, label %173
    i32 153, label %195
    i32 159, label %195
    i32 147, label %195
    i32 154, label %202
    i32 160, label %202
    i32 148, label %202
    i32 165, label %209
    i32 152, label %221
    i32 163, label %228
    i32 162, label %228
    i32 161, label %228
    i32 150, label %240
    i32 151, label %240
  ]

135:                                              ; preds = %133
  %136 = load %struct.bpf_map*, %struct.bpf_map** %6, align 8
  %137 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %138, 136
  br i1 %139, label %140, label %141

140:                                              ; preds = %135
  br label %249

141:                                              ; preds = %135
  %142 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %143 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = icmp sgt i32 %144, 1
  br i1 %145, label %146, label %151

146:                                              ; preds = %141
  %147 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %148 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %147, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  %149 = load i32, i32* @EINVAL, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %4, align 4
  br label %260

151:                                              ; preds = %141
  br label %248

152:                                              ; preds = %133, %133, %133
  %153 = load %struct.bpf_map*, %struct.bpf_map** %6, align 8
  %154 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = icmp ne i32 %155, 137
  br i1 %156, label %157, label %158

157:                                              ; preds = %152
  br label %249

158:                                              ; preds = %152
  br label %248

159:                                              ; preds = %133
  %160 = load %struct.bpf_map*, %struct.bpf_map** %6, align 8
  %161 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = icmp ne i32 %162, 129
  br i1 %163, label %164, label %165

164:                                              ; preds = %159
  br label %249

165:                                              ; preds = %159
  br label %248

166:                                              ; preds = %133, %133
  %167 = load %struct.bpf_map*, %struct.bpf_map** %6, align 8
  %168 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = icmp ne i32 %169, 144
  br i1 %170, label %171, label %172

171:                                              ; preds = %166
  br label %249

172:                                              ; preds = %166
  br label %248

173:                                              ; preds = %133
  %174 = load %struct.bpf_map*, %struct.bpf_map** %6, align 8
  %175 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = icmp ne i32 %176, 141
  br i1 %177, label %178, label %194

178:                                              ; preds = %173
  %179 = load %struct.bpf_map*, %struct.bpf_map** %6, align 8
  %180 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = icmp ne i32 %181, 140
  br i1 %182, label %183, label %194

183:                                              ; preds = %178
  %184 = load %struct.bpf_map*, %struct.bpf_map** %6, align 8
  %185 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = icmp ne i32 %186, 142
  br i1 %187, label %188, label %194

188:                                              ; preds = %183
  %189 = load %struct.bpf_map*, %struct.bpf_map** %6, align 8
  %190 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = icmp ne i32 %191, 128
  br i1 %192, label %193, label %194

193:                                              ; preds = %188
  br label %249

194:                                              ; preds = %188, %183, %178, %173
  br label %248

195:                                              ; preds = %133, %133, %133
  %196 = load %struct.bpf_map*, %struct.bpf_map** %6, align 8
  %197 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = icmp ne i32 %198, 131
  br i1 %199, label %200, label %201

200:                                              ; preds = %195
  br label %249

201:                                              ; preds = %195
  br label %248

202:                                              ; preds = %133, %133, %133
  %203 = load %struct.bpf_map*, %struct.bpf_map** %6, align 8
  %204 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = icmp ne i32 %205, 132
  br i1 %206, label %207, label %208

207:                                              ; preds = %202
  br label %249

208:                                              ; preds = %202
  br label %248

209:                                              ; preds = %133
  %210 = load %struct.bpf_map*, %struct.bpf_map** %6, align 8
  %211 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = icmp ne i32 %212, 143
  br i1 %213, label %214, label %220

214:                                              ; preds = %209
  %215 = load %struct.bpf_map*, %struct.bpf_map** %6, align 8
  %216 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = icmp ne i32 %217, 138
  br i1 %218, label %219, label %220

219:                                              ; preds = %214
  br label %249

220:                                              ; preds = %214, %209
  br label %248

221:                                              ; preds = %133
  %222 = load %struct.bpf_map*, %struct.bpf_map** %6, align 8
  %223 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = icmp ne i32 %224, 134
  br i1 %225, label %226, label %227

226:                                              ; preds = %221
  br label %249

227:                                              ; preds = %221
  br label %248

228:                                              ; preds = %133, %133, %133
  %229 = load %struct.bpf_map*, %struct.bpf_map** %6, align 8
  %230 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = icmp ne i32 %231, 135
  br i1 %232, label %233, label %239

233:                                              ; preds = %228
  %234 = load %struct.bpf_map*, %struct.bpf_map** %6, align 8
  %235 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = icmp ne i32 %236, 130
  br i1 %237, label %238, label %239

238:                                              ; preds = %233
  br label %249

239:                                              ; preds = %233, %228
  br label %248

240:                                              ; preds = %133, %133
  %241 = load %struct.bpf_map*, %struct.bpf_map** %6, align 8
  %242 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = icmp ne i32 %243, 133
  br i1 %244, label %245, label %246

245:                                              ; preds = %240
  br label %249

246:                                              ; preds = %240
  br label %248

247:                                              ; preds = %133
  br label %248

248:                                              ; preds = %247, %246, %239, %227, %220, %208, %201, %194, %172, %165, %158, %151
  store i32 0, i32* %4, align 4
  br label %260

249:                                              ; preds = %245, %238, %226, %219, %207, %200, %193, %171, %164, %157, %140, %130, %122, %111, %106, %91, %76, %70, %61, %56, %47, %42, %34, %29, %18
  %250 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %251 = load %struct.bpf_map*, %struct.bpf_map** %6, align 8
  %252 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* %7, align 4
  %255 = call i32 @func_id_name(i32 %254)
  %256 = load i32, i32* %7, align 4
  %257 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %250, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %253, i32 %255, i32 %256)
  %258 = load i32, i32* @EINVAL, align 4
  %259 = sub nsw i32 0, %258
  store i32 %259, i32* %4, align 4
  br label %260

260:                                              ; preds = %249, %248, %146, %10
  %261 = load i32, i32* %4, align 4
  ret i32 %261
}

declare dso_local i32 @verbose(%struct.bpf_verifier_env*, i8*, ...) #1

declare dso_local i32 @func_id_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
