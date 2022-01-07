; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr_mix22.c_hr222_micro_boost.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr_mix22.c_hr222_micro_boost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcxhr_mgr = type { i8, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PCXHR_SELMIC_PREAMPLI_OFFSET = common dso_local global i32 0, align 4
@PCXHR_SELMIC_PREAMPLI_MASK = common dso_local global i8 0, align 1
@PCXHR_XLX_SELMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"hr222_micro_boost : set %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcxhr_mgr*, i32)* @hr222_micro_boost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hr222_micro_boost(%struct.pcxhr_mgr* %0, i32 %1) #0 {
  %3 = alloca %struct.pcxhr_mgr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store %struct.pcxhr_mgr* %0, %struct.pcxhr_mgr** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @PCXHR_SELMIC_PREAMPLI_OFFSET, align 4
  %8 = shl i32 %6, %7
  %9 = trunc i32 %8 to i8
  store i8 %9, i8* %5, align 1
  %10 = load i8, i8* %5, align 1
  %11 = zext i8 %10 to i32
  %12 = load i8, i8* @PCXHR_SELMIC_PREAMPLI_MASK, align 1
  %13 = zext i8 %12 to i32
  %14 = xor i32 %13, -1
  %15 = and i32 %11, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %48

18:                                               ; preds = %2
  %19 = load i8, i8* @PCXHR_SELMIC_PREAMPLI_MASK, align 1
  %20 = zext i8 %19 to i32
  %21 = xor i32 %20, -1
  %22 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %3, align 8
  %23 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %22, i32 0, i32 0
  %24 = load i8, i8* %23, align 8
  %25 = zext i8 %24 to i32
  %26 = and i32 %25, %21
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %23, align 8
  %28 = load i8, i8* %5, align 1
  %29 = zext i8 %28 to i32
  %30 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %3, align 8
  %31 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %30, i32 0, i32 0
  %32 = load i8, i8* %31, align 8
  %33 = zext i8 %32 to i32
  %34 = or i32 %33, %29
  %35 = trunc i32 %34 to i8
  store i8 %35, i8* %31, align 8
  %36 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %3, align 8
  %37 = load i32, i32* @PCXHR_XLX_SELMIC, align 4
  %38 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %3, align 8
  %39 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %38, i32 0, i32 0
  %40 = load i8, i8* %39, align 8
  %41 = call i32 @PCXHR_OUTPB(%struct.pcxhr_mgr* %36, i32 %37, i8 zeroext %40)
  %42 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %3, align 8
  %43 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i8, i8* %5, align 1
  %47 = call i32 @dev_dbg(i32* %45, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8 zeroext %46)
  br label %48

48:                                               ; preds = %18, %17
  ret void
}

declare dso_local i32 @PCXHR_OUTPB(%struct.pcxhr_mgr*, i32, i8 zeroext) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
