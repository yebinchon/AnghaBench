; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm5100.c_wm5100_irq.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm5100.c_wm5100_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm5100_priv = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@WM5100_INTERRUPT_STATUS_3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to read IRQ status 3: %d\0A\00", align 1
@WM5100_INTERRUPT_STATUS_3_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to read IRQ mask 3: %d\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@WM5100_FLL1_LOCK_EINT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"FLL1 locked\0A\00", align 1
@WM5100_FLL2_LOCK_EINT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"FLL2 locked\0A\00", align 1
@WM5100_ACCDET_EINT = common dso_local global i32 0, align 4
@WM5100_INTERRUPT_STATUS_4 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"Failed to read IRQ status 4: %d\0A\00", align 1
@WM5100_INTERRUPT_STATUS_4_MASK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"Failed to read IRQ mask 4: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @wm5100_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm5100_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wm5100_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.wm5100_priv*
  store %struct.wm5100_priv* %11, %struct.wm5100_priv** %5, align 8
  %12 = load i32, i32* @IRQ_NONE, align 4
  store i32 %12, i32* %6, align 4
  %13 = load %struct.wm5100_priv*, %struct.wm5100_priv** %5, align 8
  %14 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @WM5100_INTERRUPT_STATUS_3, align 4
  %17 = call i32 @regmap_read(i32 %15, i32 %16, i32* %7)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load %struct.wm5100_priv*, %struct.wm5100_priv** %5, align 8
  %22 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @dev_err(i32 %23, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %24)
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %20, %2
  %27 = load %struct.wm5100_priv*, %struct.wm5100_priv** %5, align 8
  %28 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @WM5100_INTERRUPT_STATUS_3_MASK, align 4
  %31 = call i32 @regmap_read(i32 %29, i32 %30, i32* %8)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %26
  %35 = load %struct.wm5100_priv*, %struct.wm5100_priv** %5, align 8
  %36 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @dev_err(i32 %37, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  store i32 65535, i32* %8, align 4
  br label %40

40:                                               ; preds = %34, %26
  %41 = load i32, i32* %8, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %7, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %7, align 4
  %45 = load %struct.wm5100_priv*, %struct.wm5100_priv** %5, align 8
  %46 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @WM5100_INTERRUPT_STATUS_3, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @regmap_write(i32 %47, i32 %48, i32 %49)
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %40
  %54 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %53, %40
  %56 = load %struct.wm5100_priv*, %struct.wm5100_priv** %5, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @wm5100_log_status3(%struct.wm5100_priv* %56, i32 %57)
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @WM5100_FLL1_LOCK_EINT, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %55
  %64 = load %struct.wm5100_priv*, %struct.wm5100_priv** %5, align 8
  %65 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @dev_dbg(i32 %66, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %68 = load %struct.wm5100_priv*, %struct.wm5100_priv** %5, align 8
  %69 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %68, i32 0, i32 2
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = call i32 @complete(i32* %72)
  br label %74

74:                                               ; preds = %63, %55
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @WM5100_FLL2_LOCK_EINT, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %90

79:                                               ; preds = %74
  %80 = load %struct.wm5100_priv*, %struct.wm5100_priv** %5, align 8
  %81 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @dev_dbg(i32 %82, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %84 = load %struct.wm5100_priv*, %struct.wm5100_priv** %5, align 8
  %85 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %84, i32 0, i32 2
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 1
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = call i32 @complete(i32* %88)
  br label %90

90:                                               ; preds = %79, %74
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* @WM5100_ACCDET_EINT, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load %struct.wm5100_priv*, %struct.wm5100_priv** %5, align 8
  %97 = call i32 @wm5100_micd_irq(%struct.wm5100_priv* %96)
  br label %98

98:                                               ; preds = %95, %90
  %99 = load %struct.wm5100_priv*, %struct.wm5100_priv** %5, align 8
  %100 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @WM5100_INTERRUPT_STATUS_4, align 4
  %103 = call i32 @regmap_read(i32 %101, i32 %102, i32* %7)
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* %9, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %98
  %107 = load %struct.wm5100_priv*, %struct.wm5100_priv** %5, align 8
  %108 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %9, align 4
  %111 = call i32 @dev_err(i32 %109, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %110)
  store i32 0, i32* %7, align 4
  br label %112

112:                                              ; preds = %106, %98
  %113 = load %struct.wm5100_priv*, %struct.wm5100_priv** %5, align 8
  %114 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @WM5100_INTERRUPT_STATUS_4_MASK, align 4
  %117 = call i32 @regmap_read(i32 %115, i32 %116, i32* %8)
  store i32 %117, i32* %9, align 4
  %118 = load i32, i32* %9, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %112
  %121 = load %struct.wm5100_priv*, %struct.wm5100_priv** %5, align 8
  %122 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %9, align 4
  %125 = call i32 @dev_err(i32 %123, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %124)
  store i32 65535, i32* %8, align 4
  br label %126

126:                                              ; preds = %120, %112
  %127 = load i32, i32* %8, align 4
  %128 = xor i32 %127, -1
  %129 = load i32, i32* %7, align 4
  %130 = and i32 %129, %128
  store i32 %130, i32* %7, align 4
  %131 = load i32, i32* %7, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %126
  %134 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %134, i32* %6, align 4
  br label %135

135:                                              ; preds = %133, %126
  %136 = load %struct.wm5100_priv*, %struct.wm5100_priv** %5, align 8
  %137 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @WM5100_INTERRUPT_STATUS_4, align 4
  %140 = load i32, i32* %7, align 4
  %141 = call i32 @regmap_write(i32 %138, i32 %139, i32 %140)
  %142 = load %struct.wm5100_priv*, %struct.wm5100_priv** %5, align 8
  %143 = load i32, i32* %7, align 4
  %144 = call i32 @wm5100_log_status4(%struct.wm5100_priv* %142, i32 %143)
  %145 = load i32, i32* %6, align 4
  ret i32 %145
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @wm5100_log_status3(%struct.wm5100_priv*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @wm5100_micd_irq(%struct.wm5100_priv*) #1

declare dso_local i32 @wm5100_log_status4(%struct.wm5100_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
