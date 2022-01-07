; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst.c_intel_sst_resume.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst.c_intel_sst_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.intel_sst_drv = type { i32, %struct.stream_info*, %struct.TYPE_6__, %struct.TYPE_5__*, %struct.TYPE_4__*, i64, i64, i32, i32, i64, i64, i32, i64, i64, i32, %struct.sst_fw_save* }
%struct.stream_info = type { i64, i64, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 (%struct.intel_sst_drv*)*, i32 (%struct.intel_sst_drv*)* }
%struct.sst_fw_save = type { i32, i32, i32, i32 }
%struct.sst_block = type { i32 }

@SST_FW_LOADING = common dso_local global i32 0, align 4
@SST_MAILBOX_SIZE = common dso_local global i64 0, align 8
@FW_DWNL_ID = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"fw download failed %d\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@SST_FW_RUNNING = common dso_local global i32 0, align 4
@STREAM_UN_INIT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"Re-allocing stream %d status %d prev %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @intel_sst_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_sst_resume(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.intel_sst_drv*, align 8
  %5 = alloca %struct.sst_fw_save*, align 8
  %6 = alloca %struct.sst_block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.stream_info*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = call %struct.intel_sst_drv* @dev_get_drvdata(%struct.device* %10)
  store %struct.intel_sst_drv* %11, %struct.intel_sst_drv** %4, align 8
  %12 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %13 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %12, i32 0, i32 15
  %14 = load %struct.sst_fw_save*, %struct.sst_fw_save** %13, align 8
  store %struct.sst_fw_save* %14, %struct.sst_fw_save** %5, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.sst_fw_save*, %struct.sst_fw_save** %5, align 8
  %16 = icmp ne %struct.sst_fw_save* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %194

18:                                               ; preds = %1
  %19 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %20 = load i32, i32* @SST_FW_LOADING, align 4
  %21 = call i32 @sst_set_fw_state_locked(%struct.intel_sst_drv* %19, i32 %20)
  %22 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %23 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %22, i32 0, i32 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32 (%struct.intel_sst_drv*)*, i32 (%struct.intel_sst_drv*)** %25, align 8
  %27 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %28 = call i32 %26(%struct.intel_sst_drv* %27)
  %29 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %30 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %29, i32 0, i32 15
  store %struct.sst_fw_save* null, %struct.sst_fw_save** %30, align 8
  %31 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %32 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %31, i32 0, i32 14
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.sst_fw_save*, %struct.sst_fw_save** %5, align 8
  %35 = getelementptr inbounds %struct.sst_fw_save, %struct.sst_fw_save* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %38 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %37, i32 0, i32 13
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %41 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %40, i32 0, i32 12
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 %39, %42
  %44 = call i32 @memcpy32_toio(i32 %33, i32 %36, i64 %43)
  %45 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %46 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %45, i32 0, i32 11
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.sst_fw_save*, %struct.sst_fw_save** %5, align 8
  %49 = getelementptr inbounds %struct.sst_fw_save, %struct.sst_fw_save* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %52 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %51, i32 0, i32 10
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %55 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %54, i32 0, i32 9
  %56 = load i64, i64* %55, align 8
  %57 = sub nsw i64 %53, %56
  %58 = call i32 @memcpy32_toio(i32 %47, i32 %50, i64 %57)
  %59 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %60 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %59, i32 0, i32 8
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.sst_fw_save*, %struct.sst_fw_save** %5, align 8
  %63 = getelementptr inbounds %struct.sst_fw_save, %struct.sst_fw_save* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load i64, i64* @SST_MAILBOX_SIZE, align 8
  %66 = call i32 @memcpy32_toio(i32 %61, i32 %64, i64 %65)
  %67 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %68 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %67, i32 0, i32 7
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.sst_fw_save*, %struct.sst_fw_save** %5, align 8
  %71 = getelementptr inbounds %struct.sst_fw_save, %struct.sst_fw_save* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %74 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %73, i32 0, i32 6
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %77 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %76, i32 0, i32 5
  %78 = load i64, i64* %77, align 8
  %79 = sub nsw i64 %75, %78
  %80 = call i32 @memcpy32_toio(i32 %69, i32 %72, i64 %79)
  %81 = load %struct.sst_fw_save*, %struct.sst_fw_save** %5, align 8
  %82 = getelementptr inbounds %struct.sst_fw_save, %struct.sst_fw_save* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @kvfree(i32 %83)
  %85 = load %struct.sst_fw_save*, %struct.sst_fw_save** %5, align 8
  %86 = getelementptr inbounds %struct.sst_fw_save, %struct.sst_fw_save* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @kvfree(i32 %87)
  %89 = load %struct.sst_fw_save*, %struct.sst_fw_save** %5, align 8
  %90 = getelementptr inbounds %struct.sst_fw_save, %struct.sst_fw_save* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @kvfree(i32 %91)
  %93 = load %struct.sst_fw_save*, %struct.sst_fw_save** %5, align 8
  %94 = getelementptr inbounds %struct.sst_fw_save, %struct.sst_fw_save* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @kvfree(i32 %95)
  %97 = load %struct.sst_fw_save*, %struct.sst_fw_save** %5, align 8
  %98 = call i32 @kfree(%struct.sst_fw_save* %97)
  %99 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %100 = load i32, i32* @FW_DWNL_ID, align 4
  %101 = call %struct.sst_block* @sst_create_block(%struct.intel_sst_drv* %99, i32 0, i32 %100)
  store %struct.sst_block* %101, %struct.sst_block** %6, align 8
  %102 = load %struct.sst_block*, %struct.sst_block** %6, align 8
  %103 = icmp eq %struct.sst_block* %102, null
  br i1 %103, label %104, label %107

