; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst.c_intel_sst_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst.c_intel_sst_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.intel_sst_drv = type { i64, %struct.TYPE_6__*, %struct.sst_fw_save*, i64, i64, i32, i32, i64, i64, i32, i64, i64, i32, i32, i32, %struct.TYPE_5__*, %struct.stream_info*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 (%struct.intel_sst_drv*)*, i64 (%struct.intel_sst_drv*)* }
%struct.sst_fw_save = type { i8*, i8*, i8*, i8* }
%struct.TYPE_5__ = type { i64 }
%struct.stream_info = type { i64, i64, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@SST_RESET = common dso_local global i64 0, align 8
@STREAM_RUNNING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"stream %d is running, can't suspend, abort\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@STREAM_UN_INIT = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SST_MAILBOX_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @intel_sst_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_sst_suspend(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.intel_sst_drv*, align 8
  %5 = alloca %struct.sst_fw_save*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.stream_info*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call %struct.intel_sst_drv* @dev_get_drvdata(%struct.device* %9)
  store %struct.intel_sst_drv* %10, %struct.intel_sst_drv** %4, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %12 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SST_RESET, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %256

17:                                               ; preds = %1
  store i32 1, i32* %6, align 4
  br label %18

18:                                               ; preds = %72, %17
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %21 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %20, i32 0, i32 17
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp sle i32 %19, %23
  br i1 %24, label %25, label %75

25:                                               ; preds = %18
  %26 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %27 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %26, i32 0, i32 16
  %28 = load %struct.stream_info*, %struct.stream_info** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %28, i64 %30
  store %struct.stream_info* %31, %struct.stream_info** %8, align 8
  %32 = load %struct.stream_info*, %struct.stream_info** %8, align 8
  %33 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @STREAM_RUNNING, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %25
  %38 = load %struct.device*, %struct.device** %3, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @dev_err(%struct.device* %38, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @EBUSY, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %256

43:                                               ; preds = %25
  %44 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %45 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %44, i32 0, i32 15
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %71

50:                                               ; preds = %43
  %51 = load %struct.stream_info*, %struct.stream_info** %8, align 8
  %52 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.stream_info*, %struct.stream_info** %8, align 8
  %55 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %54, i32 0, i32 1
  store i64 %53, i64* %55, align 8
  %56 = load %struct.stream_info*, %struct.stream_info** %8, align 8
  %57 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.stream_info*, %struct.stream_info** %8, align 8
  %60 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  %61 = load %struct.stream_info*, %struct.stream_info** %8, align 8
  %62 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @STREAM_UN_INIT, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %50
  %67 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @sst_free_stream(%struct.intel_sst_drv* %67, i32 %68)
  br label %70

70:                                               ; preds = %66, %50
  br label %71

71:                                               ; preds = %70, %43
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %6, align 4
  br label %18

75:                                               ; preds = %18
  %76 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %77 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %76, i32 0, i32 14
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @synchronize_irq(i32 %78)
  %80 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %81 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %80, i32 0, i32 13
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @flush_workqueue(i32 %82)
  %84 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %85 = load i64, i64* @SST_RESET, align 8
  %86 = call i32 @sst_set_fw_state_locked(%struct.intel_sst_drv* %84, i64 %85)
  %87 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %88 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %87, i32 0, i32 1
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = load i64 (%struct.intel_sst_drv*)*, i64 (%struct.intel_sst_drv*)** %90, align 8
  %92 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %93 = call i64 %91(%struct.intel_sst_drv* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %75
  %96 = load i32, i32* @EBUSY, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %2, align 4
  br label %256

98:                                               ; preds = %75
  %99 = load i32, i32* @GFP_KERNEL, align 4
  %100 = call %struct.sst_fw_save* @kzalloc(i32 32, i32 %99)
  store %struct.sst_fw_save* %100, %struct.sst_fw_save** %5, align 8
  %101 = load %struct.sst_fw_save*, %struct.sst_fw_save** %5, align 8
  %102 = icmp ne %struct.sst_fw_save* %101, null
  br i1 %102, label %106, label %103

103:                                              ; preds = %98
  %104 = load i32, i32* @ENOMEM, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %2, align 4
  br label %256

106:                                              ; preds = %98
  %107 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %108 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %107, i32 0, i32 11
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %111 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %110, i32 0, i32 10
  %112 = load i64, i64* %111, align 8
  %113 = sub nsw i64 %109, %112
  %114 = load i32, i32* @GFP_KERNEL, align 4
  %115 = call i8* @kvzalloc(i64 %113, i32 %114)
  %116 = load %struct.sst_fw_save*, %struct.sst_fw_save** %5, align 8
  %117 = getelementptr inbounds %struct.sst_fw_save, %struct.sst_fw_save* %116, i32 0, i32 0
  store i8* %115, i8** %117, align 8
  %118 = load %struct.sst_fw_save*, %struct.sst_fw_save** %5, align 8
  %119 = getelementptr inbounds %struct.sst_fw_save, %struct.sst_fw_save* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %125, label %122

122:                                              ; preds = %106
  %123 = load i32, i32* @ENOMEM, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %7, align 4
  br label %252

125:                                              ; preds = %106
  %126 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %127 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %126, i32 0, i32 8
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %130 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %129, i32 0, i32 7
  %131 = load i64, i64* %130, align 8
  %132 = sub nsw i64 %128, %131
  %133 = load i32, i32* @GFP_KERNEL, align 4
  %134 = call i8* @kvzalloc(i64 %132, i32 %133)
  %135 = load %struct.sst_fw_save*, %struct.sst_fw_save** %5, align 8
  %136 = getelementptr inbounds %struct.sst_fw_save, %struct.sst_fw_save* %135, i32 0, i32 1
  store i8* %134, i8** %136, align 8
  %137 = load %struct.sst_fw_save*, %struct.sst_fw_save** %5, align 8
  %138 = getelementptr inbounds %struct.sst_fw_save, %struct.sst_fw_save* %137, i32 0, i32 1
  %139 = load i8*, i8** %138, align 8
  %140 = icmp ne i8* %139, null
  br i1 %140, label %144, label %141

141:                                              ; preds = %125
  %142 = load i32, i32* @ENOMEM, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %7, align 4
  br label %247

144:                                              ; preds = %125
  %145 = load i64, i64* @SST_MAILBOX_SIZE, align 8
  %146 = load i32, i32* @GFP_KERNEL, align 4
  %147 = call i8* @kvzalloc(i64 %145, i32 %146)
  %148 = load %struct.sst_fw_save*, %struct.sst_fw_save** %5, align 8
  %149 = getelementptr inbounds %struct.sst_fw_save, %struct.sst_fw_save* %148, i32 0, i32 2
  store i8* %147, i8** %149, align 8
  %150 = load %struct.sst_fw_save*, %struct.sst_fw_save** %5, align 8
  %151 = getelementptr inbounds %struct.sst_fw_save, %struct.sst_fw_save* %150, i32 0, i32 2
  %152 = load i8*, i8** %151, align 8
  %153 = icmp ne i8* %152, null
  br i1 %153, label %157, label %154

154:                                              ; preds = %144
  %155 = load i32, i32* @ENOMEM, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %7, align 4
  br label %242

157:                                              ; preds = %144
  %158 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %159 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %158, i32 0, i32 4
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %162 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %161, i32 0, i32 3
  %163 = load i64, i64* %162, align 8
  %164 = sub nsw i64 %160, %163
  %165 = load i32, i32* @GFP_KERNEL, align 4
  %166 = call i8* @kvzalloc(i64 %164, i32 %165)
  %167 = load %struct.sst_fw_save*, %struct.sst_fw_save** %5, align 8
  %168 = getelementptr inbounds %struct.sst_fw_save, %struct.sst_fw_save* %167, i32 0, i32 3
  store i8* %166, i8** %168, align 8
  %169 = load %struct.sst_fw_save*, %struct.sst_fw_save** %5, align 8
  %170 = getelementptr inbounds %struct.sst_fw_save, %struct.sst_fw_save* %169, i32 0, i32 3
  %171 = load i8*, i8** %170, align 8
  %172 = icmp ne i8* %171, null
  br i1 %172, label %176, label %173

173:                                              ; preds = %157
  %174 = load i32, i32* @ENOMEM, align 4
  %175 = sub nsw i32 0, %174
  store i32 %175, i32* %7, align 4
  br label %237

176:                                              ; preds = %157
  %177 = load %struct.sst_fw_save*, %struct.sst_fw_save** %5, align 8
  %178 = getelementptr inbounds %struct.sst_fw_save, %struct.sst_fw_save* %177, i32 0, i32 0
  %179 = load i8*, i8** %178, align 8
  %180 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %181 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %180, i32 0, i32 12
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %184 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %183, i32 0, i32 11
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %187 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %186, i32 0, i32 10
  %188 = load i64, i64* %187, align 8
  %189 = sub nsw i64 %185, %188
  %190 = call i32 @memcpy32_fromio(i8* %179, i32 %182, i64 %189)
  %191 = load %struct.sst_fw_save*, %struct.sst_fw_save** %5, align 8
  %192 = getelementptr inbounds %struct.sst_fw_save, %struct.sst_fw_save* %191, i32 0, i32 1
  %193 = load i8*, i8** %192, align 8
  %194 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %195 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %194, i32 0, i32 9
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %198 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %197, i32 0, i32 8
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %201 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %200, i32 0, i32 7
  %202 = load i64, i64* %201, align 8
  %203 = sub nsw i64 %199, %202
  %204 = call i32 @memcpy32_fromio(i8* %193, i32 %196, i64 %203)
  %205 = load %struct.sst_fw_save*, %struct.sst_fw_save** %5, align 8
  %206 = getelementptr inbounds %struct.sst_fw_save, %struct.sst_fw_save* %205, i32 0, i32 2
  %207 = load i8*, i8** %206, align 8
  %208 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %209 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %208, i32 0, i32 6
  %210 = load i32, i32* %209, align 4
  %211 = load i64, i64* @SST_MAILBOX_SIZE, align 8
  %212 = call i32 @memcpy32_fromio(i8* %207, i32 %210, i64 %211)
  %213 = load %struct.sst_fw_save*, %struct.sst_fw_save** %5, align 8
  %214 = getelementptr inbounds %struct.sst_fw_save, %struct.sst_fw_save* %213, i32 0, i32 3
  %215 = load i8*, i8** %214, align 8
  %216 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %217 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %216, i32 0, i32 5
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %220 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %219, i32 0, i32 4
  %221 = load i64, i64* %220, align 8
  %222 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %223 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %222, i32 0, i32 3
  %224 = load i64, i64* %223, align 8
  %225 = sub nsw i64 %221, %224
  %226 = call i32 @memcpy32_fromio(i8* %215, i32 %218, i64 %225)
  %227 = load %struct.sst_fw_save*, %struct.sst_fw_save** %5, align 8
  %228 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %229 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %228, i32 0, i32 2
  store %struct.sst_fw_save* %227, %struct.sst_fw_save** %229, align 8
  %230 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %231 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %230, i32 0, i32 1
  %232 = load %struct.TYPE_6__*, %struct.TYPE_6__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 0
  %234 = load i32 (%struct.intel_sst_drv*)*, i32 (%struct.intel_sst_drv*)** %233, align 8
  %235 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %236 = call i32 %234(%struct.intel_sst_drv* %235)
  store i32 0, i32* %2, align 4
  br label %256

237:                                              ; preds = %173
  %238 = load %struct.sst_fw_save*, %struct.sst_fw_save** %5, align 8
  %239 = getelementptr inbounds %struct.sst_fw_save, %struct.sst_fw_save* %238, i32 0, i32 2
  %240 = load i8*, i8** %239, align 8
  %241 = call i32 @kvfree(i8* %240)
  br label %242

242:                                              ; preds = %237, %154
  %243 = load %struct.sst_fw_save*, %struct.sst_fw_save** %5, align 8
  %244 = getelementptr inbounds %struct.sst_fw_save, %struct.sst_fw_save* %243, i32 0, i32 1
  %245 = load i8*, i8** %244, align 8
  %246 = call i32 @kvfree(i8* %245)
  br label %247

247:                                              ; preds = %242, %141
  %248 = load %struct.sst_fw_save*, %struct.sst_fw_save** %5, align 8
  %249 = getelementptr inbounds %struct.sst_fw_save, %struct.sst_fw_save* %248, i32 0, i32 0
  %250 = load i8*, i8** %249, align 8
  %251 = call i32 @kvfree(i8* %250)
  br label %252

252:                                              ; preds = %247, %122
  %253 = load %struct.sst_fw_save*, %struct.sst_fw_save** %5, align 8
  %254 = call i32 @kfree(%struct.sst_fw_save* %253)
  %255 = load i32, i32* %7, align 4
  store i32 %255, i32* %2, align 4
  br label %256

256:                                              ; preds = %252, %176, %103, %95, %37, %16
  %257 = load i32, i32* %2, align 4
  ret i32 %257
}

declare dso_local %struct.intel_sst_drv* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @sst_free_stream(%struct.intel_sst_drv*, i32) #1

declare dso_local i32 @synchronize_irq(i32) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @sst_set_fw_state_locked(%struct.intel_sst_drv*, i64) #1

declare dso_local %struct.sst_fw_save* @kzalloc(i32, i32) #1

declare dso_local i8* @kvzalloc(i64, i32) #1

declare dso_local i32 @memcpy32_fromio(i8*, i32, i64) #1

declare dso_local i32 @kvfree(i8*) #1

declare dso_local i32 @kfree(%struct.sst_fw_save*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
