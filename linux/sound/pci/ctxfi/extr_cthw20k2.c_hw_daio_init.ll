; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_cthw20k2.c_hw_daio_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_cthw20k2.c_hw_daio_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.daio_conf = type { i32 }

@AUDIO_IO_MCLK = common dso_local global i64 0, align 8
@AUDIO_IO_TX_BLRCLK = common dso_local global i64 0, align 8
@AUDIO_IO_RX_BLRCLK = common dso_local global i64 0, align 8
@CTSB1270 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"ERROR!!! Invalid sampling rate!!!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AUDIO_IO_TX_CTL = common dso_local global i64 0, align 8
@AUDIO_IO_RX_CTL = common dso_local global i64 0, align 8
@AUDIO_IO_TX_CSTAT_L = common dso_local global i64 0, align 8
@AUDIO_IO_TX_CSTAT_H = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hw*, %struct.daio_conf*)* @hw_daio_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_daio_init(%struct.hw* %0, %struct.daio_conf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hw*, align 8
  %5 = alloca %struct.daio_conf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hw* %0, %struct.hw** %4, align 8
  store %struct.daio_conf* %1, %struct.daio_conf** %5, align 8
  %8 = load %struct.daio_conf*, %struct.daio_conf** %5, align 8
  %9 = getelementptr inbounds %struct.daio_conf, %struct.daio_conf* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 1, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = load %struct.hw*, %struct.hw** %4, align 8
  %14 = load i64, i64* @AUDIO_IO_MCLK, align 8
  %15 = call i32 @hw_write_20kx(%struct.hw* %13, i64 %14, i32 16843009)
  %16 = load %struct.hw*, %struct.hw** %4, align 8
  %17 = load i64, i64* @AUDIO_IO_TX_BLRCLK, align 8
  %18 = call i32 @hw_write_20kx(%struct.hw* %16, i64 %17, i32 16843009)
  %19 = load %struct.hw*, %struct.hw** %4, align 8
  %20 = load i64, i64* @AUDIO_IO_RX_BLRCLK, align 8
  %21 = call i32 @hw_write_20kx(%struct.hw* %19, i64 %20, i32 0)
  br label %80

22:                                               ; preds = %2
  %23 = load %struct.daio_conf*, %struct.daio_conf** %5, align 8
  %24 = getelementptr inbounds %struct.daio_conf, %struct.daio_conf* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 2, %25
  br i1 %26, label %27, label %48

27:                                               ; preds = %22
  %28 = load %struct.hw*, %struct.hw** %4, align 8
  %29 = getelementptr inbounds %struct.hw, %struct.hw* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @CTSB1270, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load %struct.hw*, %struct.hw** %4, align 8
  %35 = load i64, i64* @AUDIO_IO_MCLK, align 8
  %36 = call i32 @hw_write_20kx(%struct.hw* %34, i64 %35, i32 286331153)
  br label %41

37:                                               ; preds = %27
  %38 = load %struct.hw*, %struct.hw** %4, align 8
  %39 = load i64, i64* @AUDIO_IO_MCLK, align 8
  %40 = call i32 @hw_write_20kx(%struct.hw* %38, i64 %39, i32 285282577)
  br label %41

41:                                               ; preds = %37, %33
  %42 = load %struct.hw*, %struct.hw** %4, align 8
  %43 = load i64, i64* @AUDIO_IO_TX_BLRCLK, align 8
  %44 = call i32 @hw_write_20kx(%struct.hw* %42, i64 %43, i32 286331153)
  %45 = load %struct.hw*, %struct.hw** %4, align 8
  %46 = load i64, i64* @AUDIO_IO_RX_BLRCLK, align 8
  %47 = call i32 @hw_write_20kx(%struct.hw* %45, i64 %46, i32 0)
  br label %79

48:                                               ; preds = %22
  %49 = load %struct.daio_conf*, %struct.daio_conf** %5, align 8
  %50 = getelementptr inbounds %struct.daio_conf, %struct.daio_conf* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 4, %51
  br i1 %52, label %53, label %69

53:                                               ; preds = %48
  %54 = load %struct.hw*, %struct.hw** %4, align 8
  %55 = getelementptr inbounds %struct.hw, %struct.hw* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @CTSB1270, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %69

59:                                               ; preds = %53
  %60 = load %struct.hw*, %struct.hw** %4, align 8
  %61 = load i64, i64* @AUDIO_IO_MCLK, align 8
  %62 = call i32 @hw_write_20kx(%struct.hw* %60, i64 %61, i32 553718033)
  %63 = load %struct.hw*, %struct.hw** %4, align 8
  %64 = load i64, i64* @AUDIO_IO_TX_BLRCLK, align 8
  %65 = call i32 @hw_write_20kx(%struct.hw* %63, i64 %64, i32 555819297)
  %66 = load %struct.hw*, %struct.hw** %4, align 8
  %67 = load i64, i64* @AUDIO_IO_RX_BLRCLK, align 8
  %68 = call i32 @hw_write_20kx(%struct.hw* %66, i64 %67, i32 0)
  br label %78

69:                                               ; preds = %53, %48
  %70 = load %struct.hw*, %struct.hw** %4, align 8
  %71 = getelementptr inbounds %struct.hw, %struct.hw* %70, i32 0, i32 1
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @dev_alert(i32 %74, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %162

78:                                               ; preds = %59
  br label %79

79:                                               ; preds = %78, %41
  br label %80

80:                                               ; preds = %79, %12
  store i32 0, i32* %7, align 4
  br label %81

81:                                               ; preds = %158, %80
  %82 = load i32, i32* %7, align 4
  %83 = icmp slt i32 %82, 8
  br i1 %83, label %84, label %161

84:                                               ; preds = %81
  %85 = load i32, i32* %7, align 4
  %86 = icmp sle i32 %85, 3
  br i1 %86, label %87, label %123

87:                                               ; preds = %84
  %88 = load i32, i32* %7, align 4
  %89 = icmp eq i32 %88, 3
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  store i32 16781313, i32* %6, align 4
  br label %92

91:                                               ; preds = %87
  store i32 16777217, i32* %6, align 4
  br label %92

92:                                               ; preds = %91, %90
  %93 = load %struct.hw*, %struct.hw** %4, align 8
  %94 = load i64, i64* @AUDIO_IO_TX_CTL, align 8
  %95 = load i32, i32* %7, align 4
  %96 = mul nsw i32 64, %95
  %97 = sext i32 %96 to i64
  %98 = add nsw i64 %94, %97
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @hw_write_20kx(%struct.hw* %93, i64 %98, i32 %99)
  %101 = load %struct.hw*, %struct.hw** %4, align 8
  %102 = load i64, i64* @AUDIO_IO_RX_CTL, align 8
  %103 = load i32, i32* %7, align 4
  %104 = mul nsw i32 64, %103
  %105 = sext i32 %104 to i64
  %106 = add nsw i64 %102, %105
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @hw_write_20kx(%struct.hw* %101, i64 %106, i32 %107)
  %109 = load %struct.hw*, %struct.hw** %4, align 8
  %110 = load i64, i64* @AUDIO_IO_TX_CSTAT_L, align 8
  %111 = load i32, i32* %7, align 4
  %112 = mul nsw i32 64, %111
  %113 = sext i32 %112 to i64
  %114 = add nsw i64 %110, %113
  %115 = call i32 @hw_write_20kx(%struct.hw* %109, i64 %114, i32 34640388)
  %116 = load %struct.hw*, %struct.hw** %4, align 8
  %117 = load i64, i64* @AUDIO_IO_TX_CSTAT_H, align 8
  %118 = load i32, i32* %7, align 4
  %119 = mul nsw i32 64, %118
  %120 = sext i32 %119 to i64
  %121 = add nsw i64 %117, %120
  %122 = call i32 @hw_write_20kx(%struct.hw* %116, i64 %121, i32 11)
  br label %157

123:                                              ; preds = %84
  store i32 17, i32* %6, align 4
  %124 = load %struct.hw*, %struct.hw** %4, align 8
  %125 = load i64, i64* @AUDIO_IO_RX_CTL, align 8
  %126 = load i32, i32* %7, align 4
  %127 = mul nsw i32 64, %126
  %128 = sext i32 %127 to i64
  %129 = add nsw i64 %125, %128
  %130 = load i32, i32* %6, align 4
  %131 = call i32 @hw_write_20kx(%struct.hw* %124, i64 %129, i32 %130)
  %132 = load %struct.daio_conf*, %struct.daio_conf** %5, align 8
  %133 = getelementptr inbounds %struct.daio_conf, %struct.daio_conf* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = icmp eq i32 2, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %123
  %137 = load i32, i32* %6, align 4
  %138 = or i32 %137, 4096
  store i32 %138, i32* %6, align 4
  br label %148

139:                                              ; preds = %123
  %140 = load %struct.daio_conf*, %struct.daio_conf** %5, align 8
  %141 = getelementptr inbounds %struct.daio_conf, %struct.daio_conf* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = icmp eq i32 4, %142
  br i1 %143, label %144, label %147

144:                                              ; preds = %139
  %145 = load i32, i32* %6, align 4
  %146 = or i32 %145, 8192
  store i32 %146, i32* %6, align 4
  br label %147

147:                                              ; preds = %144, %139
  br label %148

148:                                              ; preds = %147, %136
  %149 = load %struct.hw*, %struct.hw** %4, align 8
  %150 = load i64, i64* @AUDIO_IO_TX_CTL, align 8
  %151 = load i32, i32* %7, align 4
  %152 = mul nsw i32 64, %151
  %153 = sext i32 %152 to i64
  %154 = add nsw i64 %150, %153
  %155 = load i32, i32* %6, align 4
  %156 = call i32 @hw_write_20kx(%struct.hw* %149, i64 %154, i32 %155)
  br label %157

157:                                              ; preds = %148, %92
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %7, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %7, align 4
  br label %81

161:                                              ; preds = %81
  store i32 0, i32* %3, align 4
  br label %162

162:                                              ; preds = %161, %69
  %163 = load i32, i32* %3, align 4
  ret i32 %163
}

declare dso_local i32 @hw_write_20kx(%struct.hw*, i64, i32) #1

declare dso_local i32 @dev_alert(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
