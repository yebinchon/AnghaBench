; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr_core.c_pcxhr_send_msg_nolock.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr_core.c_pcxhr_send_msg_nolock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcxhr_mgr = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.pcxhr_rmh = type { i32, i32*, i64 }

@PCXHR_SIZE_MAX_CMD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PCXHR_IT_MESSAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"pcxhr_send_message : ED_DSP_CRASHED\0A\00", align 1
@PCXHR_DSP_ISR = common dso_local global i32 0, align 4
@PCXHR_ISR_HI08_CHK = common dso_local global i32 0, align 4
@PCXHR_TIMEOUT_DSP = common dso_local global i32 0, align 4
@PCXHR_IT_RESET_CHK = common dso_local global i32 0, align 4
@PCXHR_ISR_HI08_TRDY = common dso_local global i32 0, align 4
@PCXHR_DSP_TXH = common dso_local global i32 0, align 4
@PCXHR_DSP_TXM = common dso_local global i32 0, align 4
@PCXHR_DSP_TXL = common dso_local global i32 0, align 4
@PCXHR_ISR_HI08_ERR = common dso_local global i8 0, align 1
@PCXHR_ISR_HI08_RXDF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"ERROR RMH: ISR:RXDF=1 (ISR = %x)\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"ERROR RMH(%d): 0x%x\0A\00", align 1
@PCXHR_IT_RESET_SEMAPHORE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@CMD_LAST_INDEX = common dso_local global i64 0, align 8
@cmd_names = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcxhr_mgr*, %struct.pcxhr_rmh*)* @pcxhr_send_msg_nolock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcxhr_send_msg_nolock(%struct.pcxhr_mgr* %0, %struct.pcxhr_rmh* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pcxhr_mgr*, align 8
  %5 = alloca %struct.pcxhr_rmh*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  store %struct.pcxhr_mgr* %0, %struct.pcxhr_mgr** %4, align 8
  store %struct.pcxhr_rmh* %1, %struct.pcxhr_rmh** %5, align 8
  %10 = load %struct.pcxhr_rmh*, %struct.pcxhr_rmh** %5, align 8
  %11 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @PCXHR_SIZE_MAX_CMD, align 4
  %14 = icmp sge i32 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i64 @snd_BUG_ON(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %268

21:                                               ; preds = %2
  %22 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %4, align 8
  %23 = load i32, i32* @PCXHR_IT_MESSAGE, align 4
  %24 = call i32 @pcxhr_send_it_dsp(%struct.pcxhr_mgr* %22, i32 %23, i32 1)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %21
  %28 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %4, align 8
  %29 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call i32 (i32*, i8*, ...) @dev_err(i32* %31, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %268

34:                                               ; preds = %21
  %35 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %4, align 8
  %36 = load i32, i32* @PCXHR_DSP_ISR, align 4
  %37 = load i32, i32* @PCXHR_ISR_HI08_CHK, align 4
  %38 = load i32, i32* @PCXHR_ISR_HI08_CHK, align 4
  %39 = load i32, i32* @PCXHR_TIMEOUT_DSP, align 4
  %40 = call i32 @pcxhr_check_reg_bit(%struct.pcxhr_mgr* %35, i32 %36, i32 %37, i32 %38, i32 %39, i8* %9)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %3, align 4
  br label %268

45:                                               ; preds = %34
  %46 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %4, align 8
  %47 = load i32, i32* @PCXHR_IT_RESET_CHK, align 4
  %48 = call i32 @pcxhr_send_it_dsp(%struct.pcxhr_mgr* %46, i32 %47, i32 1)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %3, align 4
  br label %268

53:                                               ; preds = %45
  %54 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %4, align 8
  %55 = load i32, i32* @PCXHR_DSP_ISR, align 4
  %56 = load i32, i32* @PCXHR_ISR_HI08_CHK, align 4
  %57 = load i32, i32* @PCXHR_TIMEOUT_DSP, align 4
  %58 = call i32 @pcxhr_check_reg_bit(%struct.pcxhr_mgr* %54, i32 %55, i32 %56, i32 0, i32 %57, i8* %9)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %53
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %3, align 4
  br label %268

63:                                               ; preds = %53
  %64 = load %struct.pcxhr_rmh*, %struct.pcxhr_rmh** %5, align 8
  %65 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %8, align 4
  %69 = load %struct.pcxhr_rmh*, %struct.pcxhr_rmh** %5, align 8
  %70 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp sgt i32 %71, 1
  br i1 %72, label %73, label %76

73:                                               ; preds = %63
  %74 = load i32, i32* %8, align 4
  %75 = or i32 %74, 32768
  store i32 %75, i32* %8, align 4
  br label %79

76:                                               ; preds = %63
  %77 = load i32, i32* %8, align 4
  %78 = and i32 %77, 16744447
  store i32 %78, i32* %8, align 4
  br label %79

79:                                               ; preds = %76, %73
  %80 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %4, align 8
  %81 = load i32, i32* @PCXHR_DSP_ISR, align 4
  %82 = load i32, i32* @PCXHR_ISR_HI08_TRDY, align 4
  %83 = load i32, i32* @PCXHR_ISR_HI08_TRDY, align 4
  %84 = load i32, i32* @PCXHR_TIMEOUT_DSP, align 4
  %85 = call i32 @pcxhr_check_reg_bit(%struct.pcxhr_mgr* %80, i32 %81, i32 %82, i32 %83, i32 %84, i8* %9)
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %79
  %89 = load i32, i32* %6, align 4
  store i32 %89, i32* %3, align 4
  br label %268

90:                                               ; preds = %79
  %91 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %4, align 8
  %92 = load i32, i32* @PCXHR_DSP_TXH, align 4
  %93 = load i32, i32* %8, align 4
  %94 = ashr i32 %93, 16
  %95 = and i32 %94, 255
  %96 = call i32 @PCXHR_OUTPB(%struct.pcxhr_mgr* %91, i32 %92, i32 %95)
  %97 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %4, align 8
  %98 = load i32, i32* @PCXHR_DSP_TXM, align 4
  %99 = load i32, i32* %8, align 4
  %100 = ashr i32 %99, 8
  %101 = and i32 %100, 255
  %102 = call i32 @PCXHR_OUTPB(%struct.pcxhr_mgr* %97, i32 %98, i32 %101)
  %103 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %4, align 8
  %104 = load i32, i32* @PCXHR_DSP_TXL, align 4
  %105 = load i32, i32* %8, align 4
  %106 = and i32 %105, 255
  %107 = call i32 @PCXHR_OUTPB(%struct.pcxhr_mgr* %103, i32 %104, i32 %106)
  %108 = load %struct.pcxhr_rmh*, %struct.pcxhr_rmh** %5, align 8
  %109 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp sgt i32 %110, 1
  br i1 %111, label %112, label %191

112:                                              ; preds = %90
  %113 = load %struct.pcxhr_rmh*, %struct.pcxhr_rmh** %5, align 8
  %114 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = sub nsw i32 %115, 1
  store i32 %116, i32* %8, align 4
  %117 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %4, align 8
  %118 = load i32, i32* @PCXHR_DSP_ISR, align 4
  %119 = load i32, i32* @PCXHR_ISR_HI08_TRDY, align 4
  %120 = load i32, i32* @PCXHR_ISR_HI08_TRDY, align 4
  %121 = load i32, i32* @PCXHR_TIMEOUT_DSP, align 4
  %122 = call i32 @pcxhr_check_reg_bit(%struct.pcxhr_mgr* %117, i32 %118, i32 %119, i32 %120, i32 %121, i8* %9)
  store i32 %122, i32* %6, align 4
  %123 = load i32, i32* %6, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %112
  %126 = load i32, i32* %6, align 4
  store i32 %126, i32* %3, align 4
  br label %268

127:                                              ; preds = %112
  %128 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %4, align 8
  %129 = load i32, i32* @PCXHR_DSP_TXH, align 4
  %130 = load i32, i32* %8, align 4
  %131 = ashr i32 %130, 16
  %132 = and i32 %131, 255
  %133 = call i32 @PCXHR_OUTPB(%struct.pcxhr_mgr* %128, i32 %129, i32 %132)
  %134 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %4, align 8
  %135 = load i32, i32* @PCXHR_DSP_TXM, align 4
  %136 = load i32, i32* %8, align 4
  %137 = ashr i32 %136, 8
  %138 = and i32 %137, 255
  %139 = call i32 @PCXHR_OUTPB(%struct.pcxhr_mgr* %134, i32 %135, i32 %138)
  %140 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %4, align 8
  %141 = load i32, i32* @PCXHR_DSP_TXL, align 4
  %142 = load i32, i32* %8, align 4
  %143 = and i32 %142, 255
  %144 = call i32 @PCXHR_OUTPB(%struct.pcxhr_mgr* %140, i32 %141, i32 %143)
  store i32 1, i32* %7, align 4
  br label %145

145:                                              ; preds = %187, %127
  %146 = load i32, i32* %7, align 4
  %147 = load %struct.pcxhr_rmh*, %struct.pcxhr_rmh** %5, align 8
  %148 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = icmp slt i32 %146, %149
  br i1 %150, label %151, label %190

151:                                              ; preds = %145
  %152 = load %struct.pcxhr_rmh*, %struct.pcxhr_rmh** %5, align 8
  %153 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %7, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  store i32 %158, i32* %8, align 4
  %159 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %4, align 8
  %160 = load i32, i32* @PCXHR_DSP_ISR, align 4
  %161 = load i32, i32* @PCXHR_ISR_HI08_TRDY, align 4
  %162 = load i32, i32* @PCXHR_ISR_HI08_TRDY, align 4
  %163 = load i32, i32* @PCXHR_TIMEOUT_DSP, align 4
  %164 = call i32 @pcxhr_check_reg_bit(%struct.pcxhr_mgr* %159, i32 %160, i32 %161, i32 %162, i32 %163, i8* %9)
  store i32 %164, i32* %6, align 4
  %165 = load i32, i32* %6, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %151
  %168 = load i32, i32* %6, align 4
  store i32 %168, i32* %3, align 4
  br label %268

169:                                              ; preds = %151
  %170 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %4, align 8
  %171 = load i32, i32* @PCXHR_DSP_TXH, align 4
  %172 = load i32, i32* %8, align 4
  %173 = ashr i32 %172, 16
  %174 = and i32 %173, 255
  %175 = call i32 @PCXHR_OUTPB(%struct.pcxhr_mgr* %170, i32 %171, i32 %174)
  %176 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %4, align 8
  %177 = load i32, i32* @PCXHR_DSP_TXM, align 4
  %178 = load i32, i32* %8, align 4
  %179 = ashr i32 %178, 8
  %180 = and i32 %179, 255
  %181 = call i32 @PCXHR_OUTPB(%struct.pcxhr_mgr* %176, i32 %177, i32 %180)
  %182 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %4, align 8
  %183 = load i32, i32* @PCXHR_DSP_TXL, align 4
  %184 = load i32, i32* %8, align 4
  %185 = and i32 %184, 255
  %186 = call i32 @PCXHR_OUTPB(%struct.pcxhr_mgr* %182, i32 %183, i32 %185)
  br label %187

187:                                              ; preds = %169
  %188 = load i32, i32* %7, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %7, align 4
  br label %145

190:                                              ; preds = %145
  br label %191

191:                                              ; preds = %190, %90
  %192 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %4, align 8
  %193 = load i32, i32* @PCXHR_DSP_ISR, align 4
  %194 = load i32, i32* @PCXHR_ISR_HI08_CHK, align 4
  %195 = load i32, i32* @PCXHR_ISR_HI08_CHK, align 4
  %196 = load i32, i32* @PCXHR_TIMEOUT_DSP, align 4
  %197 = call i32 @pcxhr_check_reg_bit(%struct.pcxhr_mgr* %192, i32 %193, i32 %194, i32 %195, i32 %196, i8* %9)
  store i32 %197, i32* %6, align 4
  %198 = load i32, i32* %6, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %202

200:                                              ; preds = %191
  %201 = load i32, i32* %6, align 4
  store i32 %201, i32* %3, align 4
  br label %268

202:                                              ; preds = %191
  %203 = load i8, i8* %9, align 1
  %204 = zext i8 %203 to i32
  %205 = load i8, i8* @PCXHR_ISR_HI08_ERR, align 1
  %206 = zext i8 %205 to i32
  %207 = and i32 %204, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %254

209:                                              ; preds = %202
  %210 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %4, align 8
  %211 = load i32, i32* @PCXHR_DSP_ISR, align 4
  %212 = load i32, i32* @PCXHR_ISR_HI08_RXDF, align 4
  %213 = load i32, i32* @PCXHR_ISR_HI08_RXDF, align 4
  %214 = load i32, i32* @PCXHR_TIMEOUT_DSP, align 4
  %215 = call i32 @pcxhr_check_reg_bit(%struct.pcxhr_mgr* %210, i32 %211, i32 %212, i32 %213, i32 %214, i8* %9)
  store i32 %215, i32* %6, align 4
  %216 = load i32, i32* %6, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %227

218:                                              ; preds = %209
  %219 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %4, align 8
  %220 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %219, i32 0, i32 0
  %221 = load %struct.TYPE_2__*, %struct.TYPE_2__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %221, i32 0, i32 0
  %223 = load i8, i8* %9, align 1
  %224 = zext i8 %223 to i32
  %225 = call i32 (i32*, i8*, ...) @dev_err(i32* %222, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %224)
  %226 = load i32, i32* %6, align 4
  store i32 %226, i32* %3, align 4
  br label %268

227:                                              ; preds = %209
  %228 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %4, align 8
  %229 = load i32, i32* @PCXHR_DSP_TXH, align 4
  %230 = call i32 @PCXHR_INPB(%struct.pcxhr_mgr* %228, i32 %229)
  %231 = shl i32 %230, 16
  store i32 %231, i32* %8, align 4
  %232 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %4, align 8
  %233 = load i32, i32* @PCXHR_DSP_TXM, align 4
  %234 = call i32 @PCXHR_INPB(%struct.pcxhr_mgr* %232, i32 %233)
  %235 = shl i32 %234, 8
  %236 = load i32, i32* %8, align 4
  %237 = or i32 %236, %235
  store i32 %237, i32* %8, align 4
  %238 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %4, align 8
  %239 = load i32, i32* @PCXHR_DSP_TXL, align 4
  %240 = call i32 @PCXHR_INPB(%struct.pcxhr_mgr* %238, i32 %239)
  %241 = load i32, i32* %8, align 4
  %242 = or i32 %241, %240
  store i32 %242, i32* %8, align 4
  %243 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %4, align 8
  %244 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %243, i32 0, i32 0
  %245 = load %struct.TYPE_2__*, %struct.TYPE_2__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %245, i32 0, i32 0
  %247 = load %struct.pcxhr_rmh*, %struct.pcxhr_rmh** %5, align 8
  %248 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %247, i32 0, i32 2
  %249 = load i64, i64* %248, align 8
  %250 = load i32, i32* %8, align 4
  %251 = call i32 (i32*, i8*, ...) @dev_err(i32* %246, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i64 %249, i32 %250)
  %252 = load i32, i32* @EINVAL, align 4
  %253 = sub nsw i32 0, %252
  store i32 %253, i32* %6, align 4
  br label %258

254:                                              ; preds = %202
  %255 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %4, align 8
  %256 = load %struct.pcxhr_rmh*, %struct.pcxhr_rmh** %5, align 8
  %257 = call i32 @pcxhr_read_rmh_status(%struct.pcxhr_mgr* %255, %struct.pcxhr_rmh* %256)
  store i32 %257, i32* %6, align 4
  br label %258

258:                                              ; preds = %254, %227
  %259 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %4, align 8
  %260 = load i32, i32* @PCXHR_IT_RESET_SEMAPHORE, align 4
  %261 = call i32 @pcxhr_send_it_dsp(%struct.pcxhr_mgr* %259, i32 %260, i32 1)
  %262 = icmp slt i32 %261, 0
  br i1 %262, label %263, label %266

263:                                              ; preds = %258
  %264 = load i32, i32* @EIO, align 4
  %265 = sub nsw i32 0, %264
  store i32 %265, i32* %3, align 4
  br label %268

266:                                              ; preds = %258
  %267 = load i32, i32* %6, align 4
  store i32 %267, i32* %3, align 4
  br label %268

268:                                              ; preds = %266, %263, %218, %200, %167, %125, %88, %61, %51, %43, %27, %18
  %269 = load i32, i32* %3, align 4
  ret i32 %269
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @pcxhr_send_it_dsp(%struct.pcxhr_mgr*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @pcxhr_check_reg_bit(%struct.pcxhr_mgr*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @PCXHR_OUTPB(%struct.pcxhr_mgr*, i32, i32) #1

declare dso_local i32 @PCXHR_INPB(%struct.pcxhr_mgr*, i32) #1

declare dso_local i32 @pcxhr_read_rmh_status(%struct.pcxhr_mgr*, %struct.pcxhr_rmh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
