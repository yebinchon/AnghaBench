; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/mixart/extr_mixart_hwdep.c_mixart_dsp_load.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/mixart/extr_mixart_hwdep.c_mixart_dsp_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mixart_mgr = type { i32, i32, %struct.TYPE_4__*, %struct.snd_mixart**, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.snd_mixart = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.firmware = type { i32, i64 }

@MIXART_PSEUDOREG_MXLX_STATUS_OFFSET = common dso_local global i32 0, align 4
@MIXART_PSEUDOREG_ELF_STATUS_OFFSET = common dso_local global i32 0, align 4
@MIXART_PSEUDOREG_DXLX_STATUS_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"miXart is resetting !\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"xilinx is already loaded !\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"xilinx load error ! status = %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MIXART_MOTHERBOARD_XLX_BASE_ADDRESS = common dso_local global i32 0, align 4
@MIXART_PSEUDOREG_MXLX_BASE_ADDR_OFFSET = common dso_local global i32 0, align 4
@MIXART_PSEUDOREG_MXLX_SIZE_OFFSET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"elf file already loaded !\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"elf load error ! status = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"xilinx was not loaded or could not be started\0A\00", align 1
@MIXART_PSEUDOREG_BOARDNUMBER = common dso_local global i32 0, align 4
@MIXART_FLOWTABLE_PTR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"elf could not be started\0A\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"xilinx or elf not successfully loaded\0A\00", align 1
@MIXART_PSEUDOREG_DBRD_PRESENCE_OFFSET = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"error starting elf file\0A\00", align 1
@DAUGHTER_TYPE_MASK = common dso_local global i32 0, align 4
@MIXART_PSEUDOREG_DBRD_TYPE_OFFSET = common dso_local global i32 0, align 4
@MIXART_DAUGHTER_TYPE_NONE = common dso_local global i32 0, align 4
@MIXART_DAUGHTER_TYPE_AES = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [35 x i8] c"daughter load error ! status = %d\0A\00", align 1
@MIXART_PSEUDOREG_DXLX_SIZE_OFFSET = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [27 x i8] c"daughter board load error\0A\00", align 1
@MIXART_PSEUDOREG_DXLX_BASE_ADDR_OFFSET = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [41 x i8] c"daughter board could not be initialised\0A\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"miXart could not be set up\0A\00", align 1
@.str.13 = private unnamed_addr constant [52 x i8] c"miXart firmware downloaded and successfully set up\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mixart_mgr*, i32, %struct.firmware*)* @mixart_dsp_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mixart_dsp_load(%struct.mixart_mgr* %0, i32 %1, %struct.firmware* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mixart_mgr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.firmware*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.snd_mixart*, align 8
  store %struct.mixart_mgr* %0, %struct.mixart_mgr** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.firmware* %2, %struct.firmware** %7, align 8
  %15 = load %struct.mixart_mgr*, %struct.mixart_mgr** %5, align 8
  %16 = load i32, i32* @MIXART_PSEUDOREG_MXLX_STATUS_OFFSET, align 4
  %17 = call i32 @MIXART_MEM(%struct.mixart_mgr* %15, i32 %16)
  %18 = call i32 @readl_be(i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load %struct.mixart_mgr*, %struct.mixart_mgr** %5, align 8
  %20 = load i32, i32* @MIXART_PSEUDOREG_ELF_STATUS_OFFSET, align 4
  %21 = call i32 @MIXART_MEM(%struct.mixart_mgr* %19, i32 %20)
  %22 = call i32 @readl_be(i32 %21)
  store i32 %22, i32* %11, align 4
  %23 = load %struct.mixart_mgr*, %struct.mixart_mgr** %5, align 8
  %24 = load i32, i32* @MIXART_PSEUDOREG_DXLX_STATUS_OFFSET, align 4
  %25 = call i32 @MIXART_MEM(%struct.mixart_mgr* %23, i32 %24)
  %26 = call i32 @readl_be(i32 %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp eq i32 %27, 5
  br i1 %28, label %29, label %37

29:                                               ; preds = %3
  %30 = load %struct.mixart_mgr*, %struct.mixart_mgr** %5, align 8
  %31 = getelementptr inbounds %struct.mixart_mgr, %struct.mixart_mgr* %30, i32 0, i32 2
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = call i32 (i32*, i8*, ...) @dev_err(i32* %33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @EAGAIN, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %401

37:                                               ; preds = %3
  %38 = load i32, i32* %6, align 4
  switch i32 %38, label %192 [
    i32 128, label %39
    i32 129, label %111
    i32 130, label %191
  ]

39:                                               ; preds = %37
  %40 = load i32, i32* %10, align 4
  %41 = icmp eq i32 %40, 4
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load %struct.mixart_mgr*, %struct.mixart_mgr** %5, align 8
  %44 = getelementptr inbounds %struct.mixart_mgr, %struct.mixart_mgr* %43, i32 0, i32 2
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = call i32 @dev_dbg(i32* %46, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %401

48:                                               ; preds = %39
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %48
  %52 = load %struct.mixart_mgr*, %struct.mixart_mgr** %5, align 8
  %53 = getelementptr inbounds %struct.mixart_mgr, %struct.mixart_mgr* %52, i32 0, i32 2
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %10, align 4
  %57 = call i32 (i32*, i8*, ...) @dev_err(i32* %55, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @EIO, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %401

60:                                               ; preds = %48
  %61 = load %struct.firmware*, %struct.firmware** %7, align 8
  %62 = getelementptr inbounds %struct.firmware, %struct.firmware* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to i32*
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %68, label %71

68:                                               ; preds = %60
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %401

71:                                               ; preds = %60
  %72 = load %struct.firmware*, %struct.firmware** %7, align 8
  %73 = getelementptr inbounds %struct.firmware, %struct.firmware* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = srem i32 %74, 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %401

80:                                               ; preds = %71
  %81 = load %struct.mixart_mgr*, %struct.mixart_mgr** %5, align 8
  %82 = load i32, i32* @MIXART_PSEUDOREG_MXLX_STATUS_OFFSET, align 4
  %83 = call i32 @MIXART_MEM(%struct.mixart_mgr* %81, i32 %82)
  %84 = call i32 @writel_be(i32 1, i32 %83)
  %85 = load i32, i32* @MIXART_MOTHERBOARD_XLX_BASE_ADDRESS, align 4
  %86 = load %struct.mixart_mgr*, %struct.mixart_mgr** %5, align 8
  %87 = load i32, i32* @MIXART_PSEUDOREG_MXLX_BASE_ADDR_OFFSET, align 4
  %88 = call i32 @MIXART_MEM(%struct.mixart_mgr* %86, i32 %87)
  %89 = call i32 @writel_be(i32 %85, i32 %88)
  %90 = load %struct.firmware*, %struct.firmware** %7, align 8
  %91 = getelementptr inbounds %struct.firmware, %struct.firmware* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.mixart_mgr*, %struct.mixart_mgr** %5, align 8
  %94 = load i32, i32* @MIXART_PSEUDOREG_MXLX_SIZE_OFFSET, align 4
  %95 = call i32 @MIXART_MEM(%struct.mixart_mgr* %93, i32 %94)
  %96 = call i32 @writel_be(i32 %92, i32 %95)
  %97 = load %struct.mixart_mgr*, %struct.mixart_mgr** %5, align 8
  %98 = load i32, i32* @MIXART_MOTHERBOARD_XLX_BASE_ADDRESS, align 4
  %99 = call i32 @MIXART_MEM(%struct.mixart_mgr* %97, i32 %98)
  %100 = load %struct.firmware*, %struct.firmware** %7, align 8
  %101 = getelementptr inbounds %struct.firmware, %struct.firmware* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.firmware*, %struct.firmware** %7, align 8
  %104 = getelementptr inbounds %struct.firmware, %struct.firmware* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @memcpy_toio(i32 %99, i64 %102, i32 %105)
  %107 = load %struct.mixart_mgr*, %struct.mixart_mgr** %5, align 8
  %108 = load i32, i32* @MIXART_PSEUDOREG_MXLX_STATUS_OFFSET, align 4
  %109 = call i32 @MIXART_MEM(%struct.mixart_mgr* %107, i32 %108)
  %110 = call i32 @writel_be(i32 2, i32 %109)
  store i32 0, i32* %4, align 4
  br label %401

111:                                              ; preds = %37
  %112 = load i32, i32* %11, align 4
  %113 = icmp eq i32 %112, 4
  br i1 %113, label %114, label %120

114:                                              ; preds = %111
  %115 = load %struct.mixart_mgr*, %struct.mixart_mgr** %5, align 8
  %116 = getelementptr inbounds %struct.mixart_mgr, %struct.mixart_mgr* %115, i32 0, i32 2
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = call i32 @dev_dbg(i32* %118, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %401

120:                                              ; preds = %111
  %121 = load i32, i32* %11, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %120
  %124 = load %struct.mixart_mgr*, %struct.mixart_mgr** %5, align 8
  %125 = getelementptr inbounds %struct.mixart_mgr, %struct.mixart_mgr* %124, i32 0, i32 2
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load i32, i32* %11, align 4
  %129 = call i32 (i32*, i8*, ...) @dev_err(i32* %127, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %128)
  %130 = load i32, i32* @EIO, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %4, align 4
  br label %401

132:                                              ; preds = %120
  %133 = load %struct.mixart_mgr*, %struct.mixart_mgr** %5, align 8
  %134 = load i32, i32* @MIXART_PSEUDOREG_MXLX_STATUS_OFFSET, align 4
  %135 = call i32 @mixart_wait_nice_for_register_value(%struct.mixart_mgr* %133, i32 %134, i32 1, i32 4, i32 500)
  store i32 %135, i32* %8, align 4
  %136 = load i32, i32* %8, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %132
  %139 = load %struct.mixart_mgr*, %struct.mixart_mgr** %5, align 8
  %140 = getelementptr inbounds %struct.mixart_mgr, %struct.mixart_mgr* %139, i32 0, i32 2
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = call i32 (i32*, i8*, ...) @dev_err(i32* %142, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0))
  %144 = load i32, i32* %8, align 4
  store i32 %144, i32* %4, align 4
  br label %401

145:                                              ; preds = %132
  %146 = load %struct.mixart_mgr*, %struct.mixart_mgr** %5, align 8
  %147 = load i32, i32* @MIXART_PSEUDOREG_BOARDNUMBER, align 4
  %148 = call i32 @MIXART_MEM(%struct.mixart_mgr* %146, i32 %147)
  %149 = call i32 @writel_be(i32 0, i32 %148)
  %150 = load %struct.mixart_mgr*, %struct.mixart_mgr** %5, align 8
  %151 = load i32, i32* @MIXART_FLOWTABLE_PTR, align 4
  %152 = call i32 @MIXART_MEM(%struct.mixart_mgr* %150, i32 %151)
  %153 = call i32 @writel_be(i32 0, i32 %152)
  %154 = load %struct.mixart_mgr*, %struct.mixart_mgr** %5, align 8
  %155 = load i32, i32* @MIXART_PSEUDOREG_ELF_STATUS_OFFSET, align 4
  %156 = call i32 @MIXART_MEM(%struct.mixart_mgr* %154, i32 %155)
  %157 = call i32 @writel_be(i32 1, i32 %156)
  %158 = load %struct.mixart_mgr*, %struct.mixart_mgr** %5, align 8
  %159 = load %struct.firmware*, %struct.firmware** %7, align 8
  %160 = call i32 @mixart_load_elf(%struct.mixart_mgr* %158, %struct.firmware* %159)
  store i32 %160, i32* %8, align 4
  %161 = load i32, i32* %8, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %145
  %164 = load i32, i32* %8, align 4
  store i32 %164, i32* %4, align 4
  br label %401

165:                                              ; preds = %145
  %166 = load %struct.mixart_mgr*, %struct.mixart_mgr** %5, align 8
  %167 = load i32, i32* @MIXART_PSEUDOREG_ELF_STATUS_OFFSET, align 4
  %168 = call i32 @MIXART_MEM(%struct.mixart_mgr* %166, i32 %167)
  %169 = call i32 @writel_be(i32 2, i32 %168)
  %170 = load %struct.mixart_mgr*, %struct.mixart_mgr** %5, align 8
  %171 = load i32, i32* @MIXART_PSEUDOREG_ELF_STATUS_OFFSET, align 4
  %172 = call i32 @mixart_wait_nice_for_register_value(%struct.mixart_mgr* %170, i32 %171, i32 1, i32 4, i32 300)
  store i32 %172, i32* %8, align 4
  %173 = load i32, i32* %8, align 4
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %175, label %182

175:                                              ; preds = %165
  %176 = load %struct.mixart_mgr*, %struct.mixart_mgr** %5, align 8
  %177 = getelementptr inbounds %struct.mixart_mgr, %struct.mixart_mgr* %176, i32 0, i32 2
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 0
  %180 = call i32 (i32*, i8*, ...) @dev_err(i32* %179, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %181 = load i32, i32* %8, align 4
  store i32 %181, i32* %4, align 4
  br label %401

182:                                              ; preds = %165
  %183 = load %struct.mixart_mgr*, %struct.mixart_mgr** %5, align 8
  %184 = getelementptr inbounds %struct.mixart_mgr, %struct.mixart_mgr* %183, i32 0, i32 4
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.mixart_mgr*, %struct.mixart_mgr** %5, align 8
  %188 = load i32, i32* @MIXART_FLOWTABLE_PTR, align 4
  %189 = call i32 @MIXART_MEM(%struct.mixart_mgr* %187, i32 %188)
  %190 = call i32 @writel_be(i32 %186, i32 %189)
  store i32 0, i32* %4, align 4
  br label %401

191:                                              ; preds = %37
  br label %192

192:                                              ; preds = %37, %191
  %193 = load i32, i32* %11, align 4
  %194 = icmp ne i32 %193, 4
  br i1 %194, label %198, label %195

195:                                              ; preds = %192
  %196 = load i32, i32* %10, align 4
  %197 = icmp ne i32 %196, 4
  br i1 %197, label %198, label %206

198:                                              ; preds = %195, %192
  %199 = load %struct.mixart_mgr*, %struct.mixart_mgr** %5, align 8
  %200 = getelementptr inbounds %struct.mixart_mgr, %struct.mixart_mgr* %199, i32 0, i32 2
  %201 = load %struct.TYPE_4__*, %struct.TYPE_4__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 0
  %203 = call i32 (i32*, i8*, ...) @dev_err(i32* %202, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0))
  %204 = load i32, i32* @EIO, align 4
  %205 = sub nsw i32 0, %204
  store i32 %205, i32* %4, align 4
  br label %401

206:                                              ; preds = %195
  %207 = load %struct.mixart_mgr*, %struct.mixart_mgr** %5, align 8
  %208 = load i32, i32* @MIXART_PSEUDOREG_DBRD_PRESENCE_OFFSET, align 4
  %209 = call i32 @mixart_wait_nice_for_register_value(%struct.mixart_mgr* %207, i32 %208, i32 0, i32 0, i32 30)
  store i32 %209, i32* %8, align 4
  %210 = load i32, i32* %8, align 4
  %211 = icmp slt i32 %210, 0
  br i1 %211, label %212, label %219

212:                                              ; preds = %206
  %213 = load %struct.mixart_mgr*, %struct.mixart_mgr** %5, align 8
  %214 = getelementptr inbounds %struct.mixart_mgr, %struct.mixart_mgr* %213, i32 0, i32 2
  %215 = load %struct.TYPE_4__*, %struct.TYPE_4__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 0
  %217 = call i32 (i32*, i8*, ...) @dev_err(i32* %216, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  %218 = load i32, i32* %8, align 4
  store i32 %218, i32* %4, align 4
  br label %401

219:                                              ; preds = %206
  %220 = load i32, i32* @DAUGHTER_TYPE_MASK, align 4
  %221 = load %struct.mixart_mgr*, %struct.mixart_mgr** %5, align 8
  %222 = load i32, i32* @MIXART_PSEUDOREG_DBRD_TYPE_OFFSET, align 4
  %223 = call i32 @MIXART_MEM(%struct.mixart_mgr* %221, i32 %222)
  %224 = call i32 @readl_be(i32 %223)
  %225 = and i32 %220, %224
  %226 = load %struct.mixart_mgr*, %struct.mixart_mgr** %5, align 8
  %227 = getelementptr inbounds %struct.mixart_mgr, %struct.mixart_mgr* %226, i32 0, i32 0
  store i32 %225, i32* %227, align 8
  %228 = load %struct.mixart_mgr*, %struct.mixart_mgr** %5, align 8
  %229 = getelementptr inbounds %struct.mixart_mgr, %struct.mixart_mgr* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* @MIXART_DAUGHTER_TYPE_NONE, align 4
  %232 = icmp eq i32 %230, %231
  br i1 %232, label %233, label %234

233:                                              ; preds = %219
  br label %324

234:                                              ; preds = %219
  %235 = load %struct.mixart_mgr*, %struct.mixart_mgr** %5, align 8
  %236 = getelementptr inbounds %struct.mixart_mgr, %struct.mixart_mgr* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = load i32, i32* @MIXART_DAUGHTER_TYPE_AES, align 4
  %239 = icmp ne i32 %237, %238
  br i1 %239, label %240, label %243

240:                                              ; preds = %234
  %241 = load i32, i32* @EINVAL, align 4
  %242 = sub nsw i32 0, %241
  store i32 %242, i32* %4, align 4
  br label %401

243:                                              ; preds = %234
  %244 = load i32, i32* %12, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %255

246:                                              ; preds = %243
  %247 = load %struct.mixart_mgr*, %struct.mixart_mgr** %5, align 8
  %248 = getelementptr inbounds %struct.mixart_mgr, %struct.mixart_mgr* %247, i32 0, i32 2
  %249 = load %struct.TYPE_4__*, %struct.TYPE_4__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %249, i32 0, i32 0
  %251 = load i32, i32* %12, align 4
  %252 = call i32 (i32*, i8*, ...) @dev_err(i32* %250, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i32 %251)
  %253 = load i32, i32* @EIO, align 4
  %254 = sub nsw i32 0, %253
  store i32 %254, i32* %4, align 4
  br label %401

255:                                              ; preds = %243
  %256 = load %struct.firmware*, %struct.firmware** %7, align 8
  %257 = getelementptr inbounds %struct.firmware, %struct.firmware* %256, i32 0, i32 1
  %258 = load i64, i64* %257, align 8
  %259 = inttoptr i64 %258 to i32*
  %260 = getelementptr inbounds i32, i32* %259, i64 0
  %261 = load i32, i32* %260, align 4
  %262 = icmp eq i32 %261, -1
  br i1 %262, label %263, label %266

263:                                              ; preds = %255
  %264 = load i32, i32* @EINVAL, align 4
  %265 = sub nsw i32 0, %264
  store i32 %265, i32* %4, align 4
  br label %401

266:                                              ; preds = %255
  %267 = load %struct.firmware*, %struct.firmware** %7, align 8
  %268 = getelementptr inbounds %struct.firmware, %struct.firmware* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = srem i32 %269, 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %275

272:                                              ; preds = %266
  %273 = load i32, i32* @EINVAL, align 4
  %274 = sub nsw i32 0, %273
  store i32 %274, i32* %4, align 4
  br label %401

275:                                              ; preds = %266
  %276 = load %struct.firmware*, %struct.firmware** %7, align 8
  %277 = getelementptr inbounds %struct.firmware, %struct.firmware* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = load %struct.mixart_mgr*, %struct.mixart_mgr** %5, align 8
  %280 = load i32, i32* @MIXART_PSEUDOREG_DXLX_SIZE_OFFSET, align 4
  %281 = call i32 @MIXART_MEM(%struct.mixart_mgr* %279, i32 %280)
  %282 = call i32 @writel_be(i32 %278, i32 %281)
  %283 = load %struct.mixart_mgr*, %struct.mixart_mgr** %5, align 8
  %284 = load i32, i32* @MIXART_PSEUDOREG_DXLX_STATUS_OFFSET, align 4
  %285 = call i32 @MIXART_MEM(%struct.mixart_mgr* %283, i32 %284)
  %286 = call i32 @writel_be(i32 1, i32 %285)
  %287 = load %struct.mixart_mgr*, %struct.mixart_mgr** %5, align 8
  %288 = load i32, i32* @MIXART_PSEUDOREG_DXLX_STATUS_OFFSET, align 4
  %289 = call i32 @mixart_wait_nice_for_register_value(%struct.mixart_mgr* %287, i32 %288, i32 1, i32 2, i32 30)
  store i32 %289, i32* %8, align 4
  %290 = load i32, i32* %8, align 4
  %291 = icmp slt i32 %290, 0
  br i1 %291, label %292, label %299

292:                                              ; preds = %275
  %293 = load %struct.mixart_mgr*, %struct.mixart_mgr** %5, align 8
  %294 = getelementptr inbounds %struct.mixart_mgr, %struct.mixart_mgr* %293, i32 0, i32 2
  %295 = load %struct.TYPE_4__*, %struct.TYPE_4__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %295, i32 0, i32 0
  %297 = call i32 (i32*, i8*, ...) @dev_err(i32* %296, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  %298 = load i32, i32* %8, align 4
  store i32 %298, i32* %4, align 4
  br label %401

299:                                              ; preds = %275
  %300 = load %struct.mixart_mgr*, %struct.mixart_mgr** %5, align 8
  %301 = load i32, i32* @MIXART_PSEUDOREG_DXLX_BASE_ADDR_OFFSET, align 4
  %302 = call i32 @MIXART_MEM(%struct.mixart_mgr* %300, i32 %301)
  %303 = call i32 @readl_be(i32 %302)
  store i32 %303, i32* %13, align 4
  %304 = load i32, i32* %13, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %309, label %306

306:                                              ; preds = %299
  %307 = load i32, i32* @EINVAL, align 4
  %308 = sub nsw i32 0, %307
  store i32 %308, i32* %4, align 4
  br label %401

309:                                              ; preds = %299
  %310 = load %struct.mixart_mgr*, %struct.mixart_mgr** %5, align 8
  %311 = load i32, i32* %13, align 4
  %312 = call i32 @MIXART_MEM(%struct.mixart_mgr* %310, i32 %311)
  %313 = load %struct.firmware*, %struct.firmware** %7, align 8
  %314 = getelementptr inbounds %struct.firmware, %struct.firmware* %313, i32 0, i32 1
  %315 = load i64, i64* %314, align 8
  %316 = load %struct.firmware*, %struct.firmware** %7, align 8
  %317 = getelementptr inbounds %struct.firmware, %struct.firmware* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = call i32 @memcpy_toio(i32 %312, i64 %315, i32 %318)
  %320 = load %struct.mixart_mgr*, %struct.mixart_mgr** %5, align 8
  %321 = load i32, i32* @MIXART_PSEUDOREG_DXLX_STATUS_OFFSET, align 4
  %322 = call i32 @MIXART_MEM(%struct.mixart_mgr* %320, i32 %321)
  %323 = call i32 @writel_be(i32 4, i32 %322)
  br label %324

324:                                              ; preds = %309, %233
  %325 = load %struct.mixart_mgr*, %struct.mixart_mgr** %5, align 8
  %326 = load i32, i32* @MIXART_PSEUDOREG_DXLX_STATUS_OFFSET, align 4
  %327 = call i32 @mixart_wait_nice_for_register_value(%struct.mixart_mgr* %325, i32 %326, i32 1, i32 3, i32 300)
  store i32 %327, i32* %8, align 4
  %328 = load i32, i32* %8, align 4
  %329 = icmp slt i32 %328, 0
  br i1 %329, label %330, label %337

330:                                              ; preds = %324
  %331 = load %struct.mixart_mgr*, %struct.mixart_mgr** %5, align 8
  %332 = getelementptr inbounds %struct.mixart_mgr, %struct.mixart_mgr* %331, i32 0, i32 2
  %333 = load %struct.TYPE_4__*, %struct.TYPE_4__** %332, align 8
  %334 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %333, i32 0, i32 0
  %335 = call i32 (i32*, i8*, ...) @dev_err(i32* %334, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0))
  %336 = load i32, i32* %8, align 4
  store i32 %336, i32* %4, align 4
  br label %401

337:                                              ; preds = %324
  %338 = load %struct.mixart_mgr*, %struct.mixart_mgr** %5, align 8
  %339 = call i32 @snd_mixart_init_mailbox(%struct.mixart_mgr* %338)
  %340 = load %struct.mixart_mgr*, %struct.mixart_mgr** %5, align 8
  %341 = call i32 @mixart_first_init(%struct.mixart_mgr* %340)
  store i32 %341, i32* %8, align 4
  %342 = load i32, i32* %8, align 4
  %343 = icmp slt i32 %342, 0
  br i1 %343, label %344, label %351

344:                                              ; preds = %337
  %345 = load %struct.mixart_mgr*, %struct.mixart_mgr** %5, align 8
  %346 = getelementptr inbounds %struct.mixart_mgr, %struct.mixart_mgr* %345, i32 0, i32 2
  %347 = load %struct.TYPE_4__*, %struct.TYPE_4__** %346, align 8
  %348 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %347, i32 0, i32 0
  %349 = call i32 (i32*, i8*, ...) @dev_err(i32* %348, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0))
  %350 = load i32, i32* %8, align 4
  store i32 %350, i32* %4, align 4
  br label %401

351:                                              ; preds = %337
  store i32 0, i32* %9, align 4
  br label %352

352:                                              ; preds = %392, %351
  %353 = load i32, i32* %9, align 4
  %354 = load %struct.mixart_mgr*, %struct.mixart_mgr** %5, align 8
  %355 = getelementptr inbounds %struct.mixart_mgr, %struct.mixart_mgr* %354, i32 0, i32 1
  %356 = load i32, i32* %355, align 4
  %357 = icmp slt i32 %353, %356
  br i1 %357, label %358, label %395

358:                                              ; preds = %352
  %359 = load %struct.mixart_mgr*, %struct.mixart_mgr** %5, align 8
  %360 = getelementptr inbounds %struct.mixart_mgr, %struct.mixart_mgr* %359, i32 0, i32 3
  %361 = load %struct.snd_mixart**, %struct.snd_mixart*** %360, align 8
  %362 = load i32, i32* %9, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds %struct.snd_mixart*, %struct.snd_mixart** %361, i64 %363
  %365 = load %struct.snd_mixart*, %struct.snd_mixart** %364, align 8
  store %struct.snd_mixart* %365, %struct.snd_mixart** %14, align 8
  %366 = load %struct.snd_mixart*, %struct.snd_mixart** %14, align 8
  %367 = call i32 @snd_mixart_create_pcm(%struct.snd_mixart* %366)
  store i32 %367, i32* %8, align 4
  %368 = icmp slt i32 %367, 0
  br i1 %368, label %369, label %371

369:                                              ; preds = %358
  %370 = load i32, i32* %8, align 4
  store i32 %370, i32* %4, align 4
  br label %401

371:                                              ; preds = %358
  %372 = load i32, i32* %9, align 4
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %374, label %383

374:                                              ; preds = %371
  %375 = load %struct.snd_mixart*, %struct.snd_mixart** %14, align 8
  %376 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %375, i32 0, i32 1
  %377 = load i32, i32* %376, align 4
  %378 = call i32 @snd_mixart_create_mixer(i32 %377)
  store i32 %378, i32* %8, align 4
  %379 = icmp slt i32 %378, 0
  br i1 %379, label %380, label %382

380:                                              ; preds = %374
  %381 = load i32, i32* %8, align 4
  store i32 %381, i32* %4, align 4
  br label %401

382:                                              ; preds = %374
  br label %383

383:                                              ; preds = %382, %371
  %384 = load %struct.snd_mixart*, %struct.snd_mixart** %14, align 8
  %385 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %384, i32 0, i32 0
  %386 = load i32, i32* %385, align 4
  %387 = call i32 @snd_card_register(i32 %386)
  store i32 %387, i32* %8, align 4
  %388 = icmp slt i32 %387, 0
  br i1 %388, label %389, label %391

389:                                              ; preds = %383
  %390 = load i32, i32* %8, align 4
  store i32 %390, i32* %4, align 4
  br label %401

391:                                              ; preds = %383
  br label %392

392:                                              ; preds = %391
  %393 = load i32, i32* %9, align 4
  %394 = add nsw i32 %393, 1
  store i32 %394, i32* %9, align 4
  br label %352

395:                                              ; preds = %352
  %396 = load %struct.mixart_mgr*, %struct.mixart_mgr** %5, align 8
  %397 = getelementptr inbounds %struct.mixart_mgr, %struct.mixart_mgr* %396, i32 0, i32 2
  %398 = load %struct.TYPE_4__*, %struct.TYPE_4__** %397, align 8
  %399 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %398, i32 0, i32 0
  %400 = call i32 @dev_dbg(i32* %399, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.13, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %401

401:                                              ; preds = %395, %389, %380, %369, %344, %330, %306, %292, %272, %263, %246, %240, %212, %198, %182, %175, %163, %138, %123, %114, %80, %77, %68, %51, %42, %29
  %402 = load i32, i32* %4, align 4
  ret i32 %402
}

declare dso_local i32 @readl_be(i32) #1

declare dso_local i32 @MIXART_MEM(%struct.mixart_mgr*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @writel_be(i32, i32) #1

declare dso_local i32 @memcpy_toio(i32, i64, i32) #1

declare dso_local i32 @mixart_wait_nice_for_register_value(%struct.mixart_mgr*, i32, i32, i32, i32) #1

declare dso_local i32 @mixart_load_elf(%struct.mixart_mgr*, %struct.firmware*) #1

declare dso_local i32 @snd_mixart_init_mailbox(%struct.mixart_mgr*) #1

declare dso_local i32 @mixart_first_init(%struct.mixart_mgr*) #1

declare dso_local i32 @snd_mixart_create_pcm(%struct.snd_mixart*) #1

declare dso_local i32 @snd_mixart_create_mixer(i32) #1

declare dso_local i32 @snd_card_register(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