104:                                              ; preds = %18
  %105 = load i32, i32* @ENOMEM, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %2, align 4
  br label %194

107:                                              ; preds = %18
  %108 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %109 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %108, i32 0, i32 4
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32 (%struct.intel_sst_drv*)*, i32 (%struct.intel_sst_drv*)** %111, align 8
  %113 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %114 = call i32 %112(%struct.intel_sst_drv* %113)
  %115 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %116 = load %struct.sst_block*, %struct.sst_block** %6, align 8
  %117 = call i32 @sst_wait_timeout(%struct.intel_sst_drv* %115, %struct.sst_block* %116)
  store i32 %117, i32* %8, align 4
  %118 = load i32, i32* %8, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %107
  %121 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %122 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %8, align 4
  %125 = call i32 @dev_err(i32 %123, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %124)
  %126 = load i32, i32* @EBUSY, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %8, align 4
  br label %132

128:                                              ; preds = %107
  %129 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %130 = load i32, i32* @SST_FW_RUNNING, align 4
  %131 = call i32 @sst_set_fw_state_locked(%struct.intel_sst_drv* %129, i32 %130)
  br label %132

132:                                              ; preds = %128, %120
  %133 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %134 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %133, i32 0, i32 3
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %189

139:                                              ; preds = %132
  store i32 1, i32* %7, align 4
  br label %140

140:                                              ; preds = %185, %139
  %141 = load i32, i32* %7, align 4
  %142 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %143 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = icmp sle i32 %141, %145
  br i1 %146, label %147, label %188

147:                                              ; preds = %140
  %148 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %149 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %148, i32 0, i32 1
  %150 = load %struct.stream_info*, %struct.stream_info** %149, align 8
  %151 = load i32, i32* %7, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %150, i64 %152
  store %struct.stream_info* %153, %struct.stream_info** %9, align 8
  %154 = load %struct.stream_info*, %struct.stream_info** %9, align 8
  %155 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @STREAM_UN_INIT, align 8
  %158 = icmp ne i64 %156, %157
  br i1 %158, label %159, label %184

159:                                              ; preds = %147
  %160 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %161 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* %7, align 4
  %164 = load %struct.stream_info*, %struct.stream_info** %9, align 8
  %165 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.stream_info*, %struct.stream_info** %9, align 8
  %168 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @dev_dbg(i32 %162, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %163, i64 %166, i32 %169)
  %171 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %172 = load i32, i32* %7, align 4
  %173 = call i32 @sst_realloc_stream(%struct.intel_sst_drv* %171, i32 %172)
  %174 = load %struct.stream_info*, %struct.stream_info** %9, align 8
  %175 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.stream_info*, %struct.stream_info** %9, align 8
  %178 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %177, i32 0, i32 1
  store i64 %176, i64* %178, align 8
  %179 = load %struct.stream_info*, %struct.stream_info** %9, align 8
  %180 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.stream_info*, %struct.stream_info** %9, align 8
  %183 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %182, i32 0, i32 3
  store i32 %181, i32* %183, align 4
  br label %184

184:                                              ; preds = %159, %147
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* %7, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %7, align 4
  br label %140

188:                                              ; preds = %140
  br label %189

189:                                              ; preds = %188, %132
  %190 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %191 = load %struct.sst_block*, %struct.sst_block** %6, align 8
  %192 = call i32 @sst_free_block(%struct.intel_sst_drv* %190, %struct.sst_block* %191)
  %193 = load i32, i32* %8, align 4
  store i32 %193, i32* %2, align 4
  br label %194

194:                                              ; preds = %189, %104, %17
  %195 = load i32, i32* %2, align 4
  ret i32 %195
}

declare dso_local %struct.intel_sst_drv* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @sst_set_fw_state_locked(%struct.intel_sst_drv*, i32) #1

declare dso_local i32 @memcpy32_toio(i32, i32, i64) #1

declare dso_local i32 @kvfree(i32) #1

declare dso_local i32 @kfree(%struct.sst_fw_save*) #1

declare dso_local %struct.sst_block* @sst_create_block(%struct.intel_sst_drv*, i32, i32) #1

declare dso_local i32 @sst_wait_timeout(%struct.intel_sst_drv*, %struct.sst_block*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i64, i32) #1

declare dso_local i32 @sst_realloc_stream(%struct.intel_sst_drv*, i32) #1

declare dso_local i32 @sst_free_block(%struct.intel_sst_drv*, %struct.sst_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
