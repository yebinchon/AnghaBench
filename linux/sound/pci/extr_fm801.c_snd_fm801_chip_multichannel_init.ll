; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_fm801.c_snd_fm801_chip_multichannel_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_fm801.c_snd_fm801_chip_multichannel_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm801 = type { i32, i32, i64 }

@AC97_VENDOR_ID1 = common dso_local global i32 0, align 4
@AC97_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fm801*)* @snd_fm801_chip_multichannel_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_fm801_chip_multichannel_init(%struct.fm801* %0) #0 {
  %2 = alloca %struct.fm801*, align 8
  %3 = alloca i16, align 2
  %4 = alloca i32, align 4
  store %struct.fm801* %0, %struct.fm801** %2, align 8
  %5 = load %struct.fm801*, %struct.fm801** %2, align 8
  %6 = getelementptr inbounds %struct.fm801, %struct.fm801* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %61

9:                                                ; preds = %1
  %10 = load %struct.fm801*, %struct.fm801** %2, align 8
  %11 = getelementptr inbounds %struct.fm801, %struct.fm801* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %9
  %15 = load %struct.fm801*, %struct.fm801** %2, align 8
  %16 = load %struct.fm801*, %struct.fm801** %2, align 8
  %17 = getelementptr inbounds %struct.fm801, %struct.fm801* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @AC97_VENDOR_ID1, align 4
  %20 = call i32 @msecs_to_jiffies(i32 50)
  %21 = call i32 @wait_for_codec(%struct.fm801* %15, i32 %18, i32 %19, i32 %20)
  br label %56

22:                                               ; preds = %9
  store i32 3, i32* %4, align 4
  br label %23

23:                                               ; preds = %52, %22
  %24 = load i32, i32* %4, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %55

26:                                               ; preds = %23
  %27 = load %struct.fm801*, %struct.fm801** %2, align 8
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @AC97_VENDOR_ID1, align 4
  %30 = call i32 @msecs_to_jiffies(i32 50)
  %31 = call i32 @wait_for_codec(%struct.fm801* %27, i32 %28, i32 %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %51, label %33

33:                                               ; preds = %26
  %34 = load %struct.fm801*, %struct.fm801** %2, align 8
  %35 = load i32, i32* @AC97_DATA, align 4
  %36 = call zeroext i16 @fm801_readw(%struct.fm801* %34, i32 %35)
  store i16 %36, i16* %3, align 2
  %37 = load i16, i16* %3, align 2
  %38 = zext i16 %37 to i32
  %39 = icmp ne i32 %38, 65535
  br i1 %39, label %40, label %50

40:                                               ; preds = %33
  %41 = load i16, i16* %3, align 2
  %42 = zext i16 %41 to i32
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = load %struct.fm801*, %struct.fm801** %2, align 8
  %46 = getelementptr inbounds %struct.fm801, %struct.fm801* %45, i32 0, i32 1
  store i32 1, i32* %46, align 4
  %47 = load i32, i32* %4, align 4
  %48 = load %struct.fm801*, %struct.fm801** %2, align 8
  %49 = getelementptr inbounds %struct.fm801, %struct.fm801* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  br label %55

50:                                               ; preds = %40, %33
  br label %51

51:                                               ; preds = %50, %26
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %4, align 4
  br label %23

55:                                               ; preds = %44, %23
  br label %56

56:                                               ; preds = %55, %14
  %57 = load %struct.fm801*, %struct.fm801** %2, align 8
  %58 = load i32, i32* @AC97_VENDOR_ID1, align 4
  %59 = call i32 @msecs_to_jiffies(i32 750)
  %60 = call i32 @wait_for_codec(%struct.fm801* %57, i32 0, i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %56, %1
  ret void
}

declare dso_local i32 @wait_for_codec(%struct.fm801*, i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local zeroext i16 @fm801_readw(%struct.fm801*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
