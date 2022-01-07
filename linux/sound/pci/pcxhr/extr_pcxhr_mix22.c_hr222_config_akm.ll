; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr_mix22.c_hr222_config_akm.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr_mix22.c_hr222_config_akm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcxhr_mgr = type { i32 }

@PCXHR_XLX_HIFREQ = common dso_local global i32 0, align 4
@PCXHR_XLX_DATA = common dso_local global i32 0, align 4
@PCXHR_DATA_CODEC = common dso_local global i32 0, align 4
@PCXHR_XLX_RUER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcxhr_mgr*, i16)* @hr222_config_akm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hr222_config_akm(%struct.pcxhr_mgr* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.pcxhr_mgr*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  store %struct.pcxhr_mgr* %0, %struct.pcxhr_mgr** %3, align 8
  store i16 %1, i16* %4, align 2
  store i16 -32768, i16* %5, align 2
  %6 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %3, align 8
  %7 = load i32, i32* @PCXHR_XLX_HIFREQ, align 4
  %8 = call i32 @PCXHR_INPB(%struct.pcxhr_mgr* %6, i32 %7)
  br label %9

9:                                                ; preds = %24, %2
  %10 = load i16, i16* %5, align 2
  %11 = icmp ne i16 %10, 0
  br i1 %11, label %12, label %31

12:                                               ; preds = %9
  %13 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %3, align 8
  %14 = load i32, i32* @PCXHR_XLX_DATA, align 4
  %15 = load i16, i16* %4, align 2
  %16 = zext i16 %15 to i32
  %17 = load i16, i16* %5, align 2
  %18 = zext i16 %17 to i32
  %19 = and i32 %16, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %12
  %22 = load i32, i32* @PCXHR_DATA_CODEC, align 4
  br label %24

23:                                               ; preds = %12
  br label %24

24:                                               ; preds = %23, %21
  %25 = phi i32 [ %22, %21 ], [ 0, %23 ]
  %26 = call i32 @PCXHR_OUTPB(%struct.pcxhr_mgr* %13, i32 %14, i32 %25)
  %27 = load i16, i16* %5, align 2
  %28 = zext i16 %27 to i32
  %29 = ashr i32 %28, 1
  %30 = trunc i32 %29 to i16
  store i16 %30, i16* %5, align 2
  br label %9

31:                                               ; preds = %9
  %32 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %3, align 8
  %33 = load i32, i32* @PCXHR_XLX_RUER, align 4
  %34 = call i32 @PCXHR_INPB(%struct.pcxhr_mgr* %32, i32 %33)
  ret void
}

declare dso_local i32 @PCXHR_INPB(%struct.pcxhr_mgr*, i32) #1

declare dso_local i32 @PCXHR_OUTPB(%struct.pcxhr_mgr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
