; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-core.c_aiodma_rb_set_wp.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-core.c_aiodma_rb_set_wp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uniphier_aio_sub = type { %struct.TYPE_6__*, %struct.TYPE_8__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.regmap* }
%struct.regmap = type { i32 }

@CDA2D_WRPTRLOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uniphier_aio_sub*, i32)* @aiodma_rb_set_wp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aiodma_rb_set_wp(%struct.uniphier_aio_sub* %0, i32 %1) #0 {
  %3 = alloca %struct.uniphier_aio_sub*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.uniphier_aio_sub* %0, %struct.uniphier_aio_sub** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %3, align 8
  %9 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %8, i32 0, i32 1
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load %struct.regmap*, %struct.regmap** %13, align 8
  store %struct.regmap* %14, %struct.regmap** %5, align 8
  %15 = load %struct.regmap*, %struct.regmap** %5, align 8
  %16 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %3, align 8
  %17 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @CDA2D_RBMXWRPTR(i32 %21)
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @lower_32_bits(i32 %23)
  %25 = call i32 @regmap_write(%struct.regmap* %15, i32 %22, i32 %24)
  %26 = load %struct.regmap*, %struct.regmap** %5, align 8
  %27 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %3, align 8
  %28 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @CDA2D_RBMXWRPTRU(i32 %32)
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @upper_32_bits(i32 %34)
  %36 = call i32 @regmap_write(%struct.regmap* %26, i32 %33, i32 %35)
  %37 = load %struct.regmap*, %struct.regmap** %5, align 8
  %38 = load i32, i32* @CDA2D_WRPTRLOAD, align 4
  %39 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %3, align 8
  %40 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @BIT(i32 %44)
  %46 = call i32 @regmap_write(%struct.regmap* %37, i32 %38, i32 %45)
  store i32 0, i32* %7, align 4
  br label %47

47:                                               ; preds = %60, %2
  %48 = load i32, i32* %7, align 4
  %49 = icmp slt i32 %48, 6
  br i1 %49, label %50, label %63

50:                                               ; preds = %47
  %51 = load %struct.regmap*, %struct.regmap** %5, align 8
  %52 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %3, align 8
  %53 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %52, i32 0, i32 0
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @CDA2D_RBMXWRPTR(i32 %57)
  %59 = call i32 @regmap_read(%struct.regmap* %51, i32 %58, i32* %6)
  br label %60

60:                                               ; preds = %50
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %7, align 4
  br label %47

63:                                               ; preds = %47
  ret void
}

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @CDA2D_RBMXWRPTR(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @CDA2D_RBMXWRPTRU(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
