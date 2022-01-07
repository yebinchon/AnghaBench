; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_midi.c_snd_usbmidi_in_endpoint_create.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_midi.c_snd_usbmidi_in_endpoint_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_midi = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.snd_usb_midi_endpoint_info = type { i32, i32 }
%struct.snd_usb_midi_endpoint = type { %struct.snd_usb_midi_in_endpoint* }
%struct.snd_usb_midi_in_endpoint = type { %struct.TYPE_11__**, %struct.snd_usb_midi* }
%struct.TYPE_11__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@INPUT_URBS = common dso_local global i32 0, align 4
@snd_usbmidi_in_urb_complete = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"invalid MIDI in EP %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_usb_midi*, %struct.snd_usb_midi_endpoint_info*, %struct.snd_usb_midi_endpoint*)* @snd_usbmidi_in_endpoint_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_usbmidi_in_endpoint_create(%struct.snd_usb_midi* %0, %struct.snd_usb_midi_endpoint_info* %1, %struct.snd_usb_midi_endpoint* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_usb_midi*, align 8
  %6 = alloca %struct.snd_usb_midi_endpoint_info*, align 8
  %7 = alloca %struct.snd_usb_midi_endpoint*, align 8
  %8 = alloca %struct.snd_usb_midi_in_endpoint*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_usb_midi* %0, %struct.snd_usb_midi** %5, align 8
  store %struct.snd_usb_midi_endpoint_info* %1, %struct.snd_usb_midi_endpoint_info** %6, align 8
  store %struct.snd_usb_midi_endpoint* %2, %struct.snd_usb_midi_endpoint** %7, align 8
  %14 = load %struct.snd_usb_midi_endpoint*, %struct.snd_usb_midi_endpoint** %7, align 8
  %15 = getelementptr inbounds %struct.snd_usb_midi_endpoint, %struct.snd_usb_midi_endpoint* %14, i32 0, i32 0
  store %struct.snd_usb_midi_in_endpoint* null, %struct.snd_usb_midi_in_endpoint** %15, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.snd_usb_midi_in_endpoint* @kzalloc(i32 16, i32 %16)
  store %struct.snd_usb_midi_in_endpoint* %17, %struct.snd_usb_midi_in_endpoint** %8, align 8
  %18 = load %struct.snd_usb_midi_in_endpoint*, %struct.snd_usb_midi_in_endpoint** %8, align 8
  %19 = icmp ne %struct.snd_usb_midi_in_endpoint* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %190

23:                                               ; preds = %3
  %24 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %5, align 8
  %25 = load %struct.snd_usb_midi_in_endpoint*, %struct.snd_usb_midi_in_endpoint** %8, align 8
  %26 = getelementptr inbounds %struct.snd_usb_midi_in_endpoint, %struct.snd_usb_midi_in_endpoint* %25, i32 0, i32 1
  store %struct.snd_usb_midi* %24, %struct.snd_usb_midi** %26, align 8
  store i32 0, i32* %12, align 4
  br label %27

27:                                               ; preds = %52, %23
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* @INPUT_URBS, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %55

31:                                               ; preds = %27
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.TYPE_11__* @usb_alloc_urb(i32 0, i32 %32)
  %34 = load %struct.snd_usb_midi_in_endpoint*, %struct.snd_usb_midi_in_endpoint** %8, align 8
  %35 = getelementptr inbounds %struct.snd_usb_midi_in_endpoint, %struct.snd_usb_midi_in_endpoint* %34, i32 0, i32 0
  %36 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %35, align 8
  %37 = load i32, i32* %12, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %36, i64 %38
  store %struct.TYPE_11__* %33, %struct.TYPE_11__** %39, align 8
  %40 = load %struct.snd_usb_midi_in_endpoint*, %struct.snd_usb_midi_in_endpoint** %8, align 8
  %41 = getelementptr inbounds %struct.snd_usb_midi_in_endpoint, %struct.snd_usb_midi_in_endpoint* %40, i32 0, i32 0
  %42 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %41, align 8
  %43 = load i32, i32* %12, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %42, i64 %44
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %45, align 8
  %47 = icmp ne %struct.TYPE_11__* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %31
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %13, align 4
  br label %185

51:                                               ; preds = %31
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %12, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %12, align 4
  br label %27

