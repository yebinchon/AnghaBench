; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-core.c_aiodma_ch_set_param.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-core.c_aiodma_ch_set_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uniphier_aio_sub = type { %struct.TYPE_8__*, %struct.TYPE_10__* }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.regmap* }
%struct.regmap = type { i32 }

@CDA2D_CHMXCTRL1_INDSIZE_INFINITE = common dso_local global i32 0, align 4
@CDA2D_CHMXAMODE_ENDIAN_3210 = common dso_local global i32 0, align 4
@CDA2D_CHMXAMODE_AUPDT_INC = common dso_local global i32 0, align 4
@CDA2D_CHMXAMODE_TYPE_NORMAL = common dso_local global i32 0, align 4
@CDA2D_CHMXAMODE_RSSEL_SHIFT = common dso_local global i32 0, align 4
@PORT_DIR_OUTPUT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aiodma_ch_set_param(%struct.uniphier_aio_sub* %0) #0 {
  %2 = alloca %struct.uniphier_aio_sub*, align 8
  %3 = alloca %struct.regmap*, align 8
  %4 = alloca i32, align 4
  store %struct.uniphier_aio_sub* %0, %struct.uniphier_aio_sub** %2, align 8
  %5 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %2, align 8
  %6 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %5, i32 0, i32 1
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load %struct.regmap*, %struct.regmap** %10, align 8
  store %struct.regmap* %11, %struct.regmap** %3, align 8
  %12 = load %struct.regmap*, %struct.regmap** %3, align 8
  %13 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %2, align 8
  %14 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %13, i32 0, i32 0
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @CDA2D_CHMXCTRL1(i32 %18)
  %20 = load i32, i32* @CDA2D_CHMXCTRL1_INDSIZE_INFINITE, align 4
  %21 = call i32 @regmap_write(%struct.regmap* %12, i32 %19, i32 %20)
  %22 = load i32, i32* @CDA2D_CHMXAMODE_ENDIAN_3210, align 4
  %23 = load i32, i32* @CDA2D_CHMXAMODE_AUPDT_INC, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @CDA2D_CHMXAMODE_TYPE_NORMAL, align 4
  %26 = or i32 %24, %25
  %27 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %2, align 8
  %28 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %27, i32 0, i32 0
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @CDA2D_CHMXAMODE_RSSEL_SHIFT, align 4
  %34 = shl i32 %32, %33
  %35 = or i32 %26, %34
  store i32 %35, i32* %4, align 4
  %36 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %2, align 8
  %37 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %36, i32 0, i32 0
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @PORT_DIR_OUTPUT, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %1
  %44 = load %struct.regmap*, %struct.regmap** %3, align 8
  %45 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %2, align 8
  %46 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %45, i32 0, i32 0
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @CDA2D_CHMXSRCAMODE(i32 %50)
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @regmap_write(%struct.regmap* %44, i32 %51, i32 %52)
  br label %65

54:                                               ; preds = %1
  %55 = load %struct.regmap*, %struct.regmap** %3, align 8
  %56 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %2, align 8
  %57 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %56, i32 0, i32 0
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @CDA2D_CHMXDSTAMODE(i32 %61)
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @regmap_write(%struct.regmap* %55, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %54, %43
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
