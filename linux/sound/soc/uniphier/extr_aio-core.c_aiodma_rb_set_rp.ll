; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-core.c_aiodma_rb_set_rp.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-core.c_aiodma_rb_set_rp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uniphier_aio_sub = type { %struct.TYPE_6__*, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.regmap* }
%struct.regmap = type { i32 }

@CDA2D_RDPTRLOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uniphier_aio_sub*, i32)* @aiodma_rb_set_rp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aiodma_rb_set_rp(%struct.uniphier_aio_sub* %0, i32 %1) #0 {
  %3 = alloca %struct.uniphier_aio_sub*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.uniphier_aio_sub* %0, %struct.uniphier_aio_sub** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %3, align 8
  %9 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %8, i32 0, i32 1
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load %struct.regmap*, %struct.regmap** %13, align 8
  store %struct.regmap* %14, %struct.regmap** %5, align 8
  %15 = load %struct.regmap*, %struct.regmap** %5, align 8
  %16 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %3, align 8
  %17 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @CDA2D_RBMXRDPTR(i32 %21)
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @regmap_write(%struct.regmap* %15, i32 %22, i32 %23)
  %25 = load %struct.regmap*, %struct.regmap** %5, align 8
  %26 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %3, align 8
  %27 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @CDA2D_RBMXRDPTRU(i32 %31)
  %33 = load i32, i32* %4, align 4
  %34 = ashr i32 %33, 32
  %35 = call i32 @regmap_write(%struct.regmap* %25, i32 %32, i32 %34)
  %36 = load %struct.regmap*, %struct.regmap** %5, align 8
  %37 = load i32, i32* @CDA2D_RDPTRLOAD, align 4
  %38 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %3, align 8
  %39 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @BIT(i32 %43)
  %45 = call i32 @regmap_write(%struct.regmap* %36, i32 %37, i32 %44)
  store i32 0, i32* %7, align 4
  br label %46

46:                                               ; preds = %59, %2
  %47 = load i32, i32* %7, align 4
  %48 = icmp slt i32 %47, 6
  br i1 %48, label %49, label %62

49:                                               ; preds = %46
  %50 = load %struct.regmap*, %struct.regmap** %5, align 8
  %51 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %3, align 8
  %52 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %51, i32 0, i32 0
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @CDA2D_RBMXRDPTR(i32 %56)
  %58 = call i32 @regmap_read(%struct.regmap* %50, i32 %57, i32* %6)
  br label %59

59:                                               ; preds = %49
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %46

62:                                               ; preds = %46
  ret void
}

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @CDA2D_RBMXRDPTR(i32) #1

declare dso_local i32 @CDA2D_RBMXRDPTRU(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
