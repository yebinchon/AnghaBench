; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_proc.c_snd_ac97_proc_read_main.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_proc.c_snd_ac97_proc_read_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i32, i32, i16, i16, i16, i16, i16, i32*, i32, i32 }
%struct.snd_info_buffer = type { i32 }

@snd_ac97_proc_read_main.spdif_slots = internal global [4 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [11 x i8] c" SPDIF=3/4\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c" SPDIF=7/8\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c" SPDIF=6/9\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c" SPDIF=10/11\00", align 1
@snd_ac97_proc_read_main.spdif_rates = internal global [4 x i8*] [i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0)], align 16
@.str.4 = private unnamed_addr constant [14 x i8] c" Rate=44.1kHz\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c" Rate=res\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c" Rate=48kHz\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c" Rate=32kHz\00", align 1
@snd_ac97_proc_read_main.spdif_rates_cs4205 = internal global [4 x i8*] [i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0)], align 16
@snd_ac97_proc_read_main.double_rate_slots = internal global [4 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0)], align 16
@.str.8 = private unnamed_addr constant [6 x i8] c"10/11\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"7/8\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"reserved\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"%d-%d/%d: %s\0A\0A\00", align 1
@AC97_SCAP_AUDIO = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [27 x i8] c"PCI Subsys Vendor: 0x%04x\0A\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"PCI Subsys Device: 0x%04x\0A\0A\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"Flags: %x\0A\00", align 1
@AC97_EI_REV_MASK = common dso_local global i16 0, align 2
@AC97_EI_REV_23 = common dso_local global i16 0, align 2
@AC97_INT_PAGING = common dso_local global i64 0, align 8
@AC97_PAGE_MASK = common dso_local global i16 0, align 2
@AC97_PAGE_1 = common dso_local global i16 0, align 2
@AC97_CODEC_CLASS_REV = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [27 x i8] c"Revision         : 0x%02x\0A\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"Compat. Class    : 0x%02x\0A\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"Subsys. Vendor ID: 0x%04x\0A\00", align 1
@AC97_PCI_SVID = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [28 x i8] c"Subsys. ID       : 0x%04x\0A\0A\00", align 1
@AC97_PCI_SID = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [32 x i8] c"Capabilities     :%s%s%s%s%s%s\0A\00", align 1
@AC97_BC_DEDICATED_MIC = common dso_local global i16 0, align 2
@.str.20 = private unnamed_addr constant [32 x i8] c" -dedicated MIC PCM IN channel-\00", align 1
@.str.21 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AC97_BC_RESERVED1 = common dso_local global i16 0, align 2
@.str.22 = private unnamed_addr constant [13 x i8] c" -reserved1-\00", align 1
@AC97_BC_BASS_TREBLE = common dso_local global i16 0, align 2
@.str.23 = private unnamed_addr constant [17 x i8] c" -bass & treble-\00", align 1
@AC97_BC_SIM_STEREO = common dso_local global i16 0, align 2
@.str.24 = private unnamed_addr constant [20 x i8] c" -simulated stereo-\00", align 1
@AC97_BC_HEADPHONE = common dso_local global i16 0, align 2
@.str.25 = private unnamed_addr constant [17 x i8] c" -headphone out-\00", align 1
@AC97_BC_LOUDNESS = common dso_local global i16 0, align 2
@.str.26 = private unnamed_addr constant [12 x i8] c" -loudness-\00", align 1
@AC97_BC_DAC_MASK = common dso_local global i16 0, align 2
@.str.27 = private unnamed_addr constant [29 x i8] c"DAC resolution   : %s%s%s%s\0A\00", align 1
@AC97_BC_16BIT_DAC = common dso_local global i16 0, align 2
@.str.28 = private unnamed_addr constant [7 x i8] c"16-bit\00", align 1
@AC97_BC_18BIT_DAC = common dso_local global i16 0, align 2
@.str.29 = private unnamed_addr constant [7 x i8] c"18-bit\00", align 1
@AC97_BC_20BIT_DAC = common dso_local global i16 0, align 2
@.str.30 = private unnamed_addr constant [7 x i8] c"20-bit\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@AC97_BC_ADC_MASK = common dso_local global i16 0, align 2
@.str.32 = private unnamed_addr constant [29 x i8] c"ADC resolution   : %s%s%s%s\0A\00", align 1
@AC97_BC_16BIT_ADC = common dso_local global i16 0, align 2
@AC97_BC_18BIT_ADC = common dso_local global i16 0, align 2
@AC97_BC_20BIT_ADC = common dso_local global i16 0, align 2
@.str.33 = private unnamed_addr constant [23 x i8] c"3D enhancement   : %s\0A\00", align 1
@snd_ac97_stereo_enhancements = common dso_local global i16* null, align 8
@.str.34 = private unnamed_addr constant [16 x i8] c"\0ACurrent setup\0A\00", align 1
@AC97_MIC = common dso_local global i64 0, align 8
@.str.35 = private unnamed_addr constant [28 x i8] c"Mic gain         : %s [%s]\0A\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"+20dB\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"+0dB\00", align 1
@AC97_GENERAL_PURPOSE = common dso_local global i64 0, align 8
@.str.38 = private unnamed_addr constant [158 x i8] c"POP path         : %s 3D\0ASim. stereo      : %s\0A3D enhancement   : %s\0ALoudness         : %s\0AMono output      : %s\0AMic select       : %s\0AADC/DAC loopback : %s\0A\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"post\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"pre\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"Mic\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"MIX\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"Mic2\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"Mic1\00", align 1
@AC97_EI_DRA = common dso_local global i32 0, align 4
@.str.47 = private unnamed_addr constant [23 x i8] c"Double rate slots: %s\0A\00", align 1
@AC97_EXTENDED_ID = common dso_local global i64 0, align 8
@.str.48 = private unnamed_addr constant [59 x i8] c"Extended ID      : codec=%i rev=%i%s%s%s%s DSA=%i%s%s%s%s\0A\00", align 1
@AC97_EI_ADDR_MASK = common dso_local global i16 0, align 2
@AC97_EI_ADDR_SHIFT = common dso_local global i16 0, align 2
@AC97_EI_REV_SHIFT = common dso_local global i16 0, align 2
@AC97_EI_AMAP = common dso_local global i16 0, align 2
@.str.49 = private unnamed_addr constant [6 x i8] c" AMAP\00", align 1
@AC97_EI_LDAC = common dso_local global i16 0, align 2
@.str.50 = private unnamed_addr constant [6 x i8] c" LDAC\00", align 1
@AC97_EI_SDAC = common dso_local global i16 0, align 2
@.str.51 = private unnamed_addr constant [6 x i8] c" SDAC\00", align 1
@AC97_EI_CDAC = common dso_local global i16 0, align 2
@.str.52 = private unnamed_addr constant [6 x i8] c" CDAC\00", align 1
@AC97_EI_DACS_SLOT_MASK = common dso_local global i16 0, align 2
@AC97_EI_DACS_SLOT_SHIFT = common dso_local global i16 0, align 2
@AC97_EI_VRM = common dso_local global i16 0, align 2
@.str.53 = private unnamed_addr constant [5 x i8] c" VRM\00", align 1
@AC97_EI_SPDIF = common dso_local global i16 0, align 2
@.str.54 = private unnamed_addr constant [7 x i8] c" SPDIF\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c" DRA\00", align 1
@AC97_EI_VRA = common dso_local global i16 0, align 2
@.str.56 = private unnamed_addr constant [5 x i8] c" VRA\00", align 1
@AC97_EXTENDED_STATUS = common dso_local global i64 0, align 8
@.str.57 = private unnamed_addr constant [48 x i8] c"Extended status  :%s%s%s%s%s%s%s%s%s%s%s%s%s%s\0A\00", align 1
@AC97_EA_PRL = common dso_local global i16 0, align 2
@.str.58 = private unnamed_addr constant [5 x i8] c" PRL\00", align 1
@AC97_EA_PRK = common dso_local global i16 0, align 2
@.str.59 = private unnamed_addr constant [5 x i8] c" PRK\00", align 1
@AC97_EA_PRJ = common dso_local global i16 0, align 2
@.str.60 = private unnamed_addr constant [5 x i8] c" PRJ\00", align 1
@AC97_EA_PRI = common dso_local global i16 0, align 2
@.str.61 = private unnamed_addr constant [5 x i8] c" PRI\00", align 1
@AC97_EA_SPCV = common dso_local global i16 0, align 2
@.str.62 = private unnamed_addr constant [6 x i8] c" SPCV\00", align 1
@AC97_EA_MDAC = common dso_local global i16 0, align 2
@.str.63 = private unnamed_addr constant [6 x i8] c" MADC\00", align 1
@AC97_EA_LDAC = common dso_local global i16 0, align 2
@AC97_EA_SDAC = common dso_local global i16 0, align 2
@AC97_EA_CDAC = common dso_local global i16 0, align 2
@AC97_EA_SPSA_SLOT_MASK = common dso_local global i16 0, align 2
@AC97_EA_SPSA_SLOT_SHIFT = common dso_local global i16 0, align 2
@AC97_EA_VRM = common dso_local global i16 0, align 2
@AC97_EA_SPDIF = common dso_local global i16 0, align 2
@AC97_EA_DRA = common dso_local global i16 0, align 2
@AC97_EA_VRA = common dso_local global i16 0, align 2
@AC97_PCM_FRONT_DAC_RATE = common dso_local global i64 0, align 8
@.str.64 = private unnamed_addr constant [25 x i8] c"PCM front DAC    : %iHz\0A\00", align 1
@AC97_PCM_SURR_DAC_RATE = common dso_local global i64 0, align 8
@.str.65 = private unnamed_addr constant [25 x i8] c"PCM Surr DAC     : %iHz\0A\00", align 1
@AC97_PCM_LFE_DAC_RATE = common dso_local global i64 0, align 8
@.str.66 = private unnamed_addr constant [25 x i8] c"PCM LFE DAC      : %iHz\0A\00", align 1
@AC97_PCM_LR_ADC_RATE = common dso_local global i64 0, align 8
@.str.67 = private unnamed_addr constant [25 x i8] c"PCM ADC          : %iHz\0A\00", align 1
@AC97_PCM_MIC_ADC_RATE = common dso_local global i64 0, align 8
@.str.68 = private unnamed_addr constant [25 x i8] c"PCM MIC ADC      : %iHz\0A\00", align 1
@AC97_CS_SPDIF = common dso_local global i32 0, align 4
@AC97_ID_YMF743 = common dso_local global i32 0, align 4
@AC97_CSR_SPDIF = common dso_local global i64 0, align 8
@AC97_YMF7X3_DIT_CTRL = common dso_local global i64 0, align 8
@AC97_SPDIF = common dso_local global i64 0, align 8
@.str.69 = private unnamed_addr constant [62 x i8] c"SPDIF Control    :%s%s%s%s Category=0x%x Generation=%i%s%s%s\0A\00", align 1
@AC97_SC_PRO = common dso_local global i16 0, align 2
@.str.70 = private unnamed_addr constant [5 x i8] c" PRO\00", align 1
@.str.71 = private unnamed_addr constant [10 x i8] c" Consumer\00", align 1
@AC97_SC_NAUDIO = common dso_local global i16 0, align 2
@.str.72 = private unnamed_addr constant [11 x i8] c" Non-audio\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c" PCM\00", align 1
@AC97_SC_COPY = common dso_local global i16 0, align 2
@.str.74 = private unnamed_addr constant [11 x i8] c" Copyright\00", align 1
@AC97_SC_PRE = common dso_local global i16 0, align 2
@.str.75 = private unnamed_addr constant [14 x i8] c" Preemph50/15\00", align 1
@AC97_SC_CC_MASK = common dso_local global i16 0, align 2
@AC97_SC_CC_SHIFT = common dso_local global i16 0, align 2
@AC97_SC_L = common dso_local global i16 0, align 2
@AC97_SC_SPSR_MASK = common dso_local global i16 0, align 2
@AC97_SC_SPSR_SHIFT = common dso_local global i16 0, align 2
@AC97_SC_DRS = common dso_local global i16 0, align 2
@.str.76 = private unnamed_addr constant [10 x i8] c" Validity\00", align 1
@.str.77 = private unnamed_addr constant [5 x i8] c" DRS\00", align 1
@AC97_SC_V = common dso_local global i16 0, align 2
@.str.78 = private unnamed_addr constant [9 x i8] c" Enabled\00", align 1
@AC97_ALC650_CLOCK = common dso_local global i64 0, align 8
@AC97_ALC650_SPDIF_INPUT_STATUS2 = common dso_local global i64 0, align 8
@AC97_ALC650_CLOCK_LOCK = common dso_local global i16 0, align 2
@AC97_ALC650_SPDIF_INPUT_STATUS1 = common dso_local global i64 0, align 8
@.str.79 = private unnamed_addr constant [55 x i8] c"SPDIF In Status  :%s%s%s%s Category=0x%x Generation=%i\00", align 1
@AC97_ALC650_PRO = common dso_local global i16 0, align 2
@AC97_ALC650_NAUDIO = common dso_local global i16 0, align 2
@AC97_ALC650_COPY = common dso_local global i16 0, align 2
@AC97_ALC650_PRE = common dso_local global i16 0, align 2
@AC97_ALC650_CC_MASK = common dso_local global i16 0, align 2
@AC97_ALC650_CC_SHIFT = common dso_local global i16 0, align 2
@AC97_ALC650_L = common dso_local global i16 0, align 2
@.str.80 = private unnamed_addr constant [20 x i8] c"%s Accuracy=%i%s%s\0A\00", align 1
@AC97_ALC650_SPSR_MASK = common dso_local global i16 0, align 2
@AC97_ALC650_SPSR_SHIFT = common dso_local global i16 0, align 2
@AC97_ALC650_CLOCK_ACCURACY = common dso_local global i16 0, align 2
@AC97_ALC650_CLOCK_SHIFT = common dso_local global i16 0, align 2
@.str.81 = private unnamed_addr constant [8 x i8] c" Locked\00", align 1
@.str.82 = private unnamed_addr constant [10 x i8] c" Unlocked\00", align 1
@AC97_ALC650_V = common dso_local global i16 0, align 2
@.str.83 = private unnamed_addr constant [11 x i8] c" Validity?\00", align 1
@.str.84 = private unnamed_addr constant [31 x i8] c"SPDIF In Status  : Not Locked\0A\00", align 1
@AC97_EXTENDED_MID = common dso_local global i64 0, align 8
@.str.85 = private unnamed_addr constant [39 x i8] c"Extended modem ID: codec=%i%s%s%s%s%s\0A\00", align 1
@AC97_MEI_ADDR_MASK = common dso_local global i16 0, align 2
@AC97_MEI_ADDR_SHIFT = common dso_local global i16 0, align 2
@AC97_MEI_CID2 = common dso_local global i16 0, align 2
@.str.86 = private unnamed_addr constant [6 x i8] c" CID2\00", align 1
@AC97_MEI_CID1 = common dso_local global i16 0, align 2
@.str.87 = private unnamed_addr constant [6 x i8] c" CID1\00", align 1
@AC97_MEI_HANDSET = common dso_local global i16 0, align 2
@.str.88 = private unnamed_addr constant [6 x i8] c" HSET\00", align 1
@AC97_MEI_LINE2 = common dso_local global i16 0, align 2
@.str.89 = private unnamed_addr constant [6 x i8] c" LIN2\00", align 1
@AC97_MEI_LINE1 = common dso_local global i16 0, align 2
@.str.90 = private unnamed_addr constant [6 x i8] c" LIN1\00", align 1
@AC97_EXTENDED_MSTATUS = common dso_local global i64 0, align 8
@.str.91 = private unnamed_addr constant [52 x i8] c"Modem status     :%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s\0A\00", align 1
@AC97_MEA_GPIO = common dso_local global i16 0, align 2
@.str.92 = private unnamed_addr constant [6 x i8] c" GPIO\00", align 1
@AC97_MEA_MREF = common dso_local global i16 0, align 2
@.str.93 = private unnamed_addr constant [6 x i8] c" MREF\00", align 1
@AC97_MEA_ADC1 = common dso_local global i16 0, align 2
@.str.94 = private unnamed_addr constant [6 x i8] c" ADC1\00", align 1
@AC97_MEA_DAC1 = common dso_local global i16 0, align 2
@.str.95 = private unnamed_addr constant [6 x i8] c" DAC1\00", align 1
@AC97_MEA_ADC2 = common dso_local global i16 0, align 2
@.str.96 = private unnamed_addr constant [6 x i8] c" ADC2\00", align 1
@AC97_MEA_DAC2 = common dso_local global i16 0, align 2
@.str.97 = private unnamed_addr constant [6 x i8] c" DAC2\00", align 1
@AC97_MEA_HADC = common dso_local global i16 0, align 2
@.str.98 = private unnamed_addr constant [6 x i8] c" HADC\00", align 1
@AC97_MEA_HDAC = common dso_local global i16 0, align 2
@.str.99 = private unnamed_addr constant [6 x i8] c" HDAC\00", align 1
@AC97_MEA_PRA = common dso_local global i16 0, align 2
@.str.100 = private unnamed_addr constant [11 x i8] c" PRA(GPIO)\00", align 1
@AC97_MEA_PRB = common dso_local global i16 0, align 2
@.str.101 = private unnamed_addr constant [10 x i8] c" PRB(res)\00", align 1
@AC97_MEA_PRC = common dso_local global i16 0, align 2
@.str.102 = private unnamed_addr constant [11 x i8] c" PRC(ADC1)\00", align 1
@AC97_MEA_PRD = common dso_local global i16 0, align 2
@.str.103 = private unnamed_addr constant [11 x i8] c" PRD(DAC1)\00", align 1
@AC97_MEA_PRE = common dso_local global i16 0, align 2
@.str.104 = private unnamed_addr constant [11 x i8] c" PRE(ADC2)\00", align 1
@AC97_MEA_PRF = common dso_local global i16 0, align 2
@.str.105 = private unnamed_addr constant [11 x i8] c" PRF(DAC2)\00", align 1
@AC97_MEA_PRG = common dso_local global i16 0, align 2
@.str.106 = private unnamed_addr constant [11 x i8] c" PRG(HADC)\00", align 1
@AC97_MEA_PRH = common dso_local global i16 0, align 2
@.str.107 = private unnamed_addr constant [11 x i8] c" PRH(HDAC)\00", align 1
@AC97_LINE1_RATE = common dso_local global i64 0, align 8
@.str.108 = private unnamed_addr constant [25 x i8] c"Line1 rate       : %iHz\0A\00", align 1
@AC97_LINE2_RATE = common dso_local global i64 0, align 8
@.str.109 = private unnamed_addr constant [25 x i8] c"Line2 rate       : %iHz\0A\00", align 1
@AC97_HANDSET_RATE = common dso_local global i64 0, align 8
@.str.110 = private unnamed_addr constant [25 x i8] c"Headset rate     : %iHz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ac97*, %struct.snd_info_buffer*, i32)* @snd_ac97_proc_read_main to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_ac97_proc_read_main(%struct.snd_ac97* %0, %struct.snd_info_buffer* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_ac97*, align 8
  %5 = alloca %struct.snd_info_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [64 x i8], align 16
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  store %struct.snd_ac97* %0, %struct.snd_ac97** %4, align 8
  store %struct.snd_info_buffer* %1, %struct.snd_info_buffer** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %13 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %16 = call i32 @snd_ac97_get_name(i32* null, i32 %14, i8* %15, i32 0)
  %17 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %18 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %19 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %18, i32 0, i32 9
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %22 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %21, i32 0, i32 8
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %26 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %17, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i32 %20, i32 %23, i32 %24, i8* %25)
  %27 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %28 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @AC97_SCAP_AUDIO, align 4
  %31 = and i32 %29, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %3
  br label %993

