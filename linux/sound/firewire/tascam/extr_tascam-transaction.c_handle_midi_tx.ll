; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/tascam/extr_tascam-transaction.c_handle_midi_tx.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/tascam/extr_tascam-transaction.c_handle_midi_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_card = type { i32 }
%struct.fw_request = type { i32 }
%struct.snd_tscm = type { i32*, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.snd_rawmidi_substream = type { i32 }

@RCODE_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fw_card*, %struct.fw_request*, i32, i32, i32, i32, i64, i8*, i64, i8*)* @handle_midi_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_midi_tx(%struct.fw_card* %0, %struct.fw_request* %1, i32 %2, i32 %3, i32 %4, i32 %5, i64 %6, i8* %7, i64 %8, i8* %9) #0 {
  %11 = alloca %struct.fw_card*, align 8
  %12 = alloca %struct.fw_request*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct.snd_tscm*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.snd_rawmidi_substream*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32, align 4
  store %struct.fw_card* %0, %struct.fw_card** %11, align 8
  store %struct.fw_request* %1, %struct.fw_request** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i64 %6, i64* %17, align 8
  store i8* %7, i8** %18, align 8
  store i64 %8, i64* %19, align 8
  store i8* %9, i8** %20, align 8
  %29 = load i8*, i8** %20, align 8
  %30 = bitcast i8* %29 to %struct.snd_tscm*
  store %struct.snd_tscm* %30, %struct.snd_tscm** %21, align 8
  %31 = load i8*, i8** %18, align 8
  %32 = bitcast i8* %31 to i32*
  store i32* %32, i32** %22, align 8
  %33 = load i64, i64* %17, align 8
  %34 = load %struct.snd_tscm*, %struct.snd_tscm** %21, align 8
  %35 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %33, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %10
  br label %116

40:                                               ; preds = %10
  %41 = load i64, i64* %19, align 8
  %42 = udiv i64 %41, 8
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %23, align 4
  store i32 0, i32* %24, align 4
  br label %44

44:                                               ; preds = %112, %40
  %45 = load i32, i32* %24, align 4
  %46 = load i32, i32* %23, align 4
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %48, label %115

48:                                               ; preds = %44
  %49 = load i32*, i32** %22, align 8
  %50 = load i32, i32* %24, align 4
  %51 = mul i32 %50, 2
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  store i32* %53, i32** %27, align 8
  %54 = load i32*, i32** %27, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = ashr i32 %56, 4
  store i32 %57, i32* %25, align 4
  %58 = load i32, i32* %25, align 4
  %59 = load %struct.snd_tscm*, %struct.snd_tscm** %21, align 8
  %60 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %59, i32 0, i32 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp uge i32 %58, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %48
  br label %116

66:                                               ; preds = %48
  %67 = load i32*, i32** %27, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @calculate_message_bytes(i32 %69)
  store i32 %70, i32* %28, align 4
  %71 = load i32, i32* %28, align 4
  %72 = icmp sle i32 %71, 0
  br i1 %72, label %73, label %94

73:                                               ; preds = %66
  store i32 1, i32* %28, align 4
  br label %74

74:                                               ; preds = %86, %73
  %75 = load i32, i32* %28, align 4
  %76 = icmp slt i32 %75, 4
  br i1 %76, label %77, label %89

77:                                               ; preds = %74
  %78 = load i32*, i32** %27, align 8
  %79 = load i32, i32* %28, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, 247
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  br label %89

85:                                               ; preds = %77
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %28, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %28, align 4
  br label %74

89:                                               ; preds = %84, %74
  %90 = load i32, i32* %28, align 4
  %91 = icmp eq i32 %90, 4
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  store i32 3, i32* %28, align 4
  br label %93

93:                                               ; preds = %92, %89
  br label %94

94:                                               ; preds = %93, %66
  %95 = load %struct.snd_tscm*, %struct.snd_tscm** %21, align 8
  %96 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %25, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = call %struct.snd_rawmidi_substream* @READ_ONCE(i32 %101)
  store %struct.snd_rawmidi_substream* %102, %struct.snd_rawmidi_substream** %26, align 8
  %103 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %26, align 8
  %104 = icmp ne %struct.snd_rawmidi_substream* %103, null
  br i1 %104, label %105, label %111

105:                                              ; preds = %94
  %106 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %26, align 8
  %107 = load i32*, i32** %27, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 1
  %109 = load i32, i32* %28, align 4
  %110 = call i32 @snd_rawmidi_receive(%struct.snd_rawmidi_substream* %106, i32* %108, i32 %109)
  br label %111

111:                                              ; preds = %105, %94
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %24, align 4
  %114 = add i32 %113, 1
  store i32 %114, i32* %24, align 4
  br label %44

115:                                              ; preds = %44
  br label %116

116:                                              ; preds = %115, %65, %39
  %117 = load %struct.fw_card*, %struct.fw_card** %11, align 8
  %118 = load %struct.fw_request*, %struct.fw_request** %12, align 8
  %119 = load i32, i32* @RCODE_COMPLETE, align 4
  %120 = call i32 @fw_send_response(%struct.fw_card* %117, %struct.fw_request* %118, i32 %119)
  ret void
}

declare dso_local i32 @calculate_message_bytes(i32) #1

declare dso_local %struct.snd_rawmidi_substream* @READ_ONCE(i32) #1

declare dso_local i32 @snd_rawmidi_receive(%struct.snd_rawmidi_substream*, i32*, i32) #1

declare dso_local i32 @fw_send_response(%struct.fw_card*, %struct.fw_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
