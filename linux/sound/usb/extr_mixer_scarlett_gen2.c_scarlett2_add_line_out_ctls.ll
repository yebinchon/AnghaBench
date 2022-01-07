; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer_scarlett_gen2.c_scarlett2_add_line_out_ctls.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer_scarlett_gen2.c_scarlett2_add_line_out_ctls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_mixer_interface = type { %struct.scarlett2_mixer_data* }
%struct.scarlett2_mixer_data = type { %struct.TYPE_4__**, %struct.scarlett2_device_info*, %struct.TYPE_4__**, i64*, %struct.TYPE_4__* }
%struct.scarlett2_device_info = type { i8**, i32, i64, %struct.scarlett2_ports* }
%struct.scarlett2_ports = type { i32* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@SCARLETT2_PORT_TYPE_ANALOGUE = common dso_local global i64 0, align 8
@SCARLETT2_PORT_OUT = common dso_local global i64 0, align 8
@SNDRV_CTL_ELEM_ID_NAME_MAXLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Master HW Playback Volume\00", align 1
@scarlett2_master_volume_ctl = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Line %02d (%s) Playback Volume\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Line %02d Playback Volume\00", align 1
@scarlett2_line_out_volume_ctl = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_ACCESS_WRITE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"Line Out %02d Volume Control Playback Enum\00", align 1
@scarlett2_sw_hw_enum_ctl = common dso_local global i32 0, align 4
@scarlett2_button_ctl = common dso_local global i32 0, align 4
@scarlett2_button_names = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_mixer_interface*)* @scarlett2_add_line_out_ctls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scarlett2_add_line_out_ctls(%struct.usb_mixer_interface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_mixer_interface*, align 8
  %4 = alloca %struct.scarlett2_mixer_data*, align 8
  %5 = alloca %struct.scarlett2_device_info*, align 8
  %6 = alloca %struct.scarlett2_ports*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.usb_mixer_interface* %0, %struct.usb_mixer_interface** %3, align 8
  %13 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %14 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %13, i32 0, i32 0
  %15 = load %struct.scarlett2_mixer_data*, %struct.scarlett2_mixer_data** %14, align 8
  store %struct.scarlett2_mixer_data* %15, %struct.scarlett2_mixer_data** %4, align 8
  %16 = load %struct.scarlett2_mixer_data*, %struct.scarlett2_mixer_data** %4, align 8
  %17 = getelementptr inbounds %struct.scarlett2_mixer_data, %struct.scarlett2_mixer_data* %16, i32 0, i32 1
  %18 = load %struct.scarlett2_device_info*, %struct.scarlett2_device_info** %17, align 8
  store %struct.scarlett2_device_info* %18, %struct.scarlett2_device_info** %5, align 8
  %19 = load %struct.scarlett2_device_info*, %struct.scarlett2_device_info** %5, align 8
  %20 = getelementptr inbounds %struct.scarlett2_device_info, %struct.scarlett2_device_info* %19, i32 0, i32 3
  %21 = load %struct.scarlett2_ports*, %struct.scarlett2_ports** %20, align 8
  store %struct.scarlett2_ports* %21, %struct.scarlett2_ports** %6, align 8
  %22 = load %struct.scarlett2_ports*, %struct.scarlett2_ports** %6, align 8
  %23 = load i64, i64* @SCARLETT2_PORT_TYPE_ANALOGUE, align 8
  %24 = getelementptr inbounds %struct.scarlett2_ports, %struct.scarlett2_ports* %22, i64 %23
  %25 = getelementptr inbounds %struct.scarlett2_ports, %struct.scarlett2_ports* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* @SCARLETT2_PORT_OUT, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* @SNDRV_CTL_ELEM_ID_NAME_MAXLEN, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %10, align 8
  %33 = alloca i8, i64 %31, align 16
  store i64 %31, i64* %11, align 8
  %34 = load %struct.scarlett2_device_info*, %struct.scarlett2_device_info** %5, align 8
  %35 = getelementptr inbounds %struct.scarlett2_device_info, %struct.scarlett2_device_info* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %1
  %39 = trunc i64 %31 to i32
  %40 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %33, i32 %39, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %42 = load %struct.scarlett2_mixer_data*, %struct.scarlett2_mixer_data** %4, align 8
  %43 = getelementptr inbounds %struct.scarlett2_mixer_data, %struct.scarlett2_mixer_data* %42, i32 0, i32 4
  %44 = call i32 @scarlett2_add_new_ctl(%struct.usb_mixer_interface* %41, i32* @scarlett2_master_volume_ctl, i32 0, i32 1, i8* %33, %struct.TYPE_4__** %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %175

49:                                               ; preds = %38
  br label %50

50:                                               ; preds = %49, %1
  store i32 0, i32* %9, align 4
  br label %51

51:                                               ; preds = %139, %50
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %142

55:                                               ; preds = %51
  %56 = load %struct.scarlett2_device_info*, %struct.scarlett2_device_info** %5, align 8
  %57 = getelementptr inbounds %struct.scarlett2_device_info, %struct.scarlett2_device_info* %56, i32 0, i32 0
  %58 = load i8**, i8*** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8*, i8** %58, i64 %60
  %62 = load i8*, i8** %61, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %76

64:                                               ; preds = %55
  %65 = trunc i64 %31 to i32
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 1
  %68 = load %struct.scarlett2_device_info*, %struct.scarlett2_device_info** %5, align 8
  %69 = getelementptr inbounds %struct.scarlett2_device_info, %struct.scarlett2_device_info* %68, i32 0, i32 0
  %70 = load i8**, i8*** %69, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8*, i8** %70, i64 %72
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %33, i32 %65, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %67, i8* %74)
  br label %81

76:                                               ; preds = %55
  %77 = trunc i64 %31 to i32
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 1
  %80 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %33, i32 %77, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %79)
  br label %81

