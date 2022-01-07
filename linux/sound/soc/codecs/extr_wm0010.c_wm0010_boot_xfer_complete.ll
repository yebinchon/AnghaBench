; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm0010.c_wm0010_boot_xfer_complete.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm0010.c_wm0010_boot_xfer_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm0010_boot_xfer = type { i64, %struct.TYPE_4__, %struct.TYPE_3__, %struct.snd_soc_component* }
%struct.TYPE_4__ = type { i32, i32* }
%struct.TYPE_3__ = type { i64 }
%struct.snd_soc_component = type { i32 }
%struct.wm0010_priv = type { i32, i64, i32 }

@.str = private unnamed_addr constant [25 x i8] c"SPI transfer failed: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%d: %04x\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"%d: ROM error reported in stage 2\0A\00", align 1
@WM0010_STAGE2 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"%d: ROM bootloader running in stage 2\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Stage2 loader running\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"CODE_HDR packet received\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"CODE_DATA packet received\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"Download complete\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"Application start\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"PLL packet received\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"Device reports image too long\0A\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"Device reports bad SPI packet\0A\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"Device reports SPI read overflow\0A\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"Device reports SPI underclock\0A\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"Device reports bad header packet\0A\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"Device reports invalid packet type\0A\00", align 1
@.str.16 = private unnamed_addr constant [41 x i8] c"Device reports data before header error\0A\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"Device reports invalid PLL packet\0A\00", align 1
@.str.18 = private unnamed_addr constant [39 x i8] c"Device reports packet alignment error\0A\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"Unrecognised return 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @wm0010_boot_xfer_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm0010_boot_xfer_complete(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.wm0010_boot_xfer*, align 8
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca %struct.wm0010_priv*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.wm0010_boot_xfer*
  store %struct.wm0010_boot_xfer* %9, %struct.wm0010_boot_xfer** %3, align 8
  %10 = load %struct.wm0010_boot_xfer*, %struct.wm0010_boot_xfer** %3, align 8
  %11 = getelementptr inbounds %struct.wm0010_boot_xfer, %struct.wm0010_boot_xfer* %10, i32 0, i32 3
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  store %struct.snd_soc_component* %12, %struct.snd_soc_component** %4, align 8
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %14 = call %struct.wm0010_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %13)
  store %struct.wm0010_priv* %14, %struct.wm0010_priv** %5, align 8
  %15 = load %struct.wm0010_boot_xfer*, %struct.wm0010_boot_xfer** %3, align 8
  %16 = getelementptr inbounds %struct.wm0010_boot_xfer, %struct.wm0010_boot_xfer* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %6, align 8
  %19 = load %struct.wm0010_boot_xfer*, %struct.wm0010_boot_xfer** %3, align 8
  %20 = getelementptr inbounds %struct.wm0010_boot_xfer, %struct.wm0010_boot_xfer* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %45

24:                                               ; preds = %1
  %25 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %26 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.wm0010_boot_xfer*, %struct.wm0010_boot_xfer** %3, align 8
  %29 = getelementptr inbounds %struct.wm0010_boot_xfer, %struct.wm0010_boot_xfer* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 (i32, i8*, ...) @dev_err(i32 %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %31)
  %33 = load %struct.wm0010_priv*, %struct.wm0010_priv** %5, align 8
  %34 = call i32 @wm0010_mark_boot_failure(%struct.wm0010_priv* %33)
  %35 = load %struct.wm0010_boot_xfer*, %struct.wm0010_boot_xfer** %3, align 8
  %36 = getelementptr inbounds %struct.wm0010_boot_xfer, %struct.wm0010_boot_xfer* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %24
  %40 = load %struct.wm0010_boot_xfer*, %struct.wm0010_boot_xfer** %3, align 8
  %41 = getelementptr inbounds %struct.wm0010_boot_xfer, %struct.wm0010_boot_xfer* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @complete(i64 %42)
  br label %44

44:                                               ; preds = %39, %24
  br label %220

45:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %46

46:                                               ; preds = %207, %45
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.wm0010_boot_xfer*, %struct.wm0010_boot_xfer** %3, align 8
  %49 = getelementptr inbounds %struct.wm0010_boot_xfer, %struct.wm0010_boot_xfer* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sdiv i32 %51, 4
  %53 = icmp slt i32 %47, %52
  br i1 %53, label %54, label %210

54:                                               ; preds = %46
  %55 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %56 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load i32*, i32** %6, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i32, i8*, ...) @dev_dbg(i32 %57, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %58, i32 %63)
  %65 = load i32*, i32** %6, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @be32_to_cpu(i32 %69)
  switch i32 %70, label %187 [
    i32 -522133280, label %71
    i32 1431655765, label %79
    i32 267190272, label %94
    i32 267190279, label %99
    i32 267190280, label %104
    i32 267190281, label %109
    i32 267190284, label %114
    i32 267190286, label %119
    i32 267190309, label %126
    i32 267190316, label %133
    i32 267190321, label %140
    i32 267190322, label %147
    i32 267190323, label %154
    i32 267190324, label %161
    i32 267190325, label %168
    i32 267190328, label %175
    i32 267190330, label %180
  ]

71:                                               ; preds = %54
  %72 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %73 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %7, align 4
  %76 = call i32 (i32, i8*, ...) @dev_err(i32 %74, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  %77 = load %struct.wm0010_priv*, %struct.wm0010_priv** %5, align 8
  %78 = call i32 @wm0010_mark_boot_failure(%struct.wm0010_priv* %77)
  br label %200

79:                                               ; preds = %54
  %80 = load %struct.wm0010_priv*, %struct.wm0010_priv** %5, align 8
  %81 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @WM0010_STAGE2, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  br label %200

86:                                               ; preds = %79
  %87 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %88 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %7, align 4
  %91 = call i32 (i32, i8*, ...) @dev_err(i32 %89, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %90)
  %92 = load %struct.wm0010_priv*, %struct.wm0010_priv** %5, align 8
  %93 = call i32 @wm0010_mark_boot_failure(%struct.wm0010_priv* %92)
  br label %200

94:                                               ; preds = %54
  %95 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %96 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 (i32, i8*, ...) @dev_dbg(i32 %97, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %200

99:                                               ; preds = %54
  %100 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %101 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (i32, i8*, ...) @dev_dbg(i32 %102, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %200

104:                                              ; preds = %54
  %105 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %106 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 (i32, i8*, ...) @dev_dbg(i32 %107, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  br label %200

109:                                              ; preds = %54
  %110 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %111 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 (i32, i8*, ...) @dev_dbg(i32 %112, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  br label %200

114:                                              ; preds = %54
  %115 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %116 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 (i32, i8*, ...) @dev_dbg(i32 %117, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  br label %200

119:                                              ; preds = %54
  %120 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %121 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 (i32, i8*, ...) @dev_dbg(i32 %122, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  %124 = load %struct.wm0010_priv*, %struct.wm0010_priv** %5, align 8
  %125 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %124, i32 0, i32 0
  store i32 1, i32* %125, align 8
  br label %200

126:                                              ; preds = %54
  %127 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %128 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 (i32, i8*, ...) @dev_err(i32 %129, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0))
  %131 = load %struct.wm0010_priv*, %struct.wm0010_priv** %5, align 8
  %132 = call i32 @wm0010_mark_boot_failure(%struct.wm0010_priv* %131)
  br label %200

133:                                              ; preds = %54
  %134 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %135 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 (i32, i8*, ...) @dev_err(i32 %136, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0))
  %138 = load %struct.wm0010_priv*, %struct.wm0010_priv** %5, align 8
  %139 = call i32 @wm0010_mark_boot_failure(%struct.wm0010_priv* %138)
  br label %200

140:                                              ; preds = %54
  %141 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %142 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 (i32, i8*, ...) @dev_err(i32 %143, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0))
  %145 = load %struct.wm0010_priv*, %struct.wm0010_priv** %5, align 8
  %146 = call i32 @wm0010_mark_boot_failure(%struct.wm0010_priv* %145)
  br label %200

147:                                              ; preds = %54
  %148 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %149 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 (i32, i8*, ...) @dev_err(i32 %150, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0))
  %152 = load %struct.wm0010_priv*, %struct.wm0010_priv** %5, align 8
  %153 = call i32 @wm0010_mark_boot_failure(%struct.wm0010_priv* %152)
  br label %200

154:                                              ; preds = %54
  %155 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %156 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 (i32, i8*, ...) @dev_err(i32 %157, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0))
  %159 = load %struct.wm0010_priv*, %struct.wm0010_priv** %5, align 8
  %160 = call i32 @wm0010_mark_boot_failure(%struct.wm0010_priv* %159)
  br label %200

161:                                              ; preds = %54
  %162 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %163 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i32 (i32, i8*, ...) @dev_err(i32 %164, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.15, i64 0, i64 0))
  %166 = load %struct.wm0010_priv*, %struct.wm0010_priv** %5, align 8
  %167 = call i32 @wm0010_mark_boot_failure(%struct.wm0010_priv* %166)
  br label %200

168:                                              ; preds = %54
  %169 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %170 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i32 (i32, i8*, ...) @dev_err(i32 %171, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i64 0, i64 0))
  %173 = load %struct.wm0010_priv*, %struct.wm0010_priv** %5, align 8
  %174 = call i32 @wm0010_mark_boot_failure(%struct.wm0010_priv* %173)
  br label %200

