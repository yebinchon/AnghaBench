; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr_mix22.c_hr222_set_hw_capture_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr_mix22.c_hr222_set_hw_capture_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcxhr_mgr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@PCXHR_XLX_DATA = common dso_local global i32 0, align 4
@PCXHR_DATA_CODEC = common dso_local global i32 0, align 4
@PCXHR_XLX_RUER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcxhr_mgr*, i32, i32, i32)* @hr222_set_hw_capture_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hr222_set_hw_capture_level(%struct.pcxhr_mgr* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pcxhr_mgr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pcxhr_mgr* %0, %struct.pcxhr_mgr** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %13 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %64

19:                                               ; preds = %4
  %20 = load i32, i32* %9, align 4
  %21 = and i32 %20, 255
  %22 = shl i32 %21, 24
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %9, align 4
  %24 = and i32 %23, 255
  %25 = shl i32 %24, 16
  %26 = load i32, i32* %10, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %8, align 4
  %29 = and i32 %28, 255
  %30 = shl i32 %29, 8
  %31 = load i32, i32* %10, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %7, align 4
  %34 = and i32 %33, 255
  %35 = load i32, i32* %10, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %10, align 4
  %37 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %38 = load i32, i32* @PCXHR_XLX_DATA, align 4
  %39 = call i32 @PCXHR_INPB(%struct.pcxhr_mgr* %37, i32 %38)
  store i32 0, i32* %11, align 4
  br label %40

40:                                               ; preds = %55, %19
  %41 = load i32, i32* %11, align 4
  %42 = icmp slt i32 %41, 32
  br i1 %42, label %43, label %60

43:                                               ; preds = %40
  %44 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %45 = load i32, i32* @PCXHR_XLX_DATA, align 4
  %46 = load i32, i32* %10, align 4
  %47 = and i32 %46, -2147483648
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* @PCXHR_DATA_CODEC, align 4
  br label %52

51:                                               ; preds = %43
  br label %52

52:                                               ; preds = %51, %49
  %53 = phi i32 [ %50, %49 ], [ 0, %51 ]
  %54 = call i32 @PCXHR_OUTPB(%struct.pcxhr_mgr* %44, i32 %45, i32 %53)
  br label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %11, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %10, align 4
  %59 = shl i32 %58, 1
  store i32 %59, i32* %10, align 4
  br label %40

60:                                               ; preds = %40
  %61 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %62 = load i32, i32* @PCXHR_XLX_RUER, align 4
  %63 = call i32 @PCXHR_INPB(%struct.pcxhr_mgr* %61, i32 %62)
  store i32 0, i32* %5, align 4
  br label %64

64:                                               ; preds = %60, %16
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @PCXHR_INPB(%struct.pcxhr_mgr*, i32) #1

declare dso_local i32 @PCXHR_OUTPB(%struct.pcxhr_mgr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
