; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/extr_loader.c_sof_get_windows.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/extr_loader.c_sof_get_windows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_dev = type { i64*, i32, %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i32, %struct.sof_ipc_window_elem* }
%struct.sof_ipc_window_elem = type { i32, i64, i64, i32 }

@.str = private unnamed_addr constant [28 x i8] c"error: have no window info\0A\00", align 1
@SOF_FW_BLK_TYPE_SRAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"error: have no bar mapping\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"warn: no offset for window %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"inbox\00", align 1
@SOF_DEBUGFS_ACCESS_D0_ONLY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"outbox\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"etrace\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"stream\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"regs\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"exception\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"error: get illegal window info\0A\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"error: get illegal mailbox window\0A\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c" mailbox upstream 0x%x - size 0x%x\0A\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c" mailbox downstream 0x%x - size 0x%x\0A\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c" stream region 0x%x - size 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_sof_dev*)* @sof_get_windows to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sof_get_windows(%struct.snd_sof_dev* %0) #0 {
  %2 = alloca %struct.snd_sof_dev*, align 8
  %3 = alloca %struct.sof_ipc_window_elem*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_sof_dev* %0, %struct.snd_sof_dev** %2, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %13 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %14 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %13, i32 0, i32 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = icmp ne %struct.TYPE_3__* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %1
  %18 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %19 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @dev_err(i32 %20, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %291

22:                                               ; preds = %1
  %23 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %24 = load i32, i32* @SOF_FW_BLK_TYPE_SRAM, align 4
  %25 = call i32 @snd_sof_dsp_get_bar_index(%struct.snd_sof_dev* %23, i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %30 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %291

33:                                               ; preds = %22
  store i32 0, i32* %12, align 4
  br label %34

34:                                               ; preds = %244, %33
  %35 = load i32, i32* %12, align 4
  %36 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %37 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %36, i32 0, i32 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %35, %40
  br i1 %41, label %42, label %247

42:                                               ; preds = %34
  %43 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %44 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %43, i32 0, i32 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load %struct.sof_ipc_window_elem*, %struct.sof_ipc_window_elem** %46, align 8
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.sof_ipc_window_elem, %struct.sof_ipc_window_elem* %47, i64 %49
  store %struct.sof_ipc_window_elem* %50, %struct.sof_ipc_window_elem** %3, align 8
  %51 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %52 = load %struct.sof_ipc_window_elem*, %struct.sof_ipc_window_elem** %3, align 8
  %53 = getelementptr inbounds %struct.sof_ipc_window_elem, %struct.sof_ipc_window_elem* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @snd_sof_dsp_get_window_offset(%struct.snd_sof_dev* %51, i32 %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %42
  %59 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %60 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.sof_ipc_window_elem*, %struct.sof_ipc_window_elem** %3, align 8
  %63 = getelementptr inbounds %struct.sof_ipc_window_elem, %struct.sof_ipc_window_elem* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @dev_warn(i32 %61, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  br label %244

66:                                               ; preds = %42
  %67 = load %struct.sof_ipc_window_elem*, %struct.sof_ipc_window_elem** %3, align 8
  %68 = getelementptr inbounds %struct.sof_ipc_window_elem, %struct.sof_ipc_window_elem* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  switch i32 %69, label %238 [
    i32 128, label %70
    i32 133, label %95
    i32 129, label %120
    i32 134, label %141
    i32 130, label %162
    i32 131, label %187
    i32 132, label %208
  ]

70:                                               ; preds = %66
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = load %struct.sof_ipc_window_elem*, %struct.sof_ipc_window_elem** %3, align 8
  %74 = getelementptr inbounds %struct.sof_ipc_window_elem, %struct.sof_ipc_window_elem* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %72, %75
  store i64 %76, i64* %6, align 8
  %77 = load %struct.sof_ipc_window_elem*, %struct.sof_ipc_window_elem** %3, align 8
  %78 = getelementptr inbounds %struct.sof_ipc_window_elem, %struct.sof_ipc_window_elem* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %9, align 8
  %80 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %81 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %82 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %81, i32 0, i32 0
  %83 = load i64*, i64** %82, align 8
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %83, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %6, align 8
  %89 = add nsw i64 %87, %88
  %90 = load %struct.sof_ipc_window_elem*, %struct.sof_ipc_window_elem** %3, align 8
  %91 = getelementptr inbounds %struct.sof_ipc_window_elem, %struct.sof_ipc_window_elem* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load i32, i32* @SOF_DEBUGFS_ACCESS_D0_ONLY, align 4
  %94 = call i32 @snd_sof_debugfs_io_item(%struct.snd_sof_dev* %80, i64 %89, i64 %92, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %93)
  br label %243

95:                                               ; preds = %66
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = load %struct.sof_ipc_window_elem*, %struct.sof_ipc_window_elem** %3, align 8
  %99 = getelementptr inbounds %struct.sof_ipc_window_elem, %struct.sof_ipc_window_elem* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %97, %100
  store i64 %101, i64* %4, align 8
  %102 = load %struct.sof_ipc_window_elem*, %struct.sof_ipc_window_elem** %3, align 8
  %103 = getelementptr inbounds %struct.sof_ipc_window_elem, %struct.sof_ipc_window_elem* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  store i64 %104, i64* %7, align 8
  %105 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %106 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %107 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %106, i32 0, i32 0
  %108 = load i64*, i64** %107, align 8
  %109 = load i32, i32* %11, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i64, i64* %108, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* %4, align 8
  %114 = add nsw i64 %112, %113
  %115 = load %struct.sof_ipc_window_elem*, %struct.sof_ipc_window_elem** %3, align 8
  %116 = getelementptr inbounds %struct.sof_ipc_window_elem, %struct.sof_ipc_window_elem* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = load i32, i32* @SOF_DEBUGFS_ACCESS_D0_ONLY, align 4
  %119 = call i32 @snd_sof_debugfs_io_item(%struct.snd_sof_dev* %105, i64 %114, i64 %117, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %118)
  br label %243

120:                                              ; preds = %66
  %121 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %122 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %123 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %122, i32 0, i32 0
  %124 = load i64*, i64** %123, align 8
  %125 = load i32, i32* %11, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i64, i64* %124, i64 %126
  %128 = load i64, i64* %127, align 8
  %129 = load i32, i32* %10, align 4
  %130 = sext i32 %129 to i64
  %131 = add nsw i64 %128, %130
  %132 = load %struct.sof_ipc_window_elem*, %struct.sof_ipc_window_elem** %3, align 8
  %133 = getelementptr inbounds %struct.sof_ipc_window_elem, %struct.sof_ipc_window_elem* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = add nsw i64 %131, %134
  %136 = load %struct.sof_ipc_window_elem*, %struct.sof_ipc_window_elem** %3, align 8
  %137 = getelementptr inbounds %struct.sof_ipc_window_elem, %struct.sof_ipc_window_elem* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = load i32, i32* @SOF_DEBUGFS_ACCESS_D0_ONLY, align 4
  %140 = call i32 @snd_sof_debugfs_io_item(%struct.snd_sof_dev* %121, i64 %135, i64 %138, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %139)
  br label %243

141:                                              ; preds = %66
  %142 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %143 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %144 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %143, i32 0, i32 0
  %145 = load i64*, i64** %144, align 8
  %146 = load i32, i32* %11, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i64, i64* %145, i64 %147
  %149 = load i64, i64* %148, align 8
  %150 = load i32, i32* %10, align 4
  %151 = sext i32 %150 to i64
  %152 = add nsw i64 %149, %151
  %153 = load %struct.sof_ipc_window_elem*, %struct.sof_ipc_window_elem** %3, align 8
  %154 = getelementptr inbounds %struct.sof_ipc_window_elem, %struct.sof_ipc_window_elem* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = add nsw i64 %152, %155
  %157 = load %struct.sof_ipc_window_elem*, %struct.sof_ipc_window_elem** %3, align 8
  %158 = getelementptr inbounds %struct.sof_ipc_window_elem, %struct.sof_ipc_window_elem* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = load i32, i32* @SOF_DEBUGFS_ACCESS_D0_ONLY, align 4
  %161 = call i32 @snd_sof_debugfs_io_item(%struct.snd_sof_dev* %142, i64 %156, i64 %159, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %160)
  br label %243

162:                                              ; preds = %66
  %163 = load i32, i32* %10, align 4
  %164 = sext i32 %163 to i64
  %165 = load %struct.sof_ipc_window_elem*, %struct.sof_ipc_window_elem** %3, align 8
  %166 = getelementptr inbounds %struct.sof_ipc_window_elem, %struct.sof_ipc_window_elem* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = add nsw i64 %164, %167
  store i64 %168, i64* %5, align 8
  %169 = load %struct.sof_ipc_window_elem*, %struct.sof_ipc_window_elem** %3, align 8
  %170 = getelementptr inbounds %struct.sof_ipc_window_elem, %struct.sof_ipc_window_elem* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  store i64 %171, i64* %8, align 8
  %172 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %173 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %174 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %173, i32 0, i32 0
  %175 = load i64*, i64** %174, align 8
  %176 = load i32, i32* %11, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i64, i64* %175, i64 %177
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* %5, align 8
  %181 = add nsw i64 %179, %180
  %182 = load %struct.sof_ipc_window_elem*, %struct.sof_ipc_window_elem** %3, align 8
  %183 = getelementptr inbounds %struct.sof_ipc_window_elem, %struct.sof_ipc_window_elem* %182, i32 0, i32 2
  %184 = load i64, i64* %183, align 8
  %185 = load i32, i32* @SOF_DEBUGFS_ACCESS_D0_ONLY, align 4
  %186 = call i32 @snd_sof_debugfs_io_item(%struct.snd_sof_dev* %172, i64 %181, i64 %184, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %185)
  br label %243

187:                                              ; preds = %66
  %188 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %189 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %190 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %189, i32 0, i32 0
  %191 = load i64*, i64** %190, align 8
  %192 = load i32, i32* %11, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i64, i64* %191, i64 %193
  %195 = load i64, i64* %194, align 8
  %196 = load i32, i32* %10, align 4
  %197 = sext i32 %196 to i64
  %198 = add nsw i64 %195, %197
  %199 = load %struct.sof_ipc_window_elem*, %struct.sof_ipc_window_elem** %3, align 8
  %200 = getelementptr inbounds %struct.sof_ipc_window_elem, %struct.sof_ipc_window_elem* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = add nsw i64 %198, %201
  %203 = load %struct.sof_ipc_window_elem*, %struct.sof_ipc_window_elem** %3, align 8
  %204 = getelementptr inbounds %struct.sof_ipc_window_elem, %struct.sof_ipc_window_elem* %203, i32 0, i32 2
  %205 = load i64, i64* %204, align 8
  %206 = load i32, i32* @SOF_DEBUGFS_ACCESS_D0_ONLY, align 4
  %207 = call i32 @snd_sof_debugfs_io_item(%struct.snd_sof_dev* %188, i64 %202, i64 %205, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %206)
  br label %243

208:                                              ; preds = %66
  %209 = load i32, i32* %10, align 4
  %210 = sext i32 %209 to i64
  %211 = load %struct.sof_ipc_window_elem*, %struct.sof_ipc_window_elem** %3, align 8
  %212 = getelementptr inbounds %struct.sof_ipc_window_elem, %struct.sof_ipc_window_elem* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = add nsw i64 %210, %213
  %215 = trunc i64 %214 to i32
  %216 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %217 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %216, i32 0, i32 3
  store i32 %215, i32* %217, align 8
  %218 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %219 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %220 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %219, i32 0, i32 0
  %221 = load i64*, i64** %220, align 8
  %222 = load i32, i32* %11, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i64, i64* %221, i64 %223
  %225 = load i64, i64* %224, align 8
  %226 = load i32, i32* %10, align 4
  %227 = sext i32 %226 to i64
  %228 = add nsw i64 %225, %227
  %229 = load %struct.sof_ipc_window_elem*, %struct.sof_ipc_window_elem** %3, align 8
  %230 = getelementptr inbounds %struct.sof_ipc_window_elem, %struct.sof_ipc_window_elem* %229, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = add nsw i64 %228, %231
  %233 = load %struct.sof_ipc_window_elem*, %struct.sof_ipc_window_elem** %3, align 8
  %234 = getelementptr inbounds %struct.sof_ipc_window_elem, %struct.sof_ipc_window_elem* %233, i32 0, i32 2
  %235 = load i64, i64* %234, align 8
  %236 = load i32, i32* @SOF_DEBUGFS_ACCESS_D0_ONLY, align 4
  %237 = call i32 @snd_sof_debugfs_io_item(%struct.snd_sof_dev* %218, i64 %232, i64 %235, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 %236)
  br label %243

238:                                              ; preds = %66
  %239 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %240 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 8
  %242 = call i32 @dev_err(i32 %241, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0))
  br label %291

243:                                              ; preds = %208, %187, %162, %141, %120, %95, %70
  br label %244

244:                                              ; preds = %243, %58
  %245 = load i32, i32* %12, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %12, align 4
  br label %34

247:                                              ; preds = %34
  %248 = load i64, i64* %7, align 8
  %249 = icmp eq i64 %248, 0
  br i1 %249, label %253, label %250

250:                                              ; preds = %247
  %251 = load i64, i64* %9, align 8
  %252 = icmp eq i64 %251, 0
  br i1 %252, label %253, label %258

253:                                              ; preds = %250, %247
  %254 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %255 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 8
  %257 = call i32 @dev_err(i32 %256, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0))
  br label %291

258:                                              ; preds = %250
  %259 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %260 = load i64, i64* %6, align 8
  %261 = load i64, i64* %9, align 8
  %262 = load i64, i64* %4, align 8
  %263 = load i64, i64* %7, align 8
  %264 = call i32 @snd_sof_dsp_mailbox_init(%struct.snd_sof_dev* %259, i64 %260, i64 %261, i64 %262, i64 %263)
  %265 = load i64, i64* %5, align 8
  %266 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %267 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %266, i32 0, i32 2
  %268 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %267, i32 0, i32 1
  store i64 %265, i64* %268, align 8
  %269 = load i64, i64* %8, align 8
  %270 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %271 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %270, i32 0, i32 2
  %272 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %271, i32 0, i32 0
  store i64 %269, i64* %272, align 8
  %273 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %274 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 8
  %276 = load i64, i64* %6, align 8
  %277 = load i64, i64* %9, align 8
  %278 = call i32 @dev_dbg(i32 %275, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i64 0, i64 0), i64 %276, i64 %277)
  %279 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %280 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 8
  %282 = load i64, i64* %4, align 8
  %283 = load i64, i64* %7, align 8
  %284 = call i32 @dev_dbg(i32 %281, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i64 0, i64 0), i64 %282, i64 %283)
  %285 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %286 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 8
  %288 = load i64, i64* %5, align 8
  %289 = load i64, i64* %8, align 8
  %290 = call i32 @dev_dbg(i32 %287, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i64 0, i64 0), i64 %288, i64 %289)
  br label %291

291:                                              ; preds = %258, %253, %238, %28, %17
  ret void
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @snd_sof_dsp_get_bar_index(%struct.snd_sof_dev*, i32) #1

declare dso_local i32 @snd_sof_dsp_get_window_offset(%struct.snd_sof_dev*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @snd_sof_debugfs_io_item(%struct.snd_sof_dev*, i64, i64, i8*, i32) #1

declare dso_local i32 @snd_sof_dsp_mailbox_init(%struct.snd_sof_dev*, i64, i64, i64, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