34:                                               ; preds = %3
  %35 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %36 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %37 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %36, i32 0, i32 2
  %38 = load i16, i16* %37, align 8
  %39 = zext i16 %38 to i32
  %40 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %35, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i32 %39)
  %41 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %42 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %43 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %42, i32 0, i32 3
  %44 = load i16, i16* %43, align 2
  %45 = zext i16 %44 to i32
  %46 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %41, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0), i32 %45)
  %47 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %48 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %49 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %48, i32 0, i32 4
  %50 = load i16, i16* %49, align 4
  %51 = zext i16 %50 to i32
  %52 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %47, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i32 %51)
  %53 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %54 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %53, i32 0, i32 5
  %55 = load i16, i16* %54, align 2
  %56 = zext i16 %55 to i32
  %57 = load i16, i16* @AC97_EI_REV_MASK, align 2
  %58 = zext i16 %57 to i32
  %59 = and i32 %56, %58
  %60 = load i16, i16* @AC97_EI_REV_23, align 2
  %61 = zext i16 %60 to i32
  %62 = icmp sge i32 %59, %61
  br i1 %62, label %63, label %108

63:                                               ; preds = %34
  %64 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %65 = load i64, i64* @AC97_INT_PAGING, align 8
  %66 = call i32 @snd_ac97_read(%struct.snd_ac97* %64, i64 %65)
  %67 = trunc i32 %66 to i16
  store i16 %67, i16* %8, align 2
  %68 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %69 = load i64, i64* @AC97_INT_PAGING, align 8
  %70 = load i16, i16* @AC97_PAGE_MASK, align 2
  %71 = load i16, i16* @AC97_PAGE_1, align 2
  %72 = call i32 @snd_ac97_update_bits(%struct.snd_ac97* %68, i64 %69, i16 zeroext %70, i16 zeroext %71)
  %73 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %74 = load i64, i64* @AC97_CODEC_CLASS_REV, align 8
  %75 = call i32 @snd_ac97_read(%struct.snd_ac97* %73, i64 %74)
  %76 = trunc i32 %75 to i16
  store i16 %76, i16* %9, align 2
  %77 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %78 = load i16, i16* %9, align 2
  %79 = zext i16 %78 to i32
  %80 = and i32 %79, 255
  %81 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %77, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0), i32 %80)
  %82 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %83 = load i16, i16* %9, align 2
  %84 = zext i16 %83 to i32
  %85 = ashr i32 %84, 8
  %86 = and i32 %85, 31
  %87 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %82, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0), i32 %86)
  %88 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %89 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %90 = load i64, i64* @AC97_PCI_SVID, align 8
  %91 = call i32 @snd_ac97_read(%struct.snd_ac97* %89, i64 %90)
  %92 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %88, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i64 0, i64 0), i32 %91)
  %93 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %94 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %95 = load i64, i64* @AC97_PCI_SID, align 8
  %96 = call i32 @snd_ac97_read(%struct.snd_ac97* %94, i64 %95)
  %97 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %93, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i64 0, i64 0), i32 %96)
  %98 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %99 = load i64, i64* @AC97_INT_PAGING, align 8
  %100 = load i16, i16* @AC97_PAGE_MASK, align 2
  %101 = load i16, i16* %8, align 2
  %102 = zext i16 %101 to i32
  %103 = load i16, i16* @AC97_PAGE_MASK, align 2
  %104 = zext i16 %103 to i32
  %105 = and i32 %102, %104
  %106 = trunc i32 %105 to i16
  %107 = call i32 @snd_ac97_update_bits(%struct.snd_ac97* %98, i64 %99, i16 zeroext %100, i16 zeroext %106)
  br label %108

