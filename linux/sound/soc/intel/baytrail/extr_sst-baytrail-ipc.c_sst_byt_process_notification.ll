; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/baytrail/extr_sst-baytrail-ipc.c_sst_byt_process_notification.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/baytrail/extr_sst-baytrail-ipc.c_sst_byt_process_notification.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_byt = type { %struct.sst_dsp* }
%struct.sst_dsp = type { i32 }
%struct.sst_byt_stream = type { i32, i32 (%struct.sst_byt_stream*, i32)*, i32 }

@SST_IPCD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sst_byt*, i64*)* @sst_byt_process_notification to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sst_byt_process_notification(%struct.sst_byt* %0, i64* %1) #0 {
  %3 = alloca %struct.sst_byt*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.sst_dsp*, align 8
  %6 = alloca %struct.sst_byt_stream*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sst_byt* %0, %struct.sst_byt** %3, align 8
  store i64* %1, i64** %4, align 8
  %10 = load %struct.sst_byt*, %struct.sst_byt** %3, align 8
  %11 = getelementptr inbounds %struct.sst_byt, %struct.sst_byt* %10, i32 0, i32 0
  %12 = load %struct.sst_dsp*, %struct.sst_dsp** %11, align 8
  store %struct.sst_dsp* %12, %struct.sst_dsp** %5, align 8
  %13 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %14 = load i32, i32* @SST_IPCD, align 4
  %15 = call i32 @sst_dsp_shim_read64_unlocked(%struct.sst_dsp* %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @sst_byt_header_msg_id(i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  switch i32 %18, label %61 [
    i32 128, label %19
    i32 129, label %57
  ]

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @sst_byt_header_str_id(i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load %struct.sst_byt*, %struct.sst_byt** %3, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call %struct.sst_byt_stream* @sst_byt_get_stream(%struct.sst_byt* %22, i32 %23)
  store %struct.sst_byt_stream* %24, %struct.sst_byt_stream** %6, align 8
  %25 = load %struct.sst_byt_stream*, %struct.sst_byt_stream** %6, align 8
  %26 = icmp ne %struct.sst_byt_stream* %25, null
  br i1 %26, label %27, label %56

27:                                               ; preds = %19
  %28 = load %struct.sst_byt_stream*, %struct.sst_byt_stream** %6, align 8
  %29 = getelementptr inbounds %struct.sst_byt_stream, %struct.sst_byt_stream* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %56

32:                                               ; preds = %27
  %33 = load %struct.sst_byt_stream*, %struct.sst_byt_stream** %6, align 8
  %34 = getelementptr inbounds %struct.sst_byt_stream, %struct.sst_byt_stream* %33, i32 0, i32 1
  %35 = load i32 (%struct.sst_byt_stream*, i32)*, i32 (%struct.sst_byt_stream*, i32)** %34, align 8
  %36 = icmp ne i32 (%struct.sst_byt_stream*, i32)* %35, null
  br i1 %36, label %37, label %56

37:                                               ; preds = %32
  %38 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %39 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %38, i32 0, i32 0
  %40 = load i64*, i64** %4, align 8
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %41)
  %43 = load %struct.sst_byt_stream*, %struct.sst_byt_stream** %6, align 8
  %44 = getelementptr inbounds %struct.sst_byt_stream, %struct.sst_byt_stream* %43, i32 0, i32 1
  %45 = load i32 (%struct.sst_byt_stream*, i32)*, i32 (%struct.sst_byt_stream*, i32)** %44, align 8
  %46 = load %struct.sst_byt_stream*, %struct.sst_byt_stream** %6, align 8
  %47 = load %struct.sst_byt_stream*, %struct.sst_byt_stream** %6, align 8
  %48 = getelementptr inbounds %struct.sst_byt_stream, %struct.sst_byt_stream* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 %45(%struct.sst_byt_stream* %46, i32 %49)
  %51 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %52 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %51, i32 0, i32 0
  %53 = load i64*, i64** %4, align 8
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @spin_lock_irqsave(i32* %52, i64 %54)
  br label %56

56:                                               ; preds = %37, %32, %27, %19
  br label %61

57:                                               ; preds = %2
  %58 = load %struct.sst_byt*, %struct.sst_byt** %3, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @sst_byt_fw_ready(%struct.sst_byt* %58, i32 %59)
  br label %61

61:                                               ; preds = %2, %57, %56
  ret i32 1
}

declare dso_local i32 @sst_dsp_shim_read64_unlocked(%struct.sst_dsp*, i32) #1

declare dso_local i32 @sst_byt_header_msg_id(i32) #1

declare dso_local i32 @sst_byt_header_str_id(i32) #1

declare dso_local %struct.sst_byt_stream* @sst_byt_get_stream(%struct.sst_byt*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @sst_byt_fw_ready(%struct.sst_byt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
