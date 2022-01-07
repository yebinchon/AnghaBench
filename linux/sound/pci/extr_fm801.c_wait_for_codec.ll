; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_fm801.c_wait_for_codec.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_fm801.c_wait_for_codec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm801 = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@AC97_CMD = common dso_local global i32 0, align 4
@FM801_AC97_ADDR_SHIFT = common dso_local global i32 0, align 4
@FM801_AC97_READ = common dso_local global i16 0, align 2
@FM801_AC97_VALID = common dso_local global i32 0, align 4
@FM801_AC97_BUSY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fm801*, i32, i16, i64)* @wait_for_codec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_for_codec(%struct.fm801* %0, i32 %1, i16 zeroext %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fm801*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.fm801* %0, %struct.fm801** %6, align 8
  store i32 %1, i32* %7, align 4
  store i16 %2, i16* %8, align 2
  store i64 %3, i64* %9, align 8
  %11 = load i64, i64* @jiffies, align 8
  %12 = load i64, i64* %9, align 8
  %13 = add i64 %11, %12
  store i64 %13, i64* %10, align 8
  %14 = load %struct.fm801*, %struct.fm801** %6, align 8
  %15 = load i32, i32* @AC97_CMD, align 4
  %16 = load i16, i16* %8, align 2
  %17 = zext i16 %16 to i32
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @FM801_AC97_ADDR_SHIFT, align 4
  %20 = shl i32 %18, %19
  %21 = or i32 %17, %20
  %22 = load i16, i16* @FM801_AC97_READ, align 2
  %23 = zext i16 %22 to i32
  %24 = or i32 %21, %23
  %25 = trunc i32 %24 to i16
  %26 = call i32 @fm801_writew(%struct.fm801* %14, i32 %15, i16 zeroext %25)
  %27 = call i32 @udelay(i32 5)
  br label %28

28:                                               ; preds = %41, %4
  %29 = load %struct.fm801*, %struct.fm801** %6, align 8
  %30 = load i32, i32* @AC97_CMD, align 4
  %31 = call i32 @fm801_readw(%struct.fm801* %29, i32 %30)
  %32 = load i32, i32* @FM801_AC97_VALID, align 4
  %33 = load i32, i32* @FM801_AC97_BUSY, align 4
  %34 = or i32 %32, %33
  %35 = and i32 %31, %34
  %36 = load i32, i32* @FM801_AC97_VALID, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %49

39:                                               ; preds = %28
  %40 = call i32 @schedule_timeout_uninterruptible(i32 1)
  br label %41

41:                                               ; preds = %39
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* @jiffies, align 8
  %44 = call i64 @time_after(i64 %42, i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %28, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* @EIO, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %46, %38
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @fm801_writew(%struct.fm801*, i32, i16 zeroext) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @fm801_readw(%struct.fm801*, i32) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
