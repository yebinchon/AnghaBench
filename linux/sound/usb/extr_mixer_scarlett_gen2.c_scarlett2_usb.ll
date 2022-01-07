; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer_scarlett_gen2.c_scarlett2_usb.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer_scarlett_gen2.c_scarlett2_usb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_mixer_interface = type { %struct.TYPE_2__*, %struct.scarlett2_mixer_data* }
%struct.TYPE_2__ = type { i32 }
%struct.scarlett2_mixer_data = type { i32 }
%struct.scarlett2_usb_packet = type { i8*, i64, i64, i64, i64, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SCARLETT2_USB_VENDOR_SPECIFIC_CMD_REQ = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@SCARLETT2_USB_VENDOR_SPECIFIC_INTERFACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Scarlett Gen 2 USB request result cmd %x was %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SCARLETT2_USB_VENDOR_SPECIFIC_CMD_RESP = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Scarlett Gen 2 USB response result cmd %x was %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [91 x i8] c"Scarlett Gen 2 USB invalid response; cmd tx/rx %d/%d seq %d/%d size %d/%d error %d pad %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_mixer_interface*, i32, i8*, i32, i8*, i32)* @scarlett2_usb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scarlett2_usb(%struct.usb_mixer_interface* %0, i32 %1, i8* %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.usb_mixer_interface*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.scarlett2_mixer_data*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.scarlett2_usb_packet*, align 8
  %17 = alloca %struct.scarlett2_usb_packet*, align 8
  %18 = alloca i32, align 4
  store %struct.usb_mixer_interface* %0, %struct.usb_mixer_interface** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %19 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %7, align 8
  %20 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %19, i32 0, i32 1
  %21 = load %struct.scarlett2_mixer_data*, %struct.scarlett2_mixer_data** %20, align 8
  store %struct.scarlett2_mixer_data* %21, %struct.scarlett2_mixer_data** %13, align 8
  %22 = load i32, i32* %10, align 4
  %23 = sext i32 %22 to i64
  %24 = add i64 48, %23
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %12, align 4
  %27 = sext i32 %26 to i64
  %28 = add i64 48, %27
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %15, align 4
  store %struct.scarlett2_usb_packet* null, %struct.scarlett2_usb_packet** %16, align 8
  store %struct.scarlett2_usb_packet* null, %struct.scarlett2_usb_packet** %17, align 8
  store i32 0, i32* %18, align 4
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.scarlett2_usb_packet* @kmalloc(i32 %30, i32 %31)
  store %struct.scarlett2_usb_packet* %32, %struct.scarlett2_usb_packet** %16, align 8
  %33 = load %struct.scarlett2_usb_packet*, %struct.scarlett2_usb_packet** %16, align 8
  %34 = icmp ne %struct.scarlett2_usb_packet* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %6
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %18, align 4
  br label %217

38:                                               ; preds = %6
  %39 = load i32, i32* %15, align 4
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call %struct.scarlett2_usb_packet* @kmalloc(i32 %39, i32 %40)
  store %struct.scarlett2_usb_packet* %41, %struct.scarlett2_usb_packet** %17, align 8
  %42 = load %struct.scarlett2_usb_packet*, %struct.scarlett2_usb_packet** %17, align 8
  %43 = icmp ne %struct.scarlett2_usb_packet* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %38
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %18, align 4
  br label %217

47:                                               ; preds = %38
  %48 = load %struct.scarlett2_mixer_data*, %struct.scarlett2_mixer_data** %13, align 8
  %49 = getelementptr inbounds %struct.scarlett2_mixer_data, %struct.scarlett2_mixer_data* %48, i32 0, i32 0
  %50 = call i32 @mutex_lock(i32* %49)
  %51 = load %struct.scarlett2_mixer_data*, %struct.scarlett2_mixer_data** %13, align 8
  %52 = load %struct.scarlett2_usb_packet*, %struct.scarlett2_usb_packet** %16, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @scarlett2_fill_request_header(%struct.scarlett2_mixer_data* %51, %struct.scarlett2_usb_packet* %52, i32 %53, i32 %54)
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %47
  %59 = load %struct.scarlett2_usb_packet*, %struct.scarlett2_usb_packet** %16, align 8
  %60 = getelementptr inbounds %struct.scarlett2_usb_packet, %struct.scarlett2_usb_packet* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @memcpy(i8* %61, i8* %62, i32 %63)
  br label %65

65:                                               ; preds = %58, %47
  %66 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %7, align 8
  %67 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %7, align 8
  %72 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @usb_sndctrlpipe(i32 %75, i32 0)
  %77 = load i32, i32* @SCARLETT2_USB_VENDOR_SPECIFIC_CMD_REQ, align 4
  %78 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %79 = load i32, i32* @USB_TYPE_CLASS, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @USB_DIR_OUT, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @SCARLETT2_USB_VENDOR_SPECIFIC_INTERFACE, align 4
  %84 = load %struct.scarlett2_usb_packet*, %struct.scarlett2_usb_packet** %16, align 8
  %85 = load i32, i32* %14, align 4
  %86 = call i32 @snd_usb_ctl_msg(i32 %70, i32 %76, i32 %77, i32 %82, i32 0, i32 %83, %struct.scarlett2_usb_packet* %84, i32 %85)
  store i32 %86, i32* %18, align 4
  %87 = load i32, i32* %18, align 4
  %88 = load i32, i32* %14, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %99

90:                                               ; preds = %65
  %91 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %7, align 8
  %92 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %91, i32 0, i32 0
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %18, align 4
  %96 = call i32 (%struct.TYPE_2__*, i8*, i32, i32, ...) @usb_audio_err(%struct.TYPE_2__* %93, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %94, i32 %95)
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %18, align 4
  br label %213

99:                                               ; preds = %65
  %100 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %7, align 8
  %101 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %100, i32 0, i32 0
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %7, align 8
  %106 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %105, i32 0, i32 0
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @usb_sndctrlpipe(i32 %109, i32 0)
  %111 = load i32, i32* @SCARLETT2_USB_VENDOR_SPECIFIC_CMD_RESP, align 4
  %112 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %113 = load i32, i32* @USB_TYPE_CLASS, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @USB_DIR_IN, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* @SCARLETT2_USB_VENDOR_SPECIFIC_INTERFACE, align 4
  %118 = load %struct.scarlett2_usb_packet*, %struct.scarlett2_usb_packet** %17, align 8
  %119 = load i32, i32* %15, align 4
  %120 = call i32 @snd_usb_ctl_msg(i32 %104, i32 %110, i32 %111, i32 %116, i32 0, i32 %117, %struct.scarlett2_usb_packet* %118, i32 %119)
  store i32 %120, i32* %18, align 4
  %121 = load i32, i32* %18, align 4
  %122 = load i32, i32* %15, align 4
  %123 = icmp ne i32 %121, %122
  br i1 %123, label %124, label %133

124:                                              ; preds = %99
  %125 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %7, align 8
  %126 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %125, i32 0, i32 0
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* %18, align 4
  %130 = call i32 (%struct.TYPE_2__*, i8*, i32, i32, ...) @usb_audio_err(%struct.TYPE_2__* %127, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %128, i32 %129)
  %131 = load i32, i32* @EINVAL, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %18, align 4
  br label %213

133:                                              ; preds = %99
  %134 = load %struct.scarlett2_usb_packet*, %struct.scarlett2_usb_packet** %17, align 8
  %135 = getelementptr inbounds %struct.scarlett2_usb_packet, %struct.scarlett2_usb_packet* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.scarlett2_usb_packet*, %struct.scarlett2_usb_packet** %16, align 8
  %138 = getelementptr inbounds %struct.scarlett2_usb_packet, %struct.scarlett2_usb_packet* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %136, %139
  br i1 %140, label %166, label %141

141:                                              ; preds = %133
  %142 = load %struct.scarlett2_usb_packet*, %struct.scarlett2_usb_packet** %17, align 8
  %143 = getelementptr inbounds %struct.scarlett2_usb_packet, %struct.scarlett2_usb_packet* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.scarlett2_usb_packet*, %struct.scarlett2_usb_packet** %16, align 8
  %146 = getelementptr inbounds %struct.scarlett2_usb_packet, %struct.scarlett2_usb_packet* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %144, %147
  br i1 %148, label %166, label %149

149:                                              ; preds = %141
  %150 = load i32, i32* %12, align 4
  %151 = load %struct.scarlett2_usb_packet*, %struct.scarlett2_usb_packet** %17, align 8
  %152 = getelementptr inbounds %struct.scarlett2_usb_packet, %struct.scarlett2_usb_packet* %151, i32 0, i32 3
  %153 = load i64, i64* %152, align 8
  %154 = call i32 @le16_to_cpu(i64 %153)
  %155 = icmp ne i32 %150, %154
  br i1 %155, label %166, label %156

156:                                              ; preds = %149
  %157 = load %struct.scarlett2_usb_packet*, %struct.scarlett2_usb_packet** %17, align 8
  %158 = getelementptr inbounds %struct.scarlett2_usb_packet, %struct.scarlett2_usb_packet* %157, i32 0, i32 4
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %166, label %161

161:                                              ; preds = %156
  %162 = load %struct.scarlett2_usb_packet*, %struct.scarlett2_usb_packet** %17, align 8
  %163 = getelementptr inbounds %struct.scarlett2_usb_packet, %struct.scarlett2_usb_packet* %162, i32 0, i32 5
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %202

166:                                              ; preds = %161, %156, %149, %141, %133
  %167 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %7, align 8
  %168 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %167, i32 0, i32 0
  %169 = load %struct.TYPE_2__*, %struct.TYPE_2__** %168, align 8
  %170 = load %struct.scarlett2_usb_packet*, %struct.scarlett2_usb_packet** %16, align 8
  %171 = getelementptr inbounds %struct.scarlett2_usb_packet, %struct.scarlett2_usb_packet* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = call i32 @le16_to_cpu(i64 %172)
  %174 = load %struct.scarlett2_usb_packet*, %struct.scarlett2_usb_packet** %17, align 8
  %175 = getelementptr inbounds %struct.scarlett2_usb_packet, %struct.scarlett2_usb_packet* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = call i32 @le16_to_cpu(i64 %176)
  %178 = load %struct.scarlett2_usb_packet*, %struct.scarlett2_usb_packet** %16, align 8
  %179 = getelementptr inbounds %struct.scarlett2_usb_packet, %struct.scarlett2_usb_packet* %178, i32 0, i32 2
  %180 = load i64, i64* %179, align 8
  %181 = call i32 @le16_to_cpu(i64 %180)
  %182 = load %struct.scarlett2_usb_packet*, %struct.scarlett2_usb_packet** %17, align 8
  %183 = getelementptr inbounds %struct.scarlett2_usb_packet, %struct.scarlett2_usb_packet* %182, i32 0, i32 2
  %184 = load i64, i64* %183, align 8
  %185 = call i32 @le16_to_cpu(i64 %184)
  %186 = load i32, i32* %12, align 4
  %187 = load %struct.scarlett2_usb_packet*, %struct.scarlett2_usb_packet** %17, align 8
  %188 = getelementptr inbounds %struct.scarlett2_usb_packet, %struct.scarlett2_usb_packet* %187, i32 0, i32 3
  %189 = load i64, i64* %188, align 8
  %190 = call i32 @le16_to_cpu(i64 %189)
  %191 = load %struct.scarlett2_usb_packet*, %struct.scarlett2_usb_packet** %17, align 8
  %192 = getelementptr inbounds %struct.scarlett2_usb_packet, %struct.scarlett2_usb_packet* %191, i32 0, i32 4
  %193 = load i64, i64* %192, align 8
  %194 = call i32 @le16_to_cpu(i64 %193)
  %195 = load %struct.scarlett2_usb_packet*, %struct.scarlett2_usb_packet** %17, align 8
  %196 = getelementptr inbounds %struct.scarlett2_usb_packet, %struct.scarlett2_usb_packet* %195, i32 0, i32 5
  %197 = load i64, i64* %196, align 8
  %198 = call i32 @le16_to_cpu(i64 %197)
  %199 = call i32 (%struct.TYPE_2__*, i8*, i32, i32, ...) @usb_audio_err(%struct.TYPE_2__* %169, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.2, i64 0, i64 0), i32 %173, i32 %177, i32 %181, i32 %185, i32 %186, i32 %190, i32 %194, i32 %198)
  %200 = load i32, i32* @EINVAL, align 4
  %201 = sub nsw i32 0, %200
  store i32 %201, i32* %18, align 4
  br label %213

