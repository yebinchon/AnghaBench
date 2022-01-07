; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/usx2y/extr_usbusx2yaudio.c_usX2Y_urbs_allocate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/usx2y/extr_usbusx2yaudio.c_usX2Y_urbs_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usX2Y_substream = type { i32, %struct.urb**, i32*, i32, %struct.TYPE_2__* }
%struct.urb = type { i32, i32, i32, %struct.snd_usX2Y_substream*, i32, %struct.usb_device*, i32* }
%struct.usb_device = type { i32 }
%struct.TYPE_2__ = type { %struct.usb_device*, %struct.snd_usX2Y_substream** }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NRURBS = common dso_local global i32 0, align 4
@i_usX2Y_subs_startup = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_usX2Y_substream*)* @usX2Y_urbs_allocate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usX2Y_urbs_allocate(%struct.snd_usX2Y_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_usX2Y_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_device*, align 8
  %8 = alloca %struct.urb**, align 8
  store %struct.snd_usX2Y_substream* %0, %struct.snd_usX2Y_substream** %3, align 8
  %9 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %3, align 8
  %10 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %3, align 8
  %11 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %10, i32 0, i32 4
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load %struct.snd_usX2Y_substream**, %struct.snd_usX2Y_substream*** %13, align 8
  %15 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %16 = getelementptr inbounds %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %14, i64 %15
  %17 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %16, align 8
  %18 = icmp eq %struct.snd_usX2Y_substream* %9, %17
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %6, align 4
  %20 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %3, align 8
  %21 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %20, i32 0, i32 4
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.usb_device*, %struct.usb_device** %23, align 8
  store %struct.usb_device* %24, %struct.usb_device** %7, align 8
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %1
  %28 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %29 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %3, align 8
  %30 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @usb_sndisocpipe(%struct.usb_device* %28, i32 %31)
  br label %39

33:                                               ; preds = %1
  %34 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %35 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %3, align 8
  %36 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @usb_rcvisocpipe(%struct.usb_device* %34, i32 %37)
  br label %39

39:                                               ; preds = %33, %27
  %40 = phi i32 [ %32, %27 ], [ %38, %33 ]
  store i32 %40, i32* %5, align 4
  %41 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @usb_maxpacket(%struct.usb_device* %41, i32 %42, i32 %43)
  %45 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %3, align 8
  %46 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %3, align 8
  %48 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %39
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %169

54:                                               ; preds = %39
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %79

57:                                               ; preds = %54
  %58 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %3, align 8
  %59 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = icmp eq i32* null, %60
  br i1 %61, label %62, label %79

62:                                               ; preds = %57
  %63 = call i32 (...) @nr_of_packs()
  %64 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %3, align 8
  %65 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @GFP_KERNEL, align 4
  %68 = call i32* @kcalloc(i32 %63, i32 %66, i32 %67)
  %69 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %3, align 8
  %70 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %69, i32 0, i32 2
  store i32* %68, i32** %70, align 8
  %71 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %3, align 8
  %72 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %62
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %2, align 4
  br label %169

78:                                               ; preds = %62
  br label %79

79:                                               ; preds = %78, %57, %54
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %165, %79
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* @NRURBS, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %168

84:                                               ; preds = %80
  %85 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %3, align 8
  %86 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %85, i32 0, i32 1
  %87 = load %struct.urb**, %struct.urb*** %86, align 8
  %88 = load i32, i32* %4, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.urb*, %struct.urb** %87, i64 %89
  store %struct.urb** %90, %struct.urb*** %8, align 8
  %91 = load %struct.urb**, %struct.urb*** %8, align 8
  %92 = load %struct.urb*, %struct.urb** %91, align 8
  %93 = icmp ne %struct.urb* %92, null
  br i1 %93, label %94, label %98

94:                                               ; preds = %84
  %95 = load %struct.urb**, %struct.urb*** %8, align 8
  %96 = load %struct.urb*, %struct.urb** %95, align 8
  %97 = call i32 @usb_kill_urb(%struct.urb* %96)
  br label %165

98:                                               ; preds = %84
  %99 = call i32 (...) @nr_of_packs()
  %100 = load i32, i32* @GFP_KERNEL, align 4
  %101 = call %struct.urb* @usb_alloc_urb(i32 %99, i32 %100)
  %102 = load %struct.urb**, %struct.urb*** %8, align 8
  store %struct.urb* %101, %struct.urb** %102, align 8
  %103 = load %struct.urb**, %struct.urb*** %8, align 8
  %104 = load %struct.urb*, %struct.urb** %103, align 8
  %105 = icmp eq %struct.urb* null, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %98
  %107 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %3, align 8
  %108 = call i32 @usX2Y_urbs_release(%struct.snd_usX2Y_substream* %107)
  %109 = load i32, i32* @ENOMEM, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %2, align 4
  br label %169

111:                                              ; preds = %98
  %112 = load i32, i32* %6, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %141, label %114

114:                                              ; preds = %111
  %115 = load %struct.urb**, %struct.urb*** %8, align 8
  %116 = load %struct.urb*, %struct.urb** %115, align 8
  %117 = getelementptr inbounds %struct.urb, %struct.urb* %116, i32 0, i32 6
  %118 = load i32*, i32** %117, align 8
  %119 = icmp ne i32* %118, null
  br i1 %119, label %141, label %120

120:                                              ; preds = %114
  %121 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %3, align 8
  %122 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 (...) @nr_of_packs()
  %125 = load i32, i32* @GFP_KERNEL, align 4
  %126 = call i32* @kmalloc_array(i32 %123, i32 %124, i32 %125)
  %127 = load %struct.urb**, %struct.urb*** %8, align 8
  %128 = load %struct.urb*, %struct.urb** %127, align 8
  %129 = getelementptr inbounds %struct.urb, %struct.urb* %128, i32 0, i32 6
  store i32* %126, i32** %129, align 8
  %130 = load %struct.urb**, %struct.urb*** %8, align 8
  %131 = load %struct.urb*, %struct.urb** %130, align 8
  %132 = getelementptr inbounds %struct.urb, %struct.urb* %131, i32 0, i32 6
  %133 = load i32*, i32** %132, align 8
  %134 = icmp eq i32* null, %133
  br i1 %134, label %135, label %140

135:                                              ; preds = %120
  %136 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %3, align 8
  %137 = call i32 @usX2Y_urbs_release(%struct.snd_usX2Y_substream* %136)
  %138 = load i32, i32* @ENOMEM, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %2, align 4
  br label %169

140:                                              ; preds = %120
  br label %141

141:                                              ; preds = %140, %114, %111
  %142 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %143 = load %struct.urb**, %struct.urb*** %8, align 8
  %144 = load %struct.urb*, %struct.urb** %143, align 8
  %145 = getelementptr inbounds %struct.urb, %struct.urb* %144, i32 0, i32 5
  store %struct.usb_device* %142, %struct.usb_device** %145, align 8
  %146 = load i32, i32* %5, align 4
  %147 = load %struct.urb**, %struct.urb*** %8, align 8
  %148 = load %struct.urb*, %struct.urb** %147, align 8
  %149 = getelementptr inbounds %struct.urb, %struct.urb* %148, i32 0, i32 0
  store i32 %146, i32* %149, align 8
  %150 = call i32 (...) @nr_of_packs()
  %151 = load %struct.urb**, %struct.urb*** %8, align 8
  %152 = load %struct.urb*, %struct.urb** %151, align 8
  %153 = getelementptr inbounds %struct.urb, %struct.urb* %152, i32 0, i32 4
  store i32 %150, i32* %153, align 8
  %154 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %3, align 8
  %155 = load %struct.urb**, %struct.urb*** %8, align 8
  %156 = load %struct.urb*, %struct.urb** %155, align 8
  %157 = getelementptr inbounds %struct.urb, %struct.urb* %156, i32 0, i32 3
  store %struct.snd_usX2Y_substream* %154, %struct.snd_usX2Y_substream** %157, align 8
  %158 = load %struct.urb**, %struct.urb*** %8, align 8
  %159 = load %struct.urb*, %struct.urb** %158, align 8
  %160 = getelementptr inbounds %struct.urb, %struct.urb* %159, i32 0, i32 1
  store i32 1, i32* %160, align 4
  %161 = load i32, i32* @i_usX2Y_subs_startup, align 4
  %162 = load %struct.urb**, %struct.urb*** %8, align 8
  %163 = load %struct.urb*, %struct.urb** %162, align 8
  %164 = getelementptr inbounds %struct.urb, %struct.urb* %163, i32 0, i32 2
  store i32 %161, i32* %164, align 8
  br label %165

165:                                              ; preds = %141, %94
  %166 = load i32, i32* %4, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %4, align 4
  br label %80

168:                                              ; preds = %80
  store i32 0, i32* %2, align 4
  br label %169

169:                                              ; preds = %168, %135, %106, %75, %51
  %170 = load i32, i32* %2, align 4
  ret i32 %170
}

declare dso_local i32 @usb_sndisocpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_rcvisocpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_maxpacket(%struct.usb_device*, i32, i32) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @nr_of_packs(...) #1

declare dso_local i32 @usb_kill_urb(%struct.urb*) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usX2Y_urbs_release(%struct.snd_usX2Y_substream*) #1

declare dso_local i32* @kmalloc_array(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
