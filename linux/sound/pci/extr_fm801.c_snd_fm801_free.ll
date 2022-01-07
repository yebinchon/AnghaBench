; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_fm801.c_snd_fm801_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_fm801.c_snd_fm801_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm801 = type { i64, i32, i32, i32, i32 }

@IRQ_MASK = common dso_local global i32 0, align 4
@TUNER_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fm801*)* @snd_fm801_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_fm801_free(%struct.fm801* %0) #0 {
  %2 = alloca %struct.fm801*, align 8
  %3 = alloca i16, align 2
  store %struct.fm801* %0, %struct.fm801** %2, align 8
  %4 = load %struct.fm801*, %struct.fm801** %2, align 8
  %5 = getelementptr inbounds %struct.fm801, %struct.fm801* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %29

9:                                                ; preds = %1
  %10 = load %struct.fm801*, %struct.fm801** %2, align 8
  %11 = load i32, i32* @IRQ_MASK, align 4
  %12 = call zeroext i16 @fm801_readw(%struct.fm801* %10, i32 %11)
  store i16 %12, i16* %3, align 2
  %13 = load i16, i16* %3, align 2
  %14 = zext i16 %13 to i32
  %15 = or i32 %14, 195
  %16 = trunc i32 %15 to i16
  store i16 %16, i16* %3, align 2
  %17 = load %struct.fm801*, %struct.fm801** %2, align 8
  %18 = load i32, i32* @IRQ_MASK, align 4
  %19 = load i16, i16* %3, align 2
  %20 = call i32 @fm801_writew(%struct.fm801* %17, i32 %18, i16 zeroext %19)
  %21 = load %struct.fm801*, %struct.fm801** %2, align 8
  %22 = getelementptr inbounds %struct.fm801, %struct.fm801* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.fm801*, %struct.fm801** %2, align 8
  %25 = getelementptr inbounds %struct.fm801, %struct.fm801* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.fm801*, %struct.fm801** %2, align 8
  %28 = call i32 @devm_free_irq(i32 %23, i64 %26, %struct.fm801* %27)
  br label %29

29:                                               ; preds = %9, %8
  ret i32 0
}

declare dso_local zeroext i16 @fm801_readw(%struct.fm801*, i32) #1

declare dso_local i32 @fm801_writew(%struct.fm801*, i32, i16 zeroext) #1

declare dso_local i32 @devm_free_irq(i32, i64, %struct.fm801*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
