; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emuproc.c_snd_emu10k1_proc_spdif_status.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emuproc.c_snd_emu10k1_proc_spdif_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu10k1 = type { i32 }
%struct.snd_info_buffer = type { i32 }

@snd_emu10k1_proc_spdif_status.clkaccy = internal global [4 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [8 x i8] c"1000ppm\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"50ppm\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"variable\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@snd_emu10k1_proc_spdif_status.samplerate = internal global [16 x i32] [i32 44100, i32 1, i32 48000, i32 32000, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15], align 16
@snd_emu10k1_proc_spdif_status.channel = internal global [16 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0)], align 16
@.str.4 = private unnamed_addr constant [7 x i8] c"unspec\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"left\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"right\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"5\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"6\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"7\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"8\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"9\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"10\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"11\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"12\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"13\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"14\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"15\00", align 1
@snd_emu10k1_proc_spdif_status.emphasis = internal global [8 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0)], align 16
@.str.20 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"50/15 usec 2 channel\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"\0A%s\0A\00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c"Professional Mode     : %s\0A\00", align 1
@SPCS_PROFESSIONAL = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.27 = private unnamed_addr constant [28 x i8] c"Not Audio Data        : %s\0A\00", align 1
@SPCS_NOTAUDIODATA = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [28 x i8] c"Copyright             : %s\0A\00", align 1
@SPCS_COPYRIGHT = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [28 x i8] c"Emphasis              : %s\0A\00", align 1
@SPCS_EMPHASISMASK = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [28 x i8] c"Mode                  : %i\0A\00", align 1
@SPCS_MODEMASK = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [30 x i8] c"Category Code         : 0x%x\0A\00", align 1
@SPCS_CATEGORYCODEMASK = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [28 x i8] c"Generation Status     : %s\0A\00", align 1
@SPCS_GENERATIONSTATUS = common dso_local global i32 0, align 4
@.str.33 = private unnamed_addr constant [9 x i8] c"original\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"copy\00", align 1
@.str.35 = private unnamed_addr constant [28 x i8] c"Source Mask           : %i\0A\00", align 1
@SPCS_SOURCENUMMASK = common dso_local global i32 0, align 4
@.str.36 = private unnamed_addr constant [28 x i8] c"Channel Number        : %s\0A\00", align 1
@SPCS_CHANNELNUMMASK = common dso_local global i32 0, align 4
@.str.37 = private unnamed_addr constant [30 x i8] c"Sample Rate           : %iHz\0A\00", align 1
@SPCS_SAMPLERATEMASK = common dso_local global i32 0, align 4
@.str.38 = private unnamed_addr constant [28 x i8] c"Clock Accuracy        : %s\0A\00", align 1
@SPCS_CLKACCYMASK = common dso_local global i32 0, align 4
@.str.39 = private unnamed_addr constant [28 x i8] c"S/PDIF Valid          : %s\0A\00", align 1
@SRCS_SPDIFVALID = common dso_local global i32 0, align 4
@.str.40 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.42 = private unnamed_addr constant [28 x i8] c"S/PDIF Locked         : %s\0A\00", align 1
@SRCS_SPDIFLOCKED = common dso_local global i32 0, align 4
@.str.43 = private unnamed_addr constant [28 x i8] c"Rate Locked           : %s\0A\00", align 1
@SRCS_RATELOCKED = common dso_local global i32 0, align 4
@.str.44 = private unnamed_addr constant [28 x i8] c"Estimated Sample Rate : %d\0A\00", align 1
@.str.45 = private unnamed_addr constant [21 x i8] c"No signal detected.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_emu10k1*, %struct.snd_info_buffer*, i8*, i32, i32)* @snd_emu10k1_proc_spdif_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_emu10k1_proc_spdif_status(%struct.snd_emu10k1* %0, %struct.snd_info_buffer* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.snd_emu10k1*, align 8
  %7 = alloca %struct.snd_info_buffer*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_emu10k1* %0, %struct.snd_emu10k1** %6, align 8
  store %struct.snd_info_buffer* %1, %struct.snd_info_buffer** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %13 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %14 = load i32, i32* %9, align 4
  %15 = call i32 @snd_emu10k1_ptr_read(%struct.snd_emu10k1* %13, i32 %14, i32 0)
  store i32 %15, i32* %11, align 4
  %16 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %7, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i8* %17)
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %145

