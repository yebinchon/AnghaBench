; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/digi00x/extr_digi00x-stream.c_snd_dg00x_stream_set_local_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/digi00x/extr_digi00x-stream.c_snd_dg00x_stream_set_local_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_dg00x = type { i32 }

@snd_dg00x_stream_rates = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@TCODE_WRITE_QUADLET_REQUEST = common dso_local global i32 0, align 4
@DG00X_ADDR_BASE = common dso_local global i64 0, align 8
@DG00X_OFFSET_LOCAL_RATE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_dg00x_stream_set_local_rate(%struct.snd_dg00x* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_dg00x*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_dg00x* %0, %struct.snd_dg00x** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %23, %2
  %9 = load i32, i32* %7, align 4
  %10 = load i32*, i32** @snd_dg00x_stream_rates, align 8
  %11 = call i32 @ARRAY_SIZE(i32* %10)
  %12 = icmp ult i32 %9, %11
  br i1 %12, label %13, label %26

13:                                               ; preds = %8
  %14 = load i32, i32* %5, align 4
  %15 = load i32*, i32** @snd_dg00x_stream_rates, align 8
  %16 = load i32, i32* %7, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %14, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  br label %26

22:                                               ; preds = %13
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* %7, align 4
  %25 = add i32 %24, 1
  store i32 %25, i32* %7, align 4
  br label %8

26:                                               ; preds = %21, %8
  %27 = load i32, i32* %7, align 4
  %28 = load i32*, i32** @snd_dg00x_stream_rates, align 8
  %29 = call i32 @ARRAY_SIZE(i32* %28)
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %45

34:                                               ; preds = %26
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @cpu_to_be32(i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load %struct.snd_dg00x*, %struct.snd_dg00x** %4, align 8
  %38 = getelementptr inbounds %struct.snd_dg00x, %struct.snd_dg00x* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @TCODE_WRITE_QUADLET_REQUEST, align 4
  %41 = load i64, i64* @DG00X_ADDR_BASE, align 8
  %42 = load i64, i64* @DG00X_OFFSET_LOCAL_RATE, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @snd_fw_transaction(i32 %39, i32 %40, i64 %43, i32* %6, i32 4, i32 0)
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %34, %31
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @snd_fw_transaction(i32, i32, i64, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
