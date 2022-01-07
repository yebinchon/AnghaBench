; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/baytrail/extr_sst-baytrail-dsp.c_sst_byt_dump_shim.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/baytrail/extr_sst-baytrail-dsp.c_sst_byt_dump_shim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_dsp = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [32 x i8] c"shim 0x%2.2x value 0x%16.16llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"pci 0x%2.2x value 0x%8.8x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sst_dsp*)* @sst_byt_dump_shim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sst_byt_dump_shim(%struct.sst_dsp* %0) #0 {
  %2 = alloca %struct.sst_dsp*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.sst_dsp* %0, %struct.sst_dsp** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %22, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp sle i32 %6, 240
  br i1 %7, label %8, label %25

8:                                                ; preds = %5
  %9 = load %struct.sst_dsp*, %struct.sst_dsp** %2, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call i64 @sst_dsp_shim_read64_unlocked(%struct.sst_dsp* %9, i32 %10)
  store i64 %11, i64* %4, align 8
  %12 = load i64, i64* %4, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %8
  %15 = load %struct.sst_dsp*, %struct.sst_dsp** %2, align 8
  %16 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @dev_dbg(i32 %17, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %18, i64 %19)
  br label %21

21:                                               ; preds = %14, %8
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 8
  store i32 %24, i32* %3, align 4
  br label %5

25:                                               ; preds = %5
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %48, %25
  %27 = load i32, i32* %3, align 4
  %28 = icmp sle i32 %27, 255
  br i1 %28, label %29, label %51

29:                                               ; preds = %26
  %30 = load %struct.sst_dsp*, %struct.sst_dsp** %2, align 8
  %31 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %33, %35
  %37 = call i64 @readl(i64 %36)
  store i64 %37, i64* %4, align 8
  %38 = load i64, i64* %4, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %29
  %41 = load %struct.sst_dsp*, %struct.sst_dsp** %2, align 8
  %42 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %3, align 4
  %45 = load i64, i64* %4, align 8
  %46 = call i32 @dev_dbg(i32 %43, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %44, i64 %45)
  br label %47

47:                                               ; preds = %40, %29
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %3, align 4
  %50 = add nsw i32 %49, 4
  store i32 %50, i32* %3, align 4
  br label %26

51:                                               ; preds = %26
  ret void
}

declare dso_local i64 @sst_dsp_shim_read64_unlocked(%struct.sst_dsp*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i64) #1

declare dso_local i64 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
