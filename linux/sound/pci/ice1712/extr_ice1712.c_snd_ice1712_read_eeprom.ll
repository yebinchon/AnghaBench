; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1712.c_snd_ice1712_read_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1712.c_snd_ice1712_read_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712_card_info = type { i32, i32, i32, i32, i64 }
%struct.snd_ice1712 = type { %struct.TYPE_4__, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32*, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@ICE_I2C_EEPROM_ADDR = common dso_local global i32 0, align 4
@I2C_CTRL = common dso_local global i32 0, align 4
@ICE1712_I2C_EEPROM = common dso_local global i32 0, align 4
@PCI_SUBSYSTEM_VENDOR_ID = common dso_local global i32 0, align 4
@PCI_SUBSYSTEM_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"No valid ID is found\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@card_tables = common dso_local global %struct.snd_ice1712_card_info** null, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"Using board model %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"using the defined eeprom..\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"No matching model found for ID 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"invalid EEPROM (size = %i)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"invalid EEPROM version %i\0A\00", align 1
@ICE_EEP1_GPIO_MASK = common dso_local global i64 0, align 8
@ICE_EEP1_GPIO_STATE = common dso_local global i64 0, align 8
@ICE_EEP1_GPIO_DIR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ice1712*, i8*)* @snd_ice1712_read_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ice1712_read_eeprom(%struct.snd_ice1712* %0, i8* %1) #0 {
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
  %13 = load i32, i32* @ICE_I2C_EEPROM_ADDR, align 4
  store i32 %13, i32* %6, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i8*, i8** %5, align 8
  %18 = load i8, i8* %17, align 1
  %19 = icmp ne i8 %18, 0
  br i1 %19, label %108, label %20

20:                                               ; preds = %16, %2
  %21 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %22 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  %24 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %25 = load i32, i32* @I2C_CTRL, align 4
  %26 = call i32 @ICEREG(%struct.snd_ice1712* %24, i32 %25)
  %27 = call i32 @inb(i32 %26)
  %28 = load i32, i32* @ICE1712_I2C_EEPROM, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %54

31:                                               ; preds = %20
  %32 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @snd_ice1712_read_i2c(%struct.snd_ice1712* %32, i32 %33, i32 0)
  %35 = shl i32 %34, 0
  %36 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @snd_ice1712_read_i2c(%struct.snd_ice1712* %36, i32 %37, i32 1)
  %39 = shl i32 %38, 8
  %40 = or i32 %35, %39
  %41 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @snd_ice1712_read_i2c(%struct.snd_ice1712* %41, i32 %42, i32 2)
  %44 = shl i32 %43, 16
  %45 = or i32 %40, %44
  %46 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @snd_ice1712_read_i2c(%struct.snd_ice1712* %46, i32 %47, i32 3)
  %49 = shl i32 %48, 24
  %50 = or i32 %45, %49
  %51 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %52 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 8
  br label %54

54:                                               ; preds = %31, %20
  %55 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %56 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %54
  %61 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %62 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %66, label %107

66:                                               ; preds = %60, %54
  %67 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %68 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @PCI_SUBSYSTEM_VENDOR_ID, align 4
  %71 = call i32 @pci_read_config_word(i32 %69, i32 %70, i32* %11)
  %72 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %73 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @PCI_SUBSYSTEM_ID, align 4
  %76 = call i32 @pci_read_config_word(i32 %74, i32 %75, i32* %12)
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @swab16(i32 %77)
  %79 = shl i32 %78, 16
  %80 = load i32, i32* %12, align 4
  %81 = call i32 @swab16(i32 %80)
  %82 = or i32 %79, %81
  %83 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %84 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  store i32 %82, i32* %85, align 8
  %86 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %87 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %97, label %91

91:                                               ; preds = %66
  %92 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %93 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp eq i32 %95, -1
  br i1 %96, label %97, label %106

