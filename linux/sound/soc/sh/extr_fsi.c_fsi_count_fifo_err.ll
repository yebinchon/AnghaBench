; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/extr_fsi.c_fsi_count_fifo_err.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/extr_fsi.c_fsi_count_fifo_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_priv = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@DOFF_ST = common dso_local global i32 0, align 4
@DIFF_ST = common dso_local global i32 0, align 4
@ERR_OVER = common dso_local global i32 0, align 4
@ERR_UNDER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsi_priv*)* @fsi_count_fifo_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsi_count_fifo_err(%struct.fsi_priv* %0) #0 {
  %2 = alloca %struct.fsi_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.fsi_priv* %0, %struct.fsi_priv** %2, align 8
  %5 = load %struct.fsi_priv*, %struct.fsi_priv** %2, align 8
  %6 = load i32, i32* @DOFF_ST, align 4
  %7 = call i32 @fsi_reg_read(%struct.fsi_priv* %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load %struct.fsi_priv*, %struct.fsi_priv** %2, align 8
  %9 = load i32, i32* @DIFF_ST, align 4
  %10 = call i32 @fsi_reg_read(%struct.fsi_priv* %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @ERR_OVER, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.fsi_priv*, %struct.fsi_priv** %2, align 8
  %17 = getelementptr inbounds %struct.fsi_priv, %struct.fsi_priv* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4
  br label %21

21:                                               ; preds = %15, %1
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @ERR_UNDER, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.fsi_priv*, %struct.fsi_priv** %2, align 8
  %28 = getelementptr inbounds %struct.fsi_priv, %struct.fsi_priv* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %26, %21
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @ERR_OVER, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load %struct.fsi_priv*, %struct.fsi_priv** %2, align 8
  %39 = getelementptr inbounds %struct.fsi_priv, %struct.fsi_priv* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %37, %32
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @ERR_UNDER, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load %struct.fsi_priv*, %struct.fsi_priv** %2, align 8
  %50 = getelementptr inbounds %struct.fsi_priv, %struct.fsi_priv* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %48, %43
  %55 = load %struct.fsi_priv*, %struct.fsi_priv** %2, align 8
  %56 = load i32, i32* @DOFF_ST, align 4
  %57 = call i32 @fsi_reg_write(%struct.fsi_priv* %55, i32 %56, i32 0)
  %58 = load %struct.fsi_priv*, %struct.fsi_priv** %2, align 8
  %59 = load i32, i32* @DIFF_ST, align 4
  %60 = call i32 @fsi_reg_write(%struct.fsi_priv* %58, i32 %59, i32 0)
  ret void
}

declare dso_local i32 @fsi_reg_read(%struct.fsi_priv*, i32) #1

declare dso_local i32 @fsi_reg_write(%struct.fsi_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
