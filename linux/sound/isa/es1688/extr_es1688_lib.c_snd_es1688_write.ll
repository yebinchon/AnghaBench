; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/es1688/extr_es1688_lib.c_snd_es1688_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/es1688/extr_es1688_lib.c_snd_es1688_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_es1688 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_es1688*, i8, i8)* @snd_es1688_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_es1688_write(%struct.snd_es1688* %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_es1688*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  store %struct.snd_es1688* %0, %struct.snd_es1688** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8 %2, i8* %7, align 1
  %8 = load %struct.snd_es1688*, %struct.snd_es1688** %5, align 8
  %9 = load i8, i8* %6, align 1
  %10 = call i32 @snd_es1688_dsp_command(%struct.snd_es1688* %8, i8 zeroext %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %17

13:                                               ; preds = %3
  %14 = load %struct.snd_es1688*, %struct.snd_es1688** %5, align 8
  %15 = load i8, i8* %7, align 1
  %16 = call i32 @snd_es1688_dsp_command(%struct.snd_es1688* %14, i8 zeroext %15)
  store i32 %16, i32* %4, align 4
  br label %17

17:                                               ; preds = %13, %12
  %18 = load i32, i32* %4, align 4
  ret i32 %18
}

declare dso_local i32 @snd_es1688_dsp_command(%struct.snd_es1688*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
