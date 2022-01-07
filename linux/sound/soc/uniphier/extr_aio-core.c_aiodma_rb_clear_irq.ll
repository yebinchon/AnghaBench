; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-core.c_aiodma_rb_clear_irq.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-core.c_aiodma_rb_clear_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uniphier_aio_sub = type { %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.regmap* }
%struct.regmap = type { i32 }

@PORT_DIR_OUTPUT = common dso_local global i64 0, align 8
@CDA2D_RBMXIX_SPACE = common dso_local global i32 0, align 4
@CDA2D_RBMXIX_REMAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aiodma_rb_clear_irq(%struct.uniphier_aio_sub* %0) #0 {
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
  %11 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %2, align 8
  %12 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %11, i32 0, i32 0
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PORT_DIR_OUTPUT, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %1
  %19 = load %struct.regmap*, %struct.regmap** %3, align 8
  %20 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %2, align 8
  %21 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %20, i32 0, i32 0
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @CDA2D_RBMXIR(i32 %25)
  %27 = load i32, i32* @CDA2D_RBMXIX_SPACE, align 4
  %28 = call i32 @regmap_write(%struct.regmap* %19, i32 %26, i32 %27)
  br label %40

29:                                               ; preds = %1
  %30 = load %struct.regmap*, %struct.regmap** %3, align 8
  %31 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %2, align 8
  %32 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %31, i32 0, i32 0
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @CDA2D_RBMXIR(i32 %36)
  %38 = load i32, i32* @CDA2D_RBMXIX_REMAIN, align 4
  %39 = call i32 @regmap_write(%struct.regmap* %30, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %29, %18
  ret void
}

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @CDA2D_RBMXIR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
