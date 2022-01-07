; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/motu/extr_motu-protocol-v2.c_v2_get_clock_source.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/motu/extr_motu-protocol-v2.c_v2_get_clock_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_motu = type { i32 }

@V2_CLOCK_STATUS_OFFSET = common dso_local global i32 0, align 4
@V2_CLOCK_SRC_MASK = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@V2_IN_OUT_CONF_OFFSET = common dso_local global i32 0, align 4
@SND_MOTU_CLOCK_SOURCE_INTERNAL = common dso_local global i32 0, align 4
@SND_MOTU_CLOCK_SOURCE_SPDIF_ON_OPT = common dso_local global i32 0, align 4
@SND_MOTU_CLOCK_SOURCE_ADAT_ON_OPT = common dso_local global i32 0, align 4
@SND_MOTU_CLOCK_SOURCE_SPDIF_ON_COAX = common dso_local global i32 0, align 4
@SND_MOTU_CLOCK_SOURCE_WORD_ON_BNC = common dso_local global i32 0, align 4
@SND_MOTU_CLOCK_SOURCE_ADAT_ON_DSUB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_motu*, i32*)* @v2_get_clock_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v2_get_clock_source(%struct.snd_motu* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_motu*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_motu* %0, %struct.snd_motu** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.snd_motu*, %struct.snd_motu** %4, align 8
  %10 = load i32, i32* @V2_CLOCK_STATUS_OFFSET, align 4
  %11 = call i32 @snd_motu_transaction_read(%struct.snd_motu* %9, i32 %10, i32* %6, i32 4)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %3, align 4
  br label %64

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @be32_to_cpu(i32 %17)
  %19 = load i32, i32* @V2_CLOCK_SRC_MASK, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ugt i32 %21, 5
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %64

26:                                               ; preds = %16
  %27 = load %struct.snd_motu*, %struct.snd_motu** %4, align 8
  %28 = load i32, i32* @V2_IN_OUT_CONF_OFFSET, align 4
  %29 = call i32 @snd_motu_transaction_read(%struct.snd_motu* %27, i32 %28, i32* %6, i32 4)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %3, align 4
  br label %64

34:                                               ; preds = %26
  %35 = load i32, i32* %7, align 4
  switch i32 %35, label %60 [
    i32 0, label %36
    i32 1, label %39
    i32 2, label %51
    i32 4, label %54
    i32 5, label %57
  ]

36:                                               ; preds = %34
  %37 = load i32, i32* @SND_MOTU_CLOCK_SOURCE_INTERNAL, align 4
  %38 = load i32*, i32** %5, align 8
  store i32 %37, i32* %38, align 4
  br label %63

39:                                               ; preds = %34
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @be32_to_cpu(i32 %40)
  %42 = and i32 %41, 512
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* @SND_MOTU_CLOCK_SOURCE_SPDIF_ON_OPT, align 4
  %46 = load i32*, i32** %5, align 8
  store i32 %45, i32* %46, align 4
  br label %50

47:                                               ; preds = %39
  %48 = load i32, i32* @SND_MOTU_CLOCK_SOURCE_ADAT_ON_OPT, align 4
  %49 = load i32*, i32** %5, align 8
  store i32 %48, i32* %49, align 4
  br label %50

50:                                               ; preds = %47, %44
  br label %63

51:                                               ; preds = %34
  %52 = load i32, i32* @SND_MOTU_CLOCK_SOURCE_SPDIF_ON_COAX, align 4
  %53 = load i32*, i32** %5, align 8
  store i32 %52, i32* %53, align 4
  br label %63

54:                                               ; preds = %34
  %55 = load i32, i32* @SND_MOTU_CLOCK_SOURCE_WORD_ON_BNC, align 4
  %56 = load i32*, i32** %5, align 8
  store i32 %55, i32* %56, align 4
  br label %63

57:                                               ; preds = %34
  %58 = load i32, i32* @SND_MOTU_CLOCK_SOURCE_ADAT_ON_DSUB, align 4
  %59 = load i32*, i32** %5, align 8
  store i32 %58, i32* %59, align 4
  br label %63

60:                                               ; preds = %34
  %61 = load i32, i32* @EIO, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %64

63:                                               ; preds = %57, %54, %51, %50, %36
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %60, %32, %23, %14
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @snd_motu_transaction_read(%struct.snd_motu*, i32, i32*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