108:                                              ; preds = %63, %34
  %109 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %110 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %109, i32 0, i32 6
  %111 = load i16, i16* %110, align 8
  store i16 %111, i16* %8, align 2
  %112 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %113 = load i16, i16* %8, align 2
  %114 = zext i16 %113 to i32
  %115 = load i16, i16* @AC97_BC_DEDICATED_MIC, align 2
  %116 = zext i16 %115 to i32
  %117 = and i32 %114, %116
  %118 = icmp ne i32 %117, 0
  %119 = zext i1 %118 to i64
  %120 = select i1 %118, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0)
  %121 = load i16, i16* %8, align 2
  %122 = zext i16 %121 to i32
  %123 = load i16, i16* @AC97_BC_RESERVED1, align 2
  %124 = zext i16 %123 to i32
  %125 = and i32 %122, %124
  %126 = icmp ne i32 %125, 0
  %127 = zext i1 %126 to i64
  %128 = select i1 %126, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0)
  %129 = load i16, i16* %8, align 2
  %130 = zext i16 %129 to i32
  %131 = load i16, i16* @AC97_BC_BASS_TREBLE, align 2
  %132 = zext i16 %131 to i32
  %133 = and i32 %130, %132
  %134 = icmp ne i32 %133, 0
  %135 = zext i1 %134 to i64
  %136 = select i1 %134, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0)
  %137 = load i16, i16* %8, align 2
  %138 = zext i16 %137 to i32
  %139 = load i16, i16* @AC97_BC_SIM_STEREO, align 2
  %140 = zext i16 %139 to i32
  %141 = and i32 %138, %140
  %142 = icmp ne i32 %141, 0
  %143 = zext i1 %142 to i64
  %144 = select i1 %142, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0)
  %145 = load i16, i16* %8, align 2
  %146 = zext i16 %145 to i32
  %147 = load i16, i16* @AC97_BC_HEADPHONE, align 2
  %148 = zext i16 %147 to i32
  %149 = and i32 %146, %148
  %150 = icmp ne i32 %149, 0
  %151 = zext i1 %150 to i64
  %152 = select i1 %150, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0)
  %153 = load i16, i16* %8, align 2
  %154 = zext i16 %153 to i32
  %155 = load i16, i16* @AC97_BC_LOUDNESS, align 2
  %156 = zext i16 %155 to i32
  %157 = and i32 %154, %156
  %158 = icmp ne i32 %157, 0
  %159 = zext i1 %158 to i64
  %160 = select i1 %158, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0)
  %161 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %112, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.19, i64 0, i64 0), i8* %120, i8* %128, i8* %136, i8* %144, i8* %152, i8* %160)
  %162 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %163 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %162, i32 0, i32 6
  %164 = load i16, i16* %163, align 8
  %165 = zext i16 %164 to i32
  %166 = load i16, i16* @AC97_BC_DAC_MASK, align 2
  %167 = zext i16 %166 to i32
  %168 = and i32 %165, %167
  %169 = trunc i32 %168 to i16
  store i16 %169, i16* %9, align 2
  %170 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %171 = load i16, i16* %9, align 2
  %172 = zext i16 %171 to i32
  %173 = load i16, i16* @AC97_BC_16BIT_DAC, align 2
  %174 = zext i16 %173 to i32
  %175 = icmp eq i32 %172, %174
  %176 = zext i1 %175 to i64
  %177 = select i1 %175, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0)
  %178 = load i16, i16* %9, align 2
  %179 = zext i16 %178 to i32
  %180 = load i16, i16* @AC97_BC_18BIT_DAC, align 2
  %181 = zext i16 %180 to i32
  %182 = icmp eq i32 %179, %181
  %183 = zext i1 %182 to i64
  %184 = select i1 %182, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0)
  %185 = load i16, i16* %9, align 2
  %186 = zext i16 %185 to i32
  %187 = load i16, i16* @AC97_BC_20BIT_DAC, align 2
  %188 = zext i16 %187 to i32
  %189 = icmp eq i32 %186, %188
  %190 = zext i1 %189 to i64
  %191 = select i1 %189, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0)
  %192 = load i16, i16* %9, align 2
  %193 = zext i16 %192 to i32
  %194 = load i16, i16* @AC97_BC_DAC_MASK, align 2
  %195 = zext i16 %194 to i32
  %196 = icmp eq i32 %193, %195
  %197 = zext i1 %196 to i64
  %198 = select i1 %196, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0)
  %199 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %170, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.27, i64 0, i64 0), i8* %177, i8* %184, i8* %191, i8* %198)
  %200 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %201 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %200, i32 0, i32 6
  %202 = load i16, i16* %201, align 8
  %203 = zext i16 %202 to i32
  %204 = load i16, i16* @AC97_BC_ADC_MASK, align 2
  %205 = zext i16 %204 to i32
  %206 = and i32 %203, %205
  %207 = trunc i32 %206 to i16
  store i16 %207, i16* %9, align 2
  %208 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %209 = load i16, i16* %9, align 2
  %210 = zext i16 %209 to i32
  %211 = load i16, i16* @AC97_BC_16BIT_ADC, align 2
  %212 = zext i16 %211 to i32
  %213 = icmp eq i32 %210, %212
  %214 = zext i1 %213 to i64
  %215 = select i1 %213, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0)
  %216 = load i16, i16* %9, align 2
  %217 = zext i16 %216 to i32
  %218 = load i16, i16* @AC97_BC_18BIT_ADC, align 2
  %219 = zext i16 %218 to i32
  %220 = icmp eq i32 %217, %219
  %221 = zext i1 %220 to i64
  %222 = select i1 %220, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0)
  %223 = load i16, i16* %9, align 2
  %224 = zext i16 %223 to i32
  %225 = load i16, i16* @AC97_BC_20BIT_ADC, align 2
  %226 = zext i16 %225 to i32
  %227 = icmp eq i32 %224, %226
  %228 = zext i1 %227 to i64
  %229 = select i1 %227, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0)
  %230 = load i16, i16* %9, align 2
  %231 = zext i16 %230 to i32
  %232 = load i16, i16* @AC97_BC_ADC_MASK, align 2
  %233 = zext i16 %232 to i32
  %234 = icmp eq i32 %231, %233
  %235 = zext i1 %234 to i64
  %236 = select i1 %234, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0)
  %237 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %208, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.32, i64 0, i64 0), i8* %215, i8* %222, i8* %229, i8* %236)
  %238 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %239 = load i16*, i16** @snd_ac97_stereo_enhancements, align 8
  %240 = load i16, i16* %8, align 2
  %241 = zext i16 %240 to i32
  %242 = ashr i32 %241, 10
  %243 = and i32 %242, 31
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i16, i16* %239, i64 %244
  %246 = load i16, i16* %245, align 2
  %247 = zext i16 %246 to i32
  %248 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %238, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.33, i64 0, i64 0), i32 %247)
  %249 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %250 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %249, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i64 0, i64 0))
  %251 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %252 = load i64, i64* @AC97_MIC, align 8
  %253 = call i32 @snd_ac97_read(%struct.snd_ac97* %251, i64 %252)
  %254 = trunc i32 %253 to i16
  store i16 %254, i16* %8, align 2
  %255 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %256 = load i16, i16* %8, align 2
  %257 = zext i16 %256 to i32
  %258 = and i32 %257, 64
  %259 = icmp ne i32 %258, 0
  %260 = zext i1 %259 to i64
  %261 = select i1 %259, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i64 0, i64 0)
  %262 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %263 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %262, i32 0, i32 7
  %264 = load i32*, i32** %263, align 8
  %265 = load i64, i64* @AC97_MIC, align 8
  %266 = getelementptr inbounds i32, i32* %264, i64 %265
  %267 = load i32, i32* %266, align 4
  %268 = and i32 %267, 64
  %269 = icmp ne i32 %268, 0
  %270 = zext i1 %269 to i64
  %271 = select i1 %269, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i64 0, i64 0)
  %272 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %255, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.35, i64 0, i64 0), i8* %261, i8* %271)
  %273 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %274 = load i64, i64* @AC97_GENERAL_PURPOSE, align 8
  %275 = call i32 @snd_ac97_read(%struct.snd_ac97* %273, i64 %274)
  %276 = trunc i32 %275 to i16
  store i16 %276, i16* %8, align 2
  %277 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %278 = load i16, i16* %8, align 2
  %279 = zext i16 %278 to i32
  %280 = and i32 %279, 32768
  %281 = icmp ne i32 %280, 0
  %282 = zext i1 %281 to i64
  %283 = select i1 %281, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i64 0, i64 0)
  %284 = load i16, i16* %8, align 2
  %285 = zext i16 %284 to i32
  %286 = and i32 %285, 16384
  %287 = icmp ne i32 %286, 0
  %288 = zext i1 %287 to i64
  %289 = select i1 %287, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i64 0, i64 0)
  %290 = load i16, i16* %8, align 2
  %291 = zext i16 %290 to i32
  %292 = and i32 %291, 8192
  %293 = icmp ne i32 %292, 0
  %294 = zext i1 %293 to i64
  %295 = select i1 %293, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i64 0, i64 0)
  %296 = load i16, i16* %8, align 2
  %297 = zext i16 %296 to i32
  %298 = and i32 %297, 4096
  %299 = icmp ne i32 %298, 0
  %300 = zext i1 %299 to i64
  %301 = select i1 %299, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i64 0, i64 0)
  %302 = load i16, i16* %8, align 2
  %303 = zext i16 %302 to i32
  %304 = and i32 %303, 512
  %305 = icmp ne i32 %304, 0
  %306 = zext i1 %305 to i64
  %307 = select i1 %305, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i64 0, i64 0)
  %308 = load i16, i16* %8, align 2
  %309 = zext i16 %308 to i32
  %310 = and i32 %309, 256
  %311 = icmp ne i32 %310, 0
  %312 = zext i1 %311 to i64
  %313 = select i1 %311, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i64 0, i64 0)
  %314 = load i16, i16* %8, align 2
  %315 = zext i16 %314 to i32
  %316 = and i32 %315, 128
  %317 = icmp ne i32 %316, 0
  %318 = zext i1 %317 to i64
  %319 = select i1 %317, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i64 0, i64 0)
  %320 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %277, i8* getelementptr inbounds ([158 x i8], [158 x i8]* @.str.38, i64 0, i64 0), i8* %283, i8* %289, i8* %295, i8* %301, i8* %307, i8* %313, i8* %319)
  %321 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %322 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %321, i32 0, i32 5
  %323 = load i16, i16* %322, align 2
  %324 = zext i16 %323 to i32
  %325 = load i32, i32* @AC97_EI_DRA, align 4
  %326 = and i32 %324, %325
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %338

