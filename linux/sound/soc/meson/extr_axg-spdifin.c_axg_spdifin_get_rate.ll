; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-spdifin.c_axg_spdifin_get_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-spdifin.c_axg_spdifin_get_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axg_spdifin = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32* }

@SPDIFIN_STAT0 = common dso_local global i32 0, align 4
@SPDIFIN_STAT0_MODE = common dso_local global i32 0, align 4
@SPDIFIN_STAT0_MAXW = common dso_local global i32 0, align 4
@SPDIFIN_MODE_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.axg_spdifin*)* @axg_spdifin_get_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axg_spdifin_get_rate(%struct.axg_spdifin* %0) #0 {
  %2 = alloca %struct.axg_spdifin*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.axg_spdifin* %0, %struct.axg_spdifin** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.axg_spdifin*, %struct.axg_spdifin** %2, align 8
  %7 = getelementptr inbounds %struct.axg_spdifin, %struct.axg_spdifin* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @SPDIFIN_STAT0, align 4
  %10 = call i32 @regmap_read(i32 %8, i32 %9, i32* %3)
  %11 = load i32, i32* @SPDIFIN_STAT0_MODE, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @FIELD_GET(i32 %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @SPDIFIN_STAT0_MAXW, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @FIELD_GET(i32 %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @SPDIFIN_MODE_NUM, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %18
  %23 = load %struct.axg_spdifin*, %struct.axg_spdifin** %2, align 8
  %24 = getelementptr inbounds %struct.axg_spdifin, %struct.axg_spdifin* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %22, %18, %1
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @FIELD_GET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
