; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/fireface/extr_ff-protocol-latter.c_latter_fill_midi_msg.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/fireface/extr_ff-protocol-latter.c_latter_fill_midi_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ff = type { i32*, i32*, i32** }
%struct.snd_rawmidi_substream = type { i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ff*, %struct.snd_rawmidi_substream*, i32)* @latter_fill_midi_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @latter_fill_midi_msg(%struct.snd_ff* %0, %struct.snd_rawmidi_substream* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_ff*, align 8
  %6 = alloca %struct.snd_rawmidi_substream*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.snd_ff* %0, %struct.snd_ff** %5, align 8
  store %struct.snd_rawmidi_substream* %1, %struct.snd_rawmidi_substream** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = bitcast %struct.TYPE_3__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 4, i1 false)
  %12 = bitcast %struct.TYPE_3__* %8 to i32*
  store i32* %12, i32** %9, align 8
  %13 = load i32, i32* %7, align 4
  %14 = shl i32 %13, 4
  %15 = load i32*, i32** %9, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %6, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = call i32 @snd_rawmidi_transmit_peek(%struct.snd_rawmidi_substream* %17, i32* %19, i32 3)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp sle i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %4, align 4
  br label %116

25:                                               ; preds = %3
  %26 = load %struct.snd_ff*, %struct.snd_ff** %5, align 8
  %27 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %61, label %34

34:                                               ; preds = %25
  %35 = load i32*, i32** %9, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 240
  br i1 %38, label %39, label %48

39:                                               ; preds = %34
  %40 = load i32, i32* %10, align 4
  %41 = load i32*, i32** %9, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @calculate_message_bytes(i32 %43)
  %45 = icmp slt i32 %40, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %116

47:                                               ; preds = %39
  br label %55

48:                                               ; preds = %34
  %49 = load %struct.snd_ff*, %struct.snd_ff** %5, align 8
  %50 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32 1, i32* %54, align 4
  br label %55

55:                                               ; preds = %48, %47
  %56 = load i32, i32* %10, align 4
  %57 = load i32*, i32** %9, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  br label %97

61:                                               ; preds = %25
  %62 = load i32*, i32** %9, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 247
  br i1 %65, label %66, label %85

66:                                               ; preds = %61
  %67 = load i32*, i32** %9, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 2
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 247
  br i1 %70, label %76, label %71

71:                                               ; preds = %66
  %72 = load i32*, i32** %9, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 3
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 247
  br i1 %75, label %76, label %79

76:                                               ; preds = %71, %66
  %77 = load i32, i32* %10, align 4
  %78 = sub nsw i32 %77, 1
  store i32 %78, i32* %10, align 4
  br label %79

79:                                               ; preds = %76, %71
  %80 = load i32, i32* %10, align 4
  %81 = load i32*, i32** %9, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 4
  br label %96

85:                                               ; preds = %61
  %86 = load %struct.snd_ff*, %struct.snd_ff** %5, align 8
  %87 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  store i32 0, i32* %91, align 4
  store i32 1, i32* %10, align 4
  %92 = load i32*, i32** %9, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, 15
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %85, %79
  br label %97

97:                                               ; preds = %96, %55
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @cpu_to_le32(i32 %99)
  %101 = load %struct.snd_ff*, %struct.snd_ff** %5, align 8
  %102 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %101, i32 0, i32 2
  %103 = load i32**, i32*** %102, align 8
  %104 = load i32, i32* %7, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds i32*, i32** %103, i64 %105
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  store i32 %100, i32* %108, align 4
  %109 = load i32, i32* %10, align 4
  %110 = load %struct.snd_ff*, %struct.snd_ff** %5, align 8
  %111 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %7, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  store i32 %109, i32* %115, align 4
  store i32 1, i32* %4, align 4
  br label %116

116:                                              ; preds = %97, %46, %23
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @snd_rawmidi_transmit_peek(%struct.snd_rawmidi_substream*, i32*, i32) #2

declare dso_local i32 @calculate_message_bytes(i32) #2

declare dso_local i32 @cpu_to_le32(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
