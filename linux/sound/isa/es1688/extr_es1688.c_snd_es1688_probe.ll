; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/es1688/extr_es1688.c_snd_es1688_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/es1688/extr_es1688.c_snd_es1688_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { i32, i32, i32, i32, %struct.snd_es1688* }
%struct.snd_es1688 = type { i64, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i8* }
%struct.snd_opl3 = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"ES1688\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"%s at 0x%lx, irq %i, dma %i\00", align 1
@fm_port = common dso_local global i64* null, align 8
@SNDRV_AUTO_PORT = common dso_local global i64 0, align 8
@port = common dso_local global i64* null, align 8
@OPL3_HW_OPL3 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"opl3 not detected at 0x%lx\0A\00", align 1
@mpu_irq = common dso_local global i64* null, align 8
@SNDRV_AUTO_IRQ = common dso_local global i64 0, align 8
@MPU401_HW_ES1688 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_card*, i32)* @snd_es1688_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_es1688_probe(%struct.snd_card* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_card*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_es1688*, align 8
  %7 = alloca %struct.snd_opl3*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_card* %0, %struct.snd_card** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %10 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %9, i32 0, i32 4
  %11 = load %struct.snd_es1688*, %struct.snd_es1688** %10, align 8
  store %struct.snd_es1688* %11, %struct.snd_es1688** %6, align 8
  %12 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %13 = load %struct.snd_es1688*, %struct.snd_es1688** %6, align 8
  %14 = call i32 @snd_es1688_pcm(%struct.snd_card* %12, %struct.snd_es1688* %13, i32 0)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %3, align 4
  br label %158

19:                                               ; preds = %2
  %20 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %21 = load %struct.snd_es1688*, %struct.snd_es1688** %6, align 8
  %22 = call i32 @snd_es1688_mixer(%struct.snd_card* %20, %struct.snd_es1688* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %3, align 4
  br label %158

27:                                               ; preds = %19
  %28 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %29 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @strlcpy(i32 %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 4)
  %32 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %33 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.snd_es1688*, %struct.snd_es1688** %6, align 8
  %36 = getelementptr inbounds %struct.snd_es1688, %struct.snd_es1688* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @strlcpy(i32 %34, i8* %39, i32 4)
  %41 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %42 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.snd_es1688*, %struct.snd_es1688** %6, align 8
  %45 = getelementptr inbounds %struct.snd_es1688, %struct.snd_es1688* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = load %struct.snd_es1688*, %struct.snd_es1688** %6, align 8
  %50 = getelementptr inbounds %struct.snd_es1688, %struct.snd_es1688* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.snd_es1688*, %struct.snd_es1688** %6, align 8
  %53 = getelementptr inbounds %struct.snd_es1688, %struct.snd_es1688* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.snd_es1688*, %struct.snd_es1688** %6, align 8
  %56 = getelementptr inbounds %struct.snd_es1688, %struct.snd_es1688* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @snprintf(i32 %43, i32 4, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %48, i32 %51, i32 %54, i32 %57)
  %59 = load i64*, i64** @fm_port, align 8
  %60 = load i32, i32* %5, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @SNDRV_AUTO_PORT, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %76

66:                                               ; preds = %27
  %67 = load i64*, i64** @port, align 8
  %68 = load i32, i32* %5, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = load i64*, i64** @fm_port, align 8
  %73 = load i32, i32* %5, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %72, i64 %74
  store i64 %71, i64* %75, align 8
  br label %76

76:                                               ; preds = %66, %27
  %77 = load i64*, i64** @fm_port, align 8
  %78 = load i32, i32* %5, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %77, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = icmp sgt i64 %81, 0
  br i1 %82, label %83, label %118

83:                                               ; preds = %76
  %84 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %85 = load i64*, i64** @fm_port, align 8
  %86 = load i32, i32* %5, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %85, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = load i64*, i64** @fm_port, align 8
  %91 = load i32, i32* %5, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %90, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %94, 2
  %96 = load i32, i32* @OPL3_HW_OPL3, align 4
  %97 = call i64 @snd_opl3_create(%struct.snd_card* %84, i64 %89, i64 %95, i32 %96, i32 0, %struct.snd_opl3** %7)
  %98 = icmp slt i64 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %83
  %100 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %101 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i64*, i64** @fm_port, align 8
  %104 = load i32, i32* %5, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds i64, i64* %103, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @dev_warn(i32 %102, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 %107)
  br label %117

109:                                              ; preds = %83
  %110 = load %struct.snd_opl3*, %struct.snd_opl3** %7, align 8
  %111 = call i32 @snd_opl3_hwdep_new(%struct.snd_opl3* %110, i32 0, i32 1, i32* null)
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %8, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %109
  %115 = load i32, i32* %8, align 4
  store i32 %115, i32* %3, align 4
  br label %158

116:                                              ; preds = %109
  br label %117

117:                                              ; preds = %116, %99
  br label %118

118:                                              ; preds = %117, %76
  %119 = load i64*, i64** @mpu_irq, align 8
  %120 = load i32, i32* %5, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds i64, i64* %119, i64 %121
  %123 = load i64, i64* %122, align 8
  %124 = icmp sge i64 %123, 0
  br i1 %124, label %125, label %155

125:                                              ; preds = %118
  %126 = load i64*, i64** @mpu_irq, align 8
  %127 = load i32, i32* %5, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds i64, i64* %126, i64 %128
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @SNDRV_AUTO_IRQ, align 8
  %132 = icmp ne i64 %130, %131
  br i1 %132, label %133, label %155

133:                                              ; preds = %125
  %134 = load %struct.snd_es1688*, %struct.snd_es1688** %6, align 8
  %135 = getelementptr inbounds %struct.snd_es1688, %struct.snd_es1688* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp sgt i64 %136, 0
  br i1 %137, label %138, label %155

138:                                              ; preds = %133
  %139 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %140 = load i32, i32* @MPU401_HW_ES1688, align 4
  %141 = load %struct.snd_es1688*, %struct.snd_es1688** %6, align 8
  %142 = getelementptr inbounds %struct.snd_es1688, %struct.snd_es1688* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64*, i64** @mpu_irq, align 8
  %145 = load i32, i32* %5, align 4
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds i64, i64* %144, i64 %146
  %148 = load i64, i64* %147, align 8
  %149 = call i32 @snd_mpu401_uart_new(%struct.snd_card* %139, i32 0, i32 %140, i64 %143, i32 0, i64 %148, i32* null)
  store i32 %149, i32* %8, align 4
  %150 = load i32, i32* %8, align 4
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %138
  %153 = load i32, i32* %8, align 4
  store i32 %153, i32* %3, align 4
  br label %158

154:                                              ; preds = %138
  br label %155

155:                                              ; preds = %154, %133, %125, %118
  %156 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %157 = call i32 @snd_card_register(%struct.snd_card* %156)
  store i32 %157, i32* %3, align 4
  br label %158

158:                                              ; preds = %155, %152, %114, %25, %17
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

declare dso_local i32 @snd_es1688_pcm(%struct.snd_card*, %struct.snd_es1688*, i32) #1

declare dso_local i32 @snd_es1688_mixer(%struct.snd_card*, %struct.snd_es1688*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32, i32, i32) #1

declare dso_local i64 @snd_opl3_create(%struct.snd_card*, i64, i64, i32, i32, %struct.snd_opl3**) #1

declare dso_local i32 @dev_warn(i32, i8*, i64) #1

declare dso_local i32 @snd_opl3_hwdep_new(%struct.snd_opl3*, i32, i32, i32*) #1

declare dso_local i32 @snd_mpu401_uart_new(%struct.snd_card*, i32, i32, i64, i32, i64, i32*) #1

declare dso_local i32 @snd_card_register(%struct.snd_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
