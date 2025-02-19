; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/pxa/extr_pxa-ssp.c_pxa_ssp_set_scr.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/pxa/extr_pxa-ssp.c_pxa_ssp_set_scr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssp_device = type { i64 }

@SSCR0 = common dso_local global i32 0, align 4
@PXA25x_SSP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ssp_device*, i32)* @pxa_ssp_set_scr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pxa_ssp_set_scr(%struct.ssp_device* %0, i32 %1) #0 {
  %3 = alloca %struct.ssp_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ssp_device* %0, %struct.ssp_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ssp_device*, %struct.ssp_device** %3, align 8
  %7 = load i32, i32* @SSCR0, align 4
  %8 = call i32 @pxa_ssp_read_reg(%struct.ssp_device* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.ssp_device*, %struct.ssp_device** %3, align 8
  %10 = getelementptr inbounds %struct.ssp_device, %struct.ssp_device* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @PXA25x_SSP, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, -65281
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %4, align 4
  %18 = sub nsw i32 %17, 2
  %19 = sdiv i32 %18, 2
  %20 = shl i32 %19, 8
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %5, align 4
  br label %31

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %24, -1048321
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %4, align 4
  %27 = sub nsw i32 %26, 1
  %28 = shl i32 %27, 8
  %29 = load i32, i32* %5, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %23, %14
  %32 = load %struct.ssp_device*, %struct.ssp_device** %3, align 8
  %33 = load i32, i32* @SSCR0, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @pxa_ssp_write_reg(%struct.ssp_device* %32, i32 %33, i32 %34)
  ret void
}

declare dso_local i32 @pxa_ssp_read_reg(%struct.ssp_device*, i32) #1

declare dso_local i32 @pxa_ssp_write_reg(%struct.ssp_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