55:                                               ; preds = %27
  %56 = load %struct.snd_usb_midi_endpoint_info*, %struct.snd_usb_midi_endpoint_info** %6, align 8
  %57 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, %struct.snd_usb_midi_endpoint_info* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %55
  %61 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %5, align 8
  %62 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %61, i32 0, i32 0
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %62, align 8
  %64 = load %struct.snd_usb_midi_endpoint_info*, %struct.snd_usb_midi_endpoint_info** %6, align 8
  %65 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, %struct.snd_usb_midi_endpoint_info* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @usb_rcvintpipe(%struct.TYPE_12__* %63, i32 %66)
  store i32 %67, i32* %10, align 4
  br label %76

68:                                               ; preds = %55
  %69 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %5, align 8
  %70 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %69, i32 0, i32 0
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %70, align 8
  %72 = load %struct.snd_usb_midi_endpoint_info*, %struct.snd_usb_midi_endpoint_info** %6, align 8
  %73 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, %struct.snd_usb_midi_endpoint_info* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @usb_rcvbulkpipe(%struct.TYPE_12__* %71, i32 %74)
  store i32 %75, i32* %10, align 4
  br label %76

76:                                               ; preds = %68, %60
  %77 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %5, align 8
  %78 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %77, i32 0, i32 0
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %78, align 8
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @usb_maxpacket(%struct.TYPE_12__* %79, i32 %80, i32 0)
  store i32 %81, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %82

82:                                               ; preds = %178, %76
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* @INPUT_URBS, align 4
  %85 = icmp ult i32 %83, %84
  br i1 %85, label %86, label %181

86:                                               ; preds = %82
  %87 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %5, align 8
  %88 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %87, i32 0, i32 0
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %88, align 8
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* @GFP_KERNEL, align 4
  %92 = load %struct.snd_usb_midi_in_endpoint*, %struct.snd_usb_midi_in_endpoint** %8, align 8
  %93 = getelementptr inbounds %struct.snd_usb_midi_in_endpoint, %struct.snd_usb_midi_in_endpoint* %92, i32 0, i32 0
  %94 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %93, align 8
  %95 = load i32, i32* %12, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %94, i64 %96
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 1
  %100 = call i8* @usb_alloc_coherent(%struct.TYPE_12__* %89, i32 %90, i32 %91, i32* %99)
  store i8* %100, i8** %9, align 8
  %101 = load i8*, i8** %9, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %106, label %103

103:                                              ; preds = %86
  %104 = load i32, i32* @ENOMEM, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %13, align 4
  br label %185

106:                                              ; preds = %86
  %107 = load %struct.snd_usb_midi_endpoint_info*, %struct.snd_usb_midi_endpoint_info** %6, align 8
  %108 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, %struct.snd_usb_midi_endpoint_info* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %131

111:                                              ; preds = %106
  %112 = load %struct.snd_usb_midi_in_endpoint*, %struct.snd_usb_midi_in_endpoint** %8, align 8
  %113 = getelementptr inbounds %struct.snd_usb_midi_in_endpoint, %struct.snd_usb_midi_in_endpoint* %112, i32 0, i32 0
  %114 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %113, align 8
  %115 = load i32, i32* %12, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %114, i64 %116
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %117, align 8
  %119 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %5, align 8
  %120 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %119, i32 0, i32 0
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %120, align 8
  %122 = load i32, i32* %10, align 4
  %123 = load i8*, i8** %9, align 8
  %124 = load i32, i32* %11, align 4
  %125 = load i32, i32* @snd_usbmidi_in_urb_complete, align 4
  %126 = load %struct.snd_usb_midi_in_endpoint*, %struct.snd_usb_midi_in_endpoint** %8, align 8
  %127 = load %struct.snd_usb_midi_endpoint_info*, %struct.snd_usb_midi_endpoint_info** %6, align 8
  %128 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, %struct.snd_usb_midi_endpoint_info* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @usb_fill_int_urb(%struct.TYPE_11__* %118, %struct.TYPE_12__* %121, i32 %122, i8* %123, i32 %124, i32 %125, %struct.snd_usb_midi_in_endpoint* %126, i32 %129)
  br label %148

