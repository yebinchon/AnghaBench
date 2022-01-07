; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-core.c_aio_port_reset.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-core.c_aio_port_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uniphier_aio_sub = type { %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i64, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.regmap* }
%struct.regmap = type { i32 }

@PORT_DIR_OUTPUT = common dso_local global i64 0, align 8
@AOUTRSTCTR0 = common dso_local global i32 0, align 4
@AOUTRSTCTR1 = common dso_local global i32 0, align 4
@IPORTMXRSTCTR_RSTPI_MASK = common dso_local global i32 0, align 4
@IPORTMXRSTCTR_RSTPI_RESET = common dso_local global i32 0, align 4
@IPORTMXRSTCTR_RSTPI_RELEASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aio_port_reset(%struct.uniphier_aio_sub* %0) #0 {
  %2 = alloca %struct.uniphier_aio_sub*, align 8
  %3 = alloca %struct.regmap*, align 8
  store %struct.uniphier_aio_sub* %0, %struct.uniphier_aio_sub** %2, align 8
  %4 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %2, align 8
  %5 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %4, i32 0, i32 1
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load %struct.regmap*, %struct.regmap** %9, align 8
  store %struct.regmap* %10, %struct.regmap** %3, align 8
  %11 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %2, align 8
  %12 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %11, i32 0, i32 0
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PORT_DIR_OUTPUT, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %39

18:                                               ; preds = %1
  %19 = load %struct.regmap*, %struct.regmap** %3, align 8
  %20 = load i32, i32* @AOUTRSTCTR0, align 4
  %21 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %2, align 8
  %22 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %21, i32 0, i32 0
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @BIT(i32 %26)
  %28 = call i32 @regmap_write(%struct.regmap* %19, i32 %20, i32 %27)
  %29 = load %struct.regmap*, %struct.regmap** %3, align 8
  %30 = load i32, i32* @AOUTRSTCTR1, align 4
  %31 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %2, align 8
  %32 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %31, i32 0, i32 0
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @BIT(i32 %36)
  %38 = call i32 @regmap_write(%struct.regmap* %29, i32 %30, i32 %37)
  br label %62

39:                                               ; preds = %1
  %40 = load %struct.regmap*, %struct.regmap** %3, align 8
  %41 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %2, align 8
  %42 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %41, i32 0, i32 0
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @IPORTMXRSTCTR(i32 %46)
  %48 = load i32, i32* @IPORTMXRSTCTR_RSTPI_MASK, align 4
  %49 = load i32, i32* @IPORTMXRSTCTR_RSTPI_RESET, align 4
  %50 = call i32 @regmap_update_bits(%struct.regmap* %40, i32 %47, i32 %48, i32 %49)
  %51 = load %struct.regmap*, %struct.regmap** %3, align 8
  %52 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %2, align 8
  %53 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %52, i32 0, i32 0
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @IPORTMXRSTCTR(i32 %57)
  %59 = load i32, i32* @IPORTMXRSTCTR_RSTPI_MASK, align 4
  %60 = load i32, i32* @IPORTMXRSTCTR_RSTPI_RELEASE, align 4
  %61 = call i32 @regmap_update_bits(%struct.regmap* %51, i32 %58, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %39, %18
  ret void
}

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @IPORTMXRSTCTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
