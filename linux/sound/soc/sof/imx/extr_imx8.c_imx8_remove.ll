; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/imx/extr_imx8.c_imx8_remove.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/imx/extr_imx8.c_imx8_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_dev = type { i64 }
%struct.imx8_priv = type { i32, i32*, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_sof_dev*)* @imx8_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx8_remove(%struct.snd_sof_dev* %0) #0 {
  %2 = alloca %struct.snd_sof_dev*, align 8
  %3 = alloca %struct.imx8_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_sof_dev* %0, %struct.snd_sof_dev** %2, align 8
  %5 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %6 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.imx8_priv*
  store %struct.imx8_priv* %8, %struct.imx8_priv** %3, align 8
  %9 = load %struct.imx8_priv*, %struct.imx8_priv** %3, align 8
  %10 = getelementptr inbounds %struct.imx8_priv, %struct.imx8_priv* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @platform_device_unregister(i32 %11)
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %36, %1
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.imx8_priv*, %struct.imx8_priv** %3, align 8
  %16 = getelementptr inbounds %struct.imx8_priv, %struct.imx8_priv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %39

19:                                               ; preds = %13
  %20 = load %struct.imx8_priv*, %struct.imx8_priv** %3, align 8
  %21 = getelementptr inbounds %struct.imx8_priv, %struct.imx8_priv* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @device_link_del(i32 %26)
  %28 = load %struct.imx8_priv*, %struct.imx8_priv** %3, align 8
  %29 = getelementptr inbounds %struct.imx8_priv, %struct.imx8_priv* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @dev_pm_domain_detach(i32 %34, i32 0)
  br label %36

36:                                               ; preds = %19
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %13

39:                                               ; preds = %13
  ret i32 0
}

declare dso_local i32 @platform_device_unregister(i32) #1

declare dso_local i32 @device_link_del(i32) #1

declare dso_local i32 @dev_pm_domain_detach(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
