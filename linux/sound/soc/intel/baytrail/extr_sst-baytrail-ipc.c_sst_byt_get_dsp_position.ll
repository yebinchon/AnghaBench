; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/baytrail/extr_sst-baytrail-ipc.c_sst_byt_get_dsp_position.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/baytrail/extr_sst-baytrail-ipc.c_sst_byt_get_dsp_position.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_byt = type { %struct.sst_dsp* }
%struct.sst_dsp = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.sst_byt_stream = type { i32 }
%struct.sst_byt_tstamp = type { i32 }

@SST_BYT_TIMESTAMP_OFFSET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sst_byt_get_dsp_position(%struct.sst_byt* %0, %struct.sst_byt_stream* %1, i32 %2) #0 {
  %4 = alloca %struct.sst_byt*, align 8
  %5 = alloca %struct.sst_byt_stream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sst_dsp*, align 8
  %8 = alloca %struct.sst_byt_tstamp, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.sst_byt* %0, %struct.sst_byt** %4, align 8
  store %struct.sst_byt_stream* %1, %struct.sst_byt_stream** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.sst_byt*, %struct.sst_byt** %4, align 8
  %12 = getelementptr inbounds %struct.sst_byt, %struct.sst_byt* %11, i32 0, i32 0
  %13 = load %struct.sst_dsp*, %struct.sst_dsp** %12, align 8
  store %struct.sst_dsp* %13, %struct.sst_dsp** %7, align 8
  %14 = load %struct.sst_byt_stream*, %struct.sst_byt_stream** %5, align 8
  %15 = getelementptr inbounds %struct.sst_byt_stream, %struct.sst_byt_stream* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %9, align 4
  %17 = load i64, i64* @SST_BYT_TIMESTAMP_OFFSET, align 8
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 4
  %21 = add i64 %17, %20
  store i64 %21, i64* %10, align 8
  %22 = load %struct.sst_dsp*, %struct.sst_dsp** %7, align 8
  %23 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %10, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @memcpy_fromio(%struct.sst_byt_tstamp* %8, i64 %27, i32 4)
  %29 = getelementptr inbounds %struct.sst_byt_tstamp, %struct.sst_byt_tstamp* %8, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @do_div(i32 %30, i32 %31)
  ret i32 %32
}

declare dso_local i32 @memcpy_fromio(%struct.sst_byt_tstamp*, i64, i32) #1

declare dso_local i32 @do_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