175:                                              ; preds = %54
  %176 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %177 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i32 (i32, i8*, ...) @dev_err(i32 %178, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.17, i64 0, i64 0))
  br label %200

180:                                              ; preds = %54
  %181 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %182 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = call i32 (i32, i8*, ...) @dev_err(i32 %183, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18, i64 0, i64 0))
  %185 = load %struct.wm0010_priv*, %struct.wm0010_priv** %5, align 8
  %186 = call i32 @wm0010_mark_boot_failure(%struct.wm0010_priv* %185)
  br label %200

187:                                              ; preds = %54
  %188 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %189 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load i32*, i32** %6, align 8
  %192 = load i32, i32* %7, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @be32_to_cpu(i32 %195)
  %197 = call i32 (i32, i8*, ...) @dev_err(i32 %190, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i64 0, i64 0), i32 %196)
  %198 = load %struct.wm0010_priv*, %struct.wm0010_priv** %5, align 8
  %199 = call i32 @wm0010_mark_boot_failure(%struct.wm0010_priv* %198)
  br label %200

200:                                              ; preds = %187, %180, %175, %168, %161, %154, %147, %140, %133, %126, %119, %114, %109, %104, %99, %94, %86, %85, %71
  %201 = load %struct.wm0010_priv*, %struct.wm0010_priv** %5, align 8
  %202 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %200
  br label %210

206:                                              ; preds = %200
  br label %207

207:                                              ; preds = %206
  %208 = load i32, i32* %7, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %7, align 4
  br label %46

210:                                              ; preds = %205, %46
  %211 = load %struct.wm0010_boot_xfer*, %struct.wm0010_boot_xfer** %3, align 8
  %212 = getelementptr inbounds %struct.wm0010_boot_xfer, %struct.wm0010_boot_xfer* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %220

215:                                              ; preds = %210
  %216 = load %struct.wm0010_boot_xfer*, %struct.wm0010_boot_xfer** %3, align 8
  %217 = getelementptr inbounds %struct.wm0010_boot_xfer, %struct.wm0010_boot_xfer* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = call i32 @complete(i64 %218)
  br label %220

220:                                              ; preds = %44, %215, %210
  ret void
}

declare dso_local %struct.wm0010_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @wm0010_mark_boot_failure(%struct.wm0010_priv*) #1

declare dso_local i32 @complete(i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
