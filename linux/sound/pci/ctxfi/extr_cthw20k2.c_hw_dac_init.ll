; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_cthw20k2.c_hw_dac_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_cthw20k2.c_hw_dac_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw = type { i64 }
%struct.dac_conf = type { i32 }
%struct.regs_cs4382 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@CTSB1270 = common dso_local global i64 0, align 8
@GPIO_DATA = common dso_local global i32 0, align 4
@GPIO_CTRL = common dso_local global i32 0, align 4
@CS4382_MC1 = common dso_local global i32 0, align 4
@CS4382_MC2 = common dso_local global i32 0, align 4
@CS4382_MC3 = common dso_local global i32 0, align 4
@CS4382_FC = common dso_local global i32 0, align 4
@CS4382_IC = common dso_local global i32 0, align 4
@CS4382_XC1 = common dso_local global i32 0, align 4
@CS4382_VCA1 = common dso_local global i32 0, align 4
@CS4382_VCB1 = common dso_local global i32 0, align 4
@CS4382_XC2 = common dso_local global i32 0, align 4
@CS4382_VCA2 = common dso_local global i32 0, align 4
@CS4382_VCB2 = common dso_local global i32 0, align 4
@CS4382_XC3 = common dso_local global i32 0, align 4
@CS4382_VCA3 = common dso_local global i32 0, align 4
@CS4382_VCB3 = common dso_local global i32 0, align 4
@CS4382_XC4 = common dso_local global i32 0, align 4
@CS4382_VCA4 = common dso_local global i32 0, align 4
@CS4382_VCB4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hw*, %struct.dac_conf*)* @hw_dac_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_dac_init(%struct.hw* %0, %struct.dac_conf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hw*, align 8
  %5 = alloca %struct.dac_conf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.regs_cs4382, align 4
  %10 = alloca %struct.regs_cs4382, align 4
  store %struct.hw* %0, %struct.hw** %4, align 8
  store %struct.dac_conf* %1, %struct.dac_conf** %5, align 8
  %11 = bitcast %struct.regs_cs4382* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 72, i1 false)
  %12 = bitcast %struct.regs_cs4382* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 72, i1 false)
  %13 = bitcast i8* %12 to %struct.regs_cs4382*
  %14 = getelementptr inbounds %struct.regs_cs4382, %struct.regs_cs4382* %13, i32 0, i32 0
  store i32 1, i32* %14, align 4
  %15 = getelementptr inbounds %struct.regs_cs4382, %struct.regs_cs4382* %13, i32 0, i32 2
  store i32 132, i32* %15, align 4
  %16 = getelementptr inbounds %struct.regs_cs4382, %struct.regs_cs4382* %13, i32 0, i32 5
  store i32 36, i32* %16, align 4
  %17 = getelementptr inbounds %struct.regs_cs4382, %struct.regs_cs4382* %13, i32 0, i32 8
  store i32 36, i32* %17, align 4
  %18 = getelementptr inbounds %struct.regs_cs4382, %struct.regs_cs4382* %13, i32 0, i32 11
  store i32 36, i32* %18, align 4
  %19 = getelementptr inbounds %struct.regs_cs4382, %struct.regs_cs4382* %13, i32 0, i32 14
  store i32 36, i32* %19, align 4
  %20 = load %struct.hw*, %struct.hw** %4, align 8
  %21 = getelementptr inbounds %struct.hw, %struct.hw* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CTSB1270, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %58

