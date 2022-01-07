; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-ipc.c_hsw_fw_ready.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-ipc.c_hsw_fw_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_hsw = type { i32, i32, i32, i32 }
%struct.sst_hsw_ipc_fw_ready = type { i32, i64*, i32, i32, i32, i32 }

@IPC_MAX_MAILBOX_BYTES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"ipc: DSP is ready 0x%8.8x offset %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c" mailbox upstream 0x%x - size 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c" mailbox downstream 0x%x - size 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c" Firmware info: %s \0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.5 = private unnamed_addr constant [96 x i8] c"FW loaded, mailbox readback FW info: type %s, - version: %s.%s, build %s, source commit id: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sst_hsw*, i32)* @hsw_fw_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hsw_fw_ready(%struct.sst_hsw* %0, i32 %1) #0 {
  %3 = alloca %struct.sst_hsw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sst_hsw_ipc_fw_ready, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca [5 x i8*], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.sst_hsw* %0, %struct.sst_hsw** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i32, i32* @IPC_MAX_MAILBOX_BYTES, align 4
  %13 = sext i32 %12 to i64
  %14 = sub i64 %13, 20
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  store i32 0, i32* %11, align 4
  %17 = load i32, i32* %4, align 4
  %18 = and i32 %17, 536870911
  %19 = shl i32 %18, 3
  store i32 %19, i32* %6, align 4
  %20 = load %struct.sst_hsw*, %struct.sst_hsw** %3, align 8
  %21 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %22, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24)
  %26 = load %struct.sst_hsw*, %struct.sst_hsw** %3, align 8
  %27 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @sst_dsp_read(i32 %28, %struct.sst_hsw_ipc_fw_ready* %5, i32 %29, i32 32)
  %31 = load %struct.sst_hsw*, %struct.sst_hsw** %3, align 8
  %32 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.sst_hsw_ipc_fw_ready, %struct.sst_hsw_ipc_fw_ready* %5, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.sst_hsw_ipc_fw_ready, %struct.sst_hsw_ipc_fw_ready* %5, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = getelementptr inbounds %struct.sst_hsw_ipc_fw_ready, %struct.sst_hsw_ipc_fw_ready* %5, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.sst_hsw_ipc_fw_ready, %struct.sst_hsw_ipc_fw_ready* %5, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @sst_dsp_mailbox_init(i32 %33, i32 %35, i32 %37, i32 %39, i32 %41)
  %43 = load %struct.sst_hsw*, %struct.sst_hsw** %3, align 8
  %44 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %43, i32 0, i32 0
  store i32 1, i32* %44, align 4
  %45 = load %struct.sst_hsw*, %struct.sst_hsw** %3, align 8
  %46 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %45, i32 0, i32 2
  %47 = call i32 @wake_up(i32* %46)
  %48 = load %struct.sst_hsw*, %struct.sst_hsw** %3, align 8
  %49 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.sst_hsw_ipc_fw_ready, %struct.sst_hsw_ipc_fw_ready* %5, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.sst_hsw_ipc_fw_ready, %struct.sst_hsw_ipc_fw_ready* %5, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %50, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %54)
  %56 = load %struct.sst_hsw*, %struct.sst_hsw** %3, align 8
  %57 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.sst_hsw_ipc_fw_ready, %struct.sst_hsw_ipc_fw_ready* %5, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.sst_hsw_ipc_fw_ready, %struct.sst_hsw_ipc_fw_ready* %5, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %58, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %60, i32 %62)
  %64 = getelementptr inbounds %struct.sst_hsw_ipc_fw_ready, %struct.sst_hsw_ipc_fw_ready* %5, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = icmp ult i64 %66, 8
  br i1 %67, label %68, label %117

68:                                               ; preds = %2
  %69 = getelementptr inbounds %struct.sst_hsw_ipc_fw_ready, %struct.sst_hsw_ipc_fw_ready* %5, i32 0, i32 1
  %70 = load i64*, i64** %69, align 8
  %71 = getelementptr inbounds %struct.sst_hsw_ipc_fw_ready, %struct.sst_hsw_ipc_fw_ready* %5, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %70, i64 %73
  store i64 0, i64* %74, align 8
  %75 = load %struct.sst_hsw*, %struct.sst_hsw** %3, align 8
  %76 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.sst_hsw_ipc_fw_ready, %struct.sst_hsw_ipc_fw_ready* %5, i32 0, i32 1
  %79 = load i64*, i64** %78, align 8
  %80 = ptrtoint i64* %79 to i32
  %81 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %77, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %80)
  %82 = getelementptr inbounds %struct.sst_hsw_ipc_fw_ready, %struct.sst_hsw_ipc_fw_ready* %5, i32 0, i32 1
  %83 = load i64*, i64** %82, align 8
  %84 = getelementptr inbounds %struct.sst_hsw_ipc_fw_ready, %struct.sst_hsw_ipc_fw_ready* %5, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = call i32 @memcpy(i8* %16, i64* %83, i64 %86)
  %88 = getelementptr inbounds i8, i8* %16, i64 0
  store i8* %88, i8** %10, align 8
  store i32 0, i32* %11, align 4
  br label %89

89:                                               ; preds = %99, %68
  %90 = load i32, i32* %11, align 4
  %91 = getelementptr inbounds [5 x i8*], [5 x i8*]* %9, i64 0, i64 0
  %92 = call i32 @ARRAY_SIZE(i8** %91)
  %93 = icmp slt i32 %90, %92
  br i1 %93, label %94, label %102

94:                                               ; preds = %89
  %95 = call i8* @strsep(i8** %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %96 = load i32, i32* %11, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [5 x i8*], [5 x i8*]* %9, i64 0, i64 %97
  store i8* %95, i8** %98, align 8
  br label %99

99:                                               ; preds = %94
  %100 = load i32, i32* %11, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %11, align 4
  br label %89

102:                                              ; preds = %89
  %103 = load %struct.sst_hsw*, %struct.sst_hsw** %3, align 8
  %104 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = getelementptr inbounds [5 x i8*], [5 x i8*]* %9, i64 0, i64 0
  %107 = load i8*, i8** %106, align 16
  %108 = getelementptr inbounds [5 x i8*], [5 x i8*]* %9, i64 0, i64 1
  %109 = load i8*, i8** %108, align 8
  %110 = getelementptr inbounds [5 x i8*], [5 x i8*]* %9, i64 0, i64 2
  %111 = load i8*, i8** %110, align 16
  %112 = getelementptr inbounds [5 x i8*], [5 x i8*]* %9, i64 0, i64 3
  %113 = load i8*, i8** %112, align 8
  %114 = getelementptr inbounds [5 x i8*], [5 x i8*]* %9, i64 0, i64 4
  %115 = load i8*, i8** %114, align 16
  %116 = call i32 @dev_info(i32 %105, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.5, i64 0, i64 0), i8* %107, i8* %109, i8* %111, i8* %113, i8* %115)
  br label %117

117:                                              ; preds = %102, %2
  %118 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %118)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #2

declare dso_local i32 @sst_dsp_read(i32, %struct.sst_hsw_ipc_fw_ready*, i32, i32) #2

declare dso_local i32 @sst_dsp_mailbox_init(i32, i32, i32, i32, i32) #2

declare dso_local i32 @wake_up(i32*) #2

declare dso_local i32 @memcpy(i8*, i64*, i64) #2

declare dso_local i32 @ARRAY_SIZE(i8**) #2

declare dso_local i8* @strsep(i8**, i8*) #2

declare dso_local i32 @dev_info(i32, i8*, i8*, i8*, i8*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
