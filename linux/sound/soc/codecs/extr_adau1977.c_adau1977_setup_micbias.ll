; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau1977.c_adau1977_setup_micbias.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau1977.c_adau1977_setup_micbias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adau1977 = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.adau1977_platform_data* }
%struct.adau1977_platform_data = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"adi,micbias\00", align 1
@ADAU1977_MICBIAS_8V5 = common dso_local global i32 0, align 4
@ADAU1977_MICBIAS_9V0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Invalid value for 'adi,micbias'\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ADAU1977_REG_MICBIAS = common dso_local global i32 0, align 4
@ADAU1977_MICBIAS_MB_VOLTS_MASK = common dso_local global i32 0, align 4
@ADAU1977_MICBIAS_MB_VOLTS_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adau1977*)* @adau1977_setup_micbias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adau1977_setup_micbias(%struct.adau1977* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adau1977*, align 8
  %4 = alloca %struct.adau1977_platform_data*, align 8
  %5 = alloca i32, align 4
  store %struct.adau1977* %0, %struct.adau1977** %3, align 8
  %6 = load %struct.adau1977*, %struct.adau1977** %3, align 8
  %7 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %6, i32 0, i32 1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.adau1977_platform_data*, %struct.adau1977_platform_data** %9, align 8
  store %struct.adau1977_platform_data* %10, %struct.adau1977_platform_data** %4, align 8
  %11 = load %struct.adau1977_platform_data*, %struct.adau1977_platform_data** %4, align 8
  %12 = icmp ne %struct.adau1977_platform_data* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.adau1977_platform_data*, %struct.adau1977_platform_data** %4, align 8
  %15 = getelementptr inbounds %struct.adau1977_platform_data, %struct.adau1977_platform_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %5, align 4
  br label %26

17:                                               ; preds = %1
  %18 = load %struct.adau1977*, %struct.adau1977** %3, align 8
  %19 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = call i64 @device_property_read_u32(%struct.TYPE_3__* %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %5)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* @ADAU1977_MICBIAS_8V5, align 4
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %23, %17
  br label %26

26:                                               ; preds = %25, %13
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @ADAU1977_MICBIAS_9V0, align 4
  %29 = icmp ugt i32 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = load %struct.adau1977*, %struct.adau1977** %3, align 8
  %32 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %31, i32 0, i32 1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = call i32 @dev_err(%struct.TYPE_3__* %33, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %47

37:                                               ; preds = %26
  %38 = load %struct.adau1977*, %struct.adau1977** %3, align 8
  %39 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @ADAU1977_REG_MICBIAS, align 4
  %42 = load i32, i32* @ADAU1977_MICBIAS_MB_VOLTS_MASK, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @ADAU1977_MICBIAS_MB_VOLTS_OFFSET, align 4
  %45 = shl i32 %43, %44
  %46 = call i32 @regmap_update_bits(i32 %40, i32 %41, i32 %42, i32 %45)
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %37, %30
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i64 @device_property_read_u32(%struct.TYPE_3__*, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_3__*, i8*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
