; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr_mix22.c_hr222_write_gpo.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr_mix22.c_hr222_write_gpo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcxhr_mgr = type { i8 }

@PCXHR_DSP_RESET_GPO_MASK = common dso_local global i8 0, align 1
@PCXHR_DSP_RESET_GPO_OFFSET = common dso_local global i32 0, align 4
@PCXHR_DSP_RESET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hr222_write_gpo(%struct.pcxhr_mgr* %0, i32 %1) #0 {
  %3 = alloca %struct.pcxhr_mgr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store %struct.pcxhr_mgr* %0, %struct.pcxhr_mgr** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %3, align 8
  %7 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %6, i32 0, i32 0
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i32
  %10 = load i8, i8* @PCXHR_DSP_RESET_GPO_MASK, align 1
  %11 = zext i8 %10 to i32
  %12 = xor i32 %11, -1
  %13 = and i32 %9, %12
  %14 = trunc i32 %13 to i8
  store i8 %14, i8* %5, align 1
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @PCXHR_DSP_RESET_GPO_OFFSET, align 4
  %17 = shl i32 %15, %16
  %18 = trunc i32 %17 to i8
  %19 = zext i8 %18 to i32
  %20 = load i8, i8* @PCXHR_DSP_RESET_GPO_MASK, align 1
  %21 = zext i8 %20 to i32
  %22 = and i32 %19, %21
  %23 = load i8, i8* %5, align 1
  %24 = zext i8 %23 to i32
  %25 = or i32 %24, %22
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %5, align 1
  %27 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %3, align 8
  %28 = load i32, i32* @PCXHR_DSP_RESET, align 4
  %29 = load i8, i8* %5, align 1
  %30 = call i32 @PCXHR_OUTPB(%struct.pcxhr_mgr* %27, i32 %28, i8 zeroext %29)
  %31 = load i8, i8* %5, align 1
  %32 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %3, align 8
  %33 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %32, i32 0, i32 0
  store i8 %31, i8* %33, align 1
  ret i32 0
}

declare dso_local i32 @PCXHR_OUTPB(%struct.pcxhr_mgr*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
