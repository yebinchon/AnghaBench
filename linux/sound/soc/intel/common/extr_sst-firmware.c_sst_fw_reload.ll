; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/common/extr_sst-firmware.c_sst_fw_reload.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/common/extr_sst-firmware.c_sst_fw_reload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_fw = type { %struct.sst_dsp* }
%struct.sst_dsp = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@.str = private unnamed_addr constant [20 x i8] c"reloading firmware\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"error: parse fw failed %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sst_fw_reload(%struct.sst_fw* %0) #0 {
  %2 = alloca %struct.sst_fw*, align 8
  %3 = alloca %struct.sst_dsp*, align 8
  %4 = alloca i32, align 4
  store %struct.sst_fw* %0, %struct.sst_fw** %2, align 8
  %5 = load %struct.sst_fw*, %struct.sst_fw** %2, align 8
  %6 = getelementptr inbounds %struct.sst_fw, %struct.sst_fw* %5, i32 0, i32 0
  %7 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  store %struct.sst_dsp* %7, %struct.sst_dsp** %3, align 8
  %8 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %9 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @dev_dbg(i32 %10, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %13 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = bitcast {}** %15 to i32 (%struct.sst_fw*)**
  %17 = load i32 (%struct.sst_fw*)*, i32 (%struct.sst_fw*)** %16, align 8
  %18 = load %struct.sst_fw*, %struct.sst_fw** %2, align 8
  %19 = call i32 %17(%struct.sst_fw* %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %1
  %23 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %24 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %22, %1
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
