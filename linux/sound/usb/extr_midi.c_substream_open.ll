; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_midi.c_substream_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_midi.c_substream_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.snd_usb_midi* }
%struct.snd_usb_midi = type { i32, i32, i32, %struct.snd_kcontrol*, i64*, i32, i64 }
%struct.snd_kcontrol = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_ACCESS_INACTIVE = common dso_local global i32 0, align 4
@SNDRV_CTL_EVENT_MASK_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_rawmidi_substream*, i32, i32)* @substream_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @substream_open(%struct.snd_rawmidi_substream* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_rawmidi_substream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_usb_midi*, align 8
  %9 = alloca %struct.snd_kcontrol*, align 8
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %5, align 8
  %11 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %13, align 8
  store %struct.snd_usb_midi* %14, %struct.snd_usb_midi** %8, align 8
  %15 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %8, align 8
  %16 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %15, i32 0, i32 0
  %17 = call i32 @down_read(i32* %16)
  %18 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %8, align 8
  %19 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %18, i32 0, i32 6
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %3
  %23 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %8, align 8
  %24 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %23, i32 0, i32 0
  %25 = call i32 @up_read(i32* %24)
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  br label %32

31:                                               ; preds = %22
  br label %32

32:                                               ; preds = %31, %28
  %33 = phi i32 [ %30, %28 ], [ 0, %31 ]
  store i32 %33, i32* %4, align 4
  br label %168

34:                                               ; preds = %3
  %35 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %8, align 8
  %36 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %35, i32 0, i32 1
  %37 = call i32 @mutex_lock(i32* %36)
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %101

40:                                               ; preds = %34
  %41 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %8, align 8
  %42 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %41, i32 0, i32 4
  %43 = load i64*, i64** %42, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %81, label %47

47:                                               ; preds = %40
  %48 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %8, align 8
  %49 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %48, i32 0, i32 4
  %50 = load i64*, i64** %49, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %81, label %54

54:                                               ; preds = %47
  %55 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %8, align 8
  %56 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %55, i32 0, i32 3
  %57 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %56, align 8
  %58 = icmp ne %struct.snd_kcontrol* %57, null
  br i1 %58, label %59, label %80

59:                                               ; preds = %54
  %60 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %8, align 8
  %61 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %60, i32 0, i32 3
  %62 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %61, align 8
  store %struct.snd_kcontrol* %62, %struct.snd_kcontrol** %9, align 8
  %63 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_INACTIVE, align 4
  %64 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %9, align 8
  %65 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %64, i32 0, i32 1
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i64 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %63
  store i32 %70, i32* %68, align 4
  %71 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %8, align 8
  %72 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @SNDRV_CTL_EVENT_MASK_INFO, align 4
  %75 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %9, align 8
  %76 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %75, i32 0, i32 0
  %77 = call i32 @snd_ctl_notify(i32 %73, i32 %74, i32* %76)
  %78 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %8, align 8
  %79 = call i32 @update_roland_altsetting(%struct.snd_usb_midi* %78)
  br label %80

80:                                               ; preds = %59, %54
  br label %81

81:                                               ; preds = %80, %47, %40
  %82 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %8, align 8
  %83 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %82, i32 0, i32 4
  %84 = load i64*, i64** %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %88, 1
  store i64 %89, i64* %87, align 8
  %90 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %8, align 8
  %91 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %90, i32 0, i32 4
  %92 = load i64*, i64** %91, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %81
  %97 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %8, align 8
  %98 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %97, i32 0, i32 5
  %99 = call i32 @snd_usbmidi_input_start(i32* %98)
  br label %100

100:                                              ; preds = %96, %81
  br label %161

101:                                              ; preds = %34
  %102 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %8, align 8
  %103 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %102, i32 0, i32 4
  %104 = load i64*, i64** %103, align 8
  %105 = load i32, i32* %6, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i64, i64* %104, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %108, -1
  store i64 %109, i64* %107, align 8
  %110 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %8, align 8
  %111 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %110, i32 0, i32 4
  %112 = load i64*, i64** %111, align 8
  %113 = getelementptr inbounds i64, i64* %112, i64 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %101
  %117 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %8, align 8
  %118 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %117, i32 0, i32 5
  %119 = call i32 @snd_usbmidi_input_stop(i32* %118)
  br label %120

120:                                              ; preds = %116, %101
  %121 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %8, align 8
  %122 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %121, i32 0, i32 4
  %123 = load i64*, i64** %122, align 8
  %124 = getelementptr inbounds i64, i64* %123, i64 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %160, label %127

127:                                              ; preds = %120
  %128 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %8, align 8
  %129 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %128, i32 0, i32 4
  %130 = load i64*, i64** %129, align 8
  %131 = getelementptr inbounds i64, i64* %130, i64 1
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %160, label %134

134:                                              ; preds = %127
  %135 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %8, align 8
  %136 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %135, i32 0, i32 3
  %137 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %136, align 8
  %138 = icmp ne %struct.snd_kcontrol* %137, null
  br i1 %138, label %139, label %159

139:                                              ; preds = %134
  %140 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %8, align 8
  %141 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %140, i32 0, i32 3
  %142 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %141, align 8
  store %struct.snd_kcontrol* %142, %struct.snd_kcontrol** %9, align 8
  %143 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_INACTIVE, align 4
  %144 = xor i32 %143, -1
  %145 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %9, align 8
  %146 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %145, i32 0, i32 1
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i64 0
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = and i32 %150, %144
  store i32 %151, i32* %149, align 4
  %152 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %8, align 8
  %153 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @SNDRV_CTL_EVENT_MASK_INFO, align 4
  %156 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %9, align 8
  %157 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %156, i32 0, i32 0
  %158 = call i32 @snd_ctl_notify(i32 %154, i32 %155, i32* %157)
  br label %159

159:                                              ; preds = %139, %134
  br label %160

160:                                              ; preds = %159, %127, %120
  br label %161

161:                                              ; preds = %160, %100
  %162 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %8, align 8
  %163 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %162, i32 0, i32 1
  %164 = call i32 @mutex_unlock(i32* %163)
  %165 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %8, align 8
  %166 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %165, i32 0, i32 0
  %167 = call i32 @up_read(i32* %166)
  store i32 0, i32* %4, align 4
  br label %168

168:                                              ; preds = %161, %32
  %169 = load i32, i32* %4, align 4
  ret i32 %169
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snd_ctl_notify(i32, i32, i32*) #1

declare dso_local i32 @update_roland_altsetting(%struct.snd_usb_midi*) #1

declare dso_local i32 @snd_usbmidi_input_start(i32*) #1

declare dso_local i32 @snd_usbmidi_input_stop(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
