; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-core.c_aio_srcch_set_param.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-core.c_aio_srcch_set_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uniphier_aio_sub = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.regmap* }
%struct.regmap = type { i32 }

@CDA2D_CHMXCTRL1_INDSIZE_INFINITE = common dso_local global i32 0, align 4
@CDA2D_CHMXAMODE_ENDIAN_3210 = common dso_local global i32 0, align 4
@CDA2D_CHMXAMODE_AUPDT_FIX = common dso_local global i32 0, align 4
@CDA2D_CHMXAMODE_TYPE_NORMAL = common dso_local global i32 0, align 4
@CDA2D_CHMXAMODE_AUPDT_INC = common dso_local global i32 0, align 4
@CDA2D_CHMXAMODE_TYPE_RING = common dso_local global i32 0, align 4
@CDA2D_CHMXAMODE_RSSEL_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aio_srcch_set_param(%struct.uniphier_aio_sub* %0) #0 {
  %2 = alloca %struct.uniphier_aio_sub*, align 8
  %3 = alloca %struct.regmap*, align 8
  store %struct.uniphier_aio_sub* %0, %struct.uniphier_aio_sub** %2, align 8
  %4 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %2, align 8
  %5 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %4, i32 0, i32 1
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load %struct.regmap*, %struct.regmap** %9, align 8
  store %struct.regmap* %10, %struct.regmap** %3, align 8
  %11 = load %struct.regmap*, %struct.regmap** %3, align 8
  %12 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %2, align 8
  %13 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %12, i32 0, i32 0
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @CDA2D_CHMXCTRL1(i32 %17)
  %19 = load i32, i32* @CDA2D_CHMXCTRL1_INDSIZE_INFINITE, align 4
  %20 = call i32 @regmap_write(%struct.regmap* %11, i32 %18, i32 %19)
  %21 = load %struct.regmap*, %struct.regmap** %3, align 8
  %22 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %2, align 8
  %23 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %22, i32 0, i32 0
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @CDA2D_CHMXSRCAMODE(i32 %27)
  %29 = load i32, i32* @CDA2D_CHMXAMODE_ENDIAN_3210, align 4
  %30 = load i32, i32* @CDA2D_CHMXAMODE_AUPDT_FIX, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @CDA2D_CHMXAMODE_TYPE_NORMAL, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @regmap_write(%struct.regmap* %21, i32 %28, i32 %33)
  %35 = load %struct.regmap*, %struct.regmap** %3, align 8
  %36 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %2, align 8
  %37 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %36, i32 0, i32 0
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @CDA2D_CHMXDSTAMODE(i32 %41)
  %43 = load i32, i32* @CDA2D_CHMXAMODE_ENDIAN_3210, align 4
  %44 = load i32, i32* @CDA2D_CHMXAMODE_AUPDT_INC, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @CDA2D_CHMXAMODE_TYPE_RING, align 4
  %47 = or i32 %45, %46
  %48 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %2, align 8
  %49 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %48, i32 0, i32 0
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @CDA2D_CHMXAMODE_RSSEL_SHIFT, align 4
  %55 = shl i32 %53, %54
  %56 = or i32 %47, %55
  %57 = call i32 @regmap_write(%struct.regmap* %35, i32 %42, i32 %56)
  ret i32 0
}

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @CDA2D_CHMXCTRL1(i32) #1

declare dso_local i32 @CDA2D_CHMXSRCAMODE(i32) #1

declare dso_local i32 @CDA2D_CHMXDSTAMODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
