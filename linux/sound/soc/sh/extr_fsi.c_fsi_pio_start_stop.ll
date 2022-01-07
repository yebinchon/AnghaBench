; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/extr_fsi.c_fsi_pio_start_stop.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/extr_fsi.c_fsi_pio_start_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_priv = type { i32 }
%struct.fsi_stream = type { i32 }
%struct.fsi_master = type { i32 }

@CRA = common dso_local global i32 0, align 4
@CRB = common dso_local global i32 0, align 4
@CLK_RST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsi_priv*, %struct.fsi_stream*, i32)* @fsi_pio_start_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsi_pio_start_stop(%struct.fsi_priv* %0, %struct.fsi_stream* %1, i32 %2) #0 {
  %4 = alloca %struct.fsi_priv*, align 8
  %5 = alloca %struct.fsi_stream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fsi_master*, align 8
  %8 = alloca i32, align 4
  store %struct.fsi_priv* %0, %struct.fsi_priv** %4, align 8
  store %struct.fsi_stream* %1, %struct.fsi_stream** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.fsi_priv*, %struct.fsi_priv** %4, align 8
  %10 = call %struct.fsi_master* @fsi_get_master(%struct.fsi_priv* %9)
  store %struct.fsi_master* %10, %struct.fsi_master** %7, align 8
  %11 = load %struct.fsi_priv*, %struct.fsi_priv** %4, align 8
  %12 = call i64 @fsi_is_port_a(%struct.fsi_priv* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @CRA, align 4
  br label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @CRB, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load %struct.fsi_priv*, %struct.fsi_priv** %4, align 8
  %24 = load %struct.fsi_stream*, %struct.fsi_stream** %5, align 8
  %25 = call i32 @fsi_irq_enable(%struct.fsi_priv* %23, %struct.fsi_stream* %24)
  br label %30

26:                                               ; preds = %18
  %27 = load %struct.fsi_priv*, %struct.fsi_priv** %4, align 8
  %28 = load %struct.fsi_stream*, %struct.fsi_stream** %5, align 8
  %29 = call i32 @fsi_irq_disable(%struct.fsi_priv* %27, %struct.fsi_stream* %28)
  br label %30

30:                                               ; preds = %26, %22
  %31 = load %struct.fsi_priv*, %struct.fsi_priv** %4, align 8
  %32 = call i64 @fsi_is_clk_master(%struct.fsi_priv* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %30
  %35 = load %struct.fsi_master*, %struct.fsi_master** %7, align 8
  %36 = load i32, i32* @CLK_RST, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* %8, align 4
  br label %43

42:                                               ; preds = %34
  br label %43

43:                                               ; preds = %42, %40
  %44 = phi i32 [ %41, %40 ], [ 0, %42 ]
  %45 = call i32 @fsi_master_mask_set(%struct.fsi_master* %35, i32 %36, i32 %37, i32 %44)
  br label %46

46:                                               ; preds = %43, %30
  ret i32 0
}

declare dso_local %struct.fsi_master* @fsi_get_master(%struct.fsi_priv*) #1

declare dso_local i64 @fsi_is_port_a(%struct.fsi_priv*) #1

declare dso_local i32 @fsi_irq_enable(%struct.fsi_priv*, %struct.fsi_stream*) #1

declare dso_local i32 @fsi_irq_disable(%struct.fsi_priv*, %struct.fsi_stream*) #1

declare dso_local i64 @fsi_is_clk_master(%struct.fsi_priv*) #1

declare dso_local i32 @fsi_master_mask_set(%struct.fsi_master*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