328:                                              ; preds = %108
  %329 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %330 = load i16, i16* %8, align 2
  %331 = zext i16 %330 to i32
  %332 = ashr i32 %331, 10
  %333 = and i32 %332, 3
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds [4 x i8*], [4 x i8*]* @snd_ac97_proc_read_main.double_rate_slots, i64 0, i64 %334
  %336 = load i8*, i8** %335, align 8
  %337 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %329, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.47, i64 0, i64 0), i8* %336)
  br label %338

338:                                              ; preds = %328, %108
  %339 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %340 = load i64, i64* @AC97_EXTENDED_ID, align 8
  %341 = call i32 @snd_ac97_read(%struct.snd_ac97* %339, i64 %340)
  %342 = trunc i32 %341 to i16
  store i16 %342, i16* %10, align 2
  %343 = load i16, i16* %10, align 2
  %344 = zext i16 %343 to i32
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %346, label %347

346:                                              ; preds = %338
  br label %993

347:                                              ; preds = %338
  %348 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %349 = load i16, i16* %10, align 2
  %350 = zext i16 %349 to i32
  %351 = load i16, i16* @AC97_EI_ADDR_MASK, align 2
  %352 = zext i16 %351 to i32
  %353 = and i32 %350, %352
  %354 = load i16, i16* @AC97_EI_ADDR_SHIFT, align 2
  %355 = zext i16 %354 to i32
  %356 = ashr i32 %353, %355
  %357 = load i16, i16* %10, align 2
  %358 = zext i16 %357 to i32
  %359 = load i16, i16* @AC97_EI_REV_MASK, align 2
  %360 = zext i16 %359 to i32
  %361 = and i32 %358, %360
  %362 = load i16, i16* @AC97_EI_REV_SHIFT, align 2
  %363 = zext i16 %362 to i32
  %364 = ashr i32 %361, %363
  %365 = load i16, i16* %10, align 2
  %366 = zext i16 %365 to i32
  %367 = load i16, i16* @AC97_EI_AMAP, align 2
  %368 = zext i16 %367 to i32
  %369 = and i32 %366, %368
  %370 = icmp ne i32 %369, 0
  %371 = zext i1 %370 to i64
  %372 = select i1 %370, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0)
  %373 = load i16, i16* %10, align 2
  %374 = zext i16 %373 to i32
  %375 = load i16, i16* @AC97_EI_LDAC, align 2
  %376 = zext i16 %375 to i32
  %377 = and i32 %374, %376
  %378 = icmp ne i32 %377, 0
  %379 = zext i1 %378 to i64
  %380 = select i1 %378, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0)
  %381 = load i16, i16* %10, align 2
  %382 = zext i16 %381 to i32
  %383 = load i16, i16* @AC97_EI_SDAC, align 2
  %384 = zext i16 %383 to i32
  %385 = and i32 %382, %384
  %386 = icmp ne i32 %385, 0
  %387 = zext i1 %386 to i64
  %388 = select i1 %386, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.51, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0)
  %389 = load i16, i16* %10, align 2
  %390 = zext i16 %389 to i32
  %391 = load i16, i16* @AC97_EI_CDAC, align 2
  %392 = zext i16 %391 to i32
  %393 = and i32 %390, %392
  %394 = icmp ne i32 %393, 0
  %395 = zext i1 %394 to i64
  %396 = select i1 %394, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0)
  %397 = load i16, i16* %10, align 2
  %398 = zext i16 %397 to i32
  %399 = load i16, i16* @AC97_EI_DACS_SLOT_MASK, align 2
  %400 = zext i16 %399 to i32
  %401 = and i32 %398, %400
  %402 = load i16, i16* @AC97_EI_DACS_SLOT_SHIFT, align 2
  %403 = zext i16 %402 to i32
  %404 = ashr i32 %401, %403
  %405 = load i16, i16* %10, align 2
  %406 = zext i16 %405 to i32
  %407 = load i16, i16* @AC97_EI_VRM, align 2
  %408 = zext i16 %407 to i32
  %409 = and i32 %406, %408
  %410 = icmp ne i32 %409, 0
  %411 = zext i1 %410 to i64
  %412 = select i1 %410, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0)
  %413 = load i16, i16* %10, align 2
  %414 = zext i16 %413 to i32
  %415 = load i16, i16* @AC97_EI_SPDIF, align 2
  %416 = zext i16 %415 to i32
  %417 = and i32 %414, %416
  %418 = icmp ne i32 %417, 0
  %419 = zext i1 %418 to i64
  %420 = select i1 %418, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0)
  %421 = load i16, i16* %10, align 2
  %422 = zext i16 %421 to i32
  %423 = load i32, i32* @AC97_EI_DRA, align 4
  %424 = and i32 %422, %423
  %425 = icmp ne i32 %424, 0
  %426 = zext i1 %425 to i64
  %427 = select i1 %425, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0)
  %428 = load i16, i16* %10, align 2
  %429 = zext i16 %428 to i32
  %430 = load i16, i16* @AC97_EI_VRA, align 2
  %431 = zext i16 %430 to i32
  %432 = and i32 %429, %431
  %433 = icmp ne i32 %432, 0
  %434 = zext i1 %433 to i64
  %435 = select i1 %433, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0)
  %436 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %348, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.48, i64 0, i64 0), i32 %356, i32 %364, i8* %372, i8* %380, i8* %388, i8* %396, i32 %404, i8* %412, i8* %420, i8* %427, i8* %435)
  %437 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %438 = load i64, i64* @AC97_EXTENDED_STATUS, align 8
  %439 = call i32 @snd_ac97_read(%struct.snd_ac97* %437, i64 %438)
  %440 = trunc i32 %439 to i16
  store i16 %440, i16* %8, align 2
  %441 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %442 = load i16, i16* %8, align 2
  %443 = zext i16 %442 to i32
  %444 = load i16, i16* @AC97_EA_PRL, align 2
  %445 = zext i16 %444 to i32
  %446 = and i32 %443, %445
  %447 = icmp ne i32 %446, 0
  %448 = zext i1 %447 to i64
  %449 = select i1 %447, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0)
  %450 = load i16, i16* %8, align 2
  %451 = zext i16 %450 to i32
  %452 = load i16, i16* @AC97_EA_PRK, align 2
  %453 = zext i16 %452 to i32
  %454 = and i32 %451, %453
  %455 = icmp ne i32 %454, 0
  %456 = zext i1 %455 to i64
  %457 = select i1 %455, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0)
  %458 = load i16, i16* %8, align 2
  %459 = zext i16 %458 to i32
  %460 = load i16, i16* @AC97_EA_PRJ, align 2
  %461 = zext i16 %460 to i32
  %462 = and i32 %459, %461
  %463 = icmp ne i32 %462, 0
  %464 = zext i1 %463 to i64
  %465 = select i1 %463, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0)
  %466 = load i16, i16* %8, align 2
  %467 = zext i16 %466 to i32
  %468 = load i16, i16* @AC97_EA_PRI, align 2
  %469 = zext i16 %468 to i32
  %470 = and i32 %467, %469
  %471 = icmp ne i32 %470, 0
  %472 = zext i1 %471 to i64
  %473 = select i1 %471, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0)
  %474 = load i16, i16* %8, align 2
  %475 = zext i16 %474 to i32
  %476 = load i16, i16* @AC97_EA_SPCV, align 2
  %477 = zext i16 %476 to i32
  %478 = and i32 %475, %477
  %479 = icmp ne i32 %478, 0
  %480 = zext i1 %479 to i64
  %481 = select i1 %479, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0)
  %482 = load i16, i16* %8, align 2
  %483 = zext i16 %482 to i32
  %484 = load i16, i16* @AC97_EA_MDAC, align 2
  %485 = zext i16 %484 to i32
  %486 = and i32 %483, %485
  %487 = icmp ne i32 %486, 0
  %488 = zext i1 %487 to i64
  %489 = select i1 %487, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.63, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0)
  %490 = load i16, i16* %8, align 2
  %491 = zext i16 %490 to i32
  %492 = load i16, i16* @AC97_EA_LDAC, align 2
  %493 = zext i16 %492 to i32
  %494 = and i32 %491, %493
  %495 = icmp ne i32 %494, 0
  %496 = zext i1 %495 to i64
  %497 = select i1 %495, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0)
  %498 = load i16, i16* %8, align 2
  %499 = zext i16 %498 to i32
  %500 = load i16, i16* @AC97_EA_SDAC, align 2
  %501 = zext i16 %500 to i32
  %502 = and i32 %499, %501
  %503 = icmp ne i32 %502, 0
  %504 = zext i1 %503 to i64
  %505 = select i1 %503, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.51, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0)
  %506 = load i16, i16* %8, align 2
  %507 = zext i16 %506 to i32
  %508 = load i16, i16* @AC97_EA_CDAC, align 2
  %509 = zext i16 %508 to i32
  %510 = and i32 %507, %509
  %511 = icmp ne i32 %510, 0
  %512 = zext i1 %511 to i64
  %513 = select i1 %511, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0)
  %514 = load i16, i16* %10, align 2
  %515 = zext i16 %514 to i32
  %516 = load i16, i16* @AC97_EI_SPDIF, align 2
  %517 = zext i16 %516 to i32
  %518 = and i32 %515, %517
  %519 = icmp ne i32 %518, 0
  br i1 %519, label %520, label %532

