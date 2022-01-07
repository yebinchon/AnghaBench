; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/usx2y/extr_usbusx2yaudio.c_usX2Y_usbframe_complete.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/usx2y/extr_usbusx2yaudio.c_usX2Y_usbframe_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usX2Y_substream = type { %struct.urb*, i32, %struct.urb** }
%struct.urb = type { i32 }

@state_RUNNING = common dso_local global i32 0, align 4
@state_PRERUNNING = common dso_local global i32 0, align 4
@state_PREPARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream*, i32)* @usX2Y_usbframe_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usX2Y_usbframe_complete(%struct.snd_usX2Y_substream* %0, %struct.snd_usX2Y_substream* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_usX2Y_substream*, align 8
  %6 = alloca %struct.snd_usX2Y_substream*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.urb*, align 8
  store %struct.snd_usX2Y_substream* %0, %struct.snd_usX2Y_substream** %5, align 8
  store %struct.snd_usX2Y_substream* %1, %struct.snd_usX2Y_substream** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %6, align 8
  %12 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %11, i32 0, i32 0
  %13 = load %struct.urb*, %struct.urb** %12, align 8
  store %struct.urb* %13, %struct.urb** %10, align 8
  %14 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %6, align 8
  %15 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %14, i32 0, i32 1
  %16 = call i32 @atomic_read(i32* %15)
  store i32 %16, i32* %9, align 4
  %17 = load %struct.urb*, %struct.urb** %10, align 8
  %18 = icmp ne %struct.urb* null, %17
  br i1 %18, label %19, label %37

19:                                               ; preds = %3
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @state_RUNNING, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %6, align 8
  %25 = load %struct.urb*, %struct.urb** %10, align 8
  %26 = call i32 @usX2Y_urb_play_retire(%struct.snd_usX2Y_substream* %24, %struct.urb* %25)
  br label %36

27:                                               ; preds = %19
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @state_PRERUNNING, align 4
  %30 = icmp sge i32 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %6, align 8
  %33 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %32, i32 0, i32 1
  %34 = call i32 @atomic_inc(i32* %33)
  br label %35

35:                                               ; preds = %31, %27
  br label %36

36:                                               ; preds = %35, %23
  br label %58

37:                                               ; preds = %3
  %38 = load i32, i32* %9, align 4
  switch i32 %38, label %57 [
    i32 129, label %39
    i32 128, label %48
  ]

39:                                               ; preds = %37
  %40 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %6, align 8
  %41 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %40, i32 0, i32 2
  %42 = load %struct.urb**, %struct.urb*** %41, align 8
  %43 = getelementptr inbounds %struct.urb*, %struct.urb** %42, i64 0
  %44 = load %struct.urb*, %struct.urb** %43, align 8
  store %struct.urb* %44, %struct.urb** %10, align 8
  %45 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %6, align 8
  %46 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %45, i32 0, i32 1
  %47 = call i32 @atomic_inc(i32* %46)
  br label %57

48:                                               ; preds = %37
  %49 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %6, align 8
  %50 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %49, i32 0, i32 2
  %51 = load %struct.urb**, %struct.urb*** %50, align 8
  %52 = getelementptr inbounds %struct.urb*, %struct.urb** %51, i64 1
  %53 = load %struct.urb*, %struct.urb** %52, align 8
  store %struct.urb* %53, %struct.urb** %10, align 8
  %54 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %6, align 8
  %55 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %54, i32 0, i32 1
  %56 = call i32 @atomic_inc(i32* %55)
  br label %57

57:                                               ; preds = %37, %48, %39
  br label %58

58:                                               ; preds = %57, %36
  %59 = load %struct.urb*, %struct.urb** %10, align 8
  %60 = icmp ne %struct.urb* %59, null
  br i1 %60, label %61, label %78

61:                                               ; preds = %58
  %62 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %6, align 8
  %63 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %5, align 8
  %64 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %63, i32 0, i32 0
  %65 = load %struct.urb*, %struct.urb** %64, align 8
  %66 = load %struct.urb*, %struct.urb** %10, align 8
  %67 = call i32 @usX2Y_urb_play_prepare(%struct.snd_usX2Y_substream* %62, %struct.urb* %65, %struct.urb* %66)
  store i32 %67, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %61
  %70 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %6, align 8
  %71 = load %struct.urb*, %struct.urb** %10, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @usX2Y_urb_submit(%struct.snd_usX2Y_substream* %70, %struct.urb* %71, i32 %72)
  store i32 %73, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %69, %61
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %4, align 4
  br label %121

77:                                               ; preds = %69
  br label %78

78:                                               ; preds = %77, %58
  %79 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %6, align 8
  %80 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %79, i32 0, i32 0
  store %struct.urb* null, %struct.urb** %80, align 8
  %81 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %5, align 8
  %82 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %81, i32 0, i32 1
  %83 = call i32 @atomic_read(i32* %82)
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* @state_PREPARED, align 4
  %86 = icmp sge i32 %84, %85
  br i1 %86, label %87, label %118

87:                                               ; preds = %78
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* @state_RUNNING, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %98

91:                                               ; preds = %87
  %92 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %5, align 8
  %93 = call i32 @usX2Y_urb_capt_retire(%struct.snd_usX2Y_substream* %92)
  store i32 %93, i32* %8, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = load i32, i32* %8, align 4
  store i32 %96, i32* %4, align 4
  br label %121

97:                                               ; preds = %91
  br label %107

98:                                               ; preds = %87
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* @state_PRERUNNING, align 4
  %101 = icmp sge i32 %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %98
  %103 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %5, align 8
  %104 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %103, i32 0, i32 1
  %105 = call i32 @atomic_inc(i32* %104)
  br label %106

106:                                              ; preds = %102, %98
  br label %107

107:                                              ; preds = %106, %97
  %108 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %5, align 8
  %109 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %5, align 8
  %110 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %109, i32 0, i32 0
  %111 = load %struct.urb*, %struct.urb** %110, align 8
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @usX2Y_urb_submit(%struct.snd_usX2Y_substream* %108, %struct.urb* %111, i32 %112)
  store i32 %113, i32* %8, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %107
  %116 = load i32, i32* %8, align 4
  store i32 %116, i32* %4, align 4
  br label %121

117:                                              ; preds = %107
  br label %118

118:                                              ; preds = %117, %78
  %119 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %5, align 8
  %120 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %119, i32 0, i32 0
  store %struct.urb* null, %struct.urb** %120, align 8
  store i32 0, i32* %4, align 4
  br label %121

121:                                              ; preds = %118, %115, %95, %75
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @usX2Y_urb_play_retire(%struct.snd_usX2Y_substream*, %struct.urb*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @usX2Y_urb_play_prepare(%struct.snd_usX2Y_substream*, %struct.urb*, %struct.urb*) #1

declare dso_local i32 @usX2Y_urb_submit(%struct.snd_usX2Y_substream*, %struct.urb*, i32) #1

declare dso_local i32 @usX2Y_urb_capt_retire(%struct.snd_usX2Y_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
