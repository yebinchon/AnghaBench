; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1724.c_snd_vt1724_read_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1724.c_snd_vt1724_read_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712_card_info = type { i32, i32, i32, i64, i64 }
%struct.snd_ice1712 = type { i32, %struct.TYPE_4__, %struct.TYPE_3__*, %struct.snd_ice1712_card_info*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32*, i8*, i8*, i8* }
%struct.TYPE_3__ = type { i32 }

@I2C_CTRL = common dso_local global i32 0, align 4
@VT1724_I2C_EEPROM = common dso_local global i32 0, align 4
@PCI_SUBSYSTEM_VENDOR_ID = common dso_local global i32 0, align 4
@PCI_SUBSYSTEM_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"No valid ID is found\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@card_tables = common dso_local global %struct.snd_ice1712_card_info** null, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"Using board model %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"using the defined eeprom..\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"No matching model found for ID 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Invalid EEPROM (size = %i)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"Invalid EEPROM version %i\0A\00", align 1
@ICE_EEP2_GPIO_MASK = common dso_local global i32 0, align 4
@ICE_EEP2_GPIO_STATE = common dso_local global i32 0, align 4
@ICE_EEP2_GPIO_DIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ice1712*, i8*)* @snd_vt1724_read_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_vt1724_read_eeprom(%struct.snd_ice1712* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_ice1712*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_ice1712_card_info**, align 8
  %10 = alloca %struct.snd_ice1712_card_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 160, i32* %6, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i8*, i8** %5, align 8
  %17 = load i8, i8* %16, align 1
  %18 = icmp ne i8 %17, 0
  br i1 %18, label %103, label %19

19:                                               ; preds = %15, %2
  %20 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %21 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i32 0, i32* %22, align 8
  %23 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %24 = load i32, i32* @I2C_CTRL, align 4
  %25 = call i32 @ICEREG1724(%struct.snd_ice1712* %23, i32 %24)
  %26 = call i32 @inb(i32 %25)
  %27 = load i32, i32* @VT1724_I2C_EEPROM, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %49

30:                                               ; preds = %19
  %31 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %32 = call i32 @snd_vt1724_read_i2c(%struct.snd_ice1712* %31, i32 160, i32 0)
  %33 = shl i32 %32, 0
  %34 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %35 = call i32 @snd_vt1724_read_i2c(%struct.snd_ice1712* %34, i32 160, i32 1)
  %36 = shl i32 %35, 8
  %37 = or i32 %33, %36
  %38 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %39 = call i32 @snd_vt1724_read_i2c(%struct.snd_ice1712* %38, i32 160, i32 2)
  %40 = shl i32 %39, 16
  %41 = or i32 %37, %40
  %42 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %43 = call i32 @snd_vt1724_read_i2c(%struct.snd_ice1712* %42, i32 160, i32 3)
  %44 = shl i32 %43, 24
  %45 = or i32 %41, %44
  %46 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %47 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 8
  br label %49

49:                                               ; preds = %30, %19
  %50 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %51 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %49
  %56 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %57 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %61, label %102

61:                                               ; preds = %55, %49
  %62 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %63 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @PCI_SUBSYSTEM_VENDOR_ID, align 4
  %66 = call i32 @pci_read_config_word(i32 %64, i32 %65, i32* %11)
  %67 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %68 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @PCI_SUBSYSTEM_ID, align 4
  %71 = call i32 @pci_read_config_word(i32 %69, i32 %70, i32* %12)
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @swab16(i32 %72)
  %74 = shl i32 %73, 16
  %75 = load i32, i32* %12, align 4
  %76 = call i32 @swab16(i32 %75)
  %77 = or i32 %74, %76
  %78 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %79 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  store i32 %77, i32* %80, align 8
  %81 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %82 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %61
  %87 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %88 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp eq i32 %90, -1
  br i1 %91, label %92, label %101

92:                                               ; preds = %86, %61
  %93 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %94 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %93, i32 0, i32 2
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 (i32, i8*, ...) @dev_err(i32 %97, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %99 = load i32, i32* @ENXIO, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %3, align 4
  br label %327

101:                                              ; preds = %86
  br label %102

102:                                              ; preds = %101, %55
  br label %103

103:                                              ; preds = %102, %15
  %104 = load %struct.snd_ice1712_card_info**, %struct.snd_ice1712_card_info*** @card_tables, align 8
  store %struct.snd_ice1712_card_info** %104, %struct.snd_ice1712_card_info*** %9, align 8
  br label %105

105:                                              ; preds = %205, %103
  %106 = load %struct.snd_ice1712_card_info**, %struct.snd_ice1712_card_info*** %9, align 8
  %107 = load %struct.snd_ice1712_card_info*, %struct.snd_ice1712_card_info** %106, align 8
  %108 = icmp ne %struct.snd_ice1712_card_info* %107, null
  br i1 %108, label %109, label %208

109:                                              ; preds = %105
  %110 = load %struct.snd_ice1712_card_info**, %struct.snd_ice1712_card_info*** %9, align 8
  %111 = load %struct.snd_ice1712_card_info*, %struct.snd_ice1712_card_info** %110, align 8
  store %struct.snd_ice1712_card_info* %111, %struct.snd_ice1712_card_info** %10, align 8
  br label %112

112:                                              ; preds = %201, %109
  %113 = load %struct.snd_ice1712_card_info*, %struct.snd_ice1712_card_info** %10, align 8
  %114 = getelementptr inbounds %struct.snd_ice1712_card_info, %struct.snd_ice1712_card_info* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %204

117:                                              ; preds = %112
  %118 = load i8*, i8** %5, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %120, label %148

120:                                              ; preds = %117
  %121 = load %struct.snd_ice1712_card_info*, %struct.snd_ice1712_card_info** %10, align 8
  %122 = getelementptr inbounds %struct.snd_ice1712_card_info, %struct.snd_ice1712_card_info* %121, i32 0, i32 4
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %148

125:                                              ; preds = %120
  %126 = load i8*, i8** %5, align 8
  %127 = load %struct.snd_ice1712_card_info*, %struct.snd_ice1712_card_info** %10, align 8
  %128 = getelementptr inbounds %struct.snd_ice1712_card_info, %struct.snd_ice1712_card_info* %127, i32 0, i32 4
  %129 = load i64, i64* %128, align 8
  %130 = call i32 @strcmp(i8* %126, i64 %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %148, label %132

132:                                              ; preds = %125
  %133 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %134 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %133, i32 0, i32 2
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.snd_ice1712_card_info*, %struct.snd_ice1712_card_info** %10, align 8
  %139 = getelementptr inbounds %struct.snd_ice1712_card_info, %struct.snd_ice1712_card_info* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = call i32 @dev_info(i32 %137, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 %140)
  %142 = load %struct.snd_ice1712_card_info*, %struct.snd_ice1712_card_info** %10, align 8
  %143 = getelementptr inbounds %struct.snd_ice1712_card_info, %struct.snd_ice1712_card_info* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %146 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  store i32 %144, i32* %147, align 8
  br label %159

148:                                              ; preds = %125, %120, %117
  %149 = load %struct.snd_ice1712_card_info*, %struct.snd_ice1712_card_info** %10, align 8
  %150 = getelementptr inbounds %struct.snd_ice1712_card_info, %struct.snd_ice1712_card_info* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %153 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = icmp ne i32 %151, %155
  br i1 %156, label %157, label %158

157:                                              ; preds = %148
  br label %201

158:                                              ; preds = %148
  br label %159

159:                                              ; preds = %158, %132
  %160 = load %struct.snd_ice1712_card_info*, %struct.snd_ice1712_card_info** %10, align 8
  %161 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %162 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %161, i32 0, i32 3
  store %struct.snd_ice1712_card_info* %160, %struct.snd_ice1712_card_info** %162, align 8
  %163 = load %struct.snd_ice1712_card_info*, %struct.snd_ice1712_card_info** %10, align 8
  %164 = getelementptr inbounds %struct.snd_ice1712_card_info, %struct.snd_ice1712_card_info* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %159
  %168 = load %struct.snd_ice1712_card_info*, %struct.snd_ice1712_card_info** %10, align 8
  %169 = getelementptr inbounds %struct.snd_ice1712_card_info, %struct.snd_ice1712_card_info* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %173, label %172

172:                                              ; preds = %167, %159
  br label %219

173:                                              ; preds = %167
  %174 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %175 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %174, i32 0, i32 2
  %176 = load %struct.TYPE_3__*, %struct.TYPE_3__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @dev_dbg(i32 %178, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %180 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %181 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 1
  store i32 2, i32* %182, align 4
  %183 = load %struct.snd_ice1712_card_info*, %struct.snd_ice1712_card_info** %10, align 8
  %184 = getelementptr inbounds %struct.snd_ice1712_card_info, %struct.snd_ice1712_card_info* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = add nsw i32 %185, 6
  %187 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %188 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 2
  store i32 %186, i32* %189, align 8
  %190 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %191 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 3
  %193 = load i32*, i32** %192, align 8
  %194 = load %struct.snd_ice1712_card_info*, %struct.snd_ice1712_card_info** %10, align 8
  %195 = getelementptr inbounds %struct.snd_ice1712_card_info, %struct.snd_ice1712_card_info* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.snd_ice1712_card_info*, %struct.snd_ice1712_card_info** %10, align 8
  %198 = getelementptr inbounds %struct.snd_ice1712_card_info, %struct.snd_ice1712_card_info* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @memcpy(i32* %193, i32 %196, i32 %199)
  br label %308

201:                                              ; preds = %157
  %202 = load %struct.snd_ice1712_card_info*, %struct.snd_ice1712_card_info** %10, align 8
  %203 = getelementptr inbounds %struct.snd_ice1712_card_info, %struct.snd_ice1712_card_info* %202, i32 1
  store %struct.snd_ice1712_card_info* %203, %struct.snd_ice1712_card_info** %10, align 8
  br label %112

204:                                              ; preds = %112
  br label %205

205:                                              ; preds = %204
  %206 = load %struct.snd_ice1712_card_info**, %struct.snd_ice1712_card_info*** %9, align 8
  %207 = getelementptr inbounds %struct.snd_ice1712_card_info*, %struct.snd_ice1712_card_info** %206, i32 1
  store %struct.snd_ice1712_card_info** %207, %struct.snd_ice1712_card_info*** %9, align 8
  br label %105

208:                                              ; preds = %105
  %209 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %210 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %209, i32 0, i32 2
  %211 = load %struct.TYPE_3__*, %struct.TYPE_3__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %215 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = call i32 @dev_warn(i32 %213, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %217)
  br label %219

219:                                              ; preds = %208, %172
  %220 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %221 = call i32 @snd_vt1724_read_i2c(%struct.snd_ice1712* %220, i32 160, i32 4)
  %222 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %223 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 2
  store i32 %221, i32* %224, align 8
  %225 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %226 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 8
  %229 = icmp slt i32 %228, 6
  br i1 %229, label %230, label %234

230:                                              ; preds = %219
  %231 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %232 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 2
  store i32 32, i32* %233, align 8
  br label %254

234:                                              ; preds = %219
  %235 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %236 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = icmp sgt i32 %238, 32
  br i1 %239, label %240, label %253

240:                                              ; preds = %234
  %241 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %242 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %241, i32 0, i32 2
  %243 = load %struct.TYPE_3__*, %struct.TYPE_3__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %247 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 8
  %250 = call i32 (i32, i8*, ...) @dev_err(i32 %245, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %249)
  %251 = load i32, i32* @EIO, align 4
  %252 = sub nsw i32 0, %251
  store i32 %252, i32* %3, align 4
  br label %327

253:                                              ; preds = %234
  br label %254

254:                                              ; preds = %253, %230
  %255 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %256 = call i32 @snd_vt1724_read_i2c(%struct.snd_ice1712* %255, i32 160, i32 5)
  %257 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %258 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %257, i32 0, i32 1
  %259 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %258, i32 0, i32 1
  store i32 %256, i32* %259, align 4
  %260 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %261 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = icmp ne i32 %263, 1
  br i1 %264, label %265, label %282

265:                                              ; preds = %254
  %266 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %267 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %266, i32 0, i32 1
  %268 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = icmp ne i32 %269, 2
  br i1 %270, label %271, label %282

271:                                              ; preds = %265
  %272 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %273 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %272, i32 0, i32 2
  %274 = load %struct.TYPE_3__*, %struct.TYPE_3__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 4
  %277 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %278 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %277, i32 0, i32 1
  %279 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = call i32 @dev_warn(i32 %276, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %280)
  br label %282

282:                                              ; preds = %271, %265, %254
  %283 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %284 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %283, i32 0, i32 1
  %285 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %284, i32 0, i32 2
  %286 = load i32, i32* %285, align 8
  %287 = sub nsw i32 %286, 6
  store i32 %287, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %288

288:                                              ; preds = %304, %282
  %289 = load i32, i32* %7, align 4
  %290 = load i32, i32* %8, align 4
  %291 = icmp ult i32 %289, %290
  br i1 %291, label %292, label %307

292:                                              ; preds = %288
  %293 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %294 = load i32, i32* %7, align 4
  %295 = add i32 %294, 6
  %296 = call i32 @snd_vt1724_read_i2c(%struct.snd_ice1712* %293, i32 160, i32 %295)
  %297 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %298 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %297, i32 0, i32 1
  %299 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %298, i32 0, i32 3
  %300 = load i32*, i32** %299, align 8
  %301 = load i32, i32* %7, align 4
  %302 = zext i32 %301 to i64
  %303 = getelementptr inbounds i32, i32* %300, i64 %302
  store i32 %296, i32* %303, align 4
  br label %304

304:                                              ; preds = %292
  %305 = load i32, i32* %7, align 4
  %306 = add i32 %305, 1
  store i32 %306, i32* %7, align 4
  br label %288

307:                                              ; preds = %288
  br label %308

308:                                              ; preds = %307, %173
  %309 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %310 = load i32, i32* @ICE_EEP2_GPIO_MASK, align 4
  %311 = call i8* @eeprom_triple(%struct.snd_ice1712* %309, i32 %310)
  %312 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %313 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %312, i32 0, i32 1
  %314 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %313, i32 0, i32 6
  store i8* %311, i8** %314, align 8
  %315 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %316 = load i32, i32* @ICE_EEP2_GPIO_STATE, align 4
  %317 = call i8* @eeprom_triple(%struct.snd_ice1712* %315, i32 %316)
  %318 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %319 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %318, i32 0, i32 1
  %320 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %319, i32 0, i32 5
  store i8* %317, i8** %320, align 8
  %321 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %322 = load i32, i32* @ICE_EEP2_GPIO_DIR, align 4
  %323 = call i8* @eeprom_triple(%struct.snd_ice1712* %321, i32 %322)
  %324 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %325 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %324, i32 0, i32 1
  %326 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %325, i32 0, i32 4
  store i8* %323, i8** %326, align 8
  store i32 0, i32* %3, align 4
  br label %327

327:                                              ; preds = %308, %240, %92
  %328 = load i32, i32* %3, align 4
  ret i32 %328
}

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @ICEREG1724(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @snd_vt1724_read_i2c(%struct.snd_ice1712*, i32, i32) #1

declare dso_local i32 @pci_read_config_word(i32, i32, i32*) #1

declare dso_local i32 @swab16(i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @strcmp(i8*, i64) #1

declare dso_local i32 @dev_info(i32, i8*, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i8* @eeprom_triple(%struct.snd_ice1712*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
