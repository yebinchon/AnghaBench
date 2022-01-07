; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_proc.c_print_pin_caps.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_proc.c_print_pin_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_buffer = type { i32 }
%struct.hda_codec = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@print_pin_caps.jack_conns = internal constant [4 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [5 x i8] c"Jack\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Fixed\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Both\00", align 1
@AC_PAR_PIN_CAP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"  Pincap 0x%08x:\00", align 1
@AC_PINCAP_IN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c" IN\00", align 1
@AC_PINCAP_OUT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c" OUT\00", align 1
@AC_PINCAP_HP_DRV = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c" HP\00", align 1
@AC_PINCAP_EAPD = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c" EAPD\00", align 1
@AC_PINCAP_PRES_DETECT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c" Detect\00", align 1
@AC_PINCAP_BALANCE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [10 x i8] c" Balanced\00", align 1
@AC_PINCAP_HDMI = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [5 x i8] c" R/L\00", align 1
@AC_PINCAP_HBR = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [5 x i8] c" HBR\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c" HDMI\00", align 1
@AC_PINCAP_DP = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [4 x i8] c" DP\00", align 1
@AC_PINCAP_TRIG_REQ = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [9 x i8] c" Trigger\00", align 1
@AC_PINCAP_IMP_SENSE = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [10 x i8] c" ImpSense\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@AC_PINCAP_VREF = common dso_local global i32 0, align 4
@AC_PINCAP_VREF_SHIFT = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [15 x i8] c"    Vref caps:\00", align 1
@AC_PINCAP_VREF_HIZ = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [5 x i8] c" HIZ\00", align 1
@AC_PINCAP_VREF_50 = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [4 x i8] c" 50\00", align 1
@AC_PINCAP_VREF_GRD = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [5 x i8] c" GRD\00", align 1
@AC_PINCAP_VREF_80 = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [4 x i8] c" 80\00", align 1
@AC_PINCAP_VREF_100 = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [5 x i8] c" 100\00", align 1
@AC_VERB_GET_EAPD_BTLENABLE = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [13 x i8] c"  EAPD 0x%x:\00", align 1
@AC_EAPDBTL_BALANCED = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [10 x i8] c" BALANCED\00", align 1
@AC_EAPDBTL_EAPD = common dso_local global i32 0, align 4
@AC_EAPDBTL_LR_SWAP = common dso_local global i32 0, align 4
@AC_VERB_GET_CONFIG_DEFAULT = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [40 x i8] c"  Pin Default 0x%08x: [%s] %s at %s %s\0A\00", align 1
@AC_DEFCFG_PORT_CONN = common dso_local global i32 0, align 4
@AC_DEFCFG_PORT_CONN_SHIFT = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [27 x i8] c"    Conn = %s, Color = %s\0A\00", align 1
@.str.28 = private unnamed_addr constant [44 x i8] c"    DefAssociation = 0x%x, Sequence = 0x%x\0A\00", align 1
@AC_DEFCFG_DEF_ASSOC = common dso_local global i32 0, align 4
@AC_DEFCFG_ASSOC_SHIFT = common dso_local global i32 0, align 4
@AC_DEFCFG_SEQUENCE = common dso_local global i32 0, align 4
@AC_DEFCFG_MISC = common dso_local global i32 0, align 4
@AC_DEFCFG_MISC_SHIFT = common dso_local global i32 0, align 4
@AC_DEFCFG_MISC_NO_PRESENCE = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [24 x i8] c"    Misc = NO_PRESENCE\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_buffer*, %struct.hda_codec*, i32, i32*)* @print_pin_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_pin_caps(%struct.snd_info_buffer* %0, %struct.hda_codec* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.snd_info_buffer*, align 8
  %6 = alloca %struct.hda_codec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_info_buffer* %0, %struct.snd_info_buffer** %5, align 8
  store %struct.hda_codec* %1, %struct.hda_codec** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %12 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @AC_PAR_PIN_CAP, align 4
  %15 = call i32 @param_read(%struct.hda_codec* %12, i32 %13, i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %17 = load i32, i32* %9, align 4
  %18 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @AC_PINCAP_IN, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %25 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  br label %26

26:                                               ; preds = %23, %4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @AC_PINCAP_OUT, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %33 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31, %26
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @AC_PINCAP_HP_DRV, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %41 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  br label %42

42:                                               ; preds = %39, %34
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @AC_PINCAP_EAPD, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %49 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  br label %50

50:                                               ; preds = %47, %42
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @AC_PINCAP_PRES_DETECT, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %57 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  br label %58

58:                                               ; preds = %55, %50
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @AC_PINCAP_BALANCE, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %65 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  br label %66

66:                                               ; preds = %63, %58
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @AC_PINCAP_HDMI, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %93

71:                                               ; preds = %66
  %72 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %73 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = ashr i32 %75, 16
  %77 = icmp eq i32 %76, 4332
  br i1 %77, label %78, label %81

78:                                               ; preds = %71
  %79 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %80 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  br label %92

81:                                               ; preds = %71
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @AC_PINCAP_HBR, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %88 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %87, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  br label %89

89:                                               ; preds = %86, %81
  %90 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %91 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %90, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0))
  br label %92

