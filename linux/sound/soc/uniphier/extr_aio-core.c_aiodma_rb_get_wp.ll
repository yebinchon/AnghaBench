; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-core.c_aiodma_rb_get_wp.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-core.c_aiodma_rb_get_wp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uniphier_aio_sub = type { %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.regmap* }
%struct.regmap = type { i32 }

@CDA2D_WRPTRLOAD = common dso_local global i32 0, align 4
@CDA2D_WRPTRLOAD_LSFLAG_STORE = common dso_local global i32 0, align 4
@CDA2D_RBMXPTRU_PTRU_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uniphier_aio_sub*)* @aiodma_rb_get_wp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aiodma_rb_get_wp(%struct.uniphier_aio_sub* %0) #0 {
  %2 = alloca %struct.uniphier_aio_sub*, align 8
  %3 = alloca %struct.regmap*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.uniphier_aio_sub* %0, %struct.uniphier_aio_sub** %2, align 8
  %7 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %2, align 8
  %8 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %7, i32 0, i32 1
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.regmap*, %struct.regmap** %12, align 8
  store %struct.regmap* %13, %struct.regmap** %3, align 8
  %14 = load %struct.regmap*, %struct.regmap** %3, align 8
  %15 = load i32, i32* @CDA2D_WRPTRLOAD, align 4
  %16 = load i32, i32* @CDA2D_WRPTRLOAD_LSFLAG_STORE, align 4
  %17 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %2, align 8
  %18 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %17, i32 0, i32 0
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @BIT(i32 %22)
  %24 = or i32 %16, %23
  %25 = call i32 @regmap_write(%struct.regmap* %14, i32 %15, i32 %24)
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %39, %1
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 6
  br i1 %28, label %29, label %42

29:                                               ; preds = %26
  %30 = load %struct.regmap*, %struct.regmap** %3, align 8
  %31 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %2, align 8
  %32 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %31, i32 0, i32 0
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @CDA2D_RBMXWRPTR(i32 %36)
  %38 = call i32 @regmap_read(%struct.regmap* %30, i32 %37, i32* %5)
  br label %39

39:                                               ; preds = %29
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %26

42:                                               ; preds = %26
  %43 = load %struct.regmap*, %struct.regmap** %3, align 8
  %44 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %2, align 8
  %45 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %44, i32 0, i32 0
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @CDA2D_RBMXWRPTR(i32 %49)
  %51 = call i32 @regmap_read(%struct.regmap* %43, i32 %50, i32* %5)
  %52 = load %struct.regmap*, %struct.regmap** %3, align 8
  %53 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %2, align 8
  %54 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %53, i32 0, i32 0
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @CDA2D_RBMXWRPTRU(i32 %58)
  %60 = call i32 @regmap_read(%struct.regmap* %52, i32 %59, i32* %4)
  %61 = load i32, i32* @CDA2D_RBMXPTRU_PTRU_MASK, align 4
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @FIELD_GET(i32 %61, i32 %62)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = shl i32 %64, 32
  %66 = load i32, i32* %5, align 4
  %67 = or i32 %65, %66
  ret i32 %67
}

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @CDA2D_RBMXWRPTR(i32) #1

declare dso_local i32 @CDA2D_RBMXWRPTRU(i32) #1

declare dso_local i32 @FIELD_GET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
