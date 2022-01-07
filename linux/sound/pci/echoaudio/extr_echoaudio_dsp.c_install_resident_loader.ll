; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_echoaudio_dsp.c_install_resident_loader.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_echoaudio_dsp.c_install_resident_loader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echoaudio = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.firmware = type { i64 }

@DEVICE_ID_56361 = common dso_local global i64 0, align 8
@CHI32_STATUS_REG = common dso_local global i32 0, align 4
@CHI32_STATUS_REG_HF5 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Resident loader already installed; status is 0x%x\0A\00", align 1
@FW_361_LOADER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Firmware not found !\0A\00", align 1
@CHI32_CONTROL_REG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"install_resident_loader: Failed to write word count!\0A\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"install_resident_loader: Failed to write DSP address!\0A\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"install_resident_loader: Failed to write DSP code\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Resident loader failed to set HF5\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"Resident loader successfully installed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.echoaudio*)* @install_resident_loader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @install_resident_loader(%struct.echoaudio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.echoaudio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.firmware*, align 8
  %11 = alloca i32, align 4
  store %struct.echoaudio* %0, %struct.echoaudio** %3, align 8
  %12 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %13 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @DEVICE_ID_56361, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %189

18:                                               ; preds = %1
  %19 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %20 = load i32, i32* @CHI32_STATUS_REG, align 4
  %21 = call i32 @get_dsp_register(%struct.echoaudio* %19, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @CHI32_STATUS_REG_HF5, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %18
  %27 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %28 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 (i32, i8*, ...) @dev_dbg(i32 %31, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %32)
  store i32 0, i32* %2, align 4
  br label %189

34:                                               ; preds = %18
  %35 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %36 = load i32, i32* @FW_361_LOADER, align 4
  %37 = call i32 @get_firmware(%struct.firmware** %10, %struct.echoaudio* %35, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %34
  %41 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %42 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dev_warn(i32 %45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %2, align 4
  br label %189

48:                                               ; preds = %34
  %49 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %50 = load i32, i32* @CHI32_CONTROL_REG, align 4
  %51 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %52 = load i32, i32* @CHI32_CONTROL_REG, align 4
  %53 = call i32 @get_dsp_register(%struct.echoaudio* %51, i32 %52)
  %54 = or i32 %53, 2304
  %55 = call i32 @set_dsp_register(%struct.echoaudio* %49, i32 %50, i32 %54)
  %56 = load %struct.firmware*, %struct.firmware** %10, align 8
  %57 = getelementptr inbounds %struct.firmware, %struct.firmware* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to i32*
  store i32* %59, i32** %8, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 3
  store i32 %64, i32* %5, align 4
  %65 = load i32*, i32** %8, align 8
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %5, align 4
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %6, align 4
  %71 = load i32*, i32** %8, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = shl i32 %75, 16
  %77 = load i32*, i32** %8, align 8
  %78 = load i32, i32* %5, align 4
  %79 = add nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %77, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %76, %82
  store i32 %83, i32* %4, align 4
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %84, 2
  store i32 %85, i32* %5, align 4
  %86 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %87 = load i32, i32* %6, align 4
  %88 = call i64 @write_dsp(%struct.echoaudio* %86, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %48
  %91 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %92 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %91, i32 0, i32 1
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @dev_err(i32 %95, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  br label %183

97:                                               ; preds = %48
  %98 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %99 = load i32, i32* %4, align 4
  %100 = call i64 @write_dsp(%struct.echoaudio* %98, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %97
  %103 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %104 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %103, i32 0, i32 1
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @dev_err(i32 %107, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  br label %183

109:                                              ; preds = %97
  store i32 0, i32* %7, align 4
  br label %110

110:                                              ; preds = %142, %109
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* %6, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %145

114:                                              ; preds = %110
  %115 = load i32*, i32** %8, align 8
  %116 = load i32, i32* %5, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = shl i32 %119, 16
  %121 = load i32*, i32** %8, align 8
  %122 = load i32, i32* %5, align 4
  %123 = add nsw i32 %122, 1
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %121, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %120, %126
  store i32 %127, i32* %11, align 4
  %128 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %129 = load i32, i32* %11, align 4
  %130 = call i64 @write_dsp(%struct.echoaudio* %128, i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %114
  %133 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %134 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %133, i32 0, i32 1
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @dev_err(i32 %137, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0))
  br label %183

139:                                              ; preds = %114
  %140 = load i32, i32* %5, align 4
  %141 = add nsw i32 %140, 2
  store i32 %141, i32* %5, align 4
  br label %142

142:                                              ; preds = %139
  %143 = load i32, i32* %7, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %7, align 4
  br label %110

145:                                              ; preds = %110
  store i32 0, i32* %7, align 4
  br label %146

146:                                              ; preds = %160, %145
  %147 = load i32, i32* %7, align 4
  %148 = icmp slt i32 %147, 200
  br i1 %148, label %149, label %163

149:                                              ; preds = %146
  %150 = call i32 @udelay(i32 50)
  %151 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %152 = load i32, i32* @CHI32_STATUS_REG, align 4
  %153 = call i32 @get_dsp_register(%struct.echoaudio* %151, i32 %152)
  store i32 %153, i32* %9, align 4
  %154 = load i32, i32* %9, align 4
  %155 = load i32, i32* @CHI32_STATUS_REG_HF5, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %149
  br label %163

159:                                              ; preds = %149
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %7, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %7, align 4
  br label %146

163:                                              ; preds = %158, %146
  %164 = load i32, i32* %7, align 4
  %165 = icmp eq i32 %164, 200
  br i1 %165, label %166, label %173

166:                                              ; preds = %163
  %167 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %168 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %167, i32 0, i32 1
  %169 = load %struct.TYPE_2__*, %struct.TYPE_2__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @dev_err(i32 %171, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  br label %183

173:                                              ; preds = %163
  %174 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %175 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %174, i32 0, i32 1
  %176 = load %struct.TYPE_2__*, %struct.TYPE_2__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i32 (i32, i8*, ...) @dev_dbg(i32 %178, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  %180 = load %struct.firmware*, %struct.firmware** %10, align 8
  %181 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %182 = call i32 @free_firmware(%struct.firmware* %180, %struct.echoaudio* %181)
  store i32 0, i32* %2, align 4
  br label %189

183:                                              ; preds = %166, %132, %102, %90
  %184 = load %struct.firmware*, %struct.firmware** %10, align 8
  %185 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %186 = call i32 @free_firmware(%struct.firmware* %184, %struct.echoaudio* %185)
  %187 = load i32, i32* @EIO, align 4
  %188 = sub nsw i32 0, %187
  store i32 %188, i32* %2, align 4
  br label %189

189:                                              ; preds = %183, %173, %40, %26, %17
  %190 = load i32, i32* %2, align 4
  ret i32 %190
}

declare dso_local i32 @get_dsp_register(%struct.echoaudio*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @get_firmware(%struct.firmware**, %struct.echoaudio*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @set_dsp_register(%struct.echoaudio*, i32, i32) #1

declare dso_local i64 @write_dsp(%struct.echoaudio*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @free_firmware(%struct.firmware*, %struct.echoaudio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
