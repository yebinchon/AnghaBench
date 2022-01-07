; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_cmipci.c_snd_cmipci_mixer_new.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_cmipci.c_snd_cmipci_mixer_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol_new = type { i32 }
%struct.TYPE_4__ = type { i8* }
%struct.cmipci = type { i32, i64, %struct.snd_kcontrol**, %struct.snd_card*, i64, i32, i32 }
%struct.snd_kcontrol = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.snd_card = type { i32 }
%struct.snd_ctl_elem_id = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"CMedia PCI\00", align 1
@snd_cmipci_mixers = common dso_local global %struct.snd_kcontrol_new* null, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"PCM Playback Volume\00", align 1
@snd_cmipci_mixer_switches = common dso_local global %struct.snd_kcontrol_new* null, align 8
@snd_cmipci_nomulti_switch = common dso_local global %struct.snd_kcontrol_new zeroinitializer, align 4
@PCI_DEVICE_ID_CMEDIA_CM8738 = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_CMEDIA_CM8738B = common dso_local global i64 0, align 8
@snd_cmipci_8738_mixer_switches = common dso_local global %struct.snd_kcontrol_new* null, align 8
@snd_cmipci_spdif_default = common dso_local global %struct.snd_kcontrol_new zeroinitializer, align 4
@snd_cmipci_spdif_mask = common dso_local global %struct.snd_kcontrol_new zeroinitializer, align 4
@snd_cmipci_spdif_stream = common dso_local global %struct.snd_kcontrol_new zeroinitializer, align 4
@snd_cmipci_old_mixer_switches = common dso_local global %struct.snd_kcontrol_new* null, align 8
@snd_cmipci_extra_mixer_switches = common dso_local global %struct.snd_kcontrol_new* null, align 8
@snd_cmipci_modem_switch = common dso_local global %struct.snd_kcontrol_new zeroinitializer, align 4
@CM_SAVED_MIXERS = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_IFACE_MIXER = common dso_local global i32 0, align 4
@cm_saved_mixer = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmipci*, i32)* @snd_cmipci_mixer_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cmipci_mixer_new(%struct.cmipci* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cmipci*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_card*, align 8
  %7 = alloca %struct.snd_kcontrol_new*, align 8
  %8 = alloca %struct.snd_kcontrol*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.snd_ctl_elem_id, align 4
  %12 = alloca %struct.snd_kcontrol*, align 8
  store %struct.cmipci* %0, %struct.cmipci** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %14 = icmp ne %struct.cmipci* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %17 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %16, i32 0, i32 3
  %18 = load %struct.snd_card*, %struct.snd_card** %17, align 8
  %19 = icmp ne %struct.snd_card* %18, null
  %20 = xor i1 %19, true
  br label %21

21:                                               ; preds = %15, %2
  %22 = phi i1 [ true, %2 ], [ %20, %15 ]
  %23 = zext i1 %22 to i32
  %24 = call i64 @snd_BUG_ON(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %320

29:                                               ; preds = %21
  %30 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %31 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %30, i32 0, i32 3
  %32 = load %struct.snd_card*, %struct.snd_card** %31, align 8
  store %struct.snd_card* %32, %struct.snd_card** %6, align 8
  %33 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %34 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @strcpy(i32 %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %38 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %37, i32 0, i32 6
  %39 = call i32 @spin_lock_irq(i32* %38)
  %40 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %41 = call i32 @snd_cmipci_mixer_write(%struct.cmipci* %40, i32 0, i32 0)
  %42 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %43 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %42, i32 0, i32 6
  %44 = call i32 @spin_unlock_irq(i32* %43)
  store i32 0, i32* %9, align 4
  br label %45

45:                                               ; preds = %79, %29
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** @snd_cmipci_mixers, align 8
  %48 = call i32 @ARRAY_SIZE(%struct.snd_kcontrol_new* %47)
  %49 = icmp ult i32 %46, %48
  br i1 %49, label %50, label %82

50:                                               ; preds = %45
  %51 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %52 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 %53, 68
  br i1 %54, label %55, label %66

55:                                               ; preds = %50
  %56 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** @snd_cmipci_mixers, align 8
  %57 = load i32, i32* %9, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %56, i64 %58
  %60 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @strcmp(i32 %61, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %55
  br label %79

65:                                               ; preds = %55
  br label %66

66:                                               ; preds = %65, %50
  %67 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %68 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** @snd_cmipci_mixers, align 8
  %69 = load i32, i32* %9, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %68, i64 %70
  %72 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %73 = call %struct.snd_kcontrol* @snd_ctl_new1(%struct.snd_kcontrol_new* %71, %struct.cmipci* %72)
  %74 = call i32 @snd_ctl_add(%struct.snd_card* %67, %struct.snd_kcontrol* %73)
  store i32 %74, i32* %10, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %66
  %77 = load i32, i32* %10, align 4
  store i32 %77, i32* %3, align 4
  br label %320

78:                                               ; preds = %66
  br label %79

79:                                               ; preds = %78, %64
  %80 = load i32, i32* %9, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %9, align 4
  br label %45

82:                                               ; preds = %45
  %83 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** @snd_cmipci_mixer_switches, align 8
  store %struct.snd_kcontrol_new* %83, %struct.snd_kcontrol_new** %7, align 8
  store i32 0, i32* %9, align 4
  br label %84

84:                                               ; preds = %102, %82
  %85 = load i32, i32* %9, align 4
  %86 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** @snd_cmipci_mixer_switches, align 8
  %87 = call i32 @ARRAY_SIZE(%struct.snd_kcontrol_new* %86)
  %88 = icmp ult i32 %85, %87
  br i1 %88, label %89, label %107

89:                                               ; preds = %84
  %90 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %91 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %90, i32 0, i32 3
  %92 = load %struct.snd_card*, %struct.snd_card** %91, align 8
  %93 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %7, align 8
  %94 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %95 = call %struct.snd_kcontrol* @snd_ctl_new1(%struct.snd_kcontrol_new* %93, %struct.cmipci* %94)
  %96 = call i32 @snd_ctl_add(%struct.snd_card* %92, %struct.snd_kcontrol* %95)
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %10, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %89
  %100 = load i32, i32* %10, align 4
  store i32 %100, i32* %3, align 4
  br label %320

101:                                              ; preds = %89
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %9, align 4
  %104 = add i32 %103, 1
  store i32 %104, i32* %9, align 4
  %105 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %7, align 8
  %106 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %105, i32 1
  store %struct.snd_kcontrol_new* %106, %struct.snd_kcontrol_new** %7, align 8
  br label %84

107:                                              ; preds = %84
  %108 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %109 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %124, label %112

112:                                              ; preds = %107
  %113 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %114 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %113, i32 0, i32 3
  %115 = load %struct.snd_card*, %struct.snd_card** %114, align 8
  %116 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %117 = call %struct.snd_kcontrol* @snd_ctl_new1(%struct.snd_kcontrol_new* @snd_cmipci_nomulti_switch, %struct.cmipci* %116)
  %118 = call i32 @snd_ctl_add(%struct.snd_card* %115, %struct.snd_kcontrol* %117)
  store i32 %118, i32* %10, align 4
  %119 = load i32, i32* %10, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %112
  %122 = load i32, i32* %10, align 4
  store i32 %122, i32* %3, align 4
  br label %320

123:                                              ; preds = %112
  br label %124

124:                                              ; preds = %123, %107
  %125 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %126 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @PCI_DEVICE_ID_CMEDIA_CM8738, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %136, label %130

130:                                              ; preds = %124
  %131 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %132 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @PCI_DEVICE_ID_CMEDIA_CM8738B, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %235

136:                                              ; preds = %130, %124
  %137 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** @snd_cmipci_8738_mixer_switches, align 8
  store %struct.snd_kcontrol_new* %137, %struct.snd_kcontrol_new** %7, align 8
  store i32 0, i32* %9, align 4
  br label %138

138:                                              ; preds = %156, %136
  %139 = load i32, i32* %9, align 4
  %140 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** @snd_cmipci_8738_mixer_switches, align 8
  %141 = call i32 @ARRAY_SIZE(%struct.snd_kcontrol_new* %140)
  %142 = icmp ult i32 %139, %141
  br i1 %142, label %143, label %161

143:                                              ; preds = %138
  %144 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %145 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %144, i32 0, i32 3
  %146 = load %struct.snd_card*, %struct.snd_card** %145, align 8
  %147 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %7, align 8
  %148 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %149 = call %struct.snd_kcontrol* @snd_ctl_new1(%struct.snd_kcontrol_new* %147, %struct.cmipci* %148)
  %150 = call i32 @snd_ctl_add(%struct.snd_card* %146, %struct.snd_kcontrol* %149)
  store i32 %150, i32* %10, align 4
  %151 = load i32, i32* %10, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %143
  %154 = load i32, i32* %10, align 4
  store i32 %154, i32* %3, align 4
  br label %320

155:                                              ; preds = %143
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %9, align 4
  %158 = add i32 %157, 1
  store i32 %158, i32* %9, align 4
  %159 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %7, align 8
  %160 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %159, i32 1
  store %struct.snd_kcontrol_new* %160, %struct.snd_kcontrol_new** %7, align 8
  br label %138

161:                                              ; preds = %138
  %162 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %163 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %162, i32 0, i32 4
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %203

166:                                              ; preds = %161
  %167 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %168 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %169 = call %struct.snd_kcontrol* @snd_ctl_new1(%struct.snd_kcontrol_new* @snd_cmipci_spdif_default, %struct.cmipci* %168)
  store %struct.snd_kcontrol* %169, %struct.snd_kcontrol** %8, align 8
  %170 = call i32 @snd_ctl_add(%struct.snd_card* %167, %struct.snd_kcontrol* %169)
  store i32 %170, i32* %10, align 4
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %166
  %173 = load i32, i32* %10, align 4
  store i32 %173, i32* %3, align 4
  br label %320

174:                                              ; preds = %166
  %175 = load i32, i32* %5, align 4
  %176 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %8, align 8
  %177 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 0
  store i32 %175, i32* %178, align 4
  %179 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %180 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %181 = call %struct.snd_kcontrol* @snd_ctl_new1(%struct.snd_kcontrol_new* @snd_cmipci_spdif_mask, %struct.cmipci* %180)
  store %struct.snd_kcontrol* %181, %struct.snd_kcontrol** %8, align 8
  %182 = call i32 @snd_ctl_add(%struct.snd_card* %179, %struct.snd_kcontrol* %181)
  store i32 %182, i32* %10, align 4
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %174
  %185 = load i32, i32* %10, align 4
  store i32 %185, i32* %3, align 4
  br label %320

186:                                              ; preds = %174
  %187 = load i32, i32* %5, align 4
  %188 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %8, align 8
  %189 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 0
  store i32 %187, i32* %190, align 4
  %191 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %192 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %193 = call %struct.snd_kcontrol* @snd_ctl_new1(%struct.snd_kcontrol_new* @snd_cmipci_spdif_stream, %struct.cmipci* %192)
  store %struct.snd_kcontrol* %193, %struct.snd_kcontrol** %8, align 8
  %194 = call i32 @snd_ctl_add(%struct.snd_card* %191, %struct.snd_kcontrol* %193)
  store i32 %194, i32* %10, align 4
  %195 = icmp slt i32 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %186
  %197 = load i32, i32* %10, align 4
  store i32 %197, i32* %3, align 4
  br label %320

198:                                              ; preds = %186
  %199 = load i32, i32* %5, align 4
  %200 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %8, align 8
  %201 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 0
  store i32 %199, i32* %202, align 4
  br label %203

203:                                              ; preds = %198, %161
  %204 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %205 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = icmp sle i32 %206, 37
  br i1 %207, label %208, label %234

208:                                              ; preds = %203
  %209 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** @snd_cmipci_old_mixer_switches, align 8
  store %struct.snd_kcontrol_new* %209, %struct.snd_kcontrol_new** %7, align 8
  store i32 0, i32* %9, align 4
  br label %210

210:                                              ; preds = %228, %208
  %211 = load i32, i32* %9, align 4
  %212 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** @snd_cmipci_old_mixer_switches, align 8
  %213 = call i32 @ARRAY_SIZE(%struct.snd_kcontrol_new* %212)
  %214 = icmp ult i32 %211, %213
  br i1 %214, label %215, label %233

215:                                              ; preds = %210
  %216 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %217 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %216, i32 0, i32 3
  %218 = load %struct.snd_card*, %struct.snd_card** %217, align 8
  %219 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %7, align 8
  %220 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %221 = call %struct.snd_kcontrol* @snd_ctl_new1(%struct.snd_kcontrol_new* %219, %struct.cmipci* %220)
  %222 = call i32 @snd_ctl_add(%struct.snd_card* %218, %struct.snd_kcontrol* %221)
  store i32 %222, i32* %10, align 4
  %223 = load i32, i32* %10, align 4
  %224 = icmp slt i32 %223, 0
  br i1 %224, label %225, label %227

225:                                              ; preds = %215
  %226 = load i32, i32* %10, align 4
  store i32 %226, i32* %3, align 4
  br label %320

227:                                              ; preds = %215
  br label %228

228:                                              ; preds = %227
  %229 = load i32, i32* %9, align 4
  %230 = add i32 %229, 1
  store i32 %230, i32* %9, align 4
  %231 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %7, align 8
  %232 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %231, i32 1
  store %struct.snd_kcontrol_new* %232, %struct.snd_kcontrol_new** %7, align 8
  br label %210

233:                                              ; preds = %210
  br label %234

234:                                              ; preds = %233, %203
  br label %235

235:                                              ; preds = %234, %130
  %236 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %237 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = icmp sge i32 %238, 39
  br i1 %239, label %240, label %266

240:                                              ; preds = %235
  %241 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** @snd_cmipci_extra_mixer_switches, align 8
  store %struct.snd_kcontrol_new* %241, %struct.snd_kcontrol_new** %7, align 8
  store i32 0, i32* %9, align 4
  br label %242

242:                                              ; preds = %260, %240
  %243 = load i32, i32* %9, align 4
  %244 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** @snd_cmipci_extra_mixer_switches, align 8
  %245 = call i32 @ARRAY_SIZE(%struct.snd_kcontrol_new* %244)
  %246 = icmp ult i32 %243, %245
  br i1 %246, label %247, label %265

247:                                              ; preds = %242
  %248 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %249 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %248, i32 0, i32 3
  %250 = load %struct.snd_card*, %struct.snd_card** %249, align 8
  %251 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %7, align 8
  %252 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %253 = call %struct.snd_kcontrol* @snd_ctl_new1(%struct.snd_kcontrol_new* %251, %struct.cmipci* %252)
  %254 = call i32 @snd_ctl_add(%struct.snd_card* %250, %struct.snd_kcontrol* %253)
  store i32 %254, i32* %10, align 4
  %255 = load i32, i32* %10, align 4
  %256 = icmp slt i32 %255, 0
  br i1 %256, label %257, label %259

257:                                              ; preds = %247
  %258 = load i32, i32* %10, align 4
  store i32 %258, i32* %3, align 4
  br label %320

259:                                              ; preds = %247
  br label %260

260:                                              ; preds = %259
  %261 = load i32, i32* %9, align 4
  %262 = add i32 %261, 1
  store i32 %262, i32* %9, align 4
  %263 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %7, align 8
  %264 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %263, i32 1
  store %struct.snd_kcontrol_new* %264, %struct.snd_kcontrol_new** %7, align 8
  br label %242

265:                                              ; preds = %242
  br label %266

266:                                              ; preds = %265, %235
  %267 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %268 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = icmp slt i32 %269, 39
  br i1 %270, label %271, label %283

271:                                              ; preds = %266
  %272 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %273 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %272, i32 0, i32 3
  %274 = load %struct.snd_card*, %struct.snd_card** %273, align 8
  %275 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %276 = call %struct.snd_kcontrol* @snd_ctl_new1(%struct.snd_kcontrol_new* @snd_cmipci_modem_switch, %struct.cmipci* %275)
  %277 = call i32 @snd_ctl_add(%struct.snd_card* %274, %struct.snd_kcontrol* %276)
  store i32 %277, i32* %10, align 4
  %278 = load i32, i32* %10, align 4
  %279 = icmp slt i32 %278, 0
  br i1 %279, label %280, label %282

280:                                              ; preds = %271
  %281 = load i32, i32* %10, align 4
  store i32 %281, i32* %3, align 4
  br label %320

282:                                              ; preds = %271
  br label %283

283:                                              ; preds = %282, %266
  store i32 0, i32* %9, align 4
  br label %284

284:                                              ; preds = %316, %283
  %285 = load i32, i32* %9, align 4
  %286 = load i32, i32* @CM_SAVED_MIXERS, align 4
  %287 = icmp ult i32 %285, %286
  br i1 %287, label %288, label %319

288:                                              ; preds = %284
  %289 = call i32 @memset(%struct.snd_ctl_elem_id* %11, i32 0, i32 8)
  %290 = load i32, i32* @SNDRV_CTL_ELEM_IFACE_MIXER, align 4
  %291 = getelementptr inbounds %struct.snd_ctl_elem_id, %struct.snd_ctl_elem_id* %11, i32 0, i32 1
  store i32 %290, i32* %291, align 4
  %292 = getelementptr inbounds %struct.snd_ctl_elem_id, %struct.snd_ctl_elem_id* %11, i32 0, i32 0
  %293 = load i32, i32* %292, align 4
  %294 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cm_saved_mixer, align 8
  %295 = load i32, i32* %9, align 4
  %296 = zext i32 %295 to i64
  %297 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %294, i64 %296
  %298 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %297, i32 0, i32 0
  %299 = load i8*, i8** %298, align 8
  %300 = call i32 @strcpy(i32 %293, i8* %299)
  %301 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %302 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %301, i32 0, i32 3
  %303 = load %struct.snd_card*, %struct.snd_card** %302, align 8
  %304 = call %struct.snd_kcontrol* @snd_ctl_find_id(%struct.snd_card* %303, %struct.snd_ctl_elem_id* %11)
  store %struct.snd_kcontrol* %304, %struct.snd_kcontrol** %12, align 8
  %305 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %12, align 8
  %306 = icmp ne %struct.snd_kcontrol* %305, null
  br i1 %306, label %307, label %315

307:                                              ; preds = %288
  %308 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %12, align 8
  %309 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %310 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %309, i32 0, i32 2
  %311 = load %struct.snd_kcontrol**, %struct.snd_kcontrol*** %310, align 8
  %312 = load i32, i32* %9, align 4
  %313 = zext i32 %312 to i64
  %314 = getelementptr inbounds %struct.snd_kcontrol*, %struct.snd_kcontrol** %311, i64 %313
  store %struct.snd_kcontrol* %308, %struct.snd_kcontrol** %314, align 8
  br label %315

315:                                              ; preds = %307, %288
  br label %316

316:                                              ; preds = %315
  %317 = load i32, i32* %9, align 4
  %318 = add i32 %317, 1
  store i32 %318, i32* %9, align 4
  br label %284

319:                                              ; preds = %284
  store i32 0, i32* %3, align 4
  br label %320

320:                                              ; preds = %319, %280, %257, %225, %196, %184, %172, %153, %121, %99, %76, %26
  %321 = load i32, i32* %3, align 4
  ret i32 %321
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @snd_cmipci_mixer_write(%struct.cmipci*, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.snd_kcontrol_new*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @snd_ctl_add(%struct.snd_card*, %struct.snd_kcontrol*) #1

declare dso_local %struct.snd_kcontrol* @snd_ctl_new1(%struct.snd_kcontrol_new*, %struct.cmipci*) #1

declare dso_local i32 @memset(%struct.snd_ctl_elem_id*, i32, i32) #1

declare dso_local %struct.snd_kcontrol* @snd_ctl_find_id(%struct.snd_card*, %struct.snd_ctl_elem_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
