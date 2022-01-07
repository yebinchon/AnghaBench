; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emufx.c__volume_out.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emufx.c__volume_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu10k1_fx8010_code = type { i32 }

@iANDXOR = common dso_local global i32 0, align 4
@C_00000000 = common dso_local global i32 0, align 4
@C_ffffffff = common dso_local global i32 0, align 4
@C_7fffffff = common dso_local global i32 0, align 4
@iSKIP = common dso_local global i32 0, align 4
@GPR_COND = common dso_local global i32 0, align 4
@CC_REG_NONZERO = common dso_local global i32 0, align 4
@C_00000002 = common dso_local global i32 0, align 4
@iACC3 = common dso_local global i32 0, align 4
@C_00000001 = common dso_local global i32 0, align 4
@iMAC0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_emu10k1_fx8010_code*, i32*, i32, i32, i32)* @_volume_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_volume_out(%struct.snd_emu10k1_fx8010_code* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.snd_emu10k1_fx8010_code*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_emu10k1_fx8010_code* %0, %struct.snd_emu10k1_fx8010_code** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load %struct.snd_emu10k1_fx8010_code*, %struct.snd_emu10k1_fx8010_code** %6, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = load i32, i32* @iANDXOR, align 4
  %14 = load i32, i32* @C_00000000, align 4
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* @C_ffffffff, align 4
  %17 = load i32, i32* @C_7fffffff, align 4
  %18 = call i32 @OP(%struct.snd_emu10k1_fx8010_code* %11, i32* %12, i32 %13, i32 %14, i32 %15, i32 %16, i32 %17)
  %19 = load %struct.snd_emu10k1_fx8010_code*, %struct.snd_emu10k1_fx8010_code** %6, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* @iSKIP, align 4
  %22 = load i32, i32* @GPR_COND, align 4
  %23 = load i32, i32* @GPR_COND, align 4
  %24 = load i32, i32* @CC_REG_NONZERO, align 4
  %25 = load i32, i32* @C_00000002, align 4
  %26 = call i32 @OP(%struct.snd_emu10k1_fx8010_code* %19, i32* %20, i32 %21, i32 %22, i32 %23, i32 %24, i32 %25)
  %27 = load %struct.snd_emu10k1_fx8010_code*, %struct.snd_emu10k1_fx8010_code** %6, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* @iACC3, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @C_00000000, align 4
  %33 = load i32, i32* @C_00000000, align 4
  %34 = call i32 @OP(%struct.snd_emu10k1_fx8010_code* %27, i32* %28, i32 %29, i32 %30, i32 %31, i32 %32, i32 %33)
  %35 = load %struct.snd_emu10k1_fx8010_code*, %struct.snd_emu10k1_fx8010_code** %6, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* @iSKIP, align 4
  %38 = load i32, i32* @C_00000000, align 4
  %39 = load i32, i32* @C_7fffffff, align 4
  %40 = load i32, i32* @C_7fffffff, align 4
  %41 = load i32, i32* @C_00000001, align 4
  %42 = call i32 @OP(%struct.snd_emu10k1_fx8010_code* %35, i32* %36, i32 %37, i32 %38, i32 %39, i32 %40, i32 %41)
  %43 = load %struct.snd_emu10k1_fx8010_code*, %struct.snd_emu10k1_fx8010_code** %6, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* @iMAC0, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @C_00000000, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @OP(%struct.snd_emu10k1_fx8010_code* %43, i32* %44, i32 %45, i32 %46, i32 %47, i32 %48, i32 %49)
  ret void
}

declare dso_local i32 @OP(%struct.snd_emu10k1_fx8010_code*, i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
