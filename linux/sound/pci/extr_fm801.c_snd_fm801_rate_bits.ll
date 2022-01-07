; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_fm801.c_snd_fm801_rate_bits.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_fm801.c_snd_fm801_rate_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rates = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (i32)* @snd_fm801_rate_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @snd_fm801_rate_bits(i32 %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %22, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32*, i32** @rates, align 8
  %8 = call i32 @ARRAY_SIZE(i32* %7)
  %9 = icmp ult i32 %6, %8
  br i1 %9, label %10, label %25

10:                                               ; preds = %5
  %11 = load i32*, i32** @rates, align 8
  %12 = load i32, i32* %4, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %10
  %19 = load i32, i32* %4, align 4
  %20 = trunc i32 %19 to i16
  store i16 %20, i16* %2, align 2
  br label %31

21:                                               ; preds = %10
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* %4, align 4
  %24 = add i32 %23, 1
  store i32 %24, i32* %4, align 4
  br label %5

25:                                               ; preds = %5
  %26 = call i32 (...) @snd_BUG()
  %27 = load i32*, i32** @rates, align 8
  %28 = call i32 @ARRAY_SIZE(i32* %27)
  %29 = sub nsw i32 %28, 1
  %30 = trunc i32 %29 to i16
  store i16 %30, i16* %2, align 2
  br label %31

31:                                               ; preds = %25, %18
  %32 = load i16, i16* %2, align 2
  ret i16 %32
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @snd_BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
