; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/digi00x/extr_digi00x-stream.c_snd_dg00x_stream_get_local_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/digi00x/extr_digi00x-stream.c_snd_dg00x_stream_get_local_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_dg00x = type { i32 }

@TCODE_READ_QUADLET_REQUEST = common dso_local global i32 0, align 4
@DG00X_ADDR_BASE = common dso_local global i64 0, align 8
@DG00X_OFFSET_LOCAL_RATE = common dso_local global i64 0, align 8
@snd_dg00x_stream_rates = common dso_local global i32* null, align 8
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_dg00x_stream_get_local_rate(%struct.snd_dg00x* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_dg00x*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_dg00x* %0, %struct.snd_dg00x** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.snd_dg00x*, %struct.snd_dg00x** %4, align 8
  %10 = getelementptr inbounds %struct.snd_dg00x, %struct.snd_dg00x* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @TCODE_READ_QUADLET_REQUEST, align 4
  %13 = load i64, i64* @DG00X_ADDR_BASE, align 8
  %14 = load i64, i64* @DG00X_OFFSET_LOCAL_RATE, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @snd_fw_transaction(i32 %11, i32 %12, i64 %15, i32* %7, i32 4, i32 0)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %3, align 4
  br label %41

21:                                               ; preds = %2
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @be32_to_cpu(i32 %22)
  %24 = and i32 %23, 15
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i32*, i32** @snd_dg00x_stream_rates, align 8
  %28 = call i64 @ARRAY_SIZE(i32* %27)
  %29 = icmp ult i64 %26, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %21
  %31 = load i32*, i32** @snd_dg00x_stream_rates, align 8
  %32 = load i64, i64* %6, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %5, align 8
  store i32 %34, i32* %35, align 4
  br label %39

36:                                               ; preds = %21
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %36, %30
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %39, %19
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @snd_fw_transaction(i32, i32, i64, i32*, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i64 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
