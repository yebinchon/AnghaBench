; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emu10k1_main.c_snd_emu10k1_ecard_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emu10k1_main.c_snd_emu10k1_ecard_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu10k1 = type { i64 }

@HCFG = common dso_local global i64 0, align 8
@HOOKN_BIT = common dso_local global i32 0, align 4
@HANDN_BIT = common dso_local global i32 0, align 4
@PULSEN_BIT = common dso_local global i32 0, align 4
@EC_NUM_CONTROL_BITS = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_emu10k1*, i32)* @snd_emu10k1_ecard_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_emu10k1_ecard_write(%struct.snd_emu10k1* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_emu10k1*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.snd_emu10k1* %0, %struct.snd_emu10k1** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %10 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @HCFG, align 8
  %13 = add i64 %11, %12
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = call i32 @inl(i64 %14)
  %16 = load i32, i32* @HOOKN_BIT, align 4
  %17 = load i32, i32* @HANDN_BIT, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @PULSEN_BIT, align 4
  %20 = or i32 %18, %19
  %21 = xor i32 %20, -1
  %22 = and i32 %15, %21
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @outl(i32 %23, i64 %24)
  store i16 0, i16* %5, align 2
  br label %26

26:                                               ; preds = %60, %2
  %27 = load i16, i16* %5, align 2
  %28 = zext i16 %27 to i32
  %29 = load i16, i16* @EC_NUM_CONTROL_BITS, align 2
  %30 = zext i16 %29 to i32
  %31 = icmp slt i32 %28, %30
  br i1 %31, label %32, label %63

32:                                               ; preds = %26
  %33 = load i32, i32* %4, align 4
  %34 = and i32 %33, 1
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* @PULSEN_BIT, align 4
  br label %39

38:                                               ; preds = %32
  br label %39

39:                                               ; preds = %38, %36
  %40 = phi i32 [ %37, %36 ], [ 0, %38 ]
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %4, align 4
  %42 = lshr i32 %41, 1
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %6, align 4
  %45 = or i32 %43, %44
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @outl(i32 %45, i64 %46)
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %6, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @HANDN_BIT, align 4
  %52 = or i32 %50, %51
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @outl(i32 %52, i64 %53)
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %6, align 4
  %57 = or i32 %55, %56
  %58 = load i64, i64* %7, align 8
  %59 = call i32 @outl(i32 %57, i64 %58)
  br label %60

60:                                               ; preds = %39
  %61 = load i16, i16* %5, align 2
  %62 = add i16 %61, 1
  store i16 %62, i16* %5, align 2
  br label %26

63:                                               ; preds = %26
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @HOOKN_BIT, align 4
  %66 = or i32 %64, %65
  %67 = load i64, i64* %7, align 8
  %68 = call i32 @outl(i32 %66, i64 %67)
  %69 = load i32, i32* %8, align 4
  %70 = load i64, i64* %7, align 8
  %71 = call i32 @outl(i32 %69, i64 %70)
  ret void
}

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @outl(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
