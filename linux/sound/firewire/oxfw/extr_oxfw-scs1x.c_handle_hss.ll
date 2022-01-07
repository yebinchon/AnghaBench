; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/oxfw/extr_oxfw-scs1x.c_handle_hss.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/oxfw/extr_oxfw-scs1x.c_handle_hss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_card = type { i32 }
%struct.fw_request = type { i32 }
%struct.fw_scs1x = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.snd_rawmidi_substream = type { i32 }

@RCODE_ADDRESS_ERROR = common dso_local global i32 0, align 4
@TCODE_WRITE_QUADLET_REQUEST = common dso_local global i32 0, align 4
@TCODE_WRITE_BLOCK_REQUEST = common dso_local global i32 0, align 4
@RCODE_TYPE_ERROR = common dso_local global i32 0, align 4
@RCODE_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fw_card*, %struct.fw_request*, i32, i32, i32, i32, i64, i8*, i64, i8*)* @handle_hss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_hss(%struct.fw_card* %0, %struct.fw_request* %1, i32 %2, i32 %3, i32 %4, i32 %5, i64 %6, i8* %7, i64 %8, i8* %9) #0 {
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
  %21 = alloca %struct.fw_scs1x*, align 8
  %22 = alloca %struct.snd_rawmidi_substream*, align 8
  %23 = alloca i32, align 4
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
  %24 = load i8*, i8** %20, align 8
  %25 = bitcast i8* %24 to %struct.fw_scs1x*
  store %struct.fw_scs1x* %25, %struct.fw_scs1x** %21, align 8
  %26 = load i64, i64* %17, align 8
  %27 = load %struct.fw_scs1x*, %struct.fw_scs1x** %21, align 8
  %28 = getelementptr inbounds %struct.fw_scs1x, %struct.fw_scs1x* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %26, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %10
  %33 = load i32, i32* @RCODE_ADDRESS_ERROR, align 4
  store i32 %33, i32* %23, align 4
  br label %63

34:                                               ; preds = %10
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* @TCODE_WRITE_QUADLET_REQUEST, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* @TCODE_WRITE_BLOCK_REQUEST, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* @RCODE_TYPE_ERROR, align 4
  store i32 %43, i32* %23, align 4
  br label %63

44:                                               ; preds = %38, %34
  %45 = load i64, i64* %19, align 8
  %46 = icmp uge i64 %45, 1
  br i1 %46, label %47, label %61

47:                                               ; preds = %44
  %48 = load %struct.fw_scs1x*, %struct.fw_scs1x** %21, align 8
  %49 = getelementptr inbounds %struct.fw_scs1x, %struct.fw_scs1x* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call %struct.snd_rawmidi_substream* @READ_ONCE(i32 %50)
  store %struct.snd_rawmidi_substream* %51, %struct.snd_rawmidi_substream** %22, align 8
  %52 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %22, align 8
  %53 = icmp ne %struct.snd_rawmidi_substream* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %47
  %55 = load %struct.fw_scs1x*, %struct.fw_scs1x** %21, align 8
  %56 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %22, align 8
  %57 = load i8*, i8** %18, align 8
  %58 = load i64, i64* %19, align 8
  %59 = call i32 @midi_input_packet(%struct.fw_scs1x* %55, %struct.snd_rawmidi_substream* %56, i8* %57, i64 %58)
  br label %60

60:                                               ; preds = %54, %47
  br label %61

61:                                               ; preds = %60, %44
  %62 = load i32, i32* @RCODE_COMPLETE, align 4
  store i32 %62, i32* %23, align 4
  br label %63

63:                                               ; preds = %61, %42, %32
  %64 = load %struct.fw_card*, %struct.fw_card** %11, align 8
  %65 = load %struct.fw_request*, %struct.fw_request** %12, align 8
  %66 = load i32, i32* %23, align 4
  %67 = call i32 @fw_send_response(%struct.fw_card* %64, %struct.fw_request* %65, i32 %66)
  ret void
}

declare dso_local %struct.snd_rawmidi_substream* @READ_ONCE(i32) #1

declare dso_local i32 @midi_input_packet(%struct.fw_scs1x*, %struct.snd_rawmidi_substream*, i8*, i64) #1

declare dso_local i32 @fw_send_response(%struct.fw_card*, %struct.fw_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
