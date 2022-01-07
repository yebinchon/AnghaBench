; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/extr_sst-atom-controls.c_send_ssp_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/extr_sst-atom-controls.c_send_ssp_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.sst_data = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"Enter: enable=%d port_name=%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"ssp0-port\00", align 1
@SSP_MODEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"ssp2-port\00", align 1
@SSP_CODEC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"port %s is not supported\0A\00", align 1
@SBA_HW_SET_SSP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"ssp_id: %u\0A\00", align 1
@SST_SWITCH_ON = common dso_local global i32 0, align 4
@SST_SWITCH_OFF = common dso_local global i32 0, align 4
@SST_IPC_IA_CMD = common dso_local global i32 0, align 4
@SST_FLAG_BLOCKED = common dso_local global i32 0, align 4
@SST_TASK_SBA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @send_ssp_cmd(%struct.snd_soc_dai* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sst_data*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %11 = call %struct.sst_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %10)
  store %struct.sst_data* %11, %struct.sst_data** %8, align 8
  %12 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %13 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 (i32, i8*, ...) @dev_dbg(i32 %14, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %15, i8* %16)
  %18 = load i8*, i8** %6, align 8
  %19 = call i64 @strcmp(i8* %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @SSP_MODEM, align 4
  store i32 %22, i32* %9, align 4
  br label %36

23:                                               ; preds = %3
  %24 = load i8*, i8** %6, align 8
  %25 = call i64 @strcmp(i8* %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* @SSP_CODEC, align 4
  store i32 %28, i32* %9, align 4
  br label %35

29:                                               ; preds = %23
  %30 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %31 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 (i32, i8*, ...) @dev_dbg(i32 %32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %33)
  store i32 -1, i32* %4, align 4
  br label %89

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35, %21
  %37 = load %struct.sst_data*, %struct.sst_data** %8, align 8
  %38 = getelementptr inbounds %struct.sst_data, %struct.sst_data* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @SST_FILL_DEFAULT_DESTINATION(i32 %41)
  %43 = load i32, i32* @SBA_HW_SET_SSP, align 4
  %44 = load %struct.sst_data*, %struct.sst_data** %8, align 8
  %45 = getelementptr inbounds %struct.sst_data, %struct.sst_data* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  store i32 %43, i32* %47, align 4
  %48 = load %struct.sst_data*, %struct.sst_data** %8, align 8
  %49 = getelementptr inbounds %struct.sst_data, %struct.sst_data* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  store i32 0, i32* %51, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.sst_data*, %struct.sst_data** %8, align 8
  %54 = getelementptr inbounds %struct.sst_data, %struct.sst_data* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 4
  %56 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %57 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %9, align 4
  %60 = call i32 (i32, i8*, ...) @dev_dbg(i32 %58, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %36
  %64 = load i32, i32* @SST_SWITCH_ON, align 4
  %65 = load %struct.sst_data*, %struct.sst_data** %8, align 8
  %66 = getelementptr inbounds %struct.sst_data, %struct.sst_data* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  store i32 %64, i32* %67, align 4
  br label %73

68:                                               ; preds = %36
  %69 = load i32, i32* @SST_SWITCH_OFF, align 4
  %70 = load %struct.sst_data*, %struct.sst_data** %8, align 8
  %71 = getelementptr inbounds %struct.sst_data, %struct.sst_data* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 2
  store i32 %69, i32* %72, align 4
  br label %73

73:                                               ; preds = %68, %63
  %74 = load %struct.sst_data*, %struct.sst_data** %8, align 8
  %75 = load i32, i32* @SST_IPC_IA_CMD, align 4
  %76 = load i32, i32* @SST_FLAG_BLOCKED, align 4
  %77 = load i32, i32* @SST_TASK_SBA, align 4
  %78 = load %struct.sst_data*, %struct.sst_data** %8, align 8
  %79 = getelementptr inbounds %struct.sst_data, %struct.sst_data* %78, i32 0, i32 0
  %80 = load %struct.sst_data*, %struct.sst_data** %8, align 8
  %81 = getelementptr inbounds %struct.sst_data, %struct.sst_data* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = add i64 12, %85
  %87 = trunc i64 %86 to i32
  %88 = call i32 @sst_fill_and_send_cmd(%struct.sst_data* %74, i32 %75, i32 %76, i32 %77, i32 0, %struct.TYPE_4__* %79, i32 %87)
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %73, %29
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local %struct.sst_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @SST_FILL_DEFAULT_DESTINATION(i32) #1

declare dso_local i32 @sst_fill_and_send_cmd(%struct.sst_data*, i32, i32, i32, i32, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
