; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/usx2y/extr_usx2yhwdeppcm.c_usX2Y_usbpcm_usbframe_complete.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/usx2y/extr_usx2yhwdeppcm.c_usX2Y_usbpcm_usbframe_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usX2Y_substream = type { %struct.urb*, i32, %struct.urb** }
%struct.urb = type { i32 }

@state_RUNNING = common dso_local global i32 0, align 4
@state_PRERUNNING = common dso_local global i32 0, align 4
@state_PREPARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream*, i32)* @usX2Y_usbpcm_usbframe_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usX2Y_usbpcm_usbframe_complete(%struct.snd_usX2Y_substream* %0, %struct.snd_usX2Y_substream* %1, %struct.snd_usX2Y_substream* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_usX2Y_substream*, align 8
  %7 = alloca %struct.snd_usX2Y_substream*, align 8
  %8 = alloca %struct.snd_usX2Y_substream*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.urb*, align 8
  store %struct.snd_usX2Y_substream* %0, %struct.snd_usX2Y_substream** %6, align 8
  store %struct.snd_usX2Y_substream* %1, %struct.snd_usX2Y_substream** %7, align 8
  store %struct.snd_usX2Y_substream* %2, %struct.snd_usX2Y_substream** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %8, align 8
  %14 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %13, i32 0, i32 0
  %15 = load %struct.urb*, %struct.urb** %14, align 8
  store %struct.urb* %15, %struct.urb** %12, align 8
  %16 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %8, align 8
  %17 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %16, i32 0, i32 1
  %18 = call i32 @atomic_read(i32* %17)
  store i32 %18, i32* %11, align 4
  %19 = load %struct.urb*, %struct.urb** %12, align 8
  %20 = icmp ne %struct.urb* null, %19
  br i1 %20, label %21, label %39

21:                                               ; preds = %4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* @state_RUNNING, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %8, align 8
  %27 = load %struct.urb*, %struct.urb** %12, align 8
  %28 = call i32 @usX2Y_urb_play_retire(%struct.snd_usX2Y_substream* %26, %struct.urb* %27)
  br label %38

29:                                               ; preds = %21
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @state_PRERUNNING, align 4
  %32 = icmp sge i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %8, align 8
  %35 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %34, i32 0, i32 1
  %36 = call i32 @atomic_inc(i32* %35)
  br label %37

37:                                               ; preds = %33, %29
  br label %38

38:                                               ; preds = %37, %25
  br label %60

39:                                               ; preds = %4
  %40 = load i32, i32* %11, align 4
  switch i32 %40, label %59 [
    i32 129, label %41
    i32 128, label %50
  ]

41:                                               ; preds = %39
  %42 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %8, align 8
  %43 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %42, i32 0, i32 2
  %44 = load %struct.urb**, %struct.urb*** %43, align 8
  %45 = getelementptr inbounds %struct.urb*, %struct.urb** %44, i64 0
  %46 = load %struct.urb*, %struct.urb** %45, align 8
  store %struct.urb* %46, %struct.urb** %12, align 8
  %47 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %8, align 8
  %48 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %47, i32 0, i32 1
  %49 = call i32 @atomic_inc(i32* %48)
  br label %59

50:                                               ; preds = %39
  %51 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %8, align 8
  %52 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %51, i32 0, i32 2
  %53 = load %struct.urb**, %struct.urb*** %52, align 8
  %54 = getelementptr inbounds %struct.urb*, %struct.urb** %53, i64 1
  %55 = load %struct.urb*, %struct.urb** %54, align 8
  store %struct.urb* %55, %struct.urb** %12, align 8
  %56 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %8, align 8
  %57 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %56, i32 0, i32 1
  %58 = call i32 @atomic_inc(i32* %57)
  br label %59

59:                                               ; preds = %39, %50, %41
  br label %60

60:                                               ; preds = %59, %38
  %61 = load %struct.urb*, %struct.urb** %12, align 8
  %62 = icmp ne %struct.urb* %61, null
  br i1 %62, label %63, label %77

63:                                               ; preds = %60
  %64 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %8, align 8
  %65 = load %struct.urb*, %struct.urb** %12, align 8
  %66 = call i32 @usX2Y_hwdep_urb_play_prepare(%struct.snd_usX2Y_substream* %64, %struct.urb* %65)
  store i32 %66, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %63
  %69 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %8, align 8
  %70 = load %struct.urb*, %struct.urb** %12, align 8
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @usX2Y_urb_submit(%struct.snd_usX2Y_substream* %69, %struct.urb* %70, i32 %71)
  store i32 %72, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %68, %63
  %75 = load i32, i32* %10, align 4
  store i32 %75, i32* %5, align 4
  br label %153

76:                                               ; preds = %68
  br label %77

77:                                               ; preds = %76, %60
  %78 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %8, align 8
  %79 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %78, i32 0, i32 0
  store %struct.urb* null, %struct.urb** %79, align 8
  %80 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %6, align 8
  %81 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %80, i32 0, i32 1
  %82 = call i32 @atomic_read(i32* %81)
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* @state_PREPARED, align 4
  %85 = icmp sge i32 %83, %84
  br i1 %85, label %86, label %144

86:                                               ; preds = %77
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* @state_RUNNING, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %86
  %91 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %6, align 8
  %92 = call i32 @usX2Y_usbpcm_urb_capt_retire(%struct.snd_usX2Y_substream* %91)
  store i32 %92, i32* %10, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = load i32, i32* %10, align 4
  store i32 %95, i32* %5, align 4
  br label %153

96:                                               ; preds = %90
  br label %106

97:                                               ; preds = %86
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* @state_PRERUNNING, align 4
  %100 = icmp sge i32 %98, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %97
  %102 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %6, align 8
  %103 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %102, i32 0, i32 1
  %104 = call i32 @atomic_inc(i32* %103)
  br label %105

105:                                              ; preds = %101, %97
  br label %106

106:                                              ; preds = %105, %96
  %107 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %6, align 8
  %108 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %6, align 8
  %109 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %108, i32 0, i32 0
  %110 = load %struct.urb*, %struct.urb** %109, align 8
  %111 = call i32 @usX2Y_usbpcm_urb_capt_iso_advance(%struct.snd_usX2Y_substream* %107, %struct.urb* %110)
  %112 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %7, align 8
  %113 = icmp ne %struct.snd_usX2Y_substream* null, %112
  br i1 %113, label %114, label %119

114:                                              ; preds = %106
  %115 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %7, align 8
  %116 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %115, i32 0, i32 0
  %117 = load %struct.urb*, %struct.urb** %116, align 8
  %118 = call i32 @usX2Y_usbpcm_urb_capt_iso_advance(%struct.snd_usX2Y_substream* null, %struct.urb* %117)
  br label %119

119:                                              ; preds = %114, %106
  %120 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %6, align 8
  %121 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %6, align 8
  %122 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %121, i32 0, i32 0
  %123 = load %struct.urb*, %struct.urb** %122, align 8
  %124 = load i32, i32* %9, align 4
  %125 = call i32 @usX2Y_urb_submit(%struct.snd_usX2Y_substream* %120, %struct.urb* %123, i32 %124)
  store i32 %125, i32* %10, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %119
  %128 = load i32, i32* %10, align 4
  store i32 %128, i32* %5, align 4
  br label %153

129:                                              ; preds = %119
  %130 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %7, align 8
  %131 = icmp ne %struct.snd_usX2Y_substream* null, %130
  br i1 %131, label %132, label %143

132:                                              ; preds = %129
  %133 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %7, align 8
  %134 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %7, align 8
  %135 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %134, i32 0, i32 0
  %136 = load %struct.urb*, %struct.urb** %135, align 8
  %137 = load i32, i32* %9, align 4
  %138 = call i32 @usX2Y_urb_submit(%struct.snd_usX2Y_substream* %133, %struct.urb* %136, i32 %137)
  store i32 %138, i32* %10, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %132
  %141 = load i32, i32* %10, align 4
  store i32 %141, i32* %5, align 4
  br label %153

142:                                              ; preds = %132
  br label %143

143:                                              ; preds = %142, %129
  br label %144

144:                                              ; preds = %143, %77
  %145 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %6, align 8
  %146 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %145, i32 0, i32 0
  store %struct.urb* null, %struct.urb** %146, align 8
  %147 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %7, align 8
  %148 = icmp ne %struct.snd_usX2Y_substream* null, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %144
  %150 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %7, align 8
  %151 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %150, i32 0, i32 0
  store %struct.urb* null, %struct.urb** %151, align 8
  br label %152

152:                                              ; preds = %149, %144
  store i32 0, i32* %5, align 4
  br label %153

153:                                              ; preds = %152, %140, %127, %94, %74
  %154 = load i32, i32* %5, align 4
  ret i32 %154
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @usX2Y_urb_play_retire(%struct.snd_usX2Y_substream*, %struct.urb*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @usX2Y_hwdep_urb_play_prepare(%struct.snd_usX2Y_substream*, %struct.urb*) #1

declare dso_local i32 @usX2Y_urb_submit(%struct.snd_usX2Y_substream*, %struct.urb*, i32) #1

declare dso_local i32 @usX2Y_usbpcm_urb_capt_retire(%struct.snd_usX2Y_substream*) #1

declare dso_local i32 @usX2Y_usbpcm_urb_capt_iso_advance(%struct.snd_usX2Y_substream*, %struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