520:                                              ; preds = %347
  %521 = load i16, i16* %8, align 2
  %522 = zext i16 %521 to i32
  %523 = load i16, i16* @AC97_EA_SPSA_SLOT_MASK, align 2
  %524 = zext i16 %523 to i32
  %525 = and i32 %522, %524
  %526 = load i16, i16* @AC97_EA_SPSA_SLOT_SHIFT, align 2
  %527 = zext i16 %526 to i32
  %528 = ashr i32 %525, %527
  %529 = sext i32 %528 to i64
  %530 = getelementptr inbounds [4 x i8*], [4 x i8*]* @snd_ac97_proc_read_main.spdif_slots, i64 0, i64 %529
  %531 = load i8*, i8** %530, align 8
  br label %533

532:                                              ; preds = %347
  br label %533

533:                                              ; preds = %532, %520
  %534 = phi i8* [ %531, %520 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0), %532 ]
  %535 = load i16, i16* %8, align 2
  %536 = zext i16 %535 to i32
  %537 = load i16, i16* @AC97_EA_VRM, align 2
  %538 = zext i16 %537 to i32
  %539 = and i32 %536, %538
  %540 = icmp ne i32 %539, 0
  %541 = zext i1 %540 to i64
  %542 = select i1 %540, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0)
  %543 = load i16, i16* %8, align 2
  %544 = zext i16 %543 to i32
  %545 = load i16, i16* @AC97_EA_SPDIF, align 2
  %546 = zext i16 %545 to i32
  %547 = and i32 %544, %546
  %548 = icmp ne i32 %547, 0
  %549 = zext i1 %548 to i64
  %550 = select i1 %548, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0)
  %551 = load i16, i16* %8, align 2
  %552 = zext i16 %551 to i32
  %553 = load i16, i16* @AC97_EA_DRA, align 2
  %554 = zext i16 %553 to i32
  %555 = and i32 %552, %554
  %556 = icmp ne i32 %555, 0
  %557 = zext i1 %556 to i64
  %558 = select i1 %556, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0)
  %559 = load i16, i16* %8, align 2
  %560 = zext i16 %559 to i32
  %561 = load i16, i16* @AC97_EA_VRA, align 2
  %562 = zext i16 %561 to i32
  %563 = and i32 %560, %562
  %564 = icmp ne i32 %563, 0
  %565 = zext i1 %564 to i64
  %566 = select i1 %564, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0)
  %567 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %441, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.57, i64 0, i64 0), i8* %449, i8* %457, i8* %465, i8* %473, i8* %481, i8* %489, i8* %497, i8* %505, i8* %513, i8* %534, i8* %542, i8* %550, i8* %558, i8* %566)
  %568 = load i16, i16* %10, align 2
  %569 = zext i16 %568 to i32
  %570 = load i16, i16* @AC97_EI_VRA, align 2
  %571 = zext i16 %570 to i32
  %572 = and i32 %569, %571
  %573 = icmp ne i32 %572, 0
  br i1 %573, label %574, label %623

574:                                              ; preds = %533
  %575 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %576 = load i64, i64* @AC97_PCM_FRONT_DAC_RATE, align 8
  %577 = call i32 @snd_ac97_read(%struct.snd_ac97* %575, i64 %576)
  %578 = trunc i32 %577 to i16
  store i16 %578, i16* %8, align 2
  %579 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %580 = load i16, i16* %8, align 2
  %581 = zext i16 %580 to i32
  %582 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %579, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.64, i64 0, i64 0), i32 %581)
  %583 = load i16, i16* %10, align 2
  %584 = zext i16 %583 to i32
  %585 = load i16, i16* @AC97_EI_SDAC, align 2
  %586 = zext i16 %585 to i32
  %587 = and i32 %584, %586
  %588 = icmp ne i32 %587, 0
  br i1 %588, label %589, label %598

589:                                              ; preds = %574
  %590 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %591 = load i64, i64* @AC97_PCM_SURR_DAC_RATE, align 8
  %592 = call i32 @snd_ac97_read(%struct.snd_ac97* %590, i64 %591)
  %593 = trunc i32 %592 to i16
  store i16 %593, i16* %8, align 2
  %594 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %595 = load i16, i16* %8, align 2
  %596 = zext i16 %595 to i32
  %597 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %594, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.65, i64 0, i64 0), i32 %596)
  br label %598

598:                                              ; preds = %589, %574
  %599 = load i16, i16* %10, align 2
  %600 = zext i16 %599 to i32
  %601 = load i16, i16* @AC97_EI_LDAC, align 2
  %602 = zext i16 %601 to i32
  %603 = and i32 %600, %602
  %604 = icmp ne i32 %603, 0
  br i1 %604, label %605, label %614

605:                                              ; preds = %598
  %606 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %607 = load i64, i64* @AC97_PCM_LFE_DAC_RATE, align 8
  %608 = call i32 @snd_ac97_read(%struct.snd_ac97* %606, i64 %607)
  %609 = trunc i32 %608 to i16
  store i16 %609, i16* %8, align 2
  %610 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %611 = load i16, i16* %8, align 2
  %612 = zext i16 %611 to i32
  %613 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %610, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i64 0, i64 0), i32 %612)
  br label %614

614:                                              ; preds = %605, %598
  %615 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %616 = load i64, i64* @AC97_PCM_LR_ADC_RATE, align 8
  %617 = call i32 @snd_ac97_read(%struct.snd_ac97* %615, i64 %616)
  %618 = trunc i32 %617 to i16
  store i16 %618, i16* %8, align 2
  %619 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %620 = load i16, i16* %8, align 2
  %621 = zext i16 %620 to i32
  %622 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %619, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.67, i64 0, i64 0), i32 %621)
  br label %623

623:                                              ; preds = %614, %533
  %624 = load i16, i16* %10, align 2
  %625 = zext i16 %624 to i32
  %626 = load i16, i16* @AC97_EI_VRM, align 2
  %627 = zext i16 %626 to i32
  %628 = and i32 %625, %627
  %629 = icmp ne i32 %628, 0
  br i1 %629, label %630, label %639

630:                                              ; preds = %623
  %631 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %632 = load i64, i64* @AC97_PCM_MIC_ADC_RATE, align 8
  %633 = call i32 @snd_ac97_read(%struct.snd_ac97* %631, i64 %632)
  %634 = trunc i32 %633 to i16
  store i16 %634, i16* %8, align 2
  %635 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %636 = load i16, i16* %8, align 2
  %637 = zext i16 %636 to i32
  %638 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %635, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.68, i64 0, i64 0), i32 %637)
  br label %639

639:                                              ; preds = %630, %623
  %640 = load i16, i16* %10, align 2
  %641 = zext i16 %640 to i32
  %642 = load i16, i16* @AC97_EI_SPDIF, align 2
  %643 = zext i16 %642 to i32
  %644 = and i32 %641, %643
  %645 = icmp ne i32 %644, 0
  br i1 %645, label %660, label %646

646:                                              ; preds = %639
  %647 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %648 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %647, i32 0, i32 4
  %649 = load i16, i16* %648, align 4
  %650 = zext i16 %649 to i32
  %651 = load i32, i32* @AC97_CS_SPDIF, align 4
  %652 = and i32 %650, %651
  %653 = icmp ne i32 %652, 0
  br i1 %653, label %660, label %654

654:                                              ; preds = %646
  %655 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %656 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %655, i32 0, i32 0
  %657 = load i32, i32* %656, align 8
  %658 = load i32, i32* @AC97_ID_YMF743, align 4
  %659 = icmp eq i32 %657, %658
  br i1 %659, label %660, label %958

660:                                              ; preds = %654, %646, %639
  %661 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %662 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %661, i32 0, i32 4
  %663 = load i16, i16* %662, align 4
  %664 = zext i16 %663 to i32
  %665 = load i32, i32* @AC97_CS_SPDIF, align 4
  %666 = and i32 %664, %665
  %667 = icmp ne i32 %666, 0
  br i1 %667, label %668, label %673

668:                                              ; preds = %660
  %669 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %670 = load i64, i64* @AC97_CSR_SPDIF, align 8
  %671 = call i32 @snd_ac97_read(%struct.snd_ac97* %669, i64 %670)
  %672 = trunc i32 %671 to i16
  store i16 %672, i16* %8, align 2
  br label %701