97:                                               ; preds = %91, %66
  %98 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %99 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %98, i32 0, i32 1
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (i32, i8*, ...) @dev_err(i32 %102, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %104 = load i32, i32* @ENXIO, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %3, align 4
  br label %338

106:                                              ; preds = %91
  br label %107

107:                                              ; preds = %106, %60
  br label %108

108:                                              ; preds = %107, %16
  %109 = load %struct.snd_ice1712_card_info**, %struct.snd_ice1712_card_info*** @card_tables, align 8
  store %struct.snd_ice1712_card_info** %109, %struct.snd_ice1712_card_info*** %9, align 8
  br label %110

110:                                              ; preds = %207, %108
  %111 = load %struct.snd_ice1712_card_info**, %struct.snd_ice1712_card_info*** %9, align 8
  %112 = load %struct.snd_ice1712_card_info*, %struct.snd_ice1712_card_info** %111, align 8
  %113 = icmp ne %struct.snd_ice1712_card_info* %112, null
  br i1 %113, label %114, label %210

114:                                              ; preds = %110
  %115 = load %struct.snd_ice1712_card_info**, %struct.snd_ice1712_card_info*** %9, align 8
  %116 = load %struct.snd_ice1712_card_info*, %struct.snd_ice1712_card_info** %115, align 8
  store %struct.snd_ice1712_card_info* %116, %struct.snd_ice1712_card_info** %10, align 8
  br label %117

117:                                              ; preds = %203, %114
  %118 = load %struct.snd_ice1712_card_info*, %struct.snd_ice1712_card_info** %10, align 8
  %119 = getelementptr inbounds %struct.snd_ice1712_card_info, %struct.snd_ice1712_card_info* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %206

122:                                              ; preds = %117
  %123 = load i8*, i8** %5, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %125, label %153

125:                                              ; preds = %122
  %126 = load %struct.snd_ice1712_card_info*, %struct.snd_ice1712_card_info** %10, align 8
  %127 = getelementptr inbounds %struct.snd_ice1712_card_info, %struct.snd_ice1712_card_info* %126, i32 0, i32 4
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %153

130:                                              ; preds = %125
  %131 = load i8*, i8** %5, align 8
  %132 = load %struct.snd_ice1712_card_info*, %struct.snd_ice1712_card_info** %10, align 8
  %133 = getelementptr inbounds %struct.snd_ice1712_card_info, %struct.snd_ice1712_card_info* %132, i32 0, i32 4
  %134 = load i64, i64* %133, align 8
  %135 = call i32 @strcmp(i8* %131, i64 %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %153, label %137

137:                                              ; preds = %130
  %138 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %139 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %138, i32 0, i32 1
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.snd_ice1712_card_info*, %struct.snd_ice1712_card_info** %10, align 8
  %144 = getelementptr inbounds %struct.snd_ice1712_card_info, %struct.snd_ice1712_card_info* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @dev_info(i32 %142, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %145)
  %147 = load %struct.snd_ice1712_card_info*, %struct.snd_ice1712_card_info** %10, align 8
  %148 = getelementptr inbounds %struct.snd_ice1712_card_info, %struct.snd_ice1712_card_info* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %151 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  store i32 %149, i32* %152, align 8
  br label %164

153:                                              ; preds = %130, %125, %122
  %154 = load %struct.snd_ice1712_card_info*, %struct.snd_ice1712_card_info** %10, align 8
  %155 = getelementptr inbounds %struct.snd_ice1712_card_info, %struct.snd_ice1712_card_info* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %158 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = icmp ne i32 %156, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %153
  br label %203

163:                                              ; preds = %153
  br label %164

164:                                              ; preds = %163, %137
  %165 = load %struct.snd_ice1712_card_info*, %struct.snd_ice1712_card_info** %10, align 8
  %166 = getelementptr inbounds %struct.snd_ice1712_card_info, %struct.snd_ice1712_card_info* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %174

169:                                              ; preds = %164
  %170 = load %struct.snd_ice1712_card_info*, %struct.snd_ice1712_card_info** %10, align 8
  %171 = getelementptr inbounds %struct.snd_ice1712_card_info, %struct.snd_ice1712_card_info* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %175, label %174

174:                                              ; preds = %169, %164
  br label %221

175:                                              ; preds = %169
  %176 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %177 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %176, i32 0, i32 1
  %178 = load %struct.TYPE_3__*, %struct.TYPE_3__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @dev_dbg(i32 %180, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %182 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %183 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 1
  store i32 1, i32* %184, align 4
  %185 = load %struct.snd_ice1712_card_info*, %struct.snd_ice1712_card_info** %10, align 8
  %186 = getelementptr inbounds %struct.snd_ice1712_card_info, %struct.snd_ice1712_card_info* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = add nsw i32 %187, 6
  %189 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %190 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 2
  store i32 %188, i32* %191, align 8
  %192 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %193 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 3
  %195 = load i32*, i32** %194, align 8
  %196 = load %struct.snd_ice1712_card_info*, %struct.snd_ice1712_card_info** %10, align 8
  %197 = getelementptr inbounds %struct.snd_ice1712_card_info, %struct.snd_ice1712_card_info* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.snd_ice1712_card_info*, %struct.snd_ice1712_card_info** %10, align 8
  %200 = getelementptr inbounds %struct.snd_ice1712_card_info, %struct.snd_ice1712_card_info* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @memcpy(i32* %195, i32 %198, i32 %201)
  br label %307

203:                                              ; preds = %162
  %204 = load %struct.snd_ice1712_card_info*, %struct.snd_ice1712_card_info** %10, align 8
  %205 = getelementptr inbounds %struct.snd_ice1712_card_info, %struct.snd_ice1712_card_info* %204, i32 1
  store %struct.snd_ice1712_card_info* %205, %struct.snd_ice1712_card_info** %10, align 8
  br label %117

206:                                              ; preds = %117
  br label %207

207:                                              ; preds = %206
  %208 = load %struct.snd_ice1712_card_info**, %struct.snd_ice1712_card_info*** %9, align 8
  %209 = getelementptr inbounds %struct.snd_ice1712_card_info*, %struct.snd_ice1712_card_info** %208, i32 1
  store %struct.snd_ice1712_card_info** %209, %struct.snd_ice1712_card_info*** %9, align 8
  br label %110

210:                                              ; preds = %110
  %211 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %212 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %211, i32 0, i32 1
  %213 = load %struct.TYPE_3__*, %struct.TYPE_3__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %217 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = call i32 @dev_warn(i32 %215, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %219)
  br label %221

221:                                              ; preds = %210, %174
  %222 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %223 = load i32, i32* %6, align 4
  %224 = call i32 @snd_ice1712_read_i2c(%struct.snd_ice1712* %222, i32 %223, i32 4)
  %225 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %226 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i32 0, i32 2
  store i32 %224, i32* %227, align 8
  %228 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %229 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 8
  %232 = icmp slt i32 %231, 6
  br i1 %232, label %233, label %237

233:                                              ; preds = %221
  %234 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %235 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 2
  store i32 32, i32* %236, align 8
  br label %257

237:                                              ; preds = %221
  %238 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %239 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 8
  %242 = icmp sgt i32 %241, 32
  br i1 %242, label %243, label %256

243:                                              ; preds = %237
  %244 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %245 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %244, i32 0, i32 1
  %246 = load %struct.TYPE_3__*, %struct.TYPE_3__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %250 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 8
  %253 = call i32 (i32, i8*, ...) @dev_err(i32 %248, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %252)
  %254 = load i32, i32* @EIO, align 4
  %255 = sub nsw i32 0, %254
  store i32 %255, i32* %3, align 4
  br label %338

256:                                              ; preds = %237
  br label %257

257:                                              ; preds = %256, %233
  %258 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %259 = load i32, i32* %6, align 4
  %260 = call i32 @snd_ice1712_read_i2c(%struct.snd_ice1712* %258, i32 %259, i32 5)
  %261 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %262 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %262, i32 0, i32 1
  store i32 %260, i32* %263, align 4
  %264 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %265 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = icmp ne i32 %267, 1
  br i1 %268, label %269, label %280

269:                                              ; preds = %257
  %270 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %271 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %270, i32 0, i32 1
  %272 = load %struct.TYPE_3__*, %struct.TYPE_3__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %276 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = call i32 (i32, i8*, ...) @dev_err(i32 %274, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %278)
  br label %280

280:                                              ; preds = %269, %257
  %281 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %282 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %282, i32 0, i32 2
  %284 = load i32, i32* %283, align 8
  %285 = sub nsw i32 %284, 6
  store i32 %285, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %286

286:                                              ; preds = %303, %280
  %287 = load i32, i32* %7, align 4
  %288 = load i32, i32* %8, align 4
  %289 = icmp ult i32 %287, %288
  br i1 %289, label %290, label %306

290:                                              ; preds = %286
  %291 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %292 = load i32, i32* %6, align 4
  %293 = load i32, i32* %7, align 4
  %294 = add i32 %293, 6
  %295 = call i32 @snd_ice1712_read_i2c(%struct.snd_ice1712* %291, i32 %292, i32 %294)
  %296 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %297 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %296, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %297, i32 0, i32 3
  %299 = load i32*, i32** %298, align 8
  %300 = load i32, i32* %7, align 4
  %301 = zext i32 %300 to i64
  %302 = getelementptr inbounds i32, i32* %299, i64 %301
  store i32 %295, i32* %302, align 4
  br label %303

303:                                              ; preds = %290
  %304 = load i32, i32* %7, align 4
  %305 = add i32 %304, 1
  store i32 %305, i32* %7, align 4
  br label %286

306:                                              ; preds = %286
  br label %307

307:                                              ; preds = %306, %175
  %308 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %309 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %309, i32 0, i32 3
  %311 = load i32*, i32** %310, align 8
  %312 = load i64, i64* @ICE_EEP1_GPIO_MASK, align 8
  %313 = getelementptr inbounds i32, i32* %311, i64 %312
  %314 = load i32, i32* %313, align 4
  %315 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %316 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %315, i32 0, i32 0
  %317 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %316, i32 0, i32 4
  store i32 %314, i32* %317, align 8
  %318 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %319 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %319, i32 0, i32 3
  %321 = load i32*, i32** %320, align 8
  %322 = load i64, i64* @ICE_EEP1_GPIO_STATE, align 8
  %323 = getelementptr inbounds i32, i32* %321, i64 %322
  %324 = load i32, i32* %323, align 4
  %325 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %326 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %325, i32 0, i32 0
  %327 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %326, i32 0, i32 5
  store i32 %324, i32* %327, align 4
  %328 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %329 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %328, i32 0, i32 0
  %330 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %329, i32 0, i32 3
  %331 = load i32*, i32** %330, align 8
  %332 = load i64, i64* @ICE_EEP1_GPIO_DIR, align 8
  %333 = getelementptr inbounds i32, i32* %331, i64 %332
  %334 = load i32, i32* %333, align 4
  %335 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %336 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %335, i32 0, i32 0
  %337 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %336, i32 0, i32 6
  store i32 %334, i32* %337, align 8
  store i32 0, i32* %3, align 4
  br label %338

338:                                              ; preds = %307, %243, %97
  %339 = load i32, i32* %3, align 4
  ret i32 %339
}

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @ICEREG(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @snd_ice1712_read_i2c(%struct.snd_ice1712*, i32, i32) #1

declare dso_local i32 @pci_read_config_word(i32, i32, i32*) #1

declare dso_local i32 @swab16(i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @strcmp(i8*, i64) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