92:                                               ; preds = %89, %78
  br label %93

93:                                               ; preds = %92, %66
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* @AC_PINCAP_DP, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %100 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %99, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0))
  br label %101

101:                                              ; preds = %98, %93
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* @AC_PINCAP_TRIG_REQ, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %108 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %107, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0))
  br label %109

109:                                              ; preds = %106, %101
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* @AC_PINCAP_IMP_SENSE, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %109
  %115 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %116 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %115, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0))
  br label %117

117:                                              ; preds = %114, %109
  %118 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %119 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %118, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* @AC_PINCAP_VREF, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %175

124:                                              ; preds = %117
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* @AC_PINCAP_VREF, align 4
  %127 = and i32 %125, %126
  %128 = load i32, i32* @AC_PINCAP_VREF_SHIFT, align 4
  %129 = lshr i32 %127, %128
  store i32 %129, i32* %11, align 4
  %130 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %131 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %130, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0))
  %132 = load i32, i32* %11, align 4
  %133 = load i32, i32* @AC_PINCAP_VREF_HIZ, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %124
  %137 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %138 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %137, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0))
  br label %139

139:                                              ; preds = %136, %124
  %140 = load i32, i32* %11, align 4
  %141 = load i32, i32* @AC_PINCAP_VREF_50, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %139
  %145 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %146 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %145, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0))
  br label %147

147:                                              ; preds = %144, %139
  %148 = load i32, i32* %11, align 4
  %149 = load i32, i32* @AC_PINCAP_VREF_GRD, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %147
  %153 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %154 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %153, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0))
  br label %155

155:                                              ; preds = %152, %147
  %156 = load i32, i32* %11, align 4
  %157 = load i32, i32* @AC_PINCAP_VREF_80, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %155
  %161 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %162 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %161, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0))
  br label %163

163:                                              ; preds = %160, %155
  %164 = load i32, i32* %11, align 4
  %165 = load i32, i32* @AC_PINCAP_VREF_100, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %163
  %169 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %170 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %169, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0))
  br label %171

171:                                              ; preds = %168, %163
  %172 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %173 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %172, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  %174 = load i32*, i32** %8, align 8
  store i32 1, i32* %174, align 4
  br label %177

175:                                              ; preds = %117
  %176 = load i32*, i32** %8, align 8
  store i32 0, i32* %176, align 4
  br label %177

177:                                              ; preds = %175, %171
  %178 = load i32, i32* %9, align 4
  %179 = load i32, i32* @AC_PINCAP_EAPD, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %216

182:                                              ; preds = %177
  %183 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %184 = load i32, i32* %7, align 4
  %185 = load i32, i32* @AC_VERB_GET_EAPD_BTLENABLE, align 4
  %186 = call i32 @snd_hda_codec_read(%struct.hda_codec* %183, i32 %184, i32 0, i32 %185, i32 0)
  store i32 %186, i32* %10, align 4
  %187 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %188 = load i32, i32* %10, align 4
  %189 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %187, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0), i32 %188)
  %190 = load i32, i32* %10, align 4
  %191 = load i32, i32* @AC_EAPDBTL_BALANCED, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %182
  %195 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %196 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %195, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i64 0, i64 0))
  br label %197