673:                                              ; preds = %660
  %674 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %675 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %674, i32 0, i32 0
  %676 = load i32, i32* %675, align 8
  %677 = load i32, i32* @AC97_ID_YMF743, align 4
  %678 = icmp eq i32 %676, %677
  br i1 %678, label %679, label %695

679:                                              ; preds = %673
  %680 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %681 = load i64, i64* @AC97_YMF7X3_DIT_CTRL, align 8
  %682 = call i32 @snd_ac97_read(%struct.snd_ac97* %680, i64 %681)
  %683 = trunc i32 %682 to i16
  store i16 %683, i16* %8, align 2
  %684 = load i16, i16* %8, align 2
  %685 = zext i16 %684 to i32
  %686 = and i32 %685, 65280
  %687 = ashr i32 %686, 4
  %688 = or i32 8192, %687
  %689 = load i16, i16* %8, align 2
  %690 = zext i16 %689 to i32
  %691 = and i32 %690, 56
  %692 = ashr i32 %691, 2
  %693 = or i32 %688, %692
  %694 = trunc i32 %693 to i16
  store i16 %694, i16* %8, align 2
  br label %700

695:                                              ; preds = %673
  %696 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %697 = load i64, i64* @AC97_SPDIF, align 8
  %698 = call i32 @snd_ac97_read(%struct.snd_ac97* %696, i64 %697)
  %699 = trunc i32 %698 to i16
  store i16 %699, i16* %8, align 2
  br label %700

700:                                              ; preds = %695, %679
  br label %701

701:                                              ; preds = %700, %668
  %702 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %703 = load i16, i16* %8, align 2
  %704 = zext i16 %703 to i32
  %705 = load i16, i16* @AC97_SC_PRO, align 2
  %706 = zext i16 %705 to i32
  %707 = and i32 %704, %706
  %708 = icmp ne i32 %707, 0
  %709 = zext i1 %708 to i64
  %710 = select i1 %708, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.71, i64 0, i64 0)
  %711 = load i16, i16* %8, align 2
  %712 = zext i16 %711 to i32
  %713 = load i16, i16* @AC97_SC_NAUDIO, align 2
  %714 = zext i16 %713 to i32
  %715 = and i32 %712, %714
  %716 = icmp ne i32 %715, 0
  %717 = zext i1 %716 to i64
  %718 = select i1 %716, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.72, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i64 0, i64 0)
  %719 = load i16, i16* %8, align 2
  %720 = zext i16 %719 to i32
  %721 = load i16, i16* @AC97_SC_COPY, align 2
  %722 = zext i16 %721 to i32
  %723 = and i32 %720, %722
  %724 = icmp ne i32 %723, 0
  %725 = zext i1 %724 to i64
  %726 = select i1 %724, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.74, i64 0, i64 0)
  %727 = load i16, i16* %8, align 2
  %728 = zext i16 %727 to i32
  %729 = load i16, i16* @AC97_SC_PRE, align 2
  %730 = zext i16 %729 to i32
  %731 = and i32 %728, %730
  %732 = icmp ne i32 %731, 0
  %733 = zext i1 %732 to i64
  %734 = select i1 %732, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.75, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0)
  %735 = load i16, i16* %8, align 2
  %736 = zext i16 %735 to i32
  %737 = load i16, i16* @AC97_SC_CC_MASK, align 2
  %738 = zext i16 %737 to i32
  %739 = and i32 %736, %738
  %740 = load i16, i16* @AC97_SC_CC_SHIFT, align 2
  %741 = zext i16 %740 to i32
  %742 = ashr i32 %739, %741
  %743 = load i16, i16* %8, align 2
  %744 = zext i16 %743 to i32
  %745 = load i16, i16* @AC97_SC_L, align 2
  %746 = zext i16 %745 to i32
  %747 = and i32 %744, %746
  %748 = ashr i32 %747, 11
  %749 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %750 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %749, i32 0, i32 4
  %751 = load i16, i16* %750, align 4
  %752 = zext i16 %751 to i32
  %753 = load i32, i32* @AC97_CS_SPDIF, align 4
  %754 = and i32 %752, %753
  %755 = icmp ne i32 %754, 0
  br i1 %755, label %756, label %768

756:                                              ; preds = %701
  %757 = load i16, i16* %8, align 2
  %758 = zext i16 %757 to i32
  %759 = load i16, i16* @AC97_SC_SPSR_MASK, align 2
  %760 = zext i16 %759 to i32
  %761 = and i32 %758, %760
  %762 = load i16, i16* @AC97_SC_SPSR_SHIFT, align 2
  %763 = zext i16 %762 to i32
  %764 = ashr i32 %761, %763
  %765 = sext i32 %764 to i64
  %766 = getelementptr inbounds [4 x i8*], [4 x i8*]* @snd_ac97_proc_read_main.spdif_rates_cs4205, i64 0, i64 %765
  %767 = load i8*, i8** %766, align 8
  br label %780

768:                                              ; preds = %701
  %769 = load i16, i16* %8, align 2
  %770 = zext i16 %769 to i32
  %771 = load i16, i16* @AC97_SC_SPSR_MASK, align 2
  %772 = zext i16 %771 to i32
  %773 = and i32 %770, %772
  %774 = load i16, i16* @AC97_SC_SPSR_SHIFT, align 2
  %775 = zext i16 %774 to i32
  %776 = ashr i32 %773, %775
  %777 = sext i32 %776 to i64
  %778 = getelementptr inbounds [4 x i8*], [4 x i8*]* @snd_ac97_proc_read_main.spdif_rates, i64 0, i64 %777
  %779 = load i8*, i8** %778, align 8
  br label %780

780:                                              ; preds = %768, %756
  %781 = phi i8* [ %767, %756 ], [ %779, %768 ]
  %782 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %783 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %782, i32 0, i32 4
  %784 = load i16, i16* %783, align 4
  %785 = zext i16 %784 to i32
  %786 = load i32, i32* @AC97_CS_SPDIF, align 4
  %787 = and i32 %785, %786
  %788 = icmp ne i32 %787, 0
  br i1 %788, label %789, label %798

789:                                              ; preds = %780
  %790 = load i16, i16* %8, align 2
  %791 = zext i16 %790 to i32
  %792 = load i16, i16* @AC97_SC_DRS, align 2
  %793 = zext i16 %792 to i32
  %794 = and i32 %791, %793
  %795 = icmp ne i32 %794, 0
  %796 = zext i1 %795 to i64
  %797 = select i1 %795, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.76, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0)
  br label %807

798:                                              ; preds = %780
  %799 = load i16, i16* %8, align 2
  %800 = zext i16 %799 to i32
  %801 = load i16, i16* @AC97_SC_DRS, align 2
  %802 = zext i16 %801 to i32
  %803 = and i32 %800, %802
  %804 = icmp ne i32 %803, 0
  %805 = zext i1 %804 to i64
  %806 = select i1 %804, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.77, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0)
  br label %807

807:                                              ; preds = %798, %789
  %808 = phi i8* [ %797, %789 ], [ %806, %798 ]
  %809 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %810 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %809, i32 0, i32 4
  %811 = load i16, i16* %810, align 4
  %812 = zext i16 %811 to i32
  %813 = load i32, i32* @AC97_CS_SPDIF, align 4
  %814 = and i32 %812, %813
  %815 = icmp ne i32 %814, 0
  br i1 %815, label %816, label %825

816:                                              ; preds = %807
  %817 = load i16, i16* %8, align 2
  %818 = zext i16 %817 to i32
  %819 = load i16, i16* @AC97_SC_V, align 2
  %820 = zext i16 %819 to i32
  %821 = and i32 %818, %820
  %822 = icmp ne i32 %821, 0
  %823 = zext i1 %822 to i64
  %824 = select i1 %822, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.78, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0)
  br label %834

825:                                              ; preds = %807
  %826 = load i16, i16* %8, align 2
  %827 = zext i16 %826 to i32
  %828 = load i16, i16* @AC97_SC_V, align 2
  %829 = zext i16 %828 to i32
  %830 = and i32 %827, %829
  %831 = icmp ne i32 %830, 0
  %832 = zext i1 %831 to i64
  %833 = select i1 %831, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.76, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0)
  br label %834

834:                                              ; preds = %825, %816
  %835 = phi i8* [ %824, %816 ], [ %833, %825 ]
  %836 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %702, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.69, i64 0, i64 0), i8* %710, i8* %718, i8* %726, i8* %734, i32 %742, i32 %748, i8* %781, i8* %808, i8* %835)
  %837 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %838 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %837, i32 0, i32 0
  %839 = load i32, i32* %838, align 8
  %840 = and i32 %839, -16
  %841 = icmp eq i32 %840, 1095517984
  br i1 %841, label %842, label %957

842:                                              ; preds = %834
  %843 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %844 = load i64, i64* @AC97_ALC650_CLOCK, align 8
  %845 = call i32 @snd_ac97_read(%struct.snd_ac97* %843, i64 %844)
  %846 = and i32 %845, 1
  %847 = icmp ne i32 %846, 0
  br i1 %847, label %848, label %957

848:                                              ; preds = %842
  %849 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %850 = load i64, i64* @AC97_ALC650_SPDIF_INPUT_STATUS2, align 8
  %851 = call i32 @snd_ac97_read(%struct.snd_ac97* %849, i64 %850)
  %852 = trunc i32 %851 to i16
  store i16 %852, i16* %8, align 2
  %853 = load i16, i16* %8, align 2
  %854 = zext i16 %853 to i32
  %855 = load i16, i16* @AC97_ALC650_CLOCK_LOCK, align 2
  %856 = zext i16 %855 to i32
  %857 = and i32 %854, %856
  %858 = icmp ne i32 %857, 0
  br i1 %858, label %859, label %953

