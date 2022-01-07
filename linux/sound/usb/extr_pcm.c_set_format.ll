; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_pcm.c_set_format.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_pcm.c_set_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_substream = type { i32, %struct.audioformat*, %struct.TYPE_4__*, i32, i32, i64, %struct.usb_device* }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.usb_device = type { i32 }
%struct.audioformat = type { i32, i32, i64, i32 }
%struct.usb_host_interface = type { i32 }
%struct.usb_interface_descriptor = type { i32 }
%struct.usb_interface = type { %struct.usb_host_interface* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"%d:%d: return to setting 0 failed (%d)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"%d:%d: usb_set_interface failed (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"setting usb interface %d:%d\0A\00", align 1
@SND_USB_ENDPOINT_TYPE_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_usb_substream*, %struct.audioformat*)* @set_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_format(%struct.snd_usb_substream* %0, %struct.audioformat* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_usb_substream*, align 8
  %5 = alloca %struct.audioformat*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.usb_host_interface*, align 8
  %8 = alloca %struct.usb_interface_descriptor*, align 8
  %9 = alloca %struct.usb_interface*, align 8
  %10 = alloca i32, align 4
  store %struct.snd_usb_substream* %0, %struct.snd_usb_substream** %4, align 8
  store %struct.audioformat* %1, %struct.audioformat** %5, align 8
  %11 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %4, align 8
  %12 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %11, i32 0, i32 6
  %13 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  store %struct.usb_device* %13, %struct.usb_device** %6, align 8
  %14 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %15 = load %struct.audioformat*, %struct.audioformat** %5, align 8
  %16 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.usb_interface* @usb_ifnum_to_if(%struct.usb_device* %14, i32 %17)
  store %struct.usb_interface* %18, %struct.usb_interface** %9, align 8
  %19 = load %struct.usb_interface*, %struct.usb_interface** %9, align 8
  %20 = icmp ne %struct.usb_interface* %19, null
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @WARN_ON(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %226

28:                                               ; preds = %2
  %29 = load %struct.usb_interface*, %struct.usb_interface** %9, align 8
  %30 = load %struct.audioformat*, %struct.audioformat** %5, align 8
  %31 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call %struct.usb_host_interface* @usb_altnum_to_altsetting(%struct.usb_interface* %29, i32 %32)
  store %struct.usb_host_interface* %33, %struct.usb_host_interface** %7, align 8
  %34 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %35 = call %struct.usb_interface_descriptor* @get_iface_desc(%struct.usb_host_interface* %34)
  store %struct.usb_interface_descriptor* %35, %struct.usb_interface_descriptor** %8, align 8
  %36 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %8, align 8
  %37 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.audioformat*, %struct.audioformat** %5, align 8
  %40 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %38, %41
  %43 = zext i1 %42 to i32
  %44 = call i64 @WARN_ON(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %28
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %226

49:                                               ; preds = %28
  %50 = load %struct.audioformat*, %struct.audioformat** %5, align 8
  %51 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %4, align 8
  %52 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %51, i32 0, i32 1
  %53 = load %struct.audioformat*, %struct.audioformat** %52, align 8
  %54 = icmp eq %struct.audioformat* %50, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %226

56:                                               ; preds = %49
  %57 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %4, align 8
  %58 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp sge i32 %59, 0
  br i1 %60, label %61, label %107

61:                                               ; preds = %56
  %62 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %4, align 8
  %63 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.audioformat*, %struct.audioformat** %5, align 8
  %66 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %64, %67
  br i1 %68, label %69, label %107

69:                                               ; preds = %61
  %70 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %4, align 8
  %71 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %70, i32 0, i32 2
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %102, label %78

78:                                               ; preds = %69
  %79 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %4, align 8
  %80 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %79, i32 0, i32 6
  %81 = load %struct.usb_device*, %struct.usb_device** %80, align 8
  %82 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %4, align 8
  %83 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @usb_set_interface(%struct.usb_device* %81, i32 %84, i32 0)
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %78
  %89 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %90 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %89, i32 0, i32 0
  %91 = load %struct.audioformat*, %struct.audioformat** %5, align 8
  %92 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.audioformat*, %struct.audioformat** %5, align 8
  %95 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @dev_err(i32* %90, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %93, i32 %96, i32 %97)
  %99 = load i32, i32* @EIO, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %3, align 4
  br label %226

101:                                              ; preds = %78
  br label %102

102:                                              ; preds = %101, %69
  %103 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %4, align 8
  %104 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %103, i32 0, i32 0
  store i32 -1, i32* %104, align 8
  %105 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %4, align 8
  %106 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %105, i32 0, i32 5
  store i64 0, i64* %106, align 8
  br label %107

107:                                              ; preds = %102, %61, %56
  %108 = load %struct.usb_interface*, %struct.usb_interface** %9, align 8
  %109 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %108, i32 0, i32 0
  %110 = load %struct.usb_host_interface*, %struct.usb_host_interface** %109, align 8
  %111 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %112 = icmp ne %struct.usb_host_interface* %110, %111
  br i1 %112, label %113, label %158

113:                                              ; preds = %107
  %114 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %4, align 8
  %115 = load %struct.audioformat*, %struct.audioformat** %5, align 8
  %116 = call i32 @snd_usb_select_mode_quirk(%struct.snd_usb_substream* %114, %struct.audioformat* %115)
  store i32 %116, i32* %10, align 4
  %117 = load i32, i32* %10, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %113
  %120 = load i32, i32* @EIO, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %3, align 4
  br label %226

122:                                              ; preds = %113
  %123 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %124 = load %struct.audioformat*, %struct.audioformat** %5, align 8
  %125 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.audioformat*, %struct.audioformat** %5, align 8
  %128 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @usb_set_interface(%struct.usb_device* %123, i32 %126, i32 %129)
  store i32 %130, i32* %10, align 4
  %131 = load i32, i32* %10, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %146

133:                                              ; preds = %122
  %134 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %135 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %134, i32 0, i32 0
  %136 = load %struct.audioformat*, %struct.audioformat** %5, align 8
  %137 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.audioformat*, %struct.audioformat** %5, align 8
  %140 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* %10, align 4
  %143 = call i32 @dev_err(i32* %135, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %138, i32 %141, i32 %142)
  %144 = load i32, i32* @EIO, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %3, align 4
  br label %226

146:                                              ; preds = %122
  %147 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %148 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %147, i32 0, i32 0
  %149 = load %struct.audioformat*, %struct.audioformat** %5, align 8
  %150 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.audioformat*, %struct.audioformat** %5, align 8
  %153 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @dev_dbg(i32* %148, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %151, i32 %154)
  %156 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %157 = call i32 @snd_usb_set_interface_quirk(%struct.usb_device* %156)
  br label %158

158:                                              ; preds = %146, %107
  %159 = load %struct.audioformat*, %struct.audioformat** %5, align 8
  %160 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %4, align 8
  %163 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 8
  %164 = load %struct.audioformat*, %struct.audioformat** %5, align 8
  %165 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %4, align 8
  %168 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %167, i32 0, i32 5
  store i64 %166, i64* %168, align 8
  %169 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %4, align 8
  %170 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %169, i32 0, i32 2
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 0
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %172, align 8
  %174 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %175 = load %struct.audioformat*, %struct.audioformat** %5, align 8
  %176 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %4, align 8
  %179 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %178, i32 0, i32 4
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @SND_USB_ENDPOINT_TYPE_DATA, align 4
  %182 = call i32 @snd_usb_add_endpoint(%struct.TYPE_5__* %173, %struct.usb_host_interface* %174, i32 %177, i32 %180, i32 %181)
  %183 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %4, align 8
  %184 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %183, i32 0, i32 3
  store i32 %182, i32* %184, align 8
  %185 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %4, align 8
  %186 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 8
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %192, label %189

189:                                              ; preds = %158
  %190 = load i32, i32* @EINVAL, align 4
  %191 = sub nsw i32 0, %190
  store i32 %191, i32* %3, align 4
  br label %226

192:                                              ; preds = %158
  %193 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %4, align 8
  %194 = load %struct.audioformat*, %struct.audioformat** %5, align 8
  %195 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %196 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %197 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %8, align 8
  %198 = call i32 @set_sync_endpoint(%struct.snd_usb_substream* %193, %struct.audioformat* %194, %struct.usb_device* %195, %struct.usb_host_interface* %196, %struct.usb_interface_descriptor* %197)
  store i32 %198, i32* %10, align 4
  %199 = load i32, i32* %10, align 4
  %200 = icmp slt i32 %199, 0
  br i1 %200, label %201, label %203

201:                                              ; preds = %192
  %202 = load i32, i32* %10, align 4
  store i32 %202, i32* %3, align 4
  br label %226

203:                                              ; preds = %192
  %204 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %4, align 8
  %205 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %204, i32 0, i32 2
  %206 = load %struct.TYPE_4__*, %struct.TYPE_4__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 0
  %208 = load %struct.TYPE_5__*, %struct.TYPE_5__** %207, align 8
  %209 = load %struct.audioformat*, %struct.audioformat** %5, align 8
  %210 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %213 = load %struct.audioformat*, %struct.audioformat** %5, align 8
  %214 = call i32 @snd_usb_init_pitch(%struct.TYPE_5__* %208, i32 %211, %struct.usb_host_interface* %212, %struct.audioformat* %213)
  store i32 %214, i32* %10, align 4
  %215 = load i32, i32* %10, align 4
  %216 = icmp slt i32 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %203
  %218 = load i32, i32* %10, align 4
  store i32 %218, i32* %3, align 4
  br label %226

219:                                              ; preds = %203
  %220 = load %struct.audioformat*, %struct.audioformat** %5, align 8
  %221 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %4, align 8
  %222 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %221, i32 0, i32 1
  store %struct.audioformat* %220, %struct.audioformat** %222, align 8
  %223 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %4, align 8
  %224 = load %struct.audioformat*, %struct.audioformat** %5, align 8
  %225 = call i32 @snd_usb_set_format_quirk(%struct.snd_usb_substream* %223, %struct.audioformat* %224)
  store i32 0, i32* %3, align 4
  br label %226

226:                                              ; preds = %219, %217, %201, %189, %133, %119, %88, %55, %46, %25
  %227 = load i32, i32* %3, align 4
  ret i32 %227
}

declare dso_local %struct.usb_interface* @usb_ifnum_to_if(%struct.usb_device*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.usb_host_interface* @usb_altnum_to_altsetting(%struct.usb_interface*, i32) #1

declare dso_local %struct.usb_interface_descriptor* @get_iface_desc(%struct.usb_host_interface*) #1

declare dso_local i32 @usb_set_interface(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @snd_usb_select_mode_quirk(%struct.snd_usb_substream*, %struct.audioformat*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @snd_usb_set_interface_quirk(%struct.usb_device*) #1

declare dso_local i32 @snd_usb_add_endpoint(%struct.TYPE_5__*, %struct.usb_host_interface*, i32, i32, i32) #1

declare dso_local i32 @set_sync_endpoint(%struct.snd_usb_substream*, %struct.audioformat*, %struct.usb_device*, %struct.usb_host_interface*, %struct.usb_interface_descriptor*) #1

declare dso_local i32 @snd_usb_init_pitch(%struct.TYPE_5__*, i32, %struct.usb_host_interface*, %struct.audioformat*) #1

declare dso_local i32 @snd_usb_set_format_quirk(%struct.snd_usb_substream*, %struct.audioformat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
