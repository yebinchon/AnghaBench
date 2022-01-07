; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/oxfw/extr_oxfw-stream.c_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/oxfw/extr_oxfw-stream.c_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_oxfw = type { i32, i64 }

@AVC_GENERAL_PLUG_DIR_IN = common dso_local global i32 0, align 4
@AVC_GENERAL_PLUG_DIR_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_oxfw*, i32)* @set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_rate(%struct.snd_oxfw* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_oxfw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.snd_oxfw* %0, %struct.snd_oxfw** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.snd_oxfw*, %struct.snd_oxfw** %3, align 8
  %7 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @AVC_GENERAL_PLUG_DIR_IN, align 4
  %11 = call i32 @avc_general_set_sig_fmt(i32 %8, i32 %9, i32 %10, i32 0)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %28

15:                                               ; preds = %2
  %16 = load %struct.snd_oxfw*, %struct.snd_oxfw** %3, align 8
  %17 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = load %struct.snd_oxfw*, %struct.snd_oxfw** %3, align 8
  %22 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @AVC_GENERAL_PLUG_DIR_OUT, align 4
  %26 = call i32 @avc_general_set_sig_fmt(i32 %23, i32 %24, i32 %25, i32 0)
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %20, %15
  br label %28

28:                                               ; preds = %27, %14
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

declare dso_local i32 @avc_general_set_sig_fmt(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