859:                                              ; preds = %848
  %860 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %861 = load i64, i64* @AC97_ALC650_SPDIF_INPUT_STATUS1, align 8
  %862 = call i32 @snd_ac97_read(%struct.snd_ac97* %860, i64 %861)
  %863 = trunc i32 %862 to i16
  store i16 %863, i16* %8, align 2
  %864 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %865 = load i16, i16* %8, align 2
  %866 = zext i16 %865 to i32
  %867 = load i16, i16* @AC97_ALC650_PRO, align 2
  %868 = zext i16 %867 to i32
  %869 = and i32 %866, %868
  %870 = icmp ne i32 %869, 0
  %871 = zext i1 %870 to i64
  %872 = select i1 %870, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.71, i64 0, i64 0)
  %873 = load i16, i16* %8, align 2
  %874 = zext i16 %873 to i32
  %875 = load i16, i16* @AC97_ALC650_NAUDIO, align 2
  %876 = zext i16 %875 to i32
  %877 = and i32 %874, %876
  %878 = icmp ne i32 %877, 0
  %879 = zext i1 %878 to i64
  %880 = select i1 %878, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.72, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i64 0, i64 0)
  %881 = load i16, i16* %8, align 2
  %882 = zext i16 %881 to i32
  %883 = load i16, i16* @AC97_ALC650_COPY, align 2
  %884 = zext i16 %883 to i32
  %885 = and i32 %882, %884
  %886 = icmp ne i32 %885, 0
  %887 = zext i1 %886 to i64
  %888 = select i1 %886, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.74, i64 0, i64 0)
  %889 = load i16, i16* %8, align 2
  %890 = zext i16 %889 to i32
  %891 = load i16, i16* @AC97_ALC650_PRE, align 2
  %892 = zext i16 %891 to i32
  %893 = and i32 %890, %892
  %894 = icmp ne i32 %893, 0
  %895 = zext i1 %894 to i64
  %896 = select i1 %894, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.75, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0)
  %897 = load i16, i16* %8, align 2
  %898 = zext i16 %897 to i32
  %899 = load i16, i16* @AC97_ALC650_CC_MASK, align 2
  %900 = zext i16 %899 to i32
  %901 = and i32 %898, %900
  %902 = load i16, i16* @AC97_ALC650_CC_SHIFT, align 2
  %903 = zext i16 %902 to i32
  %904 = ashr i32 %901, %903
  %905 = load i16, i16* %8, align 2
  %906 = zext i16 %905 to i32
  %907 = load i16, i16* @AC97_ALC650_L, align 2
  %908 = zext i16 %907 to i32
  %909 = and i32 %906, %908
  %910 = ashr i32 %909, 15
  %911 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %864, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.79, i64 0, i64 0), i8* %872, i8* %880, i8* %888, i8* %896, i32 %904, i32 %910)
  %912 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %913 = load i64, i64* @AC97_ALC650_SPDIF_INPUT_STATUS2, align 8
  %914 = call i32 @snd_ac97_read(%struct.snd_ac97* %912, i64 %913)
  %915 = trunc i32 %914 to i16
  store i16 %915, i16* %8, align 2
  %916 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %917 = load i16, i16* %8, align 2
  %918 = zext i16 %917 to i32
  %919 = load i16, i16* @AC97_ALC650_SPSR_MASK, align 2
  %920 = zext i16 %919 to i32
  %921 = and i32 %918, %920
  %922 = load i16, i16* @AC97_ALC650_SPSR_SHIFT, align 2
  %923 = zext i16 %922 to i32
  %924 = ashr i32 %921, %923
  %925 = sext i32 %924 to i64
  %926 = getelementptr inbounds [4 x i8*], [4 x i8*]* @snd_ac97_proc_read_main.spdif_rates, i64 0, i64 %925
  %927 = load i8*, i8** %926, align 8
  %928 = load i16, i16* %8, align 2
  %929 = zext i16 %928 to i32
  %930 = load i16, i16* @AC97_ALC650_CLOCK_ACCURACY, align 2
  %931 = zext i16 %930 to i32
  %932 = and i32 %929, %931
  %933 = load i16, i16* @AC97_ALC650_CLOCK_SHIFT, align 2
  %934 = zext i16 %933 to i32
  %935 = ashr i32 %932, %934
  %936 = load i16, i16* %8, align 2
  %937 = zext i16 %936 to i32
  %938 = load i16, i16* @AC97_ALC650_CLOCK_LOCK, align 2
  %939 = zext i16 %938 to i32
  %940 = and i32 %937, %939
  %941 = icmp ne i32 %940, 0
  %942 = zext i1 %941 to i64
  %943 = select i1 %941, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.81, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.82, i64 0, i64 0)
  %944 = load i16, i16* %8, align 2
  %945 = zext i16 %944 to i32
  %946 = load i16, i16* @AC97_ALC650_V, align 2
  %947 = zext i16 %946 to i32
  %948 = and i32 %945, %947
  %949 = icmp ne i32 %948, 0
  %950 = zext i1 %949 to i64
  %951 = select i1 %949, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.83, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0)
  %952 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %916, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.80, i64 0, i64 0), i8* %927, i32 %935, i8* %943, i8* %951)
  br label %956

953:                                              ; preds = %848
  %954 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %955 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %954, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.84, i64 0, i64 0))
  br label %956

956:                                              ; preds = %953, %859
  br label %957

957:                                              ; preds = %956, %842, %834
  br label %958

958:                                              ; preds = %957, %654
  %959 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %960 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %959, i32 0, i32 5
  %961 = load i16, i16* %960, align 2
  %962 = zext i16 %961 to i32
  %963 = load i16, i16* @AC97_EI_REV_MASK, align 2
  %964 = zext i16 %963 to i32
  %965 = and i32 %962, %964
  %966 = load i16, i16* @AC97_EI_REV_23, align 2
  %967 = zext i16 %966 to i32
  %968 = icmp sge i32 %965, %967
  br i1 %968, label %969, label %992

969:                                              ; preds = %958
  %970 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %971 = load i64, i64* @AC97_INT_PAGING, align 8
  %972 = call i32 @snd_ac97_read(%struct.snd_ac97* %970, i64 %971)
  %973 = trunc i32 %972 to i16
  store i16 %973, i16* %8, align 2
  %974 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %975 = load i64, i64* @AC97_INT_PAGING, align 8
  %976 = load i16, i16* @AC97_PAGE_MASK, align 2
  %977 = load i16, i16* @AC97_PAGE_1, align 2
  %978 = call i32 @snd_ac97_update_bits(%struct.snd_ac97* %974, i64 %975, i16 zeroext %976, i16 zeroext %977)
  %979 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %980 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %981 = call i32 @snd_ac97_proc_read_functions(%struct.snd_ac97* %979, %struct.snd_info_buffer* %980)
  %982 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %983 = load i64, i64* @AC97_INT_PAGING, align 8
  %984 = load i16, i16* @AC97_PAGE_MASK, align 2
  %985 = load i16, i16* %8, align 2
  %986 = zext i16 %985 to i32
  %987 = load i16, i16* @AC97_PAGE_MASK, align 2
  %988 = zext i16 %987 to i32
  %989 = and i32 %986, %988
  %990 = trunc i32 %989 to i16
  %991 = call i32 @snd_ac97_update_bits(%struct.snd_ac97* %982, i64 %983, i16 zeroext %984, i16 zeroext %990)
  br label %992

992:                                              ; preds = %969, %958
  br label %993

993:                                              ; preds = %992, %346, %33
  %994 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %995 = load i64, i64* @AC97_EXTENDED_MID, align 8
  %996 = call i32 @snd_ac97_read(%struct.snd_ac97* %994, i64 %995)
  %997 = trunc i32 %996 to i16
  store i16 %997, i16* %11, align 2
  %998 = load i16, i16* %11, align 2
  %999 = zext i16 %998 to i32
  %1000 = icmp eq i32 %999, 0
  br i1 %1000, label %1001, label %1002

1001:                                             ; preds = %993
  br label %1234

