; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-core.c_aiodma_rb_is_irq.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-core.c_aiodma_rb_is_irq.c"
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
define dso_local i32 @aiodma_rb_is_irq(%struct.uniphier_aio_sub* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uniphier_aio_sub*, align 8
  %4 = alloca %struct.regmap*, align 8
  %5 = alloca i32, align 4
  store %struct.uniphier_aio_sub* %0, %struct.uniphier_aio_sub** %3, align 8
  %6 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %3, align 8
  %7 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %6, i32 0, i32 1
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.regmap*, %struct.regmap** %11, align 8
  store %struct.regmap* %12, %struct.regmap** %4, align 8
  %13 = load %struct.regmap*, %struct.regmap** %4, align 8
  %14 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %3, align 8
  %15 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %14, i32 0, i32 0
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @CDA2D_RBMXIR(i32 %19)
  %21 = call i32 @regmap_read(%struct.regmap* %13, i32 %20, i32* %5)
  %22 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %3, align 8
  %23 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %22, i32 0, i32 0
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PORT_DIR_OUTPUT, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %1
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @CDA2D_RBMXIX_SPACE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %2, align 4
  br label %45

37:                                               ; preds = %1
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @CDA2D_RBMXIX_REMAIN, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %37, %29
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @CDA2D_RBMXIR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
