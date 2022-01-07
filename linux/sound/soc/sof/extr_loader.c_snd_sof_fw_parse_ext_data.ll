; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/extr_loader.c_snd_sof_fw_parse_ext_data.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/extr_loader.c_snd_sof_fw_parse_ext_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_dev = type { i32 }
%struct.sof_ipc_ext_data_hdr = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SOF_IPC_FW_READY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"found ext header type %d size 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"error: failed to parse ext data type %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_sof_fw_parse_ext_data(%struct.snd_sof_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_sof_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sof_ipc_ext_data_hdr*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.snd_sof_dev* %0, %struct.snd_sof_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* @PAGE_SIZE, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i8* @kzalloc(i32 %11, i32 %12)
  store i8* %13, i8** %9, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %103

19:                                               ; preds = %3
  %20 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i8*, i8** %9, align 8
  %24 = call i32 @snd_sof_dsp_block_read(%struct.snd_sof_dev* %20, i32 %21, i32 %22, i8* %23, i32 24)
  %25 = load i8*, i8** %9, align 8
  %26 = bitcast i8* %25 to %struct.sof_ipc_ext_data_hdr*
  store %struct.sof_ipc_ext_data_hdr* %26, %struct.sof_ipc_ext_data_hdr** %8, align 8
  br label %27

27:                                               ; preds = %85, %19
  %28 = load %struct.sof_ipc_ext_data_hdr*, %struct.sof_ipc_ext_data_hdr** %8, align 8
  %29 = getelementptr inbounds %struct.sof_ipc_ext_data_hdr, %struct.sof_ipc_ext_data_hdr* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @SOF_IPC_FW_READY, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %99

34:                                               ; preds = %27
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = add i64 %36, 24
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %7, align 4
  %39 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i8*, i8** %9, align 8
  %43 = bitcast i8* %42 to i32*
  %44 = getelementptr inbounds i32, i32* %43, i64 24
  %45 = bitcast i32* %44 to i8*
  %46 = load %struct.sof_ipc_ext_data_hdr*, %struct.sof_ipc_ext_data_hdr** %8, align 8
  %47 = getelementptr inbounds %struct.sof_ipc_ext_data_hdr, %struct.sof_ipc_ext_data_hdr* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = sub i64 %50, 24
  %52 = trunc i64 %51 to i32
  %53 = call i32 @snd_sof_dsp_block_read(%struct.snd_sof_dev* %39, i32 %40, i32 %41, i8* %45, i32 %52)
  %54 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %55 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.sof_ipc_ext_data_hdr*, %struct.sof_ipc_ext_data_hdr** %8, align 8
  %58 = getelementptr inbounds %struct.sof_ipc_ext_data_hdr, %struct.sof_ipc_ext_data_hdr* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.sof_ipc_ext_data_hdr*, %struct.sof_ipc_ext_data_hdr** %8, align 8
  %61 = getelementptr inbounds %struct.sof_ipc_ext_data_hdr, %struct.sof_ipc_ext_data_hdr* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @dev_dbg(i32 %56, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %63)
  %65 = load %struct.sof_ipc_ext_data_hdr*, %struct.sof_ipc_ext_data_hdr** %8, align 8
  %66 = getelementptr inbounds %struct.sof_ipc_ext_data_hdr, %struct.sof_ipc_ext_data_hdr* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  switch i32 %67, label %73 [
    i32 129, label %68
    i32 128, label %69
  ]

68:                                               ; preds = %34
  br label %74

69:                                               ; preds = %34
  %70 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %71 = load %struct.sof_ipc_ext_data_hdr*, %struct.sof_ipc_ext_data_hdr** %8, align 8
  %72 = call i32 @get_ext_windows(%struct.snd_sof_dev* %70, %struct.sof_ipc_ext_data_hdr* %71)
  store i32 %72, i32* %10, align 4
  br label %74

73:                                               ; preds = %34
  br label %74

74:                                               ; preds = %73, %69, %68
  %75 = load i32, i32* %10, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %74
  %78 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %79 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.sof_ipc_ext_data_hdr*, %struct.sof_ipc_ext_data_hdr** %8, align 8
  %82 = getelementptr inbounds %struct.sof_ipc_ext_data_hdr, %struct.sof_ipc_ext_data_hdr* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @dev_err(i32 %80, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  br label %99

85:                                               ; preds = %74
  %86 = load %struct.sof_ipc_ext_data_hdr*, %struct.sof_ipc_ext_data_hdr** %8, align 8
  %87 = getelementptr inbounds %struct.sof_ipc_ext_data_hdr, %struct.sof_ipc_ext_data_hdr* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %90, %89
  store i32 %91, i32* %7, align 4
  %92 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* %7, align 4
  %95 = load i8*, i8** %9, align 8
  %96 = call i32 @snd_sof_dsp_block_read(%struct.snd_sof_dev* %92, i32 %93, i32 %94, i8* %95, i32 24)
  %97 = load i8*, i8** %9, align 8
  %98 = bitcast i8* %97 to %struct.sof_ipc_ext_data_hdr*
  store %struct.sof_ipc_ext_data_hdr* %98, %struct.sof_ipc_ext_data_hdr** %8, align 8
  br label %27

99:                                               ; preds = %77, %27
  %100 = load i8*, i8** %9, align 8
  %101 = call i32 @kfree(i8* %100)
  %102 = load i32, i32* %10, align 4
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %99, %16
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @snd_sof_dsp_block_read(%struct.snd_sof_dev*, i32, i32, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @get_ext_windows(%struct.snd_sof_dev*, %struct.sof_ipc_ext_data_hdr*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