1002:                                             ; preds = %993
  %1003 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %1004 = load i16, i16* %11, align 2
  %1005 = zext i16 %1004 to i32
  %1006 = load i16, i16* @AC97_MEI_ADDR_MASK, align 2
  %1007 = zext i16 %1006 to i32
  %1008 = and i32 %1005, %1007
  %1009 = load i16, i16* @AC97_MEI_ADDR_SHIFT, align 2
  %1010 = zext i16 %1009 to i32
  %1011 = ashr i32 %1008, %1010
  %1012 = load i16, i16* %11, align 2
  %1013 = zext i16 %1012 to i32
  %1014 = load i16, i16* @AC97_MEI_CID2, align 2
  %1015 = zext i16 %1014 to i32
  %1016 = and i32 %1013, %1015
  %1017 = icmp ne i32 %1016, 0
  %1018 = zext i1 %1017 to i64
  %1019 = select i1 %1017, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.86, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0)
  %1020 = load i16, i16* %11, align 2
  %1021 = zext i16 %1020 to i32
  %1022 = load i16, i16* @AC97_MEI_CID1, align 2
  %1023 = zext i16 %1022 to i32
  %1024 = and i32 %1021, %1023
  %1025 = icmp ne i32 %1024, 0
  %1026 = zext i1 %1025 to i64
  %1027 = select i1 %1025, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.87, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0)
  %1028 = load i16, i16* %11, align 2
  %1029 = zext i16 %1028 to i32
  %1030 = load i16, i16* @AC97_MEI_HANDSET, align 2
  %1031 = zext i16 %1030 to i32
  %1032 = and i32 %1029, %1031
  %1033 = icmp ne i32 %1032, 0
  %1034 = zext i1 %1033 to i64
  %1035 = select i1 %1033, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.88, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0)
  %1036 = load i16, i16* %11, align 2
  %1037 = zext i16 %1036 to i32
  %1038 = load i16, i16* @AC97_MEI_LINE2, align 2
  %1039 = zext i16 %1038 to i32
  %1040 = and i32 %1037, %1039
  %1041 = icmp ne i32 %1040, 0
  %1042 = zext i1 %1041 to i64
  %1043 = select i1 %1041, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.89, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0)
  %1044 = load i16, i16* %11, align 2
  %1045 = zext i16 %1044 to i32
  %1046 = load i16, i16* @AC97_MEI_LINE1, align 2
  %1047 = zext i16 %1046 to i32
  %1048 = and i32 %1045, %1047
  %1049 = icmp ne i32 %1048, 0
  %1050 = zext i1 %1049 to i64
  %1051 = select i1 %1049, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.90, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0)
  %1052 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %1003, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.85, i64 0, i64 0), i32 %1011, i8* %1019, i8* %1027, i8* %1035, i8* %1043, i8* %1051)
  %1053 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %1054 = load i64, i64* @AC97_EXTENDED_MSTATUS, align 8
  %1055 = call i32 @snd_ac97_read(%struct.snd_ac97* %1053, i64 %1054)
  %1056 = trunc i32 %1055 to i16
  store i16 %1056, i16* %8, align 2
  %1057 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %1058 = load i16, i16* %8, align 2
  %1059 = zext i16 %1058 to i32
  %1060 = load i16, i16* @AC97_MEA_GPIO, align 2
  %1061 = zext i16 %1060 to i32
  %1062 = and i32 %1059, %1061
  %1063 = icmp ne i32 %1062, 0
  %1064 = zext i1 %1063 to i64
  %1065 = select i1 %1063, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.92, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0)
  %1066 = load i16, i16* %8, align 2
  %1067 = zext i16 %1066 to i32
  %1068 = load i16, i16* @AC97_MEA_MREF, align 2
  %1069 = zext i16 %1068 to i32
  %1070 = and i32 %1067, %1069
  %1071 = icmp ne i32 %1070, 0
  %1072 = zext i1 %1071 to i64
  %1073 = select i1 %1071, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.93, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0)
  %1074 = load i16, i16* %8, align 2
  %1075 = zext i16 %1074 to i32
  %1076 = load i16, i16* @AC97_MEA_ADC1, align 2
  %1077 = zext i16 %1076 to i32
  %1078 = and i32 %1075, %1077
  %1079 = icmp ne i32 %1078, 0
  %1080 = zext i1 %1079 to i64
  %1081 = select i1 %1079, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.94, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0)
  %1082 = load i16, i16* %8, align 2
  %1083 = zext i16 %1082 to i32
  %1084 = load i16, i16* @AC97_MEA_DAC1, align 2
  %1085 = zext i16 %1084 to i32
  %1086 = and i32 %1083, %1085
  %1087 = icmp ne i32 %1086, 0
  %1088 = zext i1 %1087 to i64
  %1089 = select i1 %1087, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.95, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0)
  %1090 = load i16, i16* %8, align 2
  %1091 = zext i16 %1090 to i32
  %1092 = load i16, i16* @AC97_MEA_ADC2, align 2
  %1093 = zext i16 %1092 to i32
  %1094 = and i32 %1091, %1093
  %1095 = icmp ne i32 %1094, 0
  %1096 = zext i1 %1095 to i64
  %1097 = select i1 %1095, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.96, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0)
  %1098 = load i16, i16* %8, align 2
  %1099 = zext i16 %1098 to i32
  %1100 = load i16, i16* @AC97_MEA_DAC2, align 2
  %1101 = zext i16 %1100 to i32
  %1102 = and i32 %1099, %1101
  %1103 = icmp ne i32 %1102, 0
  %1104 = zext i1 %1103 to i64
  %1105 = select i1 %1103, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.97, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0)
  %1106 = load i16, i16* %8, align 2
  %1107 = zext i16 %1106 to i32
  %1108 = load i16, i16* @AC97_MEA_HADC, align 2
  %1109 = zext i16 %1108 to i32
  %1110 = and i32 %1107, %1109
  %1111 = icmp ne i32 %1110, 0
  %1112 = zext i1 %1111 to i64
  %1113 = select i1 %1111, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.98, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0)
  %1114 = load i16, i16* %8, align 2
  %1115 = zext i16 %1114 to i32
  %1116 = load i16, i16* @AC97_MEA_HDAC, align 2
  %1117 = zext i16 %1116 to i32
  %1118 = and i32 %1115, %1117
  %1119 = icmp ne i32 %1118, 0
  %1120 = zext i1 %1119 to i64
  %1121 = select i1 %1119, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.99, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0)
  %1122 = load i16, i16* %8, align 2
  %1123 = zext i16 %1122 to i32
  %1124 = load i16, i16* @AC97_MEA_PRA, align 2
  %1125 = zext i16 %1124 to i32
  %1126 = and i32 %1123, %1125
  %1127 = icmp ne i32 %1126, 0
  %1128 = zext i1 %1127 to i64
  %1129 = select i1 %1127, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.100, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0)
  %1130 = load i16, i16* %8, align 2
  %1131 = zext i16 %1130 to i32
  %1132 = load i16, i16* @AC97_MEA_PRB, align 2
  %1133 = zext i16 %1132 to i32
  %1134 = and i32 %1131, %1133
  %1135 = icmp ne i32 %1134, 0
  %1136 = zext i1 %1135 to i64
  %1137 = select i1 %1135, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.101, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0)
  %1138 = load i16, i16* %8, align 2
  %1139 = zext i16 %1138 to i32
  %1140 = load i16, i16* @AC97_MEA_PRC, align 2
  %1141 = zext i16 %1140 to i32
  %1142 = and i32 %1139, %1141
  %1143 = icmp ne i32 %1142, 0
  %1144 = zext i1 %1143 to i64
  %1145 = select i1 %1143, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.102, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0)
  %1146 = load i16, i16* %8, align 2
  %1147 = zext i16 %1146 to i32
  %1148 = load i16, i16* @AC97_MEA_PRD, align 2
  %1149 = zext i16 %1148 to i32
  %1150 = and i32 %1147, %1149
  %1151 = icmp ne i32 %1150, 0
  %1152 = zext i1 %1151 to i64
  %1153 = select i1 %1151, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.103, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0)
  %1154 = load i16, i16* %8, align 2
  %1155 = zext i16 %1154 to i32
  %1156 = load i16, i16* @AC97_MEA_PRE, align 2
  %1157 = zext i16 %1156 to i32
  %1158 = and i32 %1155, %1157
  %1159 = icmp ne i32 %1158, 0
  %1160 = zext i1 %1159 to i64
  %1161 = select i1 %1159, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.104, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0)
  %1162 = load i16, i16* %8, align 2
  %1163 = zext i16 %1162 to i32
  %1164 = load i16, i16* @AC97_MEA_PRF, align 2
  %1165 = zext i16 %1164 to i32
  %1166 = and i32 %1163, %1165
  %1167 = icmp ne i32 %1166, 0
  %1168 = zext i1 %1167 to i64
  %1169 = select i1 %1167, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0)
  %1170 = load i16, i16* %8, align 2
  %1171 = zext i16 %1170 to i32
  %1172 = load i16, i16* @AC97_MEA_PRG, align 2
  %1173 = zext i16 %1172 to i32
  %1174 = and i32 %1171, %1173
  %1175 = icmp ne i32 %1174, 0
  %1176 = zext i1 %1175 to i64
  %1177 = select i1 %1175, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.106, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0)
  %1178 = load i16, i16* %8, align 2
  %1179 = zext i16 %1178 to i32
  %1180 = load i16, i16* @AC97_MEA_PRH, align 2
  %1181 = zext i16 %1180 to i32
  %1182 = and i32 %1179, %1181
  %1183 = icmp ne i32 %1182, 0
  %1184 = zext i1 %1183 to i64
  %1185 = select i1 %1183, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.107, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0)
  %1186 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %1057, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.91, i64 0, i64 0), i8* %1065, i8* %1073, i8* %1081, i8* %1089, i8* %1097, i8* %1105, i8* %1113, i8* %1121, i8* %1129, i8* %1137, i8* %1145, i8* %1153, i8* %1161, i8* %1169, i8* %1177, i8* %1185)
  %1187 = load i16, i16* %11, align 2
  %1188 = zext i16 %1187 to i32
  %1189 = load i16, i16* @AC97_MEI_LINE1, align 2
  %1190 = zext i16 %1189 to i32
  %1191 = and i32 %1188, %1190
  %1192 = icmp ne i32 %1191, 0
  br i1 %1192, label %1193, label %1202

1193:                                             ; preds = %1002
  %1194 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %1195 = load i64, i64* @AC97_LINE1_RATE, align 8
  %1196 = call i32 @snd_ac97_read(%struct.snd_ac97* %1194, i64 %1195)
  %1197 = trunc i32 %1196 to i16
  store i16 %1197, i16* %8, align 2
  %1198 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %1199 = load i16, i16* %8, align 2
  %1200 = zext i16 %1199 to i32
  %1201 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %1198, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.108, i64 0, i64 0), i32 %1200)
  br label %1202

1202:                                             ; preds = %1193, %1002
  %1203 = load i16, i16* %11, align 2
  %1204 = zext i16 %1203 to i32
  %1205 = load i16, i16* @AC97_MEI_LINE2, align 2
  %1206 = zext i16 %1205 to i32
  %1207 = and i32 %1204, %1206
  %1208 = icmp ne i32 %1207, 0
  br i1 %1208, label %1209, label %1218

1209:                                             ; preds = %1202
  %1210 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %1211 = load i64, i64* @AC97_LINE2_RATE, align 8
  %1212 = call i32 @snd_ac97_read(%struct.snd_ac97* %1210, i64 %1211)
  %1213 = trunc i32 %1212 to i16
  store i16 %1213, i16* %8, align 2
  %1214 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %1215 = load i16, i16* %8, align 2
  %1216 = zext i16 %1215 to i32
  %1217 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %1214, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.109, i64 0, i64 0), i32 %1216)
  br label %1218

1218:                                             ; preds = %1209, %1202
  %1219 = load i16, i16* %11, align 2
  %1220 = zext i16 %1219 to i32
  %1221 = load i16, i16* @AC97_MEI_HANDSET, align 2
  %1222 = zext i16 %1221 to i32
  %1223 = and i32 %1220, %1222
  %1224 = icmp ne i32 %1223, 0
  br i1 %1224, label %1225, label %1234

1225:                                             ; preds = %1218
  %1226 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %1227 = load i64, i64* @AC97_HANDSET_RATE, align 8
  %1228 = call i32 @snd_ac97_read(%struct.snd_ac97* %1226, i64 %1227)
  %1229 = trunc i32 %1228 to i16
  store i16 %1229, i16* %8, align 2
  %1230 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %1231 = load i16, i16* %8, align 2
  %1232 = zext i16 %1231 to i32
  %1233 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %1230, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.110, i64 0, i64 0), i32 %1232)
  br label %1234

1234:                                             ; preds = %1001, %1225, %1218
  ret void
}

declare dso_local i32 @snd_ac97_get_name(i32*, i32, i8*, i32) #1

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, ...) #1

declare dso_local i32 @snd_ac97_read(%struct.snd_ac97*, i64) #1

declare dso_local i32 @snd_ac97_update_bits(%struct.snd_ac97*, i64, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @snd_ac97_proc_read_functions(%struct.snd_ac97*, %struct.snd_info_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
