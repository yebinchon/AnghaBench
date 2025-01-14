; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_sai.c_fsl_sai_readable_reg.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_sai.c_fsl_sai_readable_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.fsl_sai = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @fsl_sai_readable_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_sai_readable_reg(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fsl_sai*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call %struct.fsl_sai* @dev_get_drvdata(%struct.device* %8)
  store %struct.fsl_sai* %9, %struct.fsl_sai** %6, align 8
  %10 = load %struct.fsl_sai*, %struct.fsl_sai** %6, align 8
  %11 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @FSL_SAI_TCSR(i32 %16)
  %18 = icmp uge i32 %15, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @FSL_SAI_TCR5(i32 %21)
  %23 = icmp ule i32 %20, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 1, i32* %3, align 4
  br label %40

25:                                               ; preds = %19, %2
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @FSL_SAI_RCSR(i32 %27)
  %29 = icmp uge i32 %26, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @FSL_SAI_RCR5(i32 %32)
  %34 = icmp ule i32 %31, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 1, i32* %3, align 4
  br label %40

36:                                               ; preds = %30, %25
  %37 = load i32, i32* %5, align 4
  switch i32 %37, label %39 [
    i32 136, label %38
    i32 135, label %38
    i32 134, label %38
    i32 133, label %38
    i32 132, label %38
    i32 131, label %38
    i32 130, label %38
    i32 129, label %38
    i32 128, label %38
    i32 153, label %38
    i32 152, label %38
    i32 151, label %38
    i32 150, label %38
    i32 149, label %38
    i32 148, label %38
    i32 147, label %38
    i32 146, label %38
    i32 145, label %38
    i32 144, label %38
    i32 143, label %38
    i32 142, label %38
    i32 141, label %38
    i32 140, label %38
    i32 139, label %38
    i32 138, label %38
    i32 137, label %38
  ]

38:                                               ; preds = %36, %36, %36, %36, %36, %36, %36, %36, %36, %36, %36, %36, %36, %36, %36, %36, %36, %36, %36, %36, %36, %36, %36, %36, %36, %36
  store i32 1, i32* %3, align 4
  br label %40

39:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %38, %35, %24
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.fsl_sai* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @FSL_SAI_TCSR(i32) #1

declare dso_local i32 @FSL_SAI_TCR5(i32) #1

declare dso_local i32 @FSL_SAI_RCSR(i32) #1

declare dso_local i32 @FSL_SAI_RCR5(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
