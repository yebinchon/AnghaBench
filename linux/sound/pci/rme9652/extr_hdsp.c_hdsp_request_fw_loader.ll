; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdsp.c_hdsp_request_fw_loader.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdsp.c_hdsp_request_fw_loader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdsp = type { i32, i32, i32, %struct.TYPE_5__*, %struct.firmware*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.firmware = type { i64 }
%struct.TYPE_4__ = type { i32 }

@H9652 = common dso_local global i32 0, align 4
@H9632 = common dso_local global i32 0, align 4
@Undefined = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"rpm_firmware.bin\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"multiface_firmware.bin\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"multiface_firmware_rev11.bin\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"digiface_firmware.bin\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"digiface_firmware_rev11.bin\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"invalid io_type %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"cannot load firmware %s\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@HDSP_FIRMWARE_SIZE = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [42 x i8] c"too short firmware size %d (expected %d)\0A\00", align 1
@HDSP_FirmwareCached = common dso_local global i32 0, align 4
@HDSP_InitializationComplete = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [29 x i8] c"error creating hwdep device\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"error creating alsa devices\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdsp*)* @hdsp_request_fw_loader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdsp_request_fw_loader(%struct.hdsp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hdsp*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca i32, align 4
  store %struct.hdsp* %0, %struct.hdsp** %3, align 8
  %7 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %8 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @H9652, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %14 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @H9632, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12, %1
  store i32 0, i32* %2, align 4
  br label %181

19:                                               ; preds = %12
  %20 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %21 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @Undefined, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %45

25:                                               ; preds = %19
  %26 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %27 = call i32 @hdsp_get_iobox_version(%struct.hdsp* %26)
  store i32 %27, i32* %6, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %2, align 4
  br label %181

31:                                               ; preds = %25
  %32 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %33 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @H9652, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %43, label %37

37:                                               ; preds = %31
  %38 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %39 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @H9632, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37, %31
  store i32 0, i32* %2, align 4
  br label %181

44:                                               ; preds = %37
  br label %45

45:                                               ; preds = %44, %19
  %46 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %47 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  switch i32 %48, label %66 [
    i32 128, label %49
    i32 129, label %50
    i32 130, label %58
  ]

49:                                               ; preds = %45
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %78

50:                                               ; preds = %45
  %51 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %52 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 10
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %57

56:                                               ; preds = %50
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  br label %57

57:                                               ; preds = %56, %55
  br label %78

58:                                               ; preds = %45
  %59 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %60 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 10
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8** %4, align 8
  br label %65

64:                                               ; preds = %58
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8** %4, align 8
  br label %65

65:                                               ; preds = %64, %63
  br label %78

66:                                               ; preds = %45
  %67 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %68 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %67, i32 0, i32 3
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %73 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 (i32, i8*, ...) @dev_err(i32 %71, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %2, align 4
  br label %181

78:                                               ; preds = %65, %57, %49
  %79 = load i8*, i8** %4, align 8
  %80 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %81 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %80, i32 0, i32 5
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = call i64 @request_firmware(%struct.firmware** %5, i8* %79, i32* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %78
  %87 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %88 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %87, i32 0, i32 3
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i8*, i8** %4, align 8
  %93 = call i32 (i32, i8*, ...) @dev_err(i32 %91, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i8* %92)
  %94 = load i32, i32* @ENOENT, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %2, align 4
  br label %181

96:                                               ; preds = %78
  %97 = load %struct.firmware*, %struct.firmware** %5, align 8
  %98 = getelementptr inbounds %struct.firmware, %struct.firmware* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @HDSP_FIRMWARE_SIZE, align 8
  %101 = icmp slt i64 %99, %100
  br i1 %101, label %102, label %118

102:                                              ; preds = %96
  %103 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %104 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %103, i32 0, i32 3
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.firmware*, %struct.firmware** %5, align 8
  %109 = getelementptr inbounds %struct.firmware, %struct.firmware* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = trunc i64 %110 to i32
  %112 = load i64, i64* @HDSP_FIRMWARE_SIZE, align 8
  %113 = call i32 (i32, i8*, ...) @dev_err(i32 %107, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i32 %111, i64 %112)
  %114 = load %struct.firmware*, %struct.firmware** %5, align 8
  %115 = call i32 @release_firmware(%struct.firmware* %114)
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %2, align 4
  br label %181

118:                                              ; preds = %96
  %119 = load %struct.firmware*, %struct.firmware** %5, align 8
  %120 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %121 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %120, i32 0, i32 4
  store %struct.firmware* %119, %struct.firmware** %121, align 8
  %122 = load i32, i32* @HDSP_FirmwareCached, align 4
  %123 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %124 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 8
  %127 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %128 = call i32 @snd_hdsp_load_firmware_from_cache(%struct.hdsp* %127)
  store i32 %128, i32* %6, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %118
  %131 = load i32, i32* %6, align 4
  store i32 %131, i32* %2, align 4
  br label %181

132:                                              ; preds = %118
  %133 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %134 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @HDSP_InitializationComplete, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %180, label %139

139:                                              ; preds = %132
  %140 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %141 = call i32 @snd_hdsp_enable_io(%struct.hdsp* %140)
  store i32 %141, i32* %6, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %139
  %144 = load i32, i32* %6, align 4
  store i32 %144, i32* %2, align 4
  br label %181

145:                                              ; preds = %139
  %146 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %147 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %146, i32 0, i32 3
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %147, align 8
  %149 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %150 = call i32 @snd_hdsp_create_hwdep(%struct.TYPE_5__* %148, %struct.hdsp* %149)
  store i32 %150, i32* %6, align 4
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %160

152:                                              ; preds = %145
  %153 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %154 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %153, i32 0, i32 3
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 (i32, i8*, ...) @dev_err(i32 %157, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  %159 = load i32, i32* %6, align 4
  store i32 %159, i32* %2, align 4
  br label %181

160:                                              ; preds = %145
  %161 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %162 = call i32 @snd_hdsp_initialize_channels(%struct.hdsp* %161)
  %163 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %164 = call i32 @snd_hdsp_initialize_midi_flush(%struct.hdsp* %163)
  %165 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %166 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %165, i32 0, i32 3
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %166, align 8
  %168 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %169 = call i32 @snd_hdsp_create_alsa_devices(%struct.TYPE_5__* %167, %struct.hdsp* %168)
  store i32 %169, i32* %6, align 4
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %179

171:                                              ; preds = %160
  %172 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %173 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %172, i32 0, i32 3
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = call i32 (i32, i8*, ...) @dev_err(i32 %176, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  %178 = load i32, i32* %6, align 4
  store i32 %178, i32* %2, align 4
  br label %181

179:                                              ; preds = %160
  br label %180

180:                                              ; preds = %179, %132
  store i32 0, i32* %2, align 4
  br label %181

181:                                              ; preds = %180, %171, %152, %143, %130, %102, %86, %66, %43, %29, %18
  %182 = load i32, i32* %2, align 4
  ret i32 %182
}

declare dso_local i32 @hdsp_get_iobox_version(%struct.hdsp*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i64 @request_firmware(%struct.firmware**, i8*, i32*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i32 @snd_hdsp_load_firmware_from_cache(%struct.hdsp*) #1

declare dso_local i32 @snd_hdsp_enable_io(%struct.hdsp*) #1

declare dso_local i32 @snd_hdsp_create_hwdep(%struct.TYPE_5__*, %struct.hdsp*) #1

declare dso_local i32 @snd_hdsp_initialize_channels(%struct.hdsp*) #1

declare dso_local i32 @snd_hdsp_initialize_midi_flush(%struct.hdsp*) #1

declare dso_local i32 @snd_hdsp_create_alsa_devices(%struct.TYPE_5__*, %struct.hdsp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
