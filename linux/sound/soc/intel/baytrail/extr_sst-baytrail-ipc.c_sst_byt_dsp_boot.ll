; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/baytrail/extr_sst-baytrail-ipc.c_sst_byt_dsp_boot.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/baytrail/extr_sst-baytrail-ipc.c_sst_byt_dsp_boot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sst_pdata = type { %struct.sst_byt* }
%struct.sst_byt = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"reload dsp fw\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"error: failed to reload firmware\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"dsp booting...\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sst_byt_dsp_boot(%struct.device* %0, %struct.sst_pdata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.sst_pdata*, align 8
  %6 = alloca %struct.sst_byt*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.sst_pdata* %1, %struct.sst_pdata** %5, align 8
  %8 = load %struct.sst_pdata*, %struct.sst_pdata** %5, align 8
  %9 = getelementptr inbounds %struct.sst_pdata, %struct.sst_pdata* %8, i32 0, i32 0
  %10 = load %struct.sst_byt*, %struct.sst_byt** %9, align 8
  store %struct.sst_byt* %10, %struct.sst_byt** %6, align 8
  %11 = load %struct.sst_byt*, %struct.sst_byt** %6, align 8
  %12 = getelementptr inbounds %struct.sst_byt, %struct.sst_byt* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @dev_dbg(i32 %13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.sst_byt*, %struct.sst_byt** %6, align 8
  %16 = getelementptr inbounds %struct.sst_byt, %struct.sst_byt* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @sst_dsp_reset(i32 %17)
  %19 = load %struct.sst_byt*, %struct.sst_byt** %6, align 8
  %20 = getelementptr inbounds %struct.sst_byt, %struct.sst_byt* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @sst_fw_reload(i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = call i32 @dev_err(%struct.device* %26, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %3, align 4
  br label %40

29:                                               ; preds = %2
  %30 = load %struct.sst_byt*, %struct.sst_byt** %6, align 8
  %31 = getelementptr inbounds %struct.sst_byt, %struct.sst_byt* %30, i32 0, i32 0
  store i32 0, i32* %31, align 4
  %32 = load %struct.sst_byt*, %struct.sst_byt** %6, align 8
  %33 = getelementptr inbounds %struct.sst_byt, %struct.sst_byt* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @sst_dsp_boot(i32 %34)
  %36 = load %struct.sst_byt*, %struct.sst_byt** %6, align 8
  %37 = getelementptr inbounds %struct.sst_byt, %struct.sst_byt* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dev_dbg(i32 %38, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %29, %25
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @sst_dsp_reset(i32) #1

declare dso_local i32 @sst_fw_reload(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @sst_dsp_boot(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
