; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_davinci-mcasp.c_mcasp_is_synchronous.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_davinci-mcasp.c_mcasp_is_synchronous.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.davinci_mcasp = type { i32 }

@DAVINCI_MCASP_RXFMCTL_REG = common dso_local global i32 0, align 4
@DAVINCI_MCASP_ACLKXCTL_REG = common dso_local global i32 0, align 4
@TX_ASYNC = common dso_local global i32 0, align 4
@AFSRE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.davinci_mcasp*)* @mcasp_is_synchronous to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcasp_is_synchronous(%struct.davinci_mcasp* %0) #0 {
  %2 = alloca %struct.davinci_mcasp*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.davinci_mcasp* %0, %struct.davinci_mcasp** %2, align 8
  %5 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %2, align 8
  %6 = load i32, i32* @DAVINCI_MCASP_RXFMCTL_REG, align 4
  %7 = call i32 @mcasp_get_reg(%struct.davinci_mcasp* %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %2, align 8
  %9 = load i32, i32* @DAVINCI_MCASP_ACLKXCTL_REG, align 4
  %10 = call i32 @mcasp_get_reg(%struct.davinci_mcasp* %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @TX_ASYNC, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @AFSRE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br label %20

20:                                               ; preds = %15, %1
  %21 = phi i1 [ false, %1 ], [ %19, %15 ]
  %22 = zext i1 %21 to i32
  ret i32 %22
}

declare dso_local i32 @mcasp_get_reg(%struct.davinci_mcasp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
