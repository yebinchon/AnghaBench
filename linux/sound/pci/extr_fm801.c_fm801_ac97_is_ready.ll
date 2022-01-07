; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_fm801.c_fm801_ac97_is_ready.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_fm801.c_fm801_ac97_is_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm801 = type { i32 }

@AC97_CMD = common dso_local global i32 0, align 4
@FM801_AC97_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fm801*, i32)* @fm801_ac97_is_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm801_ac97_is_ready(%struct.fm801* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fm801*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fm801* %0, %struct.fm801** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %21, %2
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %11, label %24

11:                                               ; preds = %7
  %12 = load %struct.fm801*, %struct.fm801** %4, align 8
  %13 = load i32, i32* @AC97_CMD, align 4
  %14 = call i32 @fm801_readw(%struct.fm801* %12, i32 %13)
  %15 = load i32, i32* @FM801_AC97_BUSY, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %11
  store i32 1, i32* %3, align 4
  br label %25

19:                                               ; preds = %11
  %20 = call i32 @udelay(i32 10)
  br label %21

21:                                               ; preds = %19
  %22 = load i32, i32* %6, align 4
  %23 = add i32 %22, 1
  store i32 %23, i32* %6, align 4
  br label %7

24:                                               ; preds = %7
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %24, %18
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @fm801_readw(%struct.fm801*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