131:                                              ; preds = %106
  %132 = load %struct.snd_usb_midi_in_endpoint*, %struct.snd_usb_midi_in_endpoint** %8, align 8
  %133 = getelementptr inbounds %struct.snd_usb_midi_in_endpoint, %struct.snd_usb_midi_in_endpoint* %132, i32 0, i32 0
  %134 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %133, align 8
  %135 = load i32, i32* %12, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %134, i64 %136
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %137, align 8
  %139 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %5, align 8
  %140 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %139, i32 0, i32 0
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %140, align 8
  %142 = load i32, i32* %10, align 4
  %143 = load i8*, i8** %9, align 8
  %144 = load i32, i32* %11, align 4
  %145 = load i32, i32* @snd_usbmidi_in_urb_complete, align 4
  %146 = load %struct.snd_usb_midi_in_endpoint*, %struct.snd_usb_midi_in_endpoint** %8, align 8
  %147 = call i32 @usb_fill_bulk_urb(%struct.TYPE_11__* %138, %struct.TYPE_12__* %141, i32 %142, i8* %143, i32 %144, i32 %145, %struct.snd_usb_midi_in_endpoint* %146)
  br label %148

148:                                              ; preds = %131, %111
  %149 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %150 = load %struct.snd_usb_midi_in_endpoint*, %struct.snd_usb_midi_in_endpoint** %8, align 8
  %151 = getelementptr inbounds %struct.snd_usb_midi_in_endpoint, %struct.snd_usb_midi_in_endpoint* %150, i32 0, i32 0
  %152 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %151, align 8
  %153 = load i32, i32* %12, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %152, i64 %154
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 0
  store i32 %149, i32* %157, align 4
  %158 = load %struct.snd_usb_midi_in_endpoint*, %struct.snd_usb_midi_in_endpoint** %8, align 8
  %159 = getelementptr inbounds %struct.snd_usb_midi_in_endpoint, %struct.snd_usb_midi_in_endpoint* %158, i32 0, i32 0
  %160 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %159, align 8
  %161 = load i32, i32* %12, align 4
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %160, i64 %162
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %163, align 8
  %165 = call i32 @usb_urb_ep_type_check(%struct.TYPE_11__* %164)
  store i32 %165, i32* %13, align 4
  %166 = load i32, i32* %13, align 4
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %168, label %177

168:                                              ; preds = %148
  %169 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %5, align 8
  %170 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %169, i32 0, i32 0
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 0
  %173 = load %struct.snd_usb_midi_endpoint_info*, %struct.snd_usb_midi_endpoint_info** %6, align 8
  %174 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, %struct.snd_usb_midi_endpoint_info* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @dev_err(i32* %172, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %175)
  br label %185

177:                                              ; preds = %148
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %12, align 4
  %180 = add i32 %179, 1
  store i32 %180, i32* %12, align 4
  br label %82

181:                                              ; preds = %82
  %182 = load %struct.snd_usb_midi_in_endpoint*, %struct.snd_usb_midi_in_endpoint** %8, align 8
  %183 = load %struct.snd_usb_midi_endpoint*, %struct.snd_usb_midi_endpoint** %7, align 8
  %184 = getelementptr inbounds %struct.snd_usb_midi_endpoint, %struct.snd_usb_midi_endpoint* %183, i32 0, i32 0
  store %struct.snd_usb_midi_in_endpoint* %182, %struct.snd_usb_midi_in_endpoint** %184, align 8
  store i32 0, i32* %4, align 4
  br label %190

185:                                              ; preds = %168, %103, %48
  %186 = load %struct.snd_usb_midi_in_endpoint*, %struct.snd_usb_midi_in_endpoint** %8, align 8
  %187 = call i32 @snd_usbmidi_in_endpoint_delete(%struct.snd_usb_midi_in_endpoint* %186)
  %188 = load i32, i32* @ENOMEM, align 4
  %189 = sub nsw i32 0, %188
  store i32 %189, i32* %4, align 4
  br label %190

190:                                              ; preds = %185, %181, %20
  %191 = load i32, i32* %4, align 4
  ret i32 %191
}

declare dso_local %struct.snd_usb_midi_in_endpoint* @kzalloc(i32, i32) #1

declare dso_local %struct.TYPE_11__* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_rcvintpipe(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @usb_rcvbulkpipe(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @usb_maxpacket(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i8* @usb_alloc_coherent(%struct.TYPE_12__*, i32, i32, i32*) #1

declare dso_local i32 @usb_fill_int_urb(%struct.TYPE_11__*, %struct.TYPE_12__*, i32, i8*, i32, i32, %struct.snd_usb_midi_in_endpoint*, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.TYPE_11__*, %struct.TYPE_12__*, i32, i8*, i32, i32, %struct.snd_usb_midi_in_endpoint*) #1

declare dso_local i32 @usb_urb_ep_type_check(%struct.TYPE_11__*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @snd_usbmidi_in_endpoint_delete(%struct.snd_usb_midi_in_endpoint*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
