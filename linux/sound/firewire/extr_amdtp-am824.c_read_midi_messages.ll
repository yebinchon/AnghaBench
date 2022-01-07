; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/extr_amdtp-am824.c_read_midi_messages.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/extr_amdtp-am824.c_read_midi_messages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdtp_stream = type { i32, i32, %struct.amdtp_am824* }
%struct.amdtp_am824 = type { i64, i64* }

@CIP_UNALIGHED_DBC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdtp_stream*, i32*, i32, i32)* @read_midi_messages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_midi_messages(%struct.amdtp_stream* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.amdtp_stream*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.amdtp_am824*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.amdtp_stream* %0, %struct.amdtp_stream** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.amdtp_stream*, %struct.amdtp_stream** %5, align 8
  %15 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %14, i32 0, i32 2
  %16 = load %struct.amdtp_am824*, %struct.amdtp_am824** %15, align 8
  store %struct.amdtp_am824* %16, %struct.amdtp_am824** %9, align 8
  store i32 0, i32* %12, align 4
  br label %17

17:                                               ; preds = %78, %4
  %18 = load i32, i32* %12, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %81

21:                                               ; preds = %17
  %22 = load i32, i32* %12, align 4
  store i32 %22, i32* %13, align 4
  %23 = load %struct.amdtp_stream*, %struct.amdtp_stream** %5, align 8
  %24 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @CIP_UNALIGHED_DBC, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %21
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %13, align 4
  %32 = add i32 %31, %30
  store i32 %32, i32* %13, align 4
  br label %33

33:                                               ; preds = %29, %21
  %34 = load i32, i32* %13, align 4
  %35 = urem i32 %34, 8
  store i32 %35, i32* %13, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = load %struct.amdtp_am824*, %struct.amdtp_am824** %9, align 8
  %38 = getelementptr inbounds %struct.amdtp_am824, %struct.amdtp_am824* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  store i32* %40, i32** %11, align 8
  %41 = load i32*, i32** %11, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 %43, 128
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp sle i32 1, %45
  br i1 %46, label %47, label %71

47:                                               ; preds = %33
  %48 = load i32, i32* %10, align 4
  %49 = icmp sle i32 %48, 3
  br i1 %49, label %50, label %71

50:                                               ; preds = %47
  %51 = load %struct.amdtp_am824*, %struct.amdtp_am824** %9, align 8
  %52 = getelementptr inbounds %struct.amdtp_am824, %struct.amdtp_am824* %51, i32 0, i32 1
  %53 = load i64*, i64** %52, align 8
  %54 = load i32, i32* %13, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %50
  %60 = load %struct.amdtp_am824*, %struct.amdtp_am824** %9, align 8
  %61 = getelementptr inbounds %struct.amdtp_am824, %struct.amdtp_am824* %60, i32 0, i32 1
  %62 = load i64*, i64** %61, align 8
  %63 = load i32, i32* %13, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = load i32*, i32** %11, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @snd_rawmidi_receive(i64 %66, i32* %68, i32 %69)
  br label %71

71:                                               ; preds = %59, %50, %47, %33
  %72 = load %struct.amdtp_stream*, %struct.amdtp_stream** %5, align 8
  %73 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %6, align 8
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  store i32* %77, i32** %6, align 8
  br label %78

78:                                               ; preds = %71
  %79 = load i32, i32* %12, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %12, align 4
  br label %17

81:                                               ; preds = %17
  ret void
}

declare dso_local i32 @snd_rawmidi_receive(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