25:                                               ; preds = %2
  %26 = load %struct.hw*, %struct.hw** %4, align 8
  %27 = call i32 @hw_dac_stop(%struct.hw* %26)
  %28 = load %struct.hw*, %struct.hw** %4, align 8
  %29 = load i32, i32* @GPIO_DATA, align 4
  %30 = call i32 @hw_read_20kx(%struct.hw* %28, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = and i32 %31, -1537
  store i32 %32, i32* %7, align 4
  %33 = load %struct.dac_conf*, %struct.dac_conf** %5, align 8
  %34 = getelementptr inbounds %struct.dac_conf, %struct.dac_conf* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 1, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %25
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %7, align 4
  br label %51

39:                                               ; preds = %25
  %40 = load %struct.dac_conf*, %struct.dac_conf** %5, align 8
  %41 = getelementptr inbounds %struct.dac_conf, %struct.dac_conf* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 2, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* %7, align 4
  %46 = or i32 %45, 512
  store i32 %46, i32* %7, align 4
  br label %50

47:                                               ; preds = %39
  %48 = load i32, i32* %7, align 4
  %49 = or i32 %48, 1536
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %47, %44
  br label %51

51:                                               ; preds = %50, %37
  %52 = load %struct.hw*, %struct.hw** %4, align 8
  %53 = load i32, i32* @GPIO_DATA, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @hw_write_20kx(%struct.hw* %52, i32 %53, i32 %54)
  %56 = load %struct.hw*, %struct.hw** %4, align 8
  %57 = call i32 @hw_dac_start(%struct.hw* %56)
  store i32 0, i32* %3, align 4
  br label %272

58:                                               ; preds = %2
  %59 = load %struct.hw*, %struct.hw** %4, align 8
  %60 = load i32, i32* @GPIO_CTRL, align 4
  %61 = call i32 @hw_read_20kx(%struct.hw* %59, i32 %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = or i32 %62, 2
  store i32 %63, i32* %7, align 4
  %64 = load %struct.hw*, %struct.hw** %4, align 8
  %65 = load i32, i32* @GPIO_CTRL, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @hw_write_20kx(%struct.hw* %64, i32 %65, i32 %66)
  %68 = load %struct.hw*, %struct.hw** %4, align 8
  %69 = call i32 @hw20k2_i2c_init(%struct.hw* %68, i32 24, i32 1, i32 1)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %58
  br label %269

73:                                               ; preds = %58
  store i32 0, i32* %8, align 4
  br label %74

74:                                               ; preds = %205, %73
  %75 = load i32, i32* %8, align 4
  %76 = icmp slt i32 %75, 2
  br i1 %76, label %77, label %208

77:                                               ; preds = %74
  %78 = load %struct.hw*, %struct.hw** %4, align 8
  %79 = call i32 @hw_dac_reset(%struct.hw* %78)
  %80 = load %struct.hw*, %struct.hw** %4, align 8
  %81 = call i32 @hw_dac_reset(%struct.hw* %80)
  %82 = load %struct.hw*, %struct.hw** %4, align 8
  %83 = load i32, i32* @CS4382_MC1, align 4
  %84 = getelementptr inbounds %struct.regs_cs4382, %struct.regs_cs4382* %9, i32 0, i32 0
  %85 = call i64 @hw20k2_i2c_read(%struct.hw* %82, i32 %83, i32* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %77
  br label %205

88:                                               ; preds = %77
  %89 = load %struct.hw*, %struct.hw** %4, align 8
  %90 = load i32, i32* @CS4382_MC2, align 4
  %91 = getelementptr inbounds %struct.regs_cs4382, %struct.regs_cs4382* %9, i32 0, i32 1
  %92 = call i64 @hw20k2_i2c_read(%struct.hw* %89, i32 %90, i32* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  br label %205

95:                                               ; preds = %88
  %96 = load %struct.hw*, %struct.hw** %4, align 8
  %97 = load i32, i32* @CS4382_MC3, align 4
  %98 = getelementptr inbounds %struct.regs_cs4382, %struct.regs_cs4382* %9, i32 0, i32 2
  %99 = call i64 @hw20k2_i2c_read(%struct.hw* %96, i32 %97, i32* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %95
  br label %205

102:                                              ; preds = %95
  %103 = load %struct.hw*, %struct.hw** %4, align 8
  %104 = load i32, i32* @CS4382_FC, align 4
  %105 = getelementptr inbounds %struct.regs_cs4382, %struct.regs_cs4382* %9, i32 0, i32 3
  %106 = call i64 @hw20k2_i2c_read(%struct.hw* %103, i32 %104, i32* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %102
  br label %205

109:                                              ; preds = %102
  %110 = load %struct.hw*, %struct.hw** %4, align 8
  %111 = load i32, i32* @CS4382_IC, align 4
  %112 = getelementptr inbounds %struct.regs_cs4382, %struct.regs_cs4382* %9, i32 0, i32 4
  %113 = call i64 @hw20k2_i2c_read(%struct.hw* %110, i32 %111, i32* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %109
  br label %205

116:                                              ; preds = %109
  %117 = load %struct.hw*, %struct.hw** %4, align 8
  %118 = load i32, i32* @CS4382_XC1, align 4
  %119 = getelementptr inbounds %struct.regs_cs4382, %struct.regs_cs4382* %9, i32 0, i32 5
  %120 = call i64 @hw20k2_i2c_read(%struct.hw* %117, i32 %118, i32* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %116
  br label %205

123:                                              ; preds = %116
  %124 = load %struct.hw*, %struct.hw** %4, align 8
  %125 = load i32, i32* @CS4382_VCA1, align 4
  %126 = getelementptr inbounds %struct.regs_cs4382, %struct.regs_cs4382* %9, i32 0, i32 6
  %127 = call i64 @hw20k2_i2c_read(%struct.hw* %124, i32 %125, i32* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %123
  br label %205

130:                                              ; preds = %123
  %131 = load %struct.hw*, %struct.hw** %4, align 8
  %132 = load i32, i32* @CS4382_VCB1, align 4
  %133 = getelementptr inbounds %struct.regs_cs4382, %struct.regs_cs4382* %9, i32 0, i32 7
  %134 = call i64 @hw20k2_i2c_read(%struct.hw* %131, i32 %132, i32* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %130
  br label %205

137:                                              ; preds = %130
  %138 = load %struct.hw*, %struct.hw** %4, align 8
  %139 = load i32, i32* @CS4382_XC2, align 4
  %140 = getelementptr inbounds %struct.regs_cs4382, %struct.regs_cs4382* %9, i32 0, i32 8
  %141 = call i64 @hw20k2_i2c_read(%struct.hw* %138, i32 %139, i32* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %137
  br label %205

144:                                              ; preds = %137
  %145 = load %struct.hw*, %struct.hw** %4, align 8
  %146 = load i32, i32* @CS4382_VCA2, align 4
  %147 = getelementptr inbounds %struct.regs_cs4382, %struct.regs_cs4382* %9, i32 0, i32 9
  %148 = call i64 @hw20k2_i2c_read(%struct.hw* %145, i32 %146, i32* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %144
  br label %205

151:                                              ; preds = %144
  %152 = load %struct.hw*, %struct.hw** %4, align 8
  %153 = load i32, i32* @CS4382_VCB2, align 4
  %154 = getelementptr inbounds %struct.regs_cs4382, %struct.regs_cs4382* %9, i32 0, i32 10
  %155 = call i64 @hw20k2_i2c_read(%struct.hw* %152, i32 %153, i32* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %151
  br label %205

158:                                              ; preds = %151
  %159 = load %struct.hw*, %struct.hw** %4, align 8
  %160 = load i32, i32* @CS4382_XC3, align 4
  %161 = getelementptr inbounds %struct.regs_cs4382, %struct.regs_cs4382* %9, i32 0, i32 11
  %162 = call i64 @hw20k2_i2c_read(%struct.hw* %159, i32 %160, i32* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %158
  br label %205

165:                                              ; preds = %158
  %166 = load %struct.hw*, %struct.hw** %4, align 8
  %167 = load i32, i32* @CS4382_VCA3, align 4
  %168 = getelementptr inbounds %struct.regs_cs4382, %struct.regs_cs4382* %9, i32 0, i32 12
  %169 = call i64 @hw20k2_i2c_read(%struct.hw* %166, i32 %167, i32* %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %165
  br label %205

172:                                              ; preds = %165
  %173 = load %struct.hw*, %struct.hw** %4, align 8
  %174 = load i32, i32* @CS4382_VCB3, align 4
  %175 = getelementptr inbounds %struct.regs_cs4382, %struct.regs_cs4382* %9, i32 0, i32 13
  %176 = call i64 @hw20k2_i2c_read(%struct.hw* %173, i32 %174, i32* %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %172
  br label %205

179:                                              ; preds = %172
  %180 = load %struct.hw*, %struct.hw** %4, align 8
  %181 = load i32, i32* @CS4382_XC4, align 4
  %182 = getelementptr inbounds %struct.regs_cs4382, %struct.regs_cs4382* %9, i32 0, i32 14
  %183 = call i64 @hw20k2_i2c_read(%struct.hw* %180, i32 %181, i32* %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %179
  br label %205

186:                                              ; preds = %179
  %187 = load %struct.hw*, %struct.hw** %4, align 8
  %188 = load i32, i32* @CS4382_VCA4, align 4
  %189 = getelementptr inbounds %struct.regs_cs4382, %struct.regs_cs4382* %9, i32 0, i32 15
  %190 = call i64 @hw20k2_i2c_read(%struct.hw* %187, i32 %188, i32* %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %186
  br label %205

193:                                              ; preds = %186
  %194 = load %struct.hw*, %struct.hw** %4, align 8
  %195 = load i32, i32* @CS4382_VCB4, align 4
  %196 = getelementptr inbounds %struct.regs_cs4382, %struct.regs_cs4382* %9, i32 0, i32 16
  %197 = call i64 @hw20k2_i2c_read(%struct.hw* %194, i32 %195, i32* %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %193
  br label %205

200:                                              ; preds = %193
  %201 = call i64 @memcmp(%struct.regs_cs4382* %9, %struct.regs_cs4382* %10, i32 72)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %200
  br label %205

204:                                              ; preds = %200
  br label %208

205:                                              ; preds = %203, %199, %192, %185, %178, %171, %164, %157, %150, %143, %136, %129, %122, %115, %108, %101, %94, %87
  %206 = load i32, i32* %8, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %8, align 4
  br label %74

208:                                              ; preds = %204, %74
  %209 = load i32, i32* %8, align 4
  %210 = icmp sge i32 %209, 2
  br i1 %210, label %211, label %212

211:                                              ; preds = %208
  br label %269

212:                                              ; preds = %208
  %213 = load %struct.hw*, %struct.hw** %4, align 8
  %214 = load i32, i32* @CS4382_MC1, align 4
  %215 = call i32 @hw20k2_i2c_write(%struct.hw* %213, i32 %214, i32 128)
  %216 = load %struct.hw*, %struct.hw** %4, align 8
  %217 = load i32, i32* @CS4382_MC2, align 4
  %218 = call i32 @hw20k2_i2c_write(%struct.hw* %216, i32 %217, i32 16)
  %219 = load %struct.dac_conf*, %struct.dac_conf** %5, align 8
  %220 = getelementptr inbounds %struct.dac_conf, %struct.dac_conf* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = icmp eq i32 1, %221
  br i1 %222, label %223, label %236

223:                                              ; preds = %212
  %224 = load %struct.hw*, %struct.hw** %4, align 8
  %225 = load i32, i32* @CS4382_XC1, align 4
  %226 = call i32 @hw20k2_i2c_write(%struct.hw* %224, i32 %225, i32 36)
  %227 = load %struct.hw*, %struct.hw** %4, align 8
  %228 = load i32, i32* @CS4382_XC2, align 4
  %229 = call i32 @hw20k2_i2c_write(%struct.hw* %227, i32 %228, i32 36)
  %230 = load %struct.hw*, %struct.hw** %4, align 8
  %231 = load i32, i32* @CS4382_XC3, align 4
  %232 = call i32 @hw20k2_i2c_write(%struct.hw* %230, i32 %231, i32 36)
  %233 = load %struct.hw*, %struct.hw** %4, align 8
  %234 = load i32, i32* @CS4382_XC4, align 4
  %235 = call i32 @hw20k2_i2c_write(%struct.hw* %233, i32 %234, i32 36)
  br label %268

236:                                              ; preds = %212
  %237 = load %struct.dac_conf*, %struct.dac_conf** %5, align 8
  %238 = getelementptr inbounds %struct.dac_conf, %struct.dac_conf* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = icmp eq i32 2, %239
  br i1 %240, label %241, label %254

241:                                              ; preds = %236
  %242 = load %struct.hw*, %struct.hw** %4, align 8
  %243 = load i32, i32* @CS4382_XC1, align 4
  %244 = call i32 @hw20k2_i2c_write(%struct.hw* %242, i32 %243, i32 37)
  %245 = load %struct.hw*, %struct.hw** %4, align 8
  %246 = load i32, i32* @CS4382_XC2, align 4
  %247 = call i32 @hw20k2_i2c_write(%struct.hw* %245, i32 %246, i32 37)
  %248 = load %struct.hw*, %struct.hw** %4, align 8
  %249 = load i32, i32* @CS4382_XC3, align 4
  %250 = call i32 @hw20k2_i2c_write(%struct.hw* %248, i32 %249, i32 37)
  %251 = load %struct.hw*, %struct.hw** %4, align 8
  %252 = load i32, i32* @CS4382_XC4, align 4
  %253 = call i32 @hw20k2_i2c_write(%struct.hw* %251, i32 %252, i32 37)
  br label %267

254:                                              ; preds = %236
  %255 = load %struct.hw*, %struct.hw** %4, align 8
  %256 = load i32, i32* @CS4382_XC1, align 4
  %257 = call i32 @hw20k2_i2c_write(%struct.hw* %255, i32 %256, i32 38)
  %258 = load %struct.hw*, %struct.hw** %4, align 8
  %259 = load i32, i32* @CS4382_XC2, align 4
  %260 = call i32 @hw20k2_i2c_write(%struct.hw* %258, i32 %259, i32 38)
  %261 = load %struct.hw*, %struct.hw** %4, align 8
  %262 = load i32, i32* @CS4382_XC3, align 4
  %263 = call i32 @hw20k2_i2c_write(%struct.hw* %261, i32 %262, i32 38)
  %264 = load %struct.hw*, %struct.hw** %4, align 8
  %265 = load i32, i32* @CS4382_XC4, align 4
  %266 = call i32 @hw20k2_i2c_write(%struct.hw* %264, i32 %265, i32 38)
  br label %267

267:                                              ; preds = %254, %241
  br label %268

268:                                              ; preds = %267, %223
  store i32 0, i32* %3, align 4
  br label %272

269:                                              ; preds = %211, %72
  %270 = load %struct.hw*, %struct.hw** %4, align 8
  %271 = call i32 @hw20k2_i2c_uninit(%struct.hw* %270)
  store i32 -1, i32* %3, align 4
  br label %272

272:                                              ; preds = %269, %268, %51
  %273 = load i32, i32* %3, align 4
  ret i32 %273
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @hw_dac_stop(%struct.hw*) #2

declare dso_local i32 @hw_read_20kx(%struct.hw*, i32) #2

declare dso_local i32 @hw_write_20kx(%struct.hw*, i32, i32) #2

declare dso_local i32 @hw_dac_start(%struct.hw*) #2

declare dso_local i32 @hw20k2_i2c_init(%struct.hw*, i32, i32, i32) #2

declare dso_local i32 @hw_dac_reset(%struct.hw*) #2

declare dso_local i64 @hw20k2_i2c_read(%struct.hw*, i32, i32*) #2

declare dso_local i64 @memcmp(%struct.regs_cs4382*, %struct.regs_cs4382*, i32) #2

declare dso_local i32 @hw20k2_i2c_write(%struct.hw*, i32, i32) #2

declare dso_local i32 @hw20k2_i2c_uninit(%struct.hw*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
