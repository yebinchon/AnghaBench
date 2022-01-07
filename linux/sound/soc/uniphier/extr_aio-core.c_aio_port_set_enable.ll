; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-core.c_aio_port_set_enable.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-core.c_aio_port_set_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uniphier_aio_sub = type { %struct.TYPE_12__*, %struct.TYPE_8__* }
%struct.TYPE_12__ = type { i64, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.regmap* }
%struct.regmap = type { i32 }

@PORT_DIR_OUTPUT = common dso_local global i64 0, align 8
@OPORTMXMASK_IUDXMSK_MASK = common dso_local global i32 0, align 4
@OPORTMXMASK_IUXCKMSK_MASK = common dso_local global i32 0, align 4
@OPORTMXMASK_DXMSK_MASK = common dso_local global i32 0, align 4
@OPORTMXMASK_XCKMSK_MASK = common dso_local global i32 0, align 4
@OPORTMXMASK_IUDXMSK_OFF = common dso_local global i32 0, align 4
@OPORTMXMASK_IUXCKMSK_OFF = common dso_local global i32 0, align 4
@OPORTMXMASK_DXMSK_OFF = common dso_local global i32 0, align 4
@OPORTMXMASK_XCKMSK_OFF = common dso_local global i32 0, align 4
@AOUTENCTR0 = common dso_local global i32 0, align 4
@AOUTENCTR1 = common dso_local global i32 0, align 4
@IPORTMXMASK_IUXCKMSK_MASK = common dso_local global i32 0, align 4
@IPORTMXMASK_XCKMSK_MASK = common dso_local global i32 0, align 4
@IPORTMXMASK_IUXCKMSK_OFF = common dso_local global i32 0, align 4
@IPORTMXMASK_XCKMSK_OFF = common dso_local global i32 0, align 4
@IPORTMXCTR2_REQEN_MASK = common dso_local global i32 0, align 4
@IPORTMXCTR2_REQEN_ENABLE = common dso_local global i32 0, align 4
@IPORTMXCTR2_REQEN_DISABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aio_port_set_enable(%struct.uniphier_aio_sub* %0, i32 %1) #0 {
  %3 = alloca %struct.uniphier_aio_sub*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.regmap*, align 8
  store %struct.uniphier_aio_sub* %0, %struct.uniphier_aio_sub** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %3, align 8
  %7 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %6, i32 0, i32 1
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load %struct.regmap*, %struct.regmap** %11, align 8
  store %struct.regmap* %12, %struct.regmap** %5, align 8
  %13 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %3, align 8
  %14 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %13, i32 0, i32 0
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PORT_DIR_OUTPUT, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %84

20:                                               ; preds = %2
  %21 = load %struct.regmap*, %struct.regmap** %5, align 8
  %22 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %3, align 8
  %23 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %22, i32 0, i32 0
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @OPORTMXPATH(i32 %27)
  %29 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %3, align 8
  %30 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %29, i32 0, i32 0
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @regmap_write(%struct.regmap* %21, i32 %28, i32 %34)
  %36 = load %struct.regmap*, %struct.regmap** %5, align 8
  %37 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %3, align 8
  %38 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %37, i32 0, i32 0
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @OPORTMXMASK(i32 %42)
  %44 = load i32, i32* @OPORTMXMASK_IUDXMSK_MASK, align 4
  %45 = load i32, i32* @OPORTMXMASK_IUXCKMSK_MASK, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @OPORTMXMASK_DXMSK_MASK, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @OPORTMXMASK_XCKMSK_MASK, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @OPORTMXMASK_IUDXMSK_OFF, align 4
  %52 = load i32, i32* @OPORTMXMASK_IUXCKMSK_OFF, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @OPORTMXMASK_DXMSK_OFF, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @OPORTMXMASK_XCKMSK_OFF, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @regmap_update_bits(%struct.regmap* %36, i32 %43, i32 %50, i32 %57)
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %20
  %62 = load %struct.regmap*, %struct.regmap** %5, align 8
  %63 = load i32, i32* @AOUTENCTR0, align 4
  %64 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %3, align 8
  %65 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %64, i32 0, i32 0
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @BIT(i32 %69)
  %71 = call i32 @regmap_write(%struct.regmap* %62, i32 %63, i32 %70)
  br label %83

72:                                               ; preds = %20
  %73 = load %struct.regmap*, %struct.regmap** %5, align 8
  %74 = load i32, i32* @AOUTENCTR1, align 4
  %75 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %3, align 8
  %76 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %75, i32 0, i32 0
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @BIT(i32 %80)
  %82 = call i32 @regmap_write(%struct.regmap* %73, i32 %74, i32 %81)
  br label %83

83:                                               ; preds = %72, %61
  br label %127

84:                                               ; preds = %2
  %85 = load %struct.regmap*, %struct.regmap** %5, align 8
  %86 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %3, align 8
  %87 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %86, i32 0, i32 0
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @IPORTMXMASK(i32 %91)
  %93 = load i32, i32* @IPORTMXMASK_IUXCKMSK_MASK, align 4
  %94 = load i32, i32* @IPORTMXMASK_XCKMSK_MASK, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @IPORTMXMASK_IUXCKMSK_OFF, align 4
  %97 = load i32, i32* @IPORTMXMASK_XCKMSK_OFF, align 4
  %98 = or i32 %96, %97
  %99 = call i32 @regmap_update_bits(%struct.regmap* %85, i32 %92, i32 %95, i32 %98)
  %100 = load i32, i32* %4, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %114

102:                                              ; preds = %84
  %103 = load %struct.regmap*, %struct.regmap** %5, align 8
  %104 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %3, align 8
  %105 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %104, i32 0, i32 0
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @IPORTMXCTR2(i32 %109)
  %111 = load i32, i32* @IPORTMXCTR2_REQEN_MASK, align 4
  %112 = load i32, i32* @IPORTMXCTR2_REQEN_ENABLE, align 4
  %113 = call i32 @regmap_update_bits(%struct.regmap* %103, i32 %110, i32 %111, i32 %112)
  br label %126

114:                                              ; preds = %84
  %115 = load %struct.regmap*, %struct.regmap** %5, align 8
  %116 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %3, align 8
  %117 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %116, i32 0, i32 0
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @IPORTMXCTR2(i32 %121)
  %123 = load i32, i32* @IPORTMXCTR2_REQEN_MASK, align 4
  %124 = load i32, i32* @IPORTMXCTR2_REQEN_DISABLE, align 4
  %125 = call i32 @regmap_update_bits(%struct.regmap* %115, i32 %122, i32 %123, i32 %124)
  br label %126

126:                                              ; preds = %114, %102
  br label %127

127:                                              ; preds = %126, %83
  ret void
}

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @OPORTMXPATH(i32) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @OPORTMXMASK(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @IPORTMXMASK(i32) #1

declare dso_local i32 @IPORTMXCTR2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
