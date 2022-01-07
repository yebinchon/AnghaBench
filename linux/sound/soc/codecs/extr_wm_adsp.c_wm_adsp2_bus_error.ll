; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_adsp2_bus_error.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_adsp2_bus_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm_adsp = type { i32, i64, %struct.TYPE_2__*, %struct.regmap* }
%struct.TYPE_2__ = type { i32 (%struct.wm_adsp*)* }
%struct.regmap = type { i32 }

@ADSP2_LOCK_REGION_CTRL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"Failed to read Region Lock Ctrl register: %d\0A\00", align 1
@ADSP2_WDT_TIMEOUT_STS_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"watchdog timeout error\0A\00", align 1
@ADSP2_SLAVE_ERR_MASK = common dso_local global i32 0, align 4
@ADSP2_REGION_LOCK_ERR_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"bus error: slave error\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"bus error: region lock error\0A\00", align 1
@ADSP2_BUS_ERR_ADDR = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [42 x i8] c"Failed to read Bus Err Addr register: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"bus error address = 0x%x\0A\00", align 1
@ADSP2_BUS_ERR_ADDR_MASK = common dso_local global i32 0, align 4
@ADSP2_PMEM_ERR_ADDR_XMEM_ERR_ADDR = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [48 x i8] c"Failed to read Pmem Xmem Err Addr register: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"xmem error address = 0x%x\0A\00", align 1
@ADSP2_XMEM_ERR_ADDR_MASK = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [27 x i8] c"pmem error address = 0x%x\0A\00", align 1
@ADSP2_PMEM_ERR_ADDR_MASK = common dso_local global i32 0, align 4
@ADSP2_PMEM_ERR_ADDR_SHIFT = common dso_local global i32 0, align 4
@ADSP2_CTRL_ERR_EINT = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wm_adsp2_bus_error(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wm_adsp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.wm_adsp*
  store %struct.wm_adsp* %10, %struct.wm_adsp** %5, align 8
  %11 = load %struct.wm_adsp*, %struct.wm_adsp** %5, align 8
  %12 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %11, i32 0, i32 3
  %13 = load %struct.regmap*, %struct.regmap** %12, align 8
  store %struct.regmap* %13, %struct.regmap** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.wm_adsp*, %struct.wm_adsp** %5, align 8
  %15 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.regmap*, %struct.regmap** %7, align 8
  %18 = load %struct.wm_adsp*, %struct.wm_adsp** %5, align 8
  %19 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ADSP2_LOCK_REGION_CTRL, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @regmap_read(%struct.regmap* %17, i64 %22, i32* %6)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load %struct.wm_adsp*, %struct.wm_adsp** %5, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 (%struct.wm_adsp*, i8*, ...) @adsp_err(%struct.wm_adsp* %27, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %121

30:                                               ; preds = %2
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @ADSP2_WDT_TIMEOUT_STS_MASK, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %30
  %36 = load %struct.wm_adsp*, %struct.wm_adsp** %5, align 8
  %37 = call i32 (%struct.wm_adsp*, i8*, ...) @adsp_err(%struct.wm_adsp* %36, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %38 = load %struct.wm_adsp*, %struct.wm_adsp** %5, align 8
  %39 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32 (%struct.wm_adsp*)*, i32 (%struct.wm_adsp*)** %41, align 8
  %43 = load %struct.wm_adsp*, %struct.wm_adsp** %5, align 8
  %44 = call i32 %42(%struct.wm_adsp* %43)
  %45 = load %struct.wm_adsp*, %struct.wm_adsp** %5, align 8
  %46 = call i32 @wm_adsp_fatal_error(%struct.wm_adsp* %45)
  br label %47

47:                                               ; preds = %35, %30
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @ADSP2_SLAVE_ERR_MASK, align 4
  %50 = load i32, i32* @ADSP2_REGION_LOCK_ERR_MASK, align 4
  %51 = or i32 %49, %50
  %52 = and i32 %48, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %111

54:                                               ; preds = %47
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @ADSP2_SLAVE_ERR_MASK, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load %struct.wm_adsp*, %struct.wm_adsp** %5, align 8
  %61 = call i32 (%struct.wm_adsp*, i8*, ...) @adsp_err(%struct.wm_adsp* %60, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %65

62:                                               ; preds = %54
  %63 = load %struct.wm_adsp*, %struct.wm_adsp** %5, align 8
  %64 = call i32 (%struct.wm_adsp*, i8*, ...) @adsp_err(%struct.wm_adsp* %63, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %65

65:                                               ; preds = %62, %59
  %66 = load %struct.regmap*, %struct.regmap** %7, align 8
  %67 = load %struct.wm_adsp*, %struct.wm_adsp** %5, align 8
  %68 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @ADSP2_BUS_ERR_ADDR, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @regmap_read(%struct.regmap* %66, i64 %71, i32* %6)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %65
  %76 = load %struct.wm_adsp*, %struct.wm_adsp** %5, align 8
  %77 = load i32, i32* %8, align 4
  %78 = call i32 (%struct.wm_adsp*, i8*, ...) @adsp_err(%struct.wm_adsp* %76, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %77)
  br label %121

79:                                               ; preds = %65
  %80 = load %struct.wm_adsp*, %struct.wm_adsp** %5, align 8
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @ADSP2_BUS_ERR_ADDR_MASK, align 4
  %83 = and i32 %81, %82
  %84 = call i32 (%struct.wm_adsp*, i8*, ...) @adsp_err(%struct.wm_adsp* %80, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %83)
  %85 = load %struct.regmap*, %struct.regmap** %7, align 8
  %86 = load %struct.wm_adsp*, %struct.wm_adsp** %5, align 8
  %87 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @ADSP2_PMEM_ERR_ADDR_XMEM_ERR_ADDR, align 8
  %90 = add nsw i64 %88, %89
  %91 = call i32 @regmap_read(%struct.regmap* %85, i64 %90, i32* %6)
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %79
  %95 = load %struct.wm_adsp*, %struct.wm_adsp** %5, align 8
  %96 = load i32, i32* %8, align 4
  %97 = call i32 (%struct.wm_adsp*, i8*, ...) @adsp_err(%struct.wm_adsp* %95, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i32 %96)
  br label %121

98:                                               ; preds = %79
  %99 = load %struct.wm_adsp*, %struct.wm_adsp** %5, align 8
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* @ADSP2_XMEM_ERR_ADDR_MASK, align 4
  %102 = and i32 %100, %101
  %103 = call i32 (%struct.wm_adsp*, i8*, ...) @adsp_err(%struct.wm_adsp* %99, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %102)
  %104 = load %struct.wm_adsp*, %struct.wm_adsp** %5, align 8
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* @ADSP2_PMEM_ERR_ADDR_MASK, align 4
  %107 = and i32 %105, %106
  %108 = load i32, i32* @ADSP2_PMEM_ERR_ADDR_SHIFT, align 4
  %109 = lshr i32 %107, %108
  %110 = call i32 (%struct.wm_adsp*, i8*, ...) @adsp_err(%struct.wm_adsp* %104, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 %109)
  br label %111

111:                                              ; preds = %98, %47
  %112 = load %struct.regmap*, %struct.regmap** %7, align 8
  %113 = load %struct.wm_adsp*, %struct.wm_adsp** %5, align 8
  %114 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @ADSP2_LOCK_REGION_CTRL, align 8
  %117 = add nsw i64 %115, %116
  %118 = load i32, i32* @ADSP2_CTRL_ERR_EINT, align 4
  %119 = load i32, i32* @ADSP2_CTRL_ERR_EINT, align 4
  %120 = call i32 @regmap_update_bits(%struct.regmap* %112, i64 %117, i32 %118, i32 %119)
  br label %121

121:                                              ; preds = %111, %94, %75, %26
  %122 = load %struct.wm_adsp*, %struct.wm_adsp** %5, align 8
  %123 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %122, i32 0, i32 0
  %124 = call i32 @mutex_unlock(i32* %123)
  %125 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %125
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i64, i32*) #1

declare dso_local i32 @adsp_err(%struct.wm_adsp*, i8*, ...) #1

declare dso_local i32 @wm_adsp_fatal_error(%struct.wm_adsp*) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i64, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
