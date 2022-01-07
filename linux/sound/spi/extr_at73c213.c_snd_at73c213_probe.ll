; ModuleID = '/home/carl/AnghaBench/linux/sound/spi/extr_at73c213.c_snd_at73c213_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/spi/extr_at73c213.c_snd_at73c213_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.at73c213_board_info* }
%struct.at73c213_board_info = type { i32, i8*, i32 }
%struct.snd_card = type { i8*, i8*, i32, %struct.snd_at73c213* }
%struct.snd_at73c213 = type { i32, i32, %struct.at73c213_board_info*, %struct.spi_device* }

@.str = private unnamed_addr constant [18 x i8] c"no platform_data\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"no DAC clk\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"at73c213_%d\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"could not get ssc%d device\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"at73c213\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"%s on irq %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @snd_at73c213_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_at73c213_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.snd_card*, align 8
  %5 = alloca %struct.snd_at73c213*, align 8
  %6 = alloca %struct.at73c213_board_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [16 x i8], align 16
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %9 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %10 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.at73c213_board_info*, %struct.at73c213_board_info** %11, align 8
  store %struct.at73c213_board_info* %12, %struct.at73c213_board_info** %6, align 8
  %13 = load %struct.at73c213_board_info*, %struct.at73c213_board_info** %6, align 8
  %14 = icmp ne %struct.at73c213_board_info* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %17 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %16, i32 0, i32 0
  %18 = call i32 (%struct.TYPE_4__*, i8*, ...) @dev_dbg(%struct.TYPE_4__* %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ENXIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %141

21:                                               ; preds = %1
  %22 = load %struct.at73c213_board_info*, %struct.at73c213_board_info** %6, align 8
  %23 = getelementptr inbounds %struct.at73c213_board_info, %struct.at73c213_board_info* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %21
  %27 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %28 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %27, i32 0, i32 0
  %29 = call i32 (%struct.TYPE_4__*, i8*, ...) @dev_dbg(%struct.TYPE_4__* %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @ENXIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %141

32:                                               ; preds = %21
  %33 = load %struct.at73c213_board_info*, %struct.at73c213_board_info** %6, align 8
  %34 = getelementptr inbounds %struct.at73c213_board_info, %struct.at73c213_board_info* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @IS_ERR(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %32
  %39 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %40 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %39, i32 0, i32 0
  %41 = call i32 (%struct.TYPE_4__*, i8*, ...) @dev_dbg(%struct.TYPE_4__* %40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %42 = load %struct.at73c213_board_info*, %struct.at73c213_board_info** %6, align 8
  %43 = getelementptr inbounds %struct.at73c213_board_info, %struct.at73c213_board_info* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @PTR_ERR(i32 %44)
  store i32 %45, i32* %2, align 4
  br label %141

46:                                               ; preds = %32
  %47 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %48 = load %struct.at73c213_board_info*, %struct.at73c213_board_info** %6, align 8
  %49 = getelementptr inbounds %struct.at73c213_board_info, %struct.at73c213_board_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @snprintf(i8* %47, i32 16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  %52 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %53 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %52, i32 0, i32 0
  %54 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %55 = load i32, i32* @THIS_MODULE, align 4
  %56 = call i32 @snd_card_new(%struct.TYPE_4__* %53, i32 -1, i8* %54, i32 %55, i32 24, %struct.snd_card** %4)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %46
  br label %139

60:                                               ; preds = %46
  %61 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %62 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %61, i32 0, i32 3
  %63 = load %struct.snd_at73c213*, %struct.snd_at73c213** %62, align 8
  store %struct.snd_at73c213* %63, %struct.snd_at73c213** %5, align 8
  %64 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %65 = load %struct.snd_at73c213*, %struct.snd_at73c213** %5, align 8
  %66 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %65, i32 0, i32 3
  store %struct.spi_device* %64, %struct.spi_device** %66, align 8
  %67 = load %struct.at73c213_board_info*, %struct.at73c213_board_info** %6, align 8
  %68 = load %struct.snd_at73c213*, %struct.snd_at73c213** %5, align 8
  %69 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %68, i32 0, i32 2
  store %struct.at73c213_board_info* %67, %struct.at73c213_board_info** %69, align 8
  %70 = load %struct.at73c213_board_info*, %struct.at73c213_board_info** %6, align 8
  %71 = getelementptr inbounds %struct.at73c213_board_info, %struct.at73c213_board_info* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @ssc_request(i32 %72)
  %74 = load %struct.snd_at73c213*, %struct.snd_at73c213** %5, align 8
  %75 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load %struct.snd_at73c213*, %struct.snd_at73c213** %5, align 8
  %77 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @IS_ERR(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %92

81:                                               ; preds = %60
  %82 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %83 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %82, i32 0, i32 0
  %84 = load %struct.at73c213_board_info*, %struct.at73c213_board_info** %6, align 8
  %85 = getelementptr inbounds %struct.at73c213_board_info, %struct.at73c213_board_info* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 (%struct.TYPE_4__*, i8*, ...) @dev_dbg(%struct.TYPE_4__* %83, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %86)
  %88 = load %struct.snd_at73c213*, %struct.snd_at73c213** %5, align 8
  %89 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @PTR_ERR(i32 %90)
  store i32 %91, i32* %7, align 4
  br label %136

92:                                               ; preds = %60
  %93 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %94 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %95 = call i32 @snd_at73c213_dev_init(%struct.snd_card* %93, %struct.spi_device* %94)
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  br label %131

99:                                               ; preds = %92
  %100 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %101 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 @strcpy(i8* %102, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %104 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %105 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %104, i32 0, i32 1
  %106 = load i8*, i8** %105, align 8
  %107 = load %struct.at73c213_board_info*, %struct.at73c213_board_info** %6, align 8
  %108 = getelementptr inbounds %struct.at73c213_board_info, %struct.at73c213_board_info* %107, i32 0, i32 1
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 @strcpy(i8* %106, i8* %109)
  %111 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %112 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %115 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %114, i32 0, i32 1
  %116 = load i8*, i8** %115, align 8
  %117 = load %struct.snd_at73c213*, %struct.snd_at73c213** %5, align 8
  %118 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @sprintf(i32 %113, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* %116, i32 %119)
  %121 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %122 = call i32 @snd_card_register(%struct.snd_card* %121)
  store i32 %122, i32* %7, align 4
  %123 = load i32, i32* %7, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %99
  br label %131

126:                                              ; preds = %99
  %127 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %128 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %127, i32 0, i32 0
  %129 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %130 = call i32 @dev_set_drvdata(%struct.TYPE_4__* %128, %struct.snd_card* %129)
  br label %139

131:                                              ; preds = %125, %98
  %132 = load %struct.snd_at73c213*, %struct.snd_at73c213** %5, align 8
  %133 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @ssc_free(i32 %134)
  br label %136

136:                                              ; preds = %131, %81
  %137 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %138 = call i32 @snd_card_free(%struct.snd_card* %137)
  br label %139

139:                                              ; preds = %136, %126, %59
  %140 = load i32, i32* %7, align 4
  store i32 %140, i32* %2, align 4
  br label %141

141:                                              ; preds = %139, %38, %26, %15
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local i32 @dev_dbg(%struct.TYPE_4__*, i8*, ...) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @snd_card_new(%struct.TYPE_4__*, i32, i8*, i32, i32, %struct.snd_card**) #1

declare dso_local i32 @ssc_request(i32) #1

declare dso_local i32 @snd_at73c213_dev_init(%struct.snd_card*, %struct.spi_device*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @sprintf(i32, i8*, i8*, i32) #1

declare dso_local i32 @snd_card_register(%struct.snd_card*) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_4__*, %struct.snd_card*) #1

declare dso_local i32 @ssc_free(i32) #1

declare dso_local i32 @snd_card_free(%struct.snd_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