202:                                              ; preds = %161
  %203 = load i32, i32* %12, align 4
  %204 = icmp sgt i32 %203, 0
  br i1 %204, label %205, label %212

205:                                              ; preds = %202
  %206 = load i8*, i8** %11, align 8
  %207 = load %struct.scarlett2_usb_packet*, %struct.scarlett2_usb_packet** %17, align 8
  %208 = getelementptr inbounds %struct.scarlett2_usb_packet, %struct.scarlett2_usb_packet* %207, i32 0, i32 0
  %209 = load i8*, i8** %208, align 8
  %210 = load i32, i32* %12, align 4
  %211 = call i32 @memcpy(i8* %206, i8* %209, i32 %210)
  br label %212

212:                                              ; preds = %205, %202
  br label %213

213:                                              ; preds = %212, %166, %124, %90
  %214 = load %struct.scarlett2_mixer_data*, %struct.scarlett2_mixer_data** %13, align 8
  %215 = getelementptr inbounds %struct.scarlett2_mixer_data, %struct.scarlett2_mixer_data* %214, i32 0, i32 0
  %216 = call i32 @mutex_unlock(i32* %215)
  br label %217

217:                                              ; preds = %213, %44, %35
  %218 = load %struct.scarlett2_usb_packet*, %struct.scarlett2_usb_packet** %16, align 8
  %219 = call i32 @kfree(%struct.scarlett2_usb_packet* %218)
  %220 = load %struct.scarlett2_usb_packet*, %struct.scarlett2_usb_packet** %17, align 8
  %221 = call i32 @kfree(%struct.scarlett2_usb_packet* %220)
  %222 = load i32, i32* %18, align 4
  ret i32 %222
}

declare dso_local %struct.scarlett2_usb_packet* @kmalloc(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @scarlett2_fill_request_header(%struct.scarlett2_mixer_data*, %struct.scarlett2_usb_packet*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @snd_usb_ctl_msg(i32, i32, i32, i32, i32, i32, %struct.scarlett2_usb_packet*, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @usb_audio_err(%struct.TYPE_2__*, i8*, i32, i32, ...) #1

declare dso_local i32 @le16_to_cpu(i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.scarlett2_usb_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