21:                                               ; preds = %5
  %22 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %7, align 8
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* @SPCS_PROFESSIONAL, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0)
  %29 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %22, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.24, i64 0, i64 0), i8* %28)
  %30 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %7, align 8
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @SPCS_NOTAUDIODATA, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0)
  %37 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %30, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.27, i64 0, i64 0), i8* %36)
  %38 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %7, align 8
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @SPCS_COPYRIGHT, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0)
  %45 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %38, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.28, i64 0, i64 0), i8* %44)
  %46 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %7, align 8
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* @SPCS_EMPHASISMASK, align 4
  %49 = and i32 %47, %48
  %50 = lshr i32 %49, 3
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds [8 x i8*], [8 x i8*]* @snd_emu10k1_proc_spdif_status.emphasis, i64 0, i64 %51
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %46, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.29, i64 0, i64 0), i8* %53)
  %55 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %7, align 8
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @SPCS_MODEMASK, align 4
  %58 = and i32 %56, %57
  %59 = lshr i32 %58, 6
  %60 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %55, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.30, i64 0, i64 0), i32 %59)
  %61 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %7, align 8
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @SPCS_CATEGORYCODEMASK, align 4
  %64 = and i32 %62, %63
  %65 = lshr i32 %64, 8
  %66 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %61, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.31, i64 0, i64 0), i32 %65)
  %67 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %7, align 8
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* @SPCS_GENERATIONSTATUS, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0)
  %74 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %67, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.32, i64 0, i64 0), i8* %73)
  %75 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %7, align 8
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* @SPCS_SOURCENUMMASK, align 4
  %78 = and i32 %76, %77
  %79 = lshr i32 %78, 16
  %80 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %75, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.35, i64 0, i64 0), i32 %79)
  %81 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %7, align 8
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* @SPCS_CHANNELNUMMASK, align 4
  %84 = and i32 %82, %83
  %85 = lshr i32 %84, 20
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds [16 x i8*], [16 x i8*]* @snd_emu10k1_proc_spdif_status.channel, i64 0, i64 %86
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %81, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.36, i64 0, i64 0), i8* %88)
  %90 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %7, align 8
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* @SPCS_SAMPLERATEMASK, align 4
  %93 = and i32 %91, %92
  %94 = lshr i32 %93, 24
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds [16 x i32], [16 x i32]* @snd_emu10k1_proc_spdif_status.samplerate, i64 0, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %90, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.37, i64 0, i64 0), i32 %97)
  %99 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %7, align 8
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* @SPCS_CLKACCYMASK, align 4
  %102 = and i32 %100, %101
  %103 = lshr i32 %102, 28
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds [4 x i8*], [4 x i8*]* @snd_emu10k1_proc_spdif_status.clkaccy, i64 0, i64 %104
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %99, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.38, i64 0, i64 0), i8* %106)
  %108 = load i32, i32* %10, align 4
  %109 = icmp sgt i32 %108, 0
  br i1 %109, label %110, label %144

110:                                              ; preds = %21
  %111 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %112 = load i32, i32* %10, align 4
  %113 = call i32 @snd_emu10k1_ptr_read(%struct.snd_emu10k1* %111, i32 %112, i32 0)
  store i32 %113, i32* %12, align 4
  %114 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %7, align 8
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* @SRCS_SPDIFVALID, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  %119 = zext i1 %118 to i64
  %120 = select i1 %118, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i64 0, i64 0)
  %121 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %114, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.39, i64 0, i64 0), i8* %120)
  %122 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %7, align 8
  %123 = load i32, i32* %12, align 4
  %124 = load i32, i32* @SRCS_SPDIFLOCKED, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  %127 = zext i1 %126 to i64
  %128 = select i1 %126, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i64 0, i64 0)
  %129 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %122, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.42, i64 0, i64 0), i8* %128)
  %130 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %7, align 8
  %131 = load i32, i32* %12, align 4
  %132 = load i32, i32* @SRCS_RATELOCKED, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  %135 = zext i1 %134 to i64
  %136 = select i1 %134, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i64 0, i64 0)
  %137 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %130, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.43, i64 0, i64 0), i8* %136)
  %138 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %7, align 8
  %139 = load i32, i32* %12, align 4
  %140 = and i32 %139, 1048575
  %141 = mul i32 %140, 375
  %142 = lshr i32 %141, 11
  %143 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %138, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.44, i64 0, i64 0), i32 %142)
  br label %144

144:                                              ; preds = %110, %21
  br label %148

145:                                              ; preds = %5
  %146 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %7, align 8
  %147 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %146, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.45, i64 0, i64 0))
  br label %148

148:                                              ; preds = %145, %144
  ret void
}

declare dso_local i32 @snd_emu10k1_ptr_read(%struct.snd_emu10k1*, i32, i32) #1

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
