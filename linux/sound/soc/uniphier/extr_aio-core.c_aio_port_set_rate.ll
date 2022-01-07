; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-core.c_aio_port_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-core.c_aio_port_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uniphier_aio_sub = type { %struct.TYPE_12__*, %struct.TYPE_9__* }
%struct.TYPE_12__ = type { i64, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.regmap* }
%struct.TYPE_7__ = type { %struct.device }
%struct.device = type { i32 }
%struct.regmap = type { i32 }

@PORT_DIR_OUTPUT = common dso_local global i64 0, align 8
@OPORTMXCTR1_FSSEL_8 = common dso_local global i32 0, align 4
@OPORTMXCTR1_FSSEL_11_025 = common dso_local global i32 0, align 4
@OPORTMXCTR1_FSSEL_12 = common dso_local global i32 0, align 4
@OPORTMXCTR1_FSSEL_16 = common dso_local global i32 0, align 4
@OPORTMXCTR1_FSSEL_22_05 = common dso_local global i32 0, align 4
@OPORTMXCTR1_FSSEL_24 = common dso_local global i32 0, align 4
@OPORTMXCTR1_FSSEL_32 = common dso_local global i32 0, align 4
@OPORTMXCTR1_FSSEL_44_1 = common dso_local global i32 0, align 4
@OPORTMXCTR1_FSSEL_48 = common dso_local global i32 0, align 4
@OPORTMXCTR1_FSSEL_88_2 = common dso_local global i32 0, align 4
@OPORTMXCTR1_FSSEL_96 = common dso_local global i32 0, align 4
@OPORTMXCTR1_FSSEL_176_4 = common dso_local global i32 0, align 4
@OPORTMXCTR1_FSSEL_192 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Rate not supported(%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@OPORTMXCTR1_FSSEL_MASK = common dso_local global i32 0, align 4
@IPORTMXCTR1_FSSEL_8 = common dso_local global i32 0, align 4
@IPORTMXCTR1_FSSEL_11_025 = common dso_local global i32 0, align 4
@IPORTMXCTR1_FSSEL_12 = common dso_local global i32 0, align 4
@IPORTMXCTR1_FSSEL_16 = common dso_local global i32 0, align 4
@IPORTMXCTR1_FSSEL_22_05 = common dso_local global i32 0, align 4
@IPORTMXCTR1_FSSEL_24 = common dso_local global i32 0, align 4
@IPORTMXCTR1_FSSEL_32 = common dso_local global i32 0, align 4
@IPORTMXCTR1_FSSEL_44_1 = common dso_local global i32 0, align 4
@IPORTMXCTR1_FSSEL_48 = common dso_local global i32 0, align 4
@IPORTMXCTR1_FSSEL_88_2 = common dso_local global i32 0, align 4
@IPORTMXCTR1_FSSEL_96 = common dso_local global i32 0, align 4
@IPORTMXCTR1_FSSEL_176_4 = common dso_local global i32 0, align 4
@IPORTMXCTR1_FSSEL_192 = common dso_local global i32 0, align 4
@IPORTMXCTR1_FSSEL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uniphier_aio_sub*, i32)* @aio_port_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aio_port_set_rate(%struct.uniphier_aio_sub* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uniphier_aio_sub*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  store %struct.uniphier_aio_sub* %0, %struct.uniphier_aio_sub** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %4, align 8
  %10 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %9, i32 0, i32 1
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %15 = load %struct.regmap*, %struct.regmap** %14, align 8
  store %struct.regmap* %15, %struct.regmap** %6, align 8
  %16 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %4, align 8
  %17 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %16, i32 0, i32 1
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  store %struct.device* %23, %struct.device** %7, align 8
  %24 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %4, align 8
  %25 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %24, i32 0, i32 0
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PORT_DIR_OUTPUT, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %77

31:                                               ; preds = %2
  %32 = load i32, i32* %5, align 4
  switch i32 %32, label %59 [
    i32 8000, label %33
    i32 11025, label %35
    i32 12000, label %37
    i32 16000, label %39
    i32 22050, label %41
    i32 24000, label %43
    i32 32000, label %45
    i32 44100, label %47
    i32 48000, label %49
    i32 88200, label %51
    i32 96000, label %53
    i32 176400, label %55
    i32 192000, label %57
  ]

33:                                               ; preds = %31
  %34 = load i32, i32* @OPORTMXCTR1_FSSEL_8, align 4
  store i32 %34, i32* %8, align 4
  br label %65

35:                                               ; preds = %31
  %36 = load i32, i32* @OPORTMXCTR1_FSSEL_11_025, align 4
  store i32 %36, i32* %8, align 4
  br label %65

37:                                               ; preds = %31
  %38 = load i32, i32* @OPORTMXCTR1_FSSEL_12, align 4
  store i32 %38, i32* %8, align 4
  br label %65

39:                                               ; preds = %31
  %40 = load i32, i32* @OPORTMXCTR1_FSSEL_16, align 4
  store i32 %40, i32* %8, align 4
  br label %65

41:                                               ; preds = %31
  %42 = load i32, i32* @OPORTMXCTR1_FSSEL_22_05, align 4
  store i32 %42, i32* %8, align 4
  br label %65

43:                                               ; preds = %31
  %44 = load i32, i32* @OPORTMXCTR1_FSSEL_24, align 4
  store i32 %44, i32* %8, align 4
  br label %65

45:                                               ; preds = %31
  %46 = load i32, i32* @OPORTMXCTR1_FSSEL_32, align 4
  store i32 %46, i32* %8, align 4
  br label %65

47:                                               ; preds = %31
  %48 = load i32, i32* @OPORTMXCTR1_FSSEL_44_1, align 4
  store i32 %48, i32* %8, align 4
  br label %65

49:                                               ; preds = %31
  %50 = load i32, i32* @OPORTMXCTR1_FSSEL_48, align 4
  store i32 %50, i32* %8, align 4
  br label %65

51:                                               ; preds = %31
  %52 = load i32, i32* @OPORTMXCTR1_FSSEL_88_2, align 4
  store i32 %52, i32* %8, align 4
  br label %65

53:                                               ; preds = %31
  %54 = load i32, i32* @OPORTMXCTR1_FSSEL_96, align 4
  store i32 %54, i32* %8, align 4
  br label %65

55:                                               ; preds = %31
  %56 = load i32, i32* @OPORTMXCTR1_FSSEL_176_4, align 4
  store i32 %56, i32* %8, align 4
  br label %65

57:                                               ; preds = %31
  %58 = load i32, i32* @OPORTMXCTR1_FSSEL_192, align 4
  store i32 %58, i32* %8, align 4
  br label %65

59:                                               ; preds = %31
  %60 = load %struct.device*, %struct.device** %7, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @dev_err(%struct.device* %60, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %124

65:                                               ; preds = %57, %55, %53, %51, %49, %47, %45, %43, %41, %39, %37, %35, %33
  %66 = load %struct.regmap*, %struct.regmap** %6, align 8
  %67 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %4, align 8
  %68 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %67, i32 0, i32 0
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @OPORTMXCTR1(i32 %72)
  %74 = load i32, i32* @OPORTMXCTR1_FSSEL_MASK, align 4
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @regmap_update_bits(%struct.regmap* %66, i32 %73, i32 %74, i32 %75)
  br label %123

77:                                               ; preds = %2
  %78 = load i32, i32* %5, align 4
  switch i32 %78, label %105 [
    i32 8000, label %79
    i32 11025, label %81
    i32 12000, label %83
    i32 16000, label %85
    i32 22050, label %87
    i32 24000, label %89
    i32 32000, label %91
    i32 44100, label %93
    i32 48000, label %95
    i32 88200, label %97
    i32 96000, label %99
    i32 176400, label %101
    i32 192000, label %103
  ]

79:                                               ; preds = %77
  %80 = load i32, i32* @IPORTMXCTR1_FSSEL_8, align 4
  store i32 %80, i32* %8, align 4
  br label %111

81:                                               ; preds = %77
  %82 = load i32, i32* @IPORTMXCTR1_FSSEL_11_025, align 4
  store i32 %82, i32* %8, align 4
  br label %111

83:                                               ; preds = %77
  %84 = load i32, i32* @IPORTMXCTR1_FSSEL_12, align 4
  store i32 %84, i32* %8, align 4
  br label %111

85:                                               ; preds = %77
  %86 = load i32, i32* @IPORTMXCTR1_FSSEL_16, align 4
  store i32 %86, i32* %8, align 4
  br label %111

87:                                               ; preds = %77
  %88 = load i32, i32* @IPORTMXCTR1_FSSEL_22_05, align 4
  store i32 %88, i32* %8, align 4
  br label %111

89:                                               ; preds = %77
  %90 = load i32, i32* @IPORTMXCTR1_FSSEL_24, align 4
  store i32 %90, i32* %8, align 4
  br label %111

91:                                               ; preds = %77
  %92 = load i32, i32* @IPORTMXCTR1_FSSEL_32, align 4
  store i32 %92, i32* %8, align 4
  br label %111

93:                                               ; preds = %77
  %94 = load i32, i32* @IPORTMXCTR1_FSSEL_44_1, align 4
  store i32 %94, i32* %8, align 4
  br label %111

95:                                               ; preds = %77
  %96 = load i32, i32* @IPORTMXCTR1_FSSEL_48, align 4
  store i32 %96, i32* %8, align 4
  br label %111

97:                                               ; preds = %77
  %98 = load i32, i32* @IPORTMXCTR1_FSSEL_88_2, align 4
  store i32 %98, i32* %8, align 4
  br label %111

99:                                               ; preds = %77
  %100 = load i32, i32* @IPORTMXCTR1_FSSEL_96, align 4
  store i32 %100, i32* %8, align 4
  br label %111

101:                                              ; preds = %77
  %102 = load i32, i32* @IPORTMXCTR1_FSSEL_176_4, align 4
  store i32 %102, i32* %8, align 4
  br label %111

103:                                              ; preds = %77
  %104 = load i32, i32* @IPORTMXCTR1_FSSEL_192, align 4
  store i32 %104, i32* %8, align 4
  br label %111

105:                                              ; preds = %77
  %106 = load %struct.device*, %struct.device** %7, align 8
  %107 = load i32, i32* %5, align 4
  %108 = call i32 @dev_err(%struct.device* %106, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %107)
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %3, align 4
  br label %124

111:                                              ; preds = %103, %101, %99, %97, %95, %93, %91, %89, %87, %85, %83, %81, %79
  %112 = load %struct.regmap*, %struct.regmap** %6, align 8
  %113 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %4, align 8
  %114 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %113, i32 0, i32 0
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @IPORTMXCTR1(i32 %118)
  %120 = load i32, i32* @IPORTMXCTR1_FSSEL_MASK, align 4
  %121 = load i32, i32* %8, align 4
  %122 = call i32 @regmap_update_bits(%struct.regmap* %112, i32 %119, i32 %120, i32 %121)
  br label %123

123:                                              ; preds = %111, %65
  store i32 0, i32* %3, align 4
  br label %124

124:                                              ; preds = %123, %105, %59
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @OPORTMXCTR1(i32) #1

declare dso_local i32 @IPORTMXCTR1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
