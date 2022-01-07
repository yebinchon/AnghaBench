; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_fm801.c_snd_fm801_update_bits.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_fm801.c_snd_fm801_update_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm801 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fm801*, i16, i16, i16)* @snd_fm801_update_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_fm801_update_bits(%struct.fm801* %0, i16 zeroext %1, i16 zeroext %2, i16 zeroext %3) #0 {
  %5 = alloca %struct.fm801*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  store %struct.fm801* %0, %struct.fm801** %5, align 8
  store i16 %1, i16* %6, align 2
  store i16 %2, i16* %7, align 2
  store i16 %3, i16* %8, align 2
  %13 = load %struct.fm801*, %struct.fm801** %5, align 8
  %14 = getelementptr inbounds %struct.fm801, %struct.fm801* %13, i32 0, i32 0
  %15 = load i64, i64* %10, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.fm801*, %struct.fm801** %5, align 8
  %18 = load i16, i16* %6, align 2
  %19 = call zeroext i16 @fm801_ioread16(%struct.fm801* %17, i16 zeroext %18)
  store i16 %19, i16* %11, align 2
  %20 = load i16, i16* %11, align 2
  %21 = zext i16 %20 to i32
  %22 = load i16, i16* %7, align 2
  %23 = zext i16 %22 to i32
  %24 = xor i32 %23, -1
  %25 = and i32 %21, %24
  %26 = load i16, i16* %8, align 2
  %27 = zext i16 %26 to i32
  %28 = or i32 %25, %27
  %29 = trunc i32 %28 to i16
  store i16 %29, i16* %12, align 2
  %30 = load i16, i16* %11, align 2
  %31 = zext i16 %30 to i32
  %32 = load i16, i16* %12, align 2
  %33 = zext i16 %32 to i32
  %34 = icmp ne i32 %31, %33
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %4
  %39 = load %struct.fm801*, %struct.fm801** %5, align 8
  %40 = load i16, i16* %6, align 2
  %41 = load i16, i16* %12, align 2
  %42 = call i32 @fm801_iowrite16(%struct.fm801* %39, i16 zeroext %40, i16 zeroext %41)
  br label %43

43:                                               ; preds = %38, %4
  %44 = load %struct.fm801*, %struct.fm801** %5, align 8
  %45 = getelementptr inbounds %struct.fm801, %struct.fm801* %44, i32 0, i32 0
  %46 = load i64, i64* %10, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  %48 = load i32, i32* %9, align 4
  ret i32 %48
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local zeroext i16 @fm801_ioread16(%struct.fm801*, i16 zeroext) #1

declare dso_local i32 @fm801_iowrite16(%struct.fm801*, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
