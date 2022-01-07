; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_hdspm_set_pref_sync_ref.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_hdspm_set_pref_sync_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdspm = type { i32, i32, i32, i32 }

@HDSPM_SyncRefMask = common dso_local global i32 0, align 4
@HDSPM_SyncRef0 = common dso_local global i32 0, align 4
@HDSPM_SyncRef1 = common dso_local global i32 0, align 4
@HDSPM_SyncRef2 = common dso_local global i32 0, align 4
@HDSPM_SyncRef3 = common dso_local global i32 0, align 4
@HDSPM_c0_SyncRefMask = common dso_local global i32 0, align 4
@HDSPM_c0_SyncRef0 = common dso_local global i32 0, align 4
@HDSPM_WR_SETTINGS = common dso_local global i32 0, align 4
@HDSPM_controlRegister = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdspm*, i32)* @hdspm_set_pref_sync_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdspm_set_pref_sync_ref(%struct.hdspm* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hdspm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hdspm* %0, %struct.hdspm** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.hdspm*, %struct.hdspm** %4, align 8
  %8 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %199 [
    i32 132, label %10
    i32 130, label %87
    i32 129, label %87
    i32 128, label %143
    i32 131, label %174
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* @HDSPM_SyncRefMask, align 4
  %12 = xor i32 %11, -1
  %13 = load %struct.hdspm*, %struct.hdspm** %4, align 8
  %14 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, %12
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %85 [
    i32 0, label %18
    i32 1, label %19
    i32 2, label %25
    i32 3, label %31
    i32 4, label %39
    i32 5, label %45
    i32 6, label %53
    i32 7, label %61
    i32 8, label %71
    i32 9, label %77
  ]

18:                                               ; preds = %10
  br label %86

19:                                               ; preds = %10
  %20 = load i32, i32* @HDSPM_SyncRef0, align 4
  %21 = load %struct.hdspm*, %struct.hdspm** %4, align 8
  %22 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  br label %86

25:                                               ; preds = %10
  %26 = load i32, i32* @HDSPM_SyncRef1, align 4
  %27 = load %struct.hdspm*, %struct.hdspm** %4, align 8
  %28 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  br label %86

31:                                               ; preds = %10
  %32 = load i32, i32* @HDSPM_SyncRef1, align 4
  %33 = load i32, i32* @HDSPM_SyncRef0, align 4
  %34 = add nsw i32 %32, %33
  %35 = load %struct.hdspm*, %struct.hdspm** %4, align 8
  %36 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  br label %86

39:                                               ; preds = %10
  %40 = load i32, i32* @HDSPM_SyncRef2, align 4
  %41 = load %struct.hdspm*, %struct.hdspm** %4, align 8
  %42 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  br label %86

45:                                               ; preds = %10
  %46 = load i32, i32* @HDSPM_SyncRef2, align 4
  %47 = load i32, i32* @HDSPM_SyncRef0, align 4
  %48 = add nsw i32 %46, %47
  %49 = load %struct.hdspm*, %struct.hdspm** %4, align 8
  %50 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  br label %86

53:                                               ; preds = %10
  %54 = load i32, i32* @HDSPM_SyncRef2, align 4
  %55 = load i32, i32* @HDSPM_SyncRef1, align 4
  %56 = add nsw i32 %54, %55
  %57 = load %struct.hdspm*, %struct.hdspm** %4, align 8
  %58 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  br label %86

61:                                               ; preds = %10
  %62 = load i32, i32* @HDSPM_SyncRef2, align 4
  %63 = load i32, i32* @HDSPM_SyncRef1, align 4
  %64 = add nsw i32 %62, %63
  %65 = load i32, i32* @HDSPM_SyncRef0, align 4
  %66 = add nsw i32 %64, %65
  %67 = load %struct.hdspm*, %struct.hdspm** %4, align 8
  %68 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  br label %86

71:                                               ; preds = %10
  %72 = load i32, i32* @HDSPM_SyncRef3, align 4
  %73 = load %struct.hdspm*, %struct.hdspm** %4, align 8
  %74 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  br label %86

77:                                               ; preds = %10
  %78 = load i32, i32* @HDSPM_SyncRef3, align 4
  %79 = load i32, i32* @HDSPM_SyncRef0, align 4
  %80 = add nsw i32 %78, %79
  %81 = load %struct.hdspm*, %struct.hdspm** %4, align 8
  %82 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 4
  br label %86

85:                                               ; preds = %10
  store i32 -1, i32* %3, align 4
  br label %231

86:                                               ; preds = %77, %71, %61, %53, %45, %39, %31, %25, %19, %18
  br label %199

87:                                               ; preds = %2, %2
  %88 = load i32, i32* @HDSPM_SyncRefMask, align 4
  %89 = xor i32 %88, -1
  %90 = load %struct.hdspm*, %struct.hdspm** %4, align 8
  %91 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, %89
  store i32 %93, i32* %91, align 4
  %94 = load %struct.hdspm*, %struct.hdspm** %4, align 8
  %95 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %123

98:                                               ; preds = %87
  %99 = load i32, i32* %5, align 4
  switch i32 %99, label %121 [
    i32 0, label %100
    i32 1, label %101
    i32 2, label %107
    i32 3, label %113
  ]

100:                                              ; preds = %98
  br label %122

101:                                              ; preds = %98
  %102 = load i32, i32* @HDSPM_SyncRef0, align 4
  %103 = load %struct.hdspm*, %struct.hdspm** %4, align 8
  %104 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 4
  br label %122

107:                                              ; preds = %98
  %108 = load i32, i32* @HDSPM_SyncRef1, align 4
  %109 = load %struct.hdspm*, %struct.hdspm** %4, align 8
  %110 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 4
  br label %122

113:                                              ; preds = %98
  %114 = load i32, i32* @HDSPM_SyncRef0, align 4
  %115 = load i32, i32* @HDSPM_SyncRef1, align 4
  %116 = add nsw i32 %114, %115
  %117 = load %struct.hdspm*, %struct.hdspm** %4, align 8
  %118 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %119, %116
  store i32 %120, i32* %118, align 4
  br label %122

121:                                              ; preds = %98
  store i32 -1, i32* %3, align 4
  br label %231

122:                                              ; preds = %113, %107, %101, %100
  br label %142

123:                                              ; preds = %87
  %124 = load i32, i32* %5, align 4
  switch i32 %124, label %140 [
    i32 0, label %125
    i32 1, label %126
    i32 2, label %132
  ]

125:                                              ; preds = %123
  br label %141

126:                                              ; preds = %123
  %127 = load i32, i32* @HDSPM_SyncRef0, align 4
  %128 = load %struct.hdspm*, %struct.hdspm** %4, align 8
  %129 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %130, %127
  store i32 %131, i32* %129, align 4
  br label %141

132:                                              ; preds = %123
  %133 = load i32, i32* @HDSPM_SyncRef0, align 4
  %134 = load i32, i32* @HDSPM_SyncRef1, align 4
  %135 = add nsw i32 %133, %134
  %136 = load %struct.hdspm*, %struct.hdspm** %4, align 8
  %137 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = or i32 %138, %135
  store i32 %139, i32* %137, align 4
  br label %141

140:                                              ; preds = %123
  store i32 -1, i32* %3, align 4
  br label %231

141:                                              ; preds = %132, %126, %125
  br label %142

142:                                              ; preds = %141, %122
  br label %199

143:                                              ; preds = %2
  %144 = load %struct.hdspm*, %struct.hdspm** %4, align 8
  %145 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %161

148:                                              ; preds = %143
  %149 = load i32, i32* %5, align 4
  switch i32 %149, label %159 [
    i32 0, label %150
    i32 1, label %151
    i32 2, label %152
    i32 3, label %153
    i32 4, label %154
    i32 5, label %155
    i32 6, label %156
    i32 7, label %157
    i32 8, label %158
  ]

150:                                              ; preds = %148
  store i32 0, i32* %6, align 4
  br label %160

151:                                              ; preds = %148
  store i32 3, i32* %6, align 4
  br label %160

152:                                              ; preds = %148
  store i32 4, i32* %6, align 4
  br label %160

153:                                              ; preds = %148
  store i32 5, i32* %6, align 4
  br label %160

154:                                              ; preds = %148
  store i32 6, i32* %6, align 4
  br label %160

155:                                              ; preds = %148
  store i32 1, i32* %6, align 4
  br label %160

156:                                              ; preds = %148
  store i32 2, i32* %6, align 4
  br label %160

157:                                              ; preds = %148
  store i32 9, i32* %6, align 4
  br label %160

158:                                              ; preds = %148
  store i32 10, i32* %6, align 4
  br label %160

159:                                              ; preds = %148
  store i32 -1, i32* %3, align 4
  br label %231

160:                                              ; preds = %158, %157, %156, %155, %154, %153, %152, %151, %150
  br label %173

161:                                              ; preds = %143
  %162 = load i32, i32* %5, align 4
  switch i32 %162, label %171 [
    i32 0, label %163
    i32 1, label %164
    i32 2, label %165
    i32 3, label %166
    i32 4, label %167
    i32 5, label %168
    i32 6, label %169
    i32 7, label %170
  ]

163:                                              ; preds = %161
  store i32 0, i32* %6, align 4
  br label %172

164:                                              ; preds = %161
  store i32 3, i32* %6, align 4
  br label %172

165:                                              ; preds = %161
  store i32 4, i32* %6, align 4
  br label %172

166:                                              ; preds = %161
  store i32 5, i32* %6, align 4
  br label %172

167:                                              ; preds = %161
  store i32 6, i32* %6, align 4
  br label %172

168:                                              ; preds = %161
  store i32 1, i32* %6, align 4
  br label %172

169:                                              ; preds = %161
  store i32 2, i32* %6, align 4
  br label %172

170:                                              ; preds = %161
  store i32 10, i32* %6, align 4
  br label %172

171:                                              ; preds = %161
  store i32 -1, i32* %3, align 4
  br label %231

172:                                              ; preds = %170, %169, %168, %167, %166, %165, %164, %163
  br label %173

173:                                              ; preds = %172, %160
  br label %199

174:                                              ; preds = %2
  %175 = load %struct.hdspm*, %struct.hdspm** %4, align 8
  %176 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %189

179:                                              ; preds = %174
  %180 = load i32, i32* %5, align 4
  switch i32 %180, label %187 [
    i32 0, label %181
    i32 1, label %182
    i32 2, label %183
    i32 3, label %184
    i32 4, label %185
    i32 5, label %186
  ]

181:                                              ; preds = %179
  store i32 0, i32* %6, align 4
  br label %188

182:                                              ; preds = %179
  store i32 3, i32* %6, align 4
  br label %188

183:                                              ; preds = %179
  store i32 1, i32* %6, align 4
  br label %188

184:                                              ; preds = %179
  store i32 2, i32* %6, align 4
  br label %188

185:                                              ; preds = %179
  store i32 9, i32* %6, align 4
  br label %188

186:                                              ; preds = %179
  store i32 10, i32* %6, align 4
  br label %188

187:                                              ; preds = %179
  store i32 -1, i32* %3, align 4
  br label %231

188:                                              ; preds = %186, %185, %184, %183, %182, %181
  br label %198

189:                                              ; preds = %174
  %190 = load i32, i32* %5, align 4
  switch i32 %190, label %196 [
    i32 0, label %191
    i32 1, label %192
    i32 2, label %193
    i32 3, label %194
    i32 4, label %195
  ]

191:                                              ; preds = %189
  store i32 0, i32* %6, align 4
  br label %197

192:                                              ; preds = %189
  store i32 3, i32* %6, align 4
  br label %197

193:                                              ; preds = %189
  store i32 1, i32* %6, align 4
  br label %197

194:                                              ; preds = %189
  store i32 2, i32* %6, align 4
  br label %197

195:                                              ; preds = %189
  store i32 10, i32* %6, align 4
  br label %197

196:                                              ; preds = %189
  store i32 -1, i32* %3, align 4
  br label %231

197:                                              ; preds = %195, %194, %193, %192, %191
  br label %198

198:                                              ; preds = %197, %188
  br label %199

199:                                              ; preds = %2, %198, %173, %142, %86
  %200 = load %struct.hdspm*, %struct.hdspm** %4, align 8
  %201 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  switch i32 %202, label %230 [
    i32 128, label %203
    i32 131, label %203
    i32 130, label %223
    i32 129, label %223
    i32 132, label %223
  ]

203:                                              ; preds = %199, %199
  %204 = load i32, i32* @HDSPM_c0_SyncRefMask, align 4
  %205 = xor i32 %204, -1
  %206 = load %struct.hdspm*, %struct.hdspm** %4, align 8
  %207 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 4
  %209 = and i32 %208, %205
  store i32 %209, i32* %207, align 4
  %210 = load i32, i32* @HDSPM_c0_SyncRef0, align 4
  %211 = load i32, i32* %6, align 4
  %212 = mul nsw i32 %210, %211
  %213 = load %struct.hdspm*, %struct.hdspm** %4, align 8
  %214 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 4
  %216 = or i32 %215, %212
  store i32 %216, i32* %214, align 4
  %217 = load %struct.hdspm*, %struct.hdspm** %4, align 8
  %218 = load i32, i32* @HDSPM_WR_SETTINGS, align 4
  %219 = load %struct.hdspm*, %struct.hdspm** %4, align 8
  %220 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @hdspm_write(%struct.hdspm* %217, i32 %218, i32 %221)
  br label %230

223:                                              ; preds = %199, %199, %199
  %224 = load %struct.hdspm*, %struct.hdspm** %4, align 8
  %225 = load i32, i32* @HDSPM_controlRegister, align 4
  %226 = load %struct.hdspm*, %struct.hdspm** %4, align 8
  %227 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @hdspm_write(%struct.hdspm* %224, i32 %225, i32 %228)
  br label %230

230:                                              ; preds = %223, %199, %203
  store i32 0, i32* %3, align 4
  br label %231

231:                                              ; preds = %230, %196, %187, %171, %159, %140, %121, %85
  %232 = load i32, i32* %3, align 4
  ret i32 %232
}

declare dso_local i32 @hdspm_write(%struct.hdspm*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
