; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/extr_fsi.c_fsi_clk_disable.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/extr_fsi.c_fsi_clk_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.fsi_priv = type { %struct.fsi_clk }
%struct.fsi_clk = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.fsi_priv*)* @fsi_clk_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsi_clk_disable(%struct.device* %0, %struct.fsi_priv* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.fsi_priv*, align 8
  %6 = alloca %struct.fsi_clk*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.fsi_priv* %1, %struct.fsi_priv** %5, align 8
  %7 = load %struct.fsi_priv*, %struct.fsi_priv** %5, align 8
  %8 = getelementptr inbounds %struct.fsi_priv, %struct.fsi_priv* %7, i32 0, i32 0
  store %struct.fsi_clk* %8, %struct.fsi_clk** %6, align 8
  %9 = load %struct.fsi_priv*, %struct.fsi_priv** %5, align 8
  %10 = call i32 @fsi_clk_is_valid(%struct.fsi_priv* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %35

15:                                               ; preds = %2
  %16 = load %struct.fsi_clk*, %struct.fsi_clk** %6, align 8
  %17 = getelementptr inbounds %struct.fsi_clk, %struct.fsi_clk* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %17, align 4
  %20 = icmp eq i32 1, %18
  br i1 %20, label %21, label %34

21:                                               ; preds = %15
  %22 = load %struct.fsi_clk*, %struct.fsi_clk** %6, align 8
  %23 = getelementptr inbounds %struct.fsi_clk, %struct.fsi_clk* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @clk_disable(i32 %24)
  %26 = load %struct.fsi_clk*, %struct.fsi_clk** %6, align 8
  %27 = getelementptr inbounds %struct.fsi_clk, %struct.fsi_clk* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @clk_disable(i32 %28)
  %30 = load %struct.fsi_clk*, %struct.fsi_clk** %6, align 8
  %31 = getelementptr inbounds %struct.fsi_clk, %struct.fsi_clk* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @clk_disable(i32 %32)
  br label %34

34:                                               ; preds = %21, %15
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %12
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @fsi_clk_is_valid(%struct.fsi_priv*) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
