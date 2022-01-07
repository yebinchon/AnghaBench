; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer.c_snd_usb_mixer_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer.c_snd_usb_mixer_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32, %struct.TYPE_3__*, %struct.uac2_interrupt_data_msg*, %struct.usb_mixer_interface* }
%struct.TYPE_3__ = type { i32 }
%struct.uac2_interrupt_data_msg = type { i32, i32, i32, i32, i32, i32 }
%struct.usb_mixer_interface = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.uac1_status_word = type { i32, i32, i32, i32, i32, i32 }

@UAC_VERSION_1 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"status interrupt: %02x %02x\0A\00", align 1
@UAC1_STATUS_TYPE_ORIG_MASK = common dso_local global i32 0, align 4
@UAC1_STATUS_TYPE_ORIG_AUDIO_CONTROL_IF = common dso_local global i32 0, align 4
@UAC1_STATUS_TYPE_MEM_CHANGED = common dso_local global i32 0, align 4
@UAC2_INTERRUPT_DATA_MSG_VENDOR = common dso_local global i32 0, align 4
@UAC2_INTERRUPT_DATA_MSG_EP = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@ESHUTDOWN = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @snd_usb_mixer_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_usb_mixer_interrupt(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.usb_mixer_interface*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.uac1_status_word*, align 8
  %7 = alloca %struct.uac2_interrupt_data_msg*, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %8 = load %struct.urb*, %struct.urb** %2, align 8
  %9 = getelementptr inbounds %struct.urb, %struct.urb* %8, i32 0, i32 4
  %10 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %9, align 8
  store %struct.usb_mixer_interface* %10, %struct.usb_mixer_interface** %3, align 8
  %11 = load %struct.urb*, %struct.urb** %2, align 8
  %12 = getelementptr inbounds %struct.urb, %struct.urb* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %4, align 4
  %14 = load %struct.urb*, %struct.urb** %2, align 8
  %15 = getelementptr inbounds %struct.urb, %struct.urb* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %129

20:                                               ; preds = %1
  %21 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %22 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @UAC_VERSION_1, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %83

26:                                               ; preds = %20
  %27 = load %struct.urb*, %struct.urb** %2, align 8
  %28 = getelementptr inbounds %struct.urb, %struct.urb* %27, i32 0, i32 3
  %29 = load %struct.uac2_interrupt_data_msg*, %struct.uac2_interrupt_data_msg** %28, align 8
  %30 = bitcast %struct.uac2_interrupt_data_msg* %29 to %struct.uac1_status_word*
  store %struct.uac1_status_word* %30, %struct.uac1_status_word** %6, align 8
  br label %31

31:                                               ; preds = %75, %26
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = icmp uge i64 %33, 24
  br i1 %34, label %35, label %82

35:                                               ; preds = %31
  %36 = load %struct.urb*, %struct.urb** %2, align 8
  %37 = getelementptr inbounds %struct.urb, %struct.urb* %36, i32 0, i32 2
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load %struct.uac1_status_word*, %struct.uac1_status_word** %6, align 8
  %41 = getelementptr inbounds %struct.uac1_status_word, %struct.uac1_status_word* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.uac1_status_word*, %struct.uac1_status_word** %6, align 8
  %44 = getelementptr inbounds %struct.uac1_status_word, %struct.uac1_status_word* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dev_dbg(i32* %39, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %45)
  %47 = load %struct.uac1_status_word*, %struct.uac1_status_word** %6, align 8
  %48 = getelementptr inbounds %struct.uac1_status_word, %struct.uac1_status_word* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @UAC1_STATUS_TYPE_ORIG_MASK, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* @UAC1_STATUS_TYPE_ORIG_AUDIO_CONTROL_IF, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %35
  br label %75

55:                                               ; preds = %35
  %56 = load %struct.uac1_status_word*, %struct.uac1_status_word** %6, align 8
  %57 = getelementptr inbounds %struct.uac1_status_word, %struct.uac1_status_word* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @UAC1_STATUS_TYPE_MEM_CHANGED, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %55
  %63 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %64 = load %struct.uac1_status_word*, %struct.uac1_status_word** %6, align 8
  %65 = getelementptr inbounds %struct.uac1_status_word, %struct.uac1_status_word* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @snd_usb_mixer_rc_memory_change(%struct.usb_mixer_interface* %63, i32 %66)
  br label %74

68:                                               ; preds = %55
  %69 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %70 = load %struct.uac1_status_word*, %struct.uac1_status_word** %6, align 8
  %71 = getelementptr inbounds %struct.uac1_status_word, %struct.uac1_status_word* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @snd_usb_mixer_notify_id(%struct.usb_mixer_interface* %69, i32 %72)
  br label %74

74:                                               ; preds = %68, %62
  br label %75

75:                                               ; preds = %74, %54
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = sub i64 %77, 24
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %4, align 4
  %80 = load %struct.uac1_status_word*, %struct.uac1_status_word** %6, align 8
  %81 = getelementptr inbounds %struct.uac1_status_word, %struct.uac1_status_word* %80, i32 1
  store %struct.uac1_status_word* %81, %struct.uac1_status_word** %6, align 8
  br label %31

82:                                               ; preds = %31
  br label %128

83:                                               ; preds = %20
  %84 = load %struct.urb*, %struct.urb** %2, align 8
  %85 = getelementptr inbounds %struct.urb, %struct.urb* %84, i32 0, i32 3
  %86 = load %struct.uac2_interrupt_data_msg*, %struct.uac2_interrupt_data_msg** %85, align 8
  store %struct.uac2_interrupt_data_msg* %86, %struct.uac2_interrupt_data_msg** %7, align 8
  br label %87

87:                                               ; preds = %120, %83
  %88 = load i32, i32* %4, align 4
  %89 = sext i32 %88 to i64
  %90 = icmp uge i64 %89, 24
  br i1 %90, label %91, label %127

91:                                               ; preds = %87
  %92 = load %struct.uac2_interrupt_data_msg*, %struct.uac2_interrupt_data_msg** %7, align 8
  %93 = getelementptr inbounds %struct.uac2_interrupt_data_msg, %struct.uac2_interrupt_data_msg* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @UAC2_INTERRUPT_DATA_MSG_VENDOR, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %105, label %98

98:                                               ; preds = %91
  %99 = load %struct.uac2_interrupt_data_msg*, %struct.uac2_interrupt_data_msg** %7, align 8
  %100 = getelementptr inbounds %struct.uac2_interrupt_data_msg, %struct.uac2_interrupt_data_msg* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @UAC2_INTERRUPT_DATA_MSG_EP, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %98, %91
  br label %120

106:                                              ; preds = %98
  %107 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %108 = load %struct.uac2_interrupt_data_msg*, %struct.uac2_interrupt_data_msg** %7, align 8
  %109 = getelementptr inbounds %struct.uac2_interrupt_data_msg, %struct.uac2_interrupt_data_msg* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.uac2_interrupt_data_msg*, %struct.uac2_interrupt_data_msg** %7, align 8
  %112 = getelementptr inbounds %struct.uac2_interrupt_data_msg, %struct.uac2_interrupt_data_msg* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @le16_to_cpu(i32 %113)
  %115 = load %struct.uac2_interrupt_data_msg*, %struct.uac2_interrupt_data_msg** %7, align 8
  %116 = getelementptr inbounds %struct.uac2_interrupt_data_msg, %struct.uac2_interrupt_data_msg* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @le16_to_cpu(i32 %117)
  %119 = call i32 @snd_usb_mixer_interrupt_v2(%struct.usb_mixer_interface* %107, i32 %110, i32 %114, i32 %118)
  br label %120

120:                                              ; preds = %106, %105
  %121 = load i32, i32* %4, align 4
  %122 = sext i32 %121 to i64
  %123 = sub i64 %122, 24
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %4, align 4
  %125 = load %struct.uac2_interrupt_data_msg*, %struct.uac2_interrupt_data_msg** %7, align 8
  %126 = getelementptr inbounds %struct.uac2_interrupt_data_msg, %struct.uac2_interrupt_data_msg* %125, i32 1
  store %struct.uac2_interrupt_data_msg* %126, %struct.uac2_interrupt_data_msg** %7, align 8
  br label %87

127:                                              ; preds = %87
  br label %128

128:                                              ; preds = %127, %82
  br label %129

129:                                              ; preds = %128, %19
  %130 = load i32, i32* %5, align 4
  %131 = load i32, i32* @ENOENT, align 4
  %132 = sub nsw i32 0, %131
  %133 = icmp ne i32 %130, %132
  br i1 %133, label %134, label %155

134:                                              ; preds = %129
  %135 = load i32, i32* %5, align 4
  %136 = load i32, i32* @ECONNRESET, align 4
  %137 = sub nsw i32 0, %136
  %138 = icmp ne i32 %135, %137
  br i1 %138, label %139, label %155

139:                                              ; preds = %134
  %140 = load i32, i32* %5, align 4
  %141 = load i32, i32* @ESHUTDOWN, align 4
  %142 = sub nsw i32 0, %141
  %143 = icmp ne i32 %140, %142
  br i1 %143, label %144, label %155

144:                                              ; preds = %139
  %145 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %146 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %145, i32 0, i32 1
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %148, align 8
  %150 = load %struct.urb*, %struct.urb** %2, align 8
  %151 = getelementptr inbounds %struct.urb, %struct.urb* %150, i32 0, i32 2
  store %struct.TYPE_3__* %149, %struct.TYPE_3__** %151, align 8
  %152 = load %struct.urb*, %struct.urb** %2, align 8
  %153 = load i32, i32* @GFP_ATOMIC, align 4
  %154 = call i32 @usb_submit_urb(%struct.urb* %152, i32 %153)
  br label %155

155:                                              ; preds = %144, %139, %134, %129
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @snd_usb_mixer_rc_memory_change(%struct.usb_mixer_interface*, i32) #1

declare dso_local i32 @snd_usb_mixer_notify_id(%struct.usb_mixer_interface*, i32) #1

declare dso_local i32 @snd_usb_mixer_interrupt_v2(%struct.usb_mixer_interface*, i32, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
