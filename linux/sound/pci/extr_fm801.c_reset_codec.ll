; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_fm801.c_reset_codec.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_fm801.c_reset_codec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm801 = type { i32 }

@CODEC_CTRL = common dso_local global i32 0, align 4
@AC97_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fm801*)* @reset_codec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reset_codec(%struct.fm801* %0) #0 {
  %2 = alloca %struct.fm801*, align 8
  store %struct.fm801* %0, %struct.fm801** %2, align 8
  %3 = load %struct.fm801*, %struct.fm801** %2, align 8
  %4 = load i32, i32* @CODEC_CTRL, align 4
  %5 = call i32 @fm801_writew(%struct.fm801* %3, i32 %4, i32 96)
  %6 = load %struct.fm801*, %struct.fm801** %2, align 8
  %7 = load i32, i32* @CODEC_CTRL, align 4
  %8 = call i32 @fm801_readw(%struct.fm801* %6, i32 %7)
  %9 = call i32 @udelay(i32 100)
  %10 = load %struct.fm801*, %struct.fm801** %2, align 8
  %11 = load i32, i32* @CODEC_CTRL, align 4
  %12 = call i32 @fm801_writew(%struct.fm801* %10, i32 %11, i32 0)
  %13 = load %struct.fm801*, %struct.fm801** %2, align 8
  %14 = load i32, i32* @AC97_RESET, align 4
  %15 = call i32 @msecs_to_jiffies(i32 750)
  %16 = call i32 @wait_for_codec(%struct.fm801* %13, i32 0, i32 %14, i32 %15)
  ret i32 %16
}

declare dso_local i32 @fm801_writew(%struct.fm801*, i32, i32) #1

declare dso_local i32 @fm801_readw(%struct.fm801*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @wait_for_codec(%struct.fm801*, i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
