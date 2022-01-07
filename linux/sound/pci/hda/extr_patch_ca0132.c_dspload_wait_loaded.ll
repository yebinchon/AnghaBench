; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_dspload_wait_loaded.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_dspload_wait_loaded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"ca0132 DSP downloaded and running\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"ca0132 failed to download DSP\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @dspload_wait_loaded to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dspload_wait_loaded(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca i64, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %5 = load i64, i64* @jiffies, align 8
  %6 = call i64 @msecs_to_jiffies(i32 2000)
  %7 = add i64 %5, %6
  store i64 %7, i64* %4, align 8
  br label %8

8:                                                ; preds = %17, %1
  %9 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %10 = call i64 @dspload_is_loaded(%struct.hda_codec* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %14 = call i32 @codec_info(%struct.hda_codec* %13, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %25

15:                                               ; preds = %8
  %16 = call i32 @msleep(i32 20)
  br label %17

17:                                               ; preds = %15
  %18 = load i64, i64* @jiffies, align 8
  %19 = load i64, i64* %4, align 8
  %20 = call i64 @time_before(i64 %18, i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %8, label %22

22:                                               ; preds = %17
  %23 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %24 = call i32 @codec_err(%struct.hda_codec* %23, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %22, %12
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @dspload_is_loaded(%struct.hda_codec*) #1

declare dso_local i32 @codec_info(%struct.hda_codec*, i8*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @codec_err(%struct.hda_codec*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