197:                                              ; preds = %194, %182
  %198 = load i32, i32* %10, align 4
  %199 = load i32, i32* @AC_EAPDBTL_EAPD, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %197
  %203 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %204 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %203, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  br label %205

205:                                              ; preds = %202, %197
  %206 = load i32, i32* %10, align 4
  %207 = load i32, i32* @AC_EAPDBTL_LR_SWAP, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %205
  %211 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %212 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %211, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  br label %213

213:                                              ; preds = %210, %205
  %214 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %215 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %214, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  br label %216

216:                                              ; preds = %213, %177
  %217 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %218 = load i32, i32* %7, align 4
  %219 = load i32, i32* @AC_VERB_GET_CONFIG_DEFAULT, align 4
  %220 = call i32 @snd_hda_codec_read(%struct.hda_codec* %217, i32 %218, i32 0, i32 %219, i32 0)
  store i32 %220, i32* %9, align 4
  %221 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %222 = load i32, i32* %9, align 4
  %223 = load i32, i32* %9, align 4
  %224 = load i32, i32* @AC_DEFCFG_PORT_CONN, align 4
  %225 = and i32 %223, %224
  %226 = load i32, i32* @AC_DEFCFG_PORT_CONN_SHIFT, align 4
  %227 = lshr i32 %225, %226
  %228 = zext i32 %227 to i64
  %229 = getelementptr inbounds [4 x i8*], [4 x i8*]* @print_pin_caps.jack_conns, i64 0, i64 %228
  %230 = load i8*, i8** %229, align 8
  %231 = load i32, i32* %9, align 4
  %232 = call i32 @get_jack_type(i32 %231)
  %233 = load i32, i32* %9, align 4
  %234 = call i32 @get_jack_connectivity(i32 %233)
  %235 = load i32, i32* %9, align 4
  %236 = call i32 @get_jack_location(i32 %235)
  %237 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %221, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.26, i64 0, i64 0), i32 %222, i8* %230, i32 %232, i32 %234, i32 %236)
  %238 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %239 = load i32, i32* %9, align 4
  %240 = call i32 @get_jack_connection(i32 %239)
  %241 = load i32, i32* %9, align 4
  %242 = call i32 @get_jack_color(i32 %241)
  %243 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %238, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i64 0, i64 0), i32 %240, i32 %242)
  %244 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %245 = load i32, i32* %9, align 4
  %246 = load i32, i32* @AC_DEFCFG_DEF_ASSOC, align 4
  %247 = and i32 %245, %246
  %248 = load i32, i32* @AC_DEFCFG_ASSOC_SHIFT, align 4
  %249 = lshr i32 %247, %248
  %250 = load i32, i32* %9, align 4
  %251 = load i32, i32* @AC_DEFCFG_SEQUENCE, align 4
  %252 = and i32 %250, %251
  %253 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %244, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.28, i64 0, i64 0), i32 %249, i32 %252)
  %254 = load i32, i32* %9, align 4
  %255 = load i32, i32* @AC_DEFCFG_MISC, align 4
  %256 = and i32 %254, %255
  %257 = load i32, i32* @AC_DEFCFG_MISC_SHIFT, align 4
  %258 = lshr i32 %256, %257
  %259 = load i32, i32* @AC_DEFCFG_MISC_NO_PRESENCE, align 4
  %260 = and i32 %258, %259
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %265

262:                                              ; preds = %216
  %263 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %264 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %263, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.29, i64 0, i64 0))
  br label %265

265:                                              ; preds = %262, %216
  ret void
}

declare dso_local i32 @param_read(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, ...) #1

declare dso_local i32 @snd_hda_codec_read(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @get_jack_type(i32) #1

declare dso_local i32 @get_jack_connectivity(i32) #1

declare dso_local i32 @get_jack_location(i32) #1

declare dso_local i32 @get_jack_connection(i32) #1

declare dso_local i32 @get_jack_color(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
