; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer_scarlett_gen2.c_scarlett2_read_configs.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer_scarlett_gen2.c_scarlett2_read_configs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_mixer_interface = type { %struct.scarlett2_mixer_data* }
%struct.scarlett2_mixer_data = type { i32*, i32*, i32*, i8*, i8**, i8**, %struct.scarlett2_device_info* }
%struct.scarlett2_device_info = type { i32, i32, i32, i64, %struct.scarlett2_ports* }
%struct.scarlett2_ports = type { i32* }
%struct.scarlett2_usb_volume_status = type { i32, i32*, i32*, i64* }

@SCARLETT2_PORT_TYPE_ANALOGUE = common dso_local global i64 0, align 8
@SCARLETT2_PORT_OUT = common dso_local global i64 0, align 8
@SCARLETT2_LEVEL_SWITCH_MAX = common dso_local global i32 0, align 4
@SCARLETT2_PAD_SWITCH_MAX = common dso_local global i32 0, align 4
@SCARLETT2_CONFIG_LEVEL_SWITCH = common dso_local global i32 0, align 4
@SCARLETT2_CONFIG_PAD_SWITCH = common dso_local global i32 0, align 4
@SCARLETT2_VOLUME_BIAS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_mixer_interface*)* @scarlett2_read_configs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scarlett2_read_configs(%struct.usb_mixer_interface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_mixer_interface*, align 8
  %4 = alloca %struct.scarlett2_mixer_data*, align 8
  %5 = alloca %struct.scarlett2_device_info*, align 8
  %6 = alloca %struct.scarlett2_ports*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.scarlett2_usb_volume_status, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.usb_mixer_interface* %0, %struct.usb_mixer_interface** %3, align 8
  %16 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %17 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %16, i32 0, i32 0
  %18 = load %struct.scarlett2_mixer_data*, %struct.scarlett2_mixer_data** %17, align 8
  store %struct.scarlett2_mixer_data* %18, %struct.scarlett2_mixer_data** %4, align 8
  %19 = load %struct.scarlett2_mixer_data*, %struct.scarlett2_mixer_data** %4, align 8
  %20 = getelementptr inbounds %struct.scarlett2_mixer_data, %struct.scarlett2_mixer_data* %19, i32 0, i32 6
  %21 = load %struct.scarlett2_device_info*, %struct.scarlett2_device_info** %20, align 8
  store %struct.scarlett2_device_info* %21, %struct.scarlett2_device_info** %5, align 8
  %22 = load %struct.scarlett2_device_info*, %struct.scarlett2_device_info** %5, align 8
  %23 = getelementptr inbounds %struct.scarlett2_device_info, %struct.scarlett2_device_info* %22, i32 0, i32 4
  %24 = load %struct.scarlett2_ports*, %struct.scarlett2_ports** %23, align 8
  store %struct.scarlett2_ports* %24, %struct.scarlett2_ports** %6, align 8
  %25 = load %struct.scarlett2_ports*, %struct.scarlett2_ports** %6, align 8
  %26 = load i64, i64* @SCARLETT2_PORT_TYPE_ANALOGUE, align 8
  %27 = getelementptr inbounds %struct.scarlett2_ports, %struct.scarlett2_ports* %25, i64 %26
  %28 = getelementptr inbounds %struct.scarlett2_ports, %struct.scarlett2_ports* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* @SCARLETT2_PORT_OUT, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* @SCARLETT2_LEVEL_SWITCH_MAX, align 4
  %34 = zext i32 %33 to i64
  %35 = call i8* @llvm.stacksave()
  store i8* %35, i8** %8, align 8
  %36 = alloca i8*, i64 %34, align 16
  store i64 %34, i64* %9, align 8
  %37 = load i32, i32* @SCARLETT2_PAD_SWITCH_MAX, align 4
  %38 = zext i32 %37 to i64
  %39 = alloca i8*, i64 %38, align 16
  store i64 %38, i64* %10, align 8
  %40 = load %struct.scarlett2_device_info*, %struct.scarlett2_device_info** %5, align 8
  %41 = getelementptr inbounds %struct.scarlett2_device_info, %struct.scarlett2_device_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %77

44:                                               ; preds = %1
  %45 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %46 = load i32, i32* @SCARLETT2_CONFIG_LEVEL_SWITCH, align 4
  %47 = load %struct.scarlett2_device_info*, %struct.scarlett2_device_info** %5, align 8
  %48 = getelementptr inbounds %struct.scarlett2_device_info, %struct.scarlett2_device_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @scarlett2_usb_get_config(%struct.usb_mixer_interface* %45, i32 %46, i32 %49, i8** %36)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %44
  %54 = load i32, i32* %12, align 4
  store i32 %54, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %221

55:                                               ; preds = %44
  store i32 0, i32* %13, align 4
  br label %56

56:                                               ; preds = %73, %55
  %57 = load i32, i32* %13, align 4
  %58 = load %struct.scarlett2_device_info*, %struct.scarlett2_device_info** %5, align 8
  %59 = getelementptr inbounds %struct.scarlett2_device_info, %struct.scarlett2_device_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %76

62:                                               ; preds = %56
  %63 = load i32, i32* %13, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %36, i64 %64
  %66 = load i8*, i8** %65, align 8
  %67 = load %struct.scarlett2_mixer_data*, %struct.scarlett2_mixer_data** %4, align 8
  %68 = getelementptr inbounds %struct.scarlett2_mixer_data, %struct.scarlett2_mixer_data* %67, i32 0, i32 5
  %69 = load i8**, i8*** %68, align 8
  %70 = load i32, i32* %13, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8*, i8** %69, i64 %71
  store i8* %66, i8** %72, align 8
  br label %73

73:                                               ; preds = %62
  %74 = load i32, i32* %13, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %13, align 4
  br label %56

76:                                               ; preds = %56
  br label %77

77:                                               ; preds = %76, %1
  %78 = load %struct.scarlett2_device_info*, %struct.scarlett2_device_info** %5, align 8
  %79 = getelementptr inbounds %struct.scarlett2_device_info, %struct.scarlett2_device_info* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %115

82:                                               ; preds = %77
  %83 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %84 = load i32, i32* @SCARLETT2_CONFIG_PAD_SWITCH, align 4
  %85 = load %struct.scarlett2_device_info*, %struct.scarlett2_device_info** %5, align 8
  %86 = getelementptr inbounds %struct.scarlett2_device_info, %struct.scarlett2_device_info* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @scarlett2_usb_get_config(%struct.usb_mixer_interface* %83, i32 %84, i32 %87, i8** %39)
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* %12, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %82
  %92 = load i32, i32* %12, align 4
  store i32 %92, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %221

93:                                               ; preds = %82
  store i32 0, i32* %13, align 4
  br label %94

94:                                               ; preds = %111, %93
  %95 = load i32, i32* %13, align 4
  %96 = load %struct.scarlett2_device_info*, %struct.scarlett2_device_info** %5, align 8
  %97 = getelementptr inbounds %struct.scarlett2_device_info, %struct.scarlett2_device_info* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %100, label %114

100:                                              ; preds = %94
  %101 = load i32, i32* %13, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8*, i8** %39, i64 %102
  %104 = load i8*, i8** %103, align 8
  %105 = load %struct.scarlett2_mixer_data*, %struct.scarlett2_mixer_data** %4, align 8
  %106 = getelementptr inbounds %struct.scarlett2_mixer_data, %struct.scarlett2_mixer_data* %105, i32 0, i32 4
  %107 = load i8**, i8*** %106, align 8
  %108 = load i32, i32* %13, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8*, i8** %107, i64 %109
  store i8* %104, i8** %110, align 8
  br label %111

111:                                              ; preds = %100
  %112 = load i32, i32* %13, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %13, align 4
  br label %94

114:                                              ; preds = %94
  br label %115

115:                                              ; preds = %114, %77
  %116 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %117 = call i32 @scarlett2_usb_get_volume_status(%struct.usb_mixer_interface* %116, %struct.scarlett2_usb_volume_status* %11)
  store i32 %117, i32* %12, align 4
  %118 = load i32, i32* %12, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %115
  %121 = load i32, i32* %12, align 4
  store i32 %121, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %221

122:                                              ; preds = %115
  %123 = getelementptr inbounds %struct.scarlett2_usb_volume_status, %struct.scarlett2_usb_volume_status* %11, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @SCARLETT2_VOLUME_BIAS, align 4
  %126 = add nsw i32 %124, %125
  %127 = load i32, i32* @SCARLETT2_VOLUME_BIAS, align 4
  %128 = call i8* @clamp(i32 %126, i32 0, i32 %127)
  %129 = load %struct.scarlett2_mixer_data*, %struct.scarlett2_mixer_data** %4, align 8
  %130 = getelementptr inbounds %struct.scarlett2_mixer_data, %struct.scarlett2_mixer_data* %129, i32 0, i32 3
  store i8* %128, i8** %130, align 8
  store i32 0, i32* %13, align 4
  br label %131

131:                                              ; preds = %190, %122
  %132 = load i32, i32* %13, align 4
  %133 = load i32, i32* %7, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %193

135:                                              ; preds = %131
  %136 = load %struct.scarlett2_device_info*, %struct.scarlett2_device_info** %5, align 8
  %137 = getelementptr inbounds %struct.scarlett2_device_info, %struct.scarlett2_device_info* %136, i32 0, i32 3
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %135
  %141 = getelementptr inbounds %struct.scarlett2_usb_volume_status, %struct.scarlett2_usb_volume_status* %11, i32 0, i32 3
  %142 = load i64*, i64** %141, align 8
  %143 = load i32, i32* %13, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i64, i64* %142, i64 %144
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br label %148

148:                                              ; preds = %140, %135
  %149 = phi i1 [ false, %135 ], [ %147, %140 ]
  %150 = zext i1 %149 to i32
  %151 = load %struct.scarlett2_mixer_data*, %struct.scarlett2_mixer_data** %4, align 8
  %152 = getelementptr inbounds %struct.scarlett2_mixer_data, %struct.scarlett2_mixer_data* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %13, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  store i32 %150, i32* %156, align 4
  %157 = load %struct.scarlett2_mixer_data*, %struct.scarlett2_mixer_data** %4, align 8
  %158 = getelementptr inbounds %struct.scarlett2_mixer_data, %struct.scarlett2_mixer_data* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %13, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %148
  %166 = getelementptr inbounds %struct.scarlett2_usb_volume_status, %struct.scarlett2_usb_volume_status* %11, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  br label %175

168:                                              ; preds = %148
  %169 = getelementptr inbounds %struct.scarlett2_usb_volume_status, %struct.scarlett2_usb_volume_status* %11, i32 0, i32 1
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %13, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  %174 = load i32, i32* %173, align 4
  br label %175

175:                                              ; preds = %168, %165
  %176 = phi i32 [ %167, %165 ], [ %174, %168 ]
  store i32 %176, i32* %15, align 4
  %177 = load i32, i32* %15, align 4
  %178 = load i32, i32* @SCARLETT2_VOLUME_BIAS, align 4
  %179 = add nsw i32 %177, %178
  %180 = load i32, i32* @SCARLETT2_VOLUME_BIAS, align 4
  %181 = call i8* @clamp(i32 %179, i32 0, i32 %180)
  %182 = ptrtoint i8* %181 to i32
  store i32 %182, i32* %15, align 4
  %183 = load i32, i32* %15, align 4
  %184 = load %struct.scarlett2_mixer_data*, %struct.scarlett2_mixer_data** %4, align 8
  %185 = getelementptr inbounds %struct.scarlett2_mixer_data, %struct.scarlett2_mixer_data* %184, i32 0, i32 1
  %186 = load i32*, i32** %185, align 8
  %187 = load i32, i32* %13, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  store i32 %183, i32* %189, align 4
  br label %190

190:                                              ; preds = %175
  %191 = load i32, i32* %13, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %13, align 4
  br label %131

193:                                              ; preds = %131
  store i32 0, i32* %13, align 4
  br label %194

194:                                              ; preds = %217, %193
  %195 = load i32, i32* %13, align 4
  %196 = load %struct.scarlett2_device_info*, %struct.scarlett2_device_info** %5, align 8
  %197 = getelementptr inbounds %struct.scarlett2_device_info, %struct.scarlett2_device_info* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = icmp slt i32 %195, %198
  br i1 %199, label %200, label %220

200:                                              ; preds = %194
  %201 = getelementptr inbounds %struct.scarlett2_usb_volume_status, %struct.scarlett2_usb_volume_status* %11, i32 0, i32 2
  %202 = load i32*, i32** %201, align 8
  %203 = load i32, i32* %13, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = icmp ne i32 %206, 0
  %208 = xor i1 %207, true
  %209 = xor i1 %208, true
  %210 = zext i1 %209 to i32
  %211 = load %struct.scarlett2_mixer_data*, %struct.scarlett2_mixer_data** %4, align 8
  %212 = getelementptr inbounds %struct.scarlett2_mixer_data, %struct.scarlett2_mixer_data* %211, i32 0, i32 2
  %213 = load i32*, i32** %212, align 8
  %214 = load i32, i32* %13, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %213, i64 %215
  store i32 %210, i32* %216, align 4
  br label %217

217:                                              ; preds = %200
  %218 = load i32, i32* %13, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %13, align 4
  br label %194

220:                                              ; preds = %194
  store i32 0, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %221

221:                                              ; preds = %220, %120, %91, %53
  %222 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %222)
  %223 = load i32, i32* %2, align 4
  ret i32 %223
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @scarlett2_usb_get_config(%struct.usb_mixer_interface*, i32, i32, i8**) #2

declare dso_local i32 @scarlett2_usb_get_volume_status(%struct.usb_mixer_interface*, %struct.scarlett2_usb_volume_status*) #2

declare dso_local i8* @clamp(i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
