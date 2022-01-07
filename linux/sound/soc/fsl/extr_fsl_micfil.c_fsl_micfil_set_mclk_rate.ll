; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_micfil.c_fsl_micfil_set_mclk_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_micfil.c_fsl_micfil_set_mclk_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_micfil = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"failed to set rate (%u): %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsl_micfil*, i32)* @fsl_micfil_set_mclk_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_micfil_set_mclk_rate(%struct.fsl_micfil* %0, i32 %1) #0 {
  %3 = alloca %struct.fsl_micfil*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.fsl_micfil* %0, %struct.fsl_micfil** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.fsl_micfil*, %struct.fsl_micfil** %3, align 8
  %8 = getelementptr inbounds %struct.fsl_micfil, %struct.fsl_micfil* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %5, align 8
  %11 = load %struct.fsl_micfil*, %struct.fsl_micfil** %3, align 8
  %12 = getelementptr inbounds %struct.fsl_micfil, %struct.fsl_micfil* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @clk_disable_unprepare(i32 %13)
  %15 = load %struct.fsl_micfil*, %struct.fsl_micfil** %3, align 8
  %16 = getelementptr inbounds %struct.fsl_micfil, %struct.fsl_micfil* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = mul i32 %18, 1024
  %20 = call i32 @clk_set_rate(i32 %17, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = load %struct.device*, %struct.device** %5, align 8
  %25 = load i32, i32* %4, align 4
  %26 = mul i32 %25, 1024
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @dev_warn(%struct.device* %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %23, %2
  %30 = load %struct.fsl_micfil*, %struct.fsl_micfil** %3, align 8
  %31 = getelementptr inbounds %struct.fsl_micfil, %struct.fsl_micfil* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @clk_prepare_enable(i32 %32)
  %34 = load i32, i32* %6, align 4
  ret i32 %34
}

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