81:                                               ; preds = %76, %64
  %82 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %83 = load i32, i32* %9, align 4
  %84 = load %struct.scarlett2_mixer_data*, %struct.scarlett2_mixer_data** %4, align 8
  %85 = getelementptr inbounds %struct.scarlett2_mixer_data, %struct.scarlett2_mixer_data* %84, i32 0, i32 2
  %86 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %85, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %86, i64 %88
  %90 = call i32 @scarlett2_add_new_ctl(%struct.usb_mixer_interface* %82, i32* @scarlett2_line_out_volume_ctl, i32 %83, i32 1, i8* %33, %struct.TYPE_4__** %89)
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %81
  %94 = load i32, i32* %8, align 4
  store i32 %94, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %175

95:                                               ; preds = %81
  %96 = load %struct.scarlett2_mixer_data*, %struct.scarlett2_mixer_data** %4, align 8
  %97 = getelementptr inbounds %struct.scarlett2_mixer_data, %struct.scarlett2_mixer_data* %96, i32 0, i32 3
  %98 = load i64*, i64** %97, align 8
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %98, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %120

104:                                              ; preds = %95
  %105 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_WRITE, align 4
  %106 = xor i32 %105, -1
  %107 = load %struct.scarlett2_mixer_data*, %struct.scarlett2_mixer_data** %4, align 8
  %108 = getelementptr inbounds %struct.scarlett2_mixer_data, %struct.scarlett2_mixer_data* %107, i32 0, i32 2
  %109 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %108, align 8
  %110 = load i32, i32* %9, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %109, i64 %111
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i64 0
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = and i32 %118, %106
  store i32 %119, i32* %117, align 4
  br label %120

120:                                              ; preds = %104, %95
  %121 = load %struct.scarlett2_device_info*, %struct.scarlett2_device_info** %5, align 8
  %122 = getelementptr inbounds %struct.scarlett2_device_info, %struct.scarlett2_device_info* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %138

125:                                              ; preds = %120
  %126 = trunc i64 %31 to i32
  %127 = load i32, i32* %9, align 4
  %128 = add nsw i32 %127, 1
  %129 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %33, i32 %126, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %128)
  %130 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %131 = load i32, i32* %9, align 4
  %132 = call i32 @scarlett2_add_new_ctl(%struct.usb_mixer_interface* %130, i32* @scarlett2_sw_hw_enum_ctl, i32 %131, i32 1, i8* %33, %struct.TYPE_4__** null)
  store i32 %132, i32* %8, align 4
  %133 = load i32, i32* %8, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %125
  %136 = load i32, i32* %8, align 4
  store i32 %136, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %175

137:                                              ; preds = %125
  br label %138

138:                                              ; preds = %137, %120
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %9, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %9, align 4
  br label %51

142:                                              ; preds = %51
  store i32 0, i32* %9, align 4
  br label %143

143:                                              ; preds = %171, %142
  %144 = load i32, i32* %9, align 4
  %145 = load %struct.scarlett2_mixer_data*, %struct.scarlett2_mixer_data** %4, align 8
  %146 = getelementptr inbounds %struct.scarlett2_mixer_data, %struct.scarlett2_mixer_data* %145, i32 0, i32 1
  %147 = load %struct.scarlett2_device_info*, %struct.scarlett2_device_info** %146, align 8
  %148 = getelementptr inbounds %struct.scarlett2_device_info, %struct.scarlett2_device_info* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = icmp slt i32 %144, %149
  br i1 %150, label %151, label %174

151:                                              ; preds = %143
  %152 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %153 = load i32, i32* %9, align 4
  %154 = load i8**, i8*** @scarlett2_button_names, align 8
  %155 = load i32, i32* %9, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8*, i8** %154, i64 %156
  %158 = load i8*, i8** %157, align 8
  %159 = load %struct.scarlett2_mixer_data*, %struct.scarlett2_mixer_data** %4, align 8
  %160 = getelementptr inbounds %struct.scarlett2_mixer_data, %struct.scarlett2_mixer_data* %159, i32 0, i32 0
  %161 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %160, align 8
  %162 = load i32, i32* %9, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %161, i64 %163
  %165 = call i32 @scarlett2_add_new_ctl(%struct.usb_mixer_interface* %152, i32* @scarlett2_button_ctl, i32 %153, i32 1, i8* %158, %struct.TYPE_4__** %164)
  store i32 %165, i32* %8, align 4
  %166 = load i32, i32* %8, align 4
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %151
  %169 = load i32, i32* %8, align 4
  store i32 %169, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %175

170:                                              ; preds = %151
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %9, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %9, align 4
  br label %143

174:                                              ; preds = %143
  store i32 0, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %175

175:                                              ; preds = %174, %168, %135, %93, %47
  %176 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %176)
  %177 = load i32, i32* %2, align 4
  ret i32 %177
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #2

declare dso_local i32 @scarlett2_add_new_ctl(%struct.usb_mixer_interface*, i32*, i32, i32, i8*, %struct.TYPE_4__**) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
