; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emu10k1_main.c_snd_emu10k1_ecard_setadcgain.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emu10k1_main.c_snd_emu10k1_ecard_setadcgain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu10k1 = type { i32 }

@EC_TRIM_CSN = common dso_local global i32 0, align 4
@EC_TRIM_SDATA = common dso_local global i32 0, align 4
@EC_TRIM_SCLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_emu10k1*, i16)* @snd_emu10k1_ecard_setadcgain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_emu10k1_ecard_setadcgain(%struct.snd_emu10k1* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.snd_emu10k1*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_emu10k1* %0, %struct.snd_emu10k1** %3, align 8
  store i16 %1, i16* %4, align 2
  %7 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %8 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %9 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @EC_TRIM_CSN, align 4
  %12 = xor i32 %11, -1
  %13 = and i32 %10, %12
  %14 = call i32 @snd_emu10k1_ecard_write(%struct.snd_emu10k1* %7, i32 %13)
  %15 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %16 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %17 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @EC_TRIM_CSN, align 4
  %20 = xor i32 %19, -1
  %21 = and i32 %18, %20
  %22 = call i32 @snd_emu10k1_ecard_write(%struct.snd_emu10k1* %15, i32 %21)
  store i32 32768, i32* %5, align 4
  br label %23

23:                                               ; preds = %56, %2
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %59

26:                                               ; preds = %23
  %27 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %28 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @EC_TRIM_CSN, align 4
  %31 = load i32, i32* @EC_TRIM_SDATA, align 4
  %32 = or i32 %30, %31
  %33 = xor i32 %32, -1
  %34 = and i32 %29, %33
  store i32 %34, i32* %6, align 4
  %35 = load i16, i16* %4, align 2
  %36 = zext i16 %35 to i32
  %37 = load i32, i32* %5, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %26
  %41 = load i32, i32* @EC_TRIM_SDATA, align 4
  %42 = load i32, i32* %6, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %40, %26
  %45 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @snd_emu10k1_ecard_write(%struct.snd_emu10k1* %45, i32 %46)
  %48 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @EC_TRIM_SCLK, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @snd_emu10k1_ecard_write(%struct.snd_emu10k1* %48, i32 %51)
  %53 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @snd_emu10k1_ecard_write(%struct.snd_emu10k1* %53, i32 %54)
  br label %56

56:                                               ; preds = %44
  %57 = load i32, i32* %5, align 4
  %58 = lshr i32 %57, 1
  store i32 %58, i32* %5, align 4
  br label %23

59:                                               ; preds = %23
  %60 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %61 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %62 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @snd_emu10k1_ecard_write(%struct.snd_emu10k1* %60, i32 %63)
  ret void
}

declare dso_local i32 @snd_emu10k1_ecard_write(%struct.snd_emu10k1*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
