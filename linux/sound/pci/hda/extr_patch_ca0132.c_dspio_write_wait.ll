; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_dspio_write_wait.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_dspio_write_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@WIDGET_DSP_CTRL = common dso_local global i32 0, align 4
@VENDOR_DSPIO_STATUS = common dso_local global i32 0, align 4
@VENDOR_STATUS_DSPIO_OK = common dso_local global i32 0, align 4
@VENDOR_STATUS_DSPIO_SCP_RESPONSE_QUEUE_EMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @dspio_write_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dspio_write_wait(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %5 = load i64, i64* @jiffies, align 8
  %6 = call i64 @msecs_to_jiffies(i32 1000)
  %7 = add i64 %5, %6
  store i64 %7, i64* %4, align 8
  br label %8

8:                                                ; preds = %23, %1
  %9 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %10 = load i32, i32* @WIDGET_DSP_CTRL, align 4
  %11 = load i32, i32* @VENDOR_DSPIO_STATUS, align 4
  %12 = call i32 @snd_hda_codec_read(%struct.hda_codec* %9, i32 %10, i32 0, i32 %11, i32 0)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @VENDOR_STATUS_DSPIO_OK, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %8
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @VENDOR_STATUS_DSPIO_SCP_RESPONSE_QUEUE_EMPTY, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16, %8
  br label %28

21:                                               ; preds = %16
  %22 = call i32 @msleep(i32 1)
  br label %23

23:                                               ; preds = %21
  %24 = load i64, i64* @jiffies, align 8
  %25 = load i64, i64* %4, align 8
  %26 = call i64 @time_before(i64 %24, i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %8, label %28

28:                                               ; preds = %23, %20
  ret void
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @snd_hda_codec_read(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
