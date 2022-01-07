; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/baytrail/extr_sst-baytrail-dsp.c_sst_byt_boot.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/baytrail/extr_sst-baytrail-dsp.c_sst_byt_boot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_dsp = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@SST_BYT_MAILBOX_OFFSET = common dso_local global i64 0, align 8
@SST_CSR = common dso_local global i32 0, align 4
@SST_BYT_CSR_STALL = common dso_local global i32 0, align 4
@SST_BYT_CSR_PWAITMODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"unable to start DSP\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sst_dsp*)* @sst_byt_boot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sst_byt_boot(%struct.sst_dsp* %0) #0 {
  %2 = alloca %struct.sst_dsp*, align 8
  %3 = alloca i32, align 4
  store %struct.sst_dsp* %0, %struct.sst_dsp** %2, align 8
  store i32 10, i32* %3, align 4
  %4 = load %struct.sst_dsp*, %struct.sst_dsp** %2, align 8
  %5 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @SST_BYT_MAILBOX_OFFSET, align 8
  %9 = add nsw i64 %7, %8
  %10 = load %struct.sst_dsp*, %struct.sst_dsp** %2, align 8
  %11 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = call i32 @memcpy_toio(i64 %9, i32* %13, i32 4)
  %15 = load %struct.sst_dsp*, %struct.sst_dsp** %2, align 8
  %16 = load i32, i32* @SST_CSR, align 4
  %17 = load i32, i32* @SST_BYT_CSR_STALL, align 4
  %18 = call i32 @sst_dsp_shim_update_bits64(%struct.sst_dsp* %15, i32 %16, i32 %17, i32 0)
  br label %19

19:                                               ; preds = %31, %1
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* %3, align 4
  %22 = icmp ne i32 %20, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %19
  %24 = load %struct.sst_dsp*, %struct.sst_dsp** %2, align 8
  %25 = load i32, i32* @SST_CSR, align 4
  %26 = call i32 @sst_dsp_shim_read64(%struct.sst_dsp* %24, i32 %25)
  %27 = load i32, i32* @SST_BYT_CSR_PWAITMODE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  br label %33

31:                                               ; preds = %23
  %32 = call i32 @msleep(i32 100)
  br label %19

33:                                               ; preds = %30, %19
  %34 = load i32, i32* %3, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load %struct.sst_dsp*, %struct.sst_dsp** %2, align 8
  %38 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @dev_err(i32 %39, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.sst_dsp*, %struct.sst_dsp** %2, align 8
  %42 = call i32 @sst_byt_dump_shim(%struct.sst_dsp* %41)
  br label %43

43:                                               ; preds = %36, %33
  ret void
}

declare dso_local i32 @memcpy_toio(i64, i32*, i32) #1

declare dso_local i32 @sst_dsp_shim_update_bits64(%struct.sst_dsp*, i32, i32, i32) #1

declare dso_local i32 @sst_dsp_shim_read64(%struct.sst_dsp*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @sst_byt_dump_shim(%struct.sst_dsp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
