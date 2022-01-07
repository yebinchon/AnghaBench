; ModuleID = '/home/carl/AnghaBench/linux/sound/spi/extr_at73c213.c_snd_at73c213_remove.c'
source_filename = "/home/carl/AnghaBench/linux/sound/spi/extr_at73c213.c_snd_at73c213_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.snd_card = type { %struct.snd_at73c213* }
%struct.snd_at73c213 = type { i32*, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@CR = common dso_local global i32 0, align 4
@CR_TXDIS = common dso_local global i32 0, align 4
@DAC_LMPG = common dso_local global i64 0, align 8
@DAC_RMPG = common dso_local global i64 0, align 8
@DAC_LLOG = common dso_local global i64 0, align 8
@DAC_RLOG = common dso_local global i64 0, align 8
@DAC_LLIG = common dso_local global i64 0, align 8
@DAC_RLIG = common dso_local global i64 0, align 8
@DAC_AUXG = common dso_local global i64 0, align 8
@PA_CTRL = common dso_local global i64 0, align 8
@PA_CTRL_APALP = common dso_local global i32 0, align 4
@DAC_CTRL = common dso_local global i64 0, align 8
@DAC_PRECH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @snd_at73c213_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_at73c213_remove(%struct.spi_device* %0) #0 {
  %2 = alloca %struct.spi_device*, align 8
  %3 = alloca %struct.snd_card*, align 8
  %4 = alloca %struct.snd_at73c213*, align 8
  %5 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %2, align 8
  %6 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %7 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %6, i32 0, i32 0
  %8 = call %struct.snd_card* @dev_get_drvdata(i32* %7)
  store %struct.snd_card* %8, %struct.snd_card** %3, align 8
  %9 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %10 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %9, i32 0, i32 0
  %11 = load %struct.snd_at73c213*, %struct.snd_at73c213** %10, align 8
  store %struct.snd_at73c213* %11, %struct.snd_at73c213** %4, align 8
  %12 = load %struct.snd_at73c213*, %struct.snd_at73c213** %4, align 8
  %13 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @clk_enable(i32 %16)
  %18 = load %struct.snd_at73c213*, %struct.snd_at73c213** %4, align 8
  %19 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @CR, align 4
  %24 = load i32, i32* @CR_TXDIS, align 4
  %25 = call i32 @SSC_BIT(i32 %24)
  %26 = call i32 @ssc_writel(i32 %22, i32 %23, i32 %25)
  %27 = load %struct.snd_at73c213*, %struct.snd_at73c213** %4, align 8
  %28 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @clk_disable(i32 %31)
  %33 = load %struct.snd_at73c213*, %struct.snd_at73c213** %4, align 8
  %34 = load i64, i64* @DAC_LMPG, align 8
  %35 = call i32 @snd_at73c213_write_reg(%struct.snd_at73c213* %33, i64 %34, i32 63)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %1
  br label %129

39:                                               ; preds = %1
  %40 = load %struct.snd_at73c213*, %struct.snd_at73c213** %4, align 8
  %41 = load i64, i64* @DAC_RMPG, align 8
  %42 = call i32 @snd_at73c213_write_reg(%struct.snd_at73c213* %40, i64 %41, i32 63)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %129

46:                                               ; preds = %39
  %47 = load %struct.snd_at73c213*, %struct.snd_at73c213** %4, align 8
  %48 = load i64, i64* @DAC_LLOG, align 8
  %49 = call i32 @snd_at73c213_write_reg(%struct.snd_at73c213* %47, i64 %48, i32 63)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %129

53:                                               ; preds = %46
  %54 = load %struct.snd_at73c213*, %struct.snd_at73c213** %4, align 8
  %55 = load i64, i64* @DAC_RLOG, align 8
  %56 = call i32 @snd_at73c213_write_reg(%struct.snd_at73c213* %54, i64 %55, i32 63)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %129

60:                                               ; preds = %53
  %61 = load %struct.snd_at73c213*, %struct.snd_at73c213** %4, align 8
  %62 = load i64, i64* @DAC_LLIG, align 8
  %63 = call i32 @snd_at73c213_write_reg(%struct.snd_at73c213* %61, i64 %62, i32 17)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  br label %129

67:                                               ; preds = %60
  %68 = load %struct.snd_at73c213*, %struct.snd_at73c213** %4, align 8
  %69 = load i64, i64* @DAC_RLIG, align 8
  %70 = call i32 @snd_at73c213_write_reg(%struct.snd_at73c213* %68, i64 %69, i32 17)
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  br label %129

74:                                               ; preds = %67
  %75 = load %struct.snd_at73c213*, %struct.snd_at73c213** %4, align 8
  %76 = load i64, i64* @DAC_AUXG, align 8
  %77 = call i32 @snd_at73c213_write_reg(%struct.snd_at73c213* %75, i64 %76, i32 17)
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %5, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  br label %129

81:                                               ; preds = %74
  %82 = load %struct.snd_at73c213*, %struct.snd_at73c213** %4, align 8
  %83 = load i64, i64* @PA_CTRL, align 8
  %84 = load %struct.snd_at73c213*, %struct.snd_at73c213** %4, align 8
  %85 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load i64, i64* @PA_CTRL, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, 15
  %91 = call i32 @snd_at73c213_write_reg(%struct.snd_at73c213* %82, i64 %83, i32 %90)
  store i32 %91, i32* %5, align 4
  %92 = load i32, i32* %5, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %81
  br label %129

95:                                               ; preds = %81
  %96 = call i32 @msleep(i32 10)
  %97 = load %struct.snd_at73c213*, %struct.snd_at73c213** %4, align 8
  %98 = load i64, i64* @PA_CTRL, align 8
  %99 = load i32, i32* @PA_CTRL_APALP, align 4
  %100 = shl i32 1, %99
  %101 = or i32 %100, 15
  %102 = call i32 @snd_at73c213_write_reg(%struct.snd_at73c213* %97, i64 %98, i32 %101)
  store i32 %102, i32* %5, align 4
  %103 = load i32, i32* %5, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %95
  br label %129

106:                                              ; preds = %95
  %107 = load %struct.snd_at73c213*, %struct.snd_at73c213** %4, align 8
  %108 = load i64, i64* @DAC_CTRL, align 8
  %109 = call i32 @snd_at73c213_write_reg(%struct.snd_at73c213* %107, i64 %108, i32 12)
  store i32 %109, i32* %5, align 4
  %110 = load i32, i32* %5, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %106
  br label %129

113:                                              ; preds = %106
  %114 = call i32 @msleep(i32 2)
  %115 = load %struct.snd_at73c213*, %struct.snd_at73c213** %4, align 8
  %116 = load i64, i64* @DAC_CTRL, align 8
  %117 = call i32 @snd_at73c213_write_reg(%struct.snd_at73c213* %115, i64 %116, i32 0)
  store i32 %117, i32* %5, align 4
  %118 = load i32, i32* %5, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %113
  br label %129

121:                                              ; preds = %113
  %122 = load %struct.snd_at73c213*, %struct.snd_at73c213** %4, align 8
  %123 = load i64, i64* @DAC_PRECH, align 8
  %124 = call i32 @snd_at73c213_write_reg(%struct.snd_at73c213* %122, i64 %123, i32 0)
  store i32 %124, i32* %5, align 4
  %125 = load i32, i32* %5, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %121
  br label %129

128:                                              ; preds = %121
  br label %129

129:                                              ; preds = %128, %127, %120, %112, %105, %94, %80, %73, %66, %59, %52, %45, %38
  %130 = load %struct.snd_at73c213*, %struct.snd_at73c213** %4, align 8
  %131 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %130, i32 0, i32 2
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @clk_disable(i32 %134)
  %136 = load %struct.snd_at73c213*, %struct.snd_at73c213** %4, align 8
  %137 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %136, i32 0, i32 1
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %137, align 8
  %139 = call i32 @ssc_free(%struct.TYPE_4__* %138)
  %140 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %141 = call i32 @snd_card_free(%struct.snd_card* %140)
  ret i32 0
}

declare dso_local %struct.snd_card* @dev_get_drvdata(i32*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @ssc_writel(i32, i32, i32) #1

declare dso_local i32 @SSC_BIT(i32) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @snd_at73c213_write_reg(%struct.snd_at73c213*, i64, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @ssc_free(%struct.TYPE_4__*) #1

declare dso_local i32 @snd_card_free(%struct.snd_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
