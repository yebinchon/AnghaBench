; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_bxt_da7219_max98357a.c_broxton_audio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_bxt_da7219_max98357a.c_broxton_audio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i8*, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.snd_soc_acpi_mach* }
%struct.snd_soc_acpi_mach = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i8* }
%struct.TYPE_17__ = type { i8*, %struct.TYPE_13__*, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { i8* }
%struct.TYPE_12__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_16__ }
%struct.bxt_card_private = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@broxton_audio_card = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@.str = private unnamed_addr constant [13 x i8] c"glkda7219max\00", align 1
@broxton_dais = common dso_local global %struct.TYPE_17__* null, align 8
@BXT_MAXIM_CODEC_DAI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"SSP1-Codec\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"SSP1 Pin\00", align 1
@BXT_DIALOG_CODEC_DAI = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"SSP2-Codec\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"SSP2 Pin\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"cmlda7219max\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"SSP0-Codec\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"SSP0 Pin\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @broxton_audio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @broxton_audio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.bxt_card_private*, align 8
  %5 = alloca %struct.snd_soc_acpi_mach*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.bxt_card_private* @devm_kzalloc(%struct.TYPE_16__* %11, i32 4, i32 %12)
  store %struct.bxt_card_private* %13, %struct.bxt_card_private** %4, align 8
  %14 = load %struct.bxt_card_private*, %struct.bxt_card_private** %4, align 8
  %15 = icmp ne %struct.bxt_card_private* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %176

19:                                               ; preds = %1
  %20 = load %struct.bxt_card_private*, %struct.bxt_card_private** %4, align 8
  %21 = getelementptr inbounds %struct.bxt_card_private, %struct.bxt_card_private* %20, i32 0, i32 0
  %22 = call i32 @INIT_LIST_HEAD(i32* %21)
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  store %struct.TYPE_16__* %24, %struct.TYPE_16__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @broxton_audio_card, i32 0, i32 1), align 8
  %25 = load %struct.bxt_card_private*, %struct.bxt_card_private** %4, align 8
  %26 = call i32 @snd_soc_card_set_drvdata(%struct.TYPE_15__* @broxton_audio_card, %struct.bxt_card_private* %25)
  %27 = call i64 (...) @soc_intel_is_glk()
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %91

29:                                               ; preds = %19
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @broxton_audio_card, i32 0, i32 0), align 8
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %87, %29
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** @broxton_dais, align 8
  %33 = call i32 @ARRAY_SIZE(%struct.TYPE_17__* %32)
  %34 = icmp ult i32 %31, %33
  br i1 %34, label %35, label %90

35:                                               ; preds = %30
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** @broxton_dais, align 8
  %37 = load i32, i32* %8, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @BXT_MAXIM_CODEC_DAI, align 4
  %45 = call i32 @strcmp(i32 %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %60, label %47

47:                                               ; preds = %35
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** @broxton_dais, align 8
  %49 = load i32, i32* %8, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %52, align 8
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** @broxton_dais, align 8
  %54 = load i32, i32* %8, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %59, align 8
  br label %86

60:                                               ; preds = %35
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** @broxton_dais, align 8
  %62 = load i32, i32* %8, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @BXT_DIALOG_CODEC_DAI, align 4
  %70 = call i32 @strcmp(i32 %68, i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %85, label %72

72:                                               ; preds = %60
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** @broxton_dais, align 8
  %74 = load i32, i32* %8, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8** %77, align 8
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** @broxton_dais, align 8
  %79 = load i32, i32* %8, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8** %84, align 8
  br label %85

85:                                               ; preds = %72, %60
  br label %86

86:                                               ; preds = %85, %47
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %8, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %8, align 4
  br label %30

90:                                               ; preds = %30
  br label %157

91:                                               ; preds = %19
  %92 = call i64 (...) @soc_intel_is_cml()
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %156

94:                                               ; preds = %91
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @broxton_audio_card, i32 0, i32 0), align 8
  store i32 0, i32* %9, align 4
  br label %95

95:                                               ; preds = %152, %94
  %96 = load i32, i32* %9, align 4
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** @broxton_dais, align 8
  %98 = call i32 @ARRAY_SIZE(%struct.TYPE_17__* %97)
  %99 = icmp ult i32 %96, %98
  br i1 %99, label %100, label %155

100:                                              ; preds = %95
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** @broxton_dais, align 8
  %102 = load i32, i32* %9, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 2
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @BXT_MAXIM_CODEC_DAI, align 4
  %110 = call i32 @strcmp(i32 %108, i32 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %125, label %112

112:                                              ; preds = %100
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** @broxton_dais, align 8
  %114 = load i32, i32* %9, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %117, align 8
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** @broxton_dais, align 8
  %119 = load i32, i32* %9, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %124, align 8
  br label %151

125:                                              ; preds = %100
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** @broxton_dais, align 8
  %127 = load i32, i32* %9, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 2
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @BXT_DIALOG_CODEC_DAI, align 4
  %135 = call i32 @strcmp(i32 %133, i32 %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %150, label %137

137:                                              ; preds = %125
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** @broxton_dais, align 8
  %139 = load i32, i32* %9, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8** %142, align 8
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** @broxton_dais, align 8
  %144 = load i32, i32* %9, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8** %149, align 8
  br label %150

150:                                              ; preds = %137, %125
  br label %151

151:                                              ; preds = %150, %112
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %9, align 4
  %154 = add i32 %153, 1
  store i32 %154, i32* %9, align 4
  br label %95

155:                                              ; preds = %95
  br label %156

156:                                              ; preds = %155, %91
  br label %157

157:                                              ; preds = %156, %90
  %158 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %159 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 0
  %161 = load %struct.snd_soc_acpi_mach*, %struct.snd_soc_acpi_mach** %160, align 8
  store %struct.snd_soc_acpi_mach* %161, %struct.snd_soc_acpi_mach** %5, align 8
  %162 = load %struct.snd_soc_acpi_mach*, %struct.snd_soc_acpi_mach** %5, align 8
  %163 = getelementptr inbounds %struct.snd_soc_acpi_mach, %struct.snd_soc_acpi_mach* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 0
  %165 = load i8*, i8** %164, align 8
  store i8* %165, i8** %6, align 8
  %166 = load i8*, i8** %6, align 8
  %167 = call i32 @snd_soc_fixup_dai_links_platform_name(%struct.TYPE_15__* @broxton_audio_card, i8* %166)
  store i32 %167, i32* %7, align 4
  %168 = load i32, i32* %7, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %157
  %171 = load i32, i32* %7, align 4
  store i32 %171, i32* %2, align 4
  br label %176

172:                                              ; preds = %157
  %173 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %174 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %173, i32 0, i32 0
  %175 = call i32 @devm_snd_soc_register_card(%struct.TYPE_16__* %174, %struct.TYPE_15__* @broxton_audio_card)
  store i32 %175, i32* %2, align 4
  br label %176

176:                                              ; preds = %172, %170, %16
  %177 = load i32, i32* %2, align 4
  ret i32 %177
}

declare dso_local %struct.bxt_card_private* @devm_kzalloc(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @snd_soc_card_set_drvdata(%struct.TYPE_15__*, %struct.bxt_card_private*) #1

declare dso_local i64 @soc_intel_is_glk(...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_17__*) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i64 @soc_intel_is_cml(...) #1

declare dso_local i32 @snd_soc_fixup_dai_links_platform_name(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @devm_snd_soc_register_card(%struct.TYPE_16__*, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
