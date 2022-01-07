; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/caiaq/extr_device.c_usb_ep1_command_reply_dispatch.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/caiaq/extr_device.c_usb_ep1_command_reply_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i8*, i32, i32, %struct.snd_usb_caiaqdev*, %struct.TYPE_5__* }
%struct.snd_usb_caiaqdev = type { i8, %struct.TYPE_7__, i32, %struct.TYPE_8__*, %struct.TYPE_6__, i32, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"received EP1 urb->status = %i\0A\00", align 1
@.str.1 = private unnamed_addr constant [89 x i8] c"device spec (firmware %d): audio: %d in, %d out, MIDI: %d in, %d out, data alignment %d\0A\00", align 1
@USB_VID_NATIVEINSTRUMENTS = common dso_local global i32 0, align 4
@USB_PID_AUDIO8DJ = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"unable to submit urb. OOM!?\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @usb_ep1_command_reply_dispatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_ep1_command_reply_dispatch(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.snd_usb_caiaqdev*, align 8
  %6 = alloca i8*, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %7 = load %struct.urb*, %struct.urb** %2, align 8
  %8 = getelementptr inbounds %struct.urb, %struct.urb* %7, i32 0, i32 4
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.urb*, %struct.urb** %2, align 8
  %12 = getelementptr inbounds %struct.urb, %struct.urb* %11, i32 0, i32 3
  %13 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %12, align 8
  store %struct.snd_usb_caiaqdev* %13, %struct.snd_usb_caiaqdev** %5, align 8
  %14 = load %struct.urb*, %struct.urb** %2, align 8
  %15 = getelementptr inbounds %struct.urb, %struct.urb* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %6, align 8
  %17 = load %struct.urb*, %struct.urb** %2, align 8
  %18 = getelementptr inbounds %struct.urb, %struct.urb* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %5, align 8
  %23 = icmp ne %struct.snd_usb_caiaqdev* %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %21, %1
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = load %struct.urb*, %struct.urb** %2, align 8
  %27 = getelementptr inbounds %struct.urb, %struct.urb* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dev_warn(%struct.device* %25, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %147

30:                                               ; preds = %21
  %31 = load i8*, i8** %6, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  switch i32 %34, label %134 [
    i32 132, label %35
    i32 133, label %82
    i32 131, label %91
    i32 128, label %102
  ]

35:                                               ; preds = %30
  %36 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %5, align 8
  %37 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %36, i32 0, i32 6
  %38 = load i8*, i8** %6, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  %40 = call i32 @memcpy(%struct.TYPE_8__* %37, i8* %39, i32 4)
  %41 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %5, align 8
  %42 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %41, i32 0, i32 6
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @le16_to_cpu(i32 %44)
  %46 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %5, align 8
  %47 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %46, i32 0, i32 6
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 5
  store i32 %45, i32* %48, align 4
  %49 = load %struct.device*, %struct.device** %4, align 8
  %50 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %5, align 8
  %51 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %50, i32 0, i32 6
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %5, align 8
  %55 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %54, i32 0, i32 6
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %5, align 8
  %59 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %58, i32 0, i32 6
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %5, align 8
  %63 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %62, i32 0, i32 6
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %5, align 8
  %67 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %66, i32 0, i32 6
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %5, align 8
  %71 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %70, i32 0, i32 6
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @dev_dbg(%struct.device* %49, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %57, i32 %61, i32 %65, i32 %69, i32 %73)
  %75 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %5, align 8
  %76 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  %79 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %5, align 8
  %80 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %79, i32 0, i32 2
  %81 = call i32 @wake_up(i32* %80)
  br label %134

82:                                               ; preds = %30
  %83 = load i8*, i8** %6, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 1
  %85 = load i8, i8* %84, align 1
  %86 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %5, align 8
  %87 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %86, i32 0, i32 0
  store i8 %85, i8* %87, align 8
  %88 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %5, align 8
  %89 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %88, i32 0, i32 2
  %90 = call i32 @wake_up(i32* %89)
  br label %134

91:                                               ; preds = %30
  %92 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %5, align 8
  %93 = load i8*, i8** %6, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 1
  %95 = load i8, i8* %94, align 1
  %96 = load i8*, i8** %6, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 3
  %98 = load i8*, i8** %6, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 2
  %100 = load i8, i8* %99, align 1
  %101 = call i32 @snd_usb_caiaq_midi_handle_input(%struct.snd_usb_caiaqdev* %92, i8 zeroext %95, i8* %97, i8 zeroext %100)
  br label %134

102:                                              ; preds = %30
  %103 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %5, align 8
  %104 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %103, i32 0, i32 4
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @USB_VID_NATIVEINSTRUMENTS, align 4
  %108 = load i32, i32* @USB_PID_AUDIO8DJ, align 4
  %109 = call i32 @USB_ID(i32 %107, i32 %108)
  %110 = icmp eq i32 %106, %109
  br i1 %110, label %111, label %133

111:                                              ; preds = %102
  %112 = load %struct.urb*, %struct.urb** %2, align 8
  %113 = getelementptr inbounds %struct.urb, %struct.urb* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = sext i32 %114 to i64
  %116 = icmp ugt i64 %115, 8
  br i1 %116, label %117, label %120

117:                                              ; preds = %111
  %118 = load %struct.urb*, %struct.urb** %2, align 8
  %119 = getelementptr inbounds %struct.urb, %struct.urb* %118, i32 0, i32 1
  store i32 8, i32* %119, align 8
  br label %120

120:                                              ; preds = %117, %111
  %121 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %5, align 8
  %122 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %121, i32 0, i32 3
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %122, align 8
  %124 = load i8*, i8** %6, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 1
  %126 = load %struct.urb*, %struct.urb** %2, align 8
  %127 = getelementptr inbounds %struct.urb, %struct.urb* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @memcpy(%struct.TYPE_8__* %123, i8* %125, i32 %128)
  %130 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %5, align 8
  %131 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %130, i32 0, i32 2
  %132 = call i32 @wake_up(i32* %131)
  br label %134

133:                                              ; preds = %102
  br label %134

134:                                              ; preds = %30, %133, %120, %91, %82, %35
  %135 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %5, align 8
  %136 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  store i64 0, i64* %137, align 8
  %138 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %5, align 8
  %139 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %138, i32 0, i32 1
  %140 = load i32, i32* @GFP_ATOMIC, align 4
  %141 = call i32 @usb_submit_urb(%struct.TYPE_7__* %139, i32 %140)
  store i32 %141, i32* %3, align 4
  %142 = load i32, i32* %3, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %134
  %145 = load %struct.device*, %struct.device** %4, align 8
  %146 = call i32 @dev_err(%struct.device* %145, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %147

147:                                              ; preds = %24, %144, %134
  ret void
}

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @snd_usb_caiaq_midi_handle_input(%struct.snd_usb_caiaqdev*, i8 zeroext, i8*, i8 zeroext) #1

declare dso_local i32 @USB_ID(i32, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
