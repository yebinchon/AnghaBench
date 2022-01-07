; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-core.c_aiodma_ch_set_enable.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-core.c_aiodma_ch_set_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uniphier_aio_sub = type { %struct.TYPE_8__*, %struct.TYPE_10__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.regmap* }
%struct.regmap = type { i32 }

@CDA2D_STRT0 = common dso_local global i32 0, align 4
@CDA2D_STRT0_STOP_START = common dso_local global i32 0, align 4
@CDA2D_STRT0_STOP_STOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aiodma_ch_set_enable(%struct.uniphier_aio_sub* %0, i32 %1) #0 {
  %3 = alloca %struct.uniphier_aio_sub*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.regmap*, align 8
  store %struct.uniphier_aio_sub* %0, %struct.uniphier_aio_sub** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %3, align 8
  %7 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %6, i32 0, i32 1
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load %struct.regmap*, %struct.regmap** %11, align 8
  store %struct.regmap* %12, %struct.regmap** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %45

15:                                               ; preds = %2
  %16 = load %struct.regmap*, %struct.regmap** %5, align 8
  %17 = load i32, i32* @CDA2D_STRT0, align 4
  %18 = load i32, i32* @CDA2D_STRT0_STOP_START, align 4
  %19 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %3, align 8
  %20 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %19, i32 0, i32 0
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @BIT(i32 %24)
  %26 = or i32 %18, %25
  %27 = call i32 @regmap_write(%struct.regmap* %16, i32 %17, i32 %26)
  %28 = load %struct.regmap*, %struct.regmap** %5, align 8
  %29 = call i32 @INTRBIM(i32 0)
  %30 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %3, align 8
  %31 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %30, i32 0, i32 0
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @BIT(i32 %35)
  %37 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %3, align 8
  %38 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %37, i32 0, i32 0
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @BIT(i32 %42)
  %44 = call i32 @regmap_update_bits(%struct.regmap* %28, i32 %29, i32 %36, i32 %43)
  br label %68

45:                                               ; preds = %2
  %46 = load %struct.regmap*, %struct.regmap** %5, align 8
  %47 = load i32, i32* @CDA2D_STRT0, align 4
  %48 = load i32, i32* @CDA2D_STRT0_STOP_STOP, align 4
  %49 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %3, align 8
  %50 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %49, i32 0, i32 0
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @BIT(i32 %54)
  %56 = or i32 %48, %55
  %57 = call i32 @regmap_write(%struct.regmap* %46, i32 %47, i32 %56)
  %58 = load %struct.regmap*, %struct.regmap** %5, align 8
  %59 = call i32 @INTRBIM(i32 0)
  %60 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %3, align 8
  %61 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %60, i32 0, i32 0
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @BIT(i32 %65)
  %67 = call i32 @regmap_update_bits(%struct.regmap* %58, i32 %59, i32 %66, i32 0)
  br label %68

68:                                               ; preds = %45, %15
  ret void
}

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @INTRBIM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
