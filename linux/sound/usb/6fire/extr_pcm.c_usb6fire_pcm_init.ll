; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/6fire/extr_pcm.c_usb6fire_pcm_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/6fire/extr_pcm.c_usb6fire_pcm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfire_chip = type { %struct.pcm_runtime*, %struct.TYPE_7__*, i32 }
%struct.pcm_runtime = type { %struct.snd_pcm*, %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_6__, %struct.TYPE_5__, i32, i32, i32, i32, %struct.sfire_chip* }
%struct.snd_pcm = type { i32, %struct.pcm_runtime* }
%struct.TYPE_8__ = type { %struct.TYPE_8__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@STREAM_DISABLED = common dso_local global i32 0, align 4
@rates = common dso_local global i32 0, align 4
@PCM_N_URBS = common dso_local global i32 0, align 4
@IN_EP = common dso_local global i32 0, align 4
@usb6fire_pcm_in_urb_handler = common dso_local global i32 0, align 4
@OUT_EP = common dso_local global i32 0, align 4
@usb6fire_pcm_out_urb_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"DMX6FireUSB\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"cannot create pcm instance.\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"DMX 6Fire USB\00", align 1
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@pcm_ops = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"error preallocating pcm buffers.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb6fire_pcm_init(%struct.sfire_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sfire_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_pcm*, align 8
  %7 = alloca %struct.pcm_runtime*, align 8
  store %struct.sfire_chip* %0, %struct.sfire_chip** %3, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.pcm_runtime* @kzalloc(i32 56, i32 %8)
  store %struct.pcm_runtime* %9, %struct.pcm_runtime** %7, align 8
  %10 = load %struct.pcm_runtime*, %struct.pcm_runtime** %7, align 8
  %11 = icmp ne %struct.pcm_runtime* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %157

15:                                               ; preds = %1
  %16 = load %struct.pcm_runtime*, %struct.pcm_runtime** %7, align 8
  %17 = call i32 @usb6fire_pcm_buffers_init(%struct.pcm_runtime* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load %struct.pcm_runtime*, %struct.pcm_runtime** %7, align 8
  %22 = call i32 @usb6fire_pcm_buffers_destroy(%struct.pcm_runtime* %21)
  %23 = load %struct.pcm_runtime*, %struct.pcm_runtime** %7, align 8
  %24 = call i32 @kfree(%struct.pcm_runtime* %23)
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %2, align 4
  br label %157

26:                                               ; preds = %15
  %27 = load %struct.sfire_chip*, %struct.sfire_chip** %3, align 8
  %28 = load %struct.pcm_runtime*, %struct.pcm_runtime** %7, align 8
  %29 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %28, i32 0, i32 9
  store %struct.sfire_chip* %27, %struct.sfire_chip** %29, align 8
  %30 = load i32, i32* @STREAM_DISABLED, align 4
  %31 = load %struct.pcm_runtime*, %struct.pcm_runtime** %7, align 8
  %32 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %31, i32 0, i32 8
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @rates, align 4
  %34 = call i32 @ARRAY_SIZE(i32 %33)
  %35 = load %struct.pcm_runtime*, %struct.pcm_runtime** %7, align 8
  %36 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %35, i32 0, i32 7
  store i32 %34, i32* %36, align 8
  %37 = load %struct.pcm_runtime*, %struct.pcm_runtime** %7, align 8
  %38 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %37, i32 0, i32 6
  %39 = call i32 @init_waitqueue_head(i32* %38)
  %40 = load %struct.pcm_runtime*, %struct.pcm_runtime** %7, align 8
  %41 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %40, i32 0, i32 5
  %42 = call i32 @mutex_init(i32* %41)
  %43 = load %struct.pcm_runtime*, %struct.pcm_runtime** %7, align 8
  %44 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = call i32 @spin_lock_init(i32* %45)
  %47 = load %struct.pcm_runtime*, %struct.pcm_runtime** %7, align 8
  %48 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = call i32 @spin_lock_init(i32* %49)
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %102, %26
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @PCM_N_URBS, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %105

55:                                               ; preds = %51
  %56 = load %struct.pcm_runtime*, %struct.pcm_runtime** %7, align 8
  %57 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %56, i32 0, i32 1
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i64 %60
  %62 = load %struct.sfire_chip*, %struct.sfire_chip** %3, align 8
  %63 = load i32, i32* @IN_EP, align 4
  %64 = load i32, i32* @usb6fire_pcm_in_urb_handler, align 4
  %65 = call i32 @usb6fire_pcm_init_urb(%struct.TYPE_8__* %61, %struct.sfire_chip* %62, i32 1, i32 %63, i32 %64)
  %66 = load %struct.pcm_runtime*, %struct.pcm_runtime** %7, align 8
  %67 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %66, i32 0, i32 2
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i64 %70
  %72 = load %struct.sfire_chip*, %struct.sfire_chip** %3, align 8
  %73 = load i32, i32* @OUT_EP, align 4
  %74 = load i32, i32* @usb6fire_pcm_out_urb_handler, align 4
  %75 = call i32 @usb6fire_pcm_init_urb(%struct.TYPE_8__* %71, %struct.sfire_chip* %72, i32 0, i32 %73, i32 %74)
  %76 = load %struct.pcm_runtime*, %struct.pcm_runtime** %7, align 8
  %77 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %76, i32 0, i32 2
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = load i32, i32* %4, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i64 %80
  %82 = load %struct.pcm_runtime*, %struct.pcm_runtime** %7, align 8
  %83 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %82, i32 0, i32 1
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = load i32, i32* %4, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  store %struct.TYPE_8__* %81, %struct.TYPE_8__** %88, align 8
  %89 = load %struct.pcm_runtime*, %struct.pcm_runtime** %7, align 8
  %90 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %89, i32 0, i32 1
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = load i32, i32* %4, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i64 %93
  %95 = load %struct.pcm_runtime*, %struct.pcm_runtime** %7, align 8
  %96 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %95, i32 0, i32 2
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  %98 = load i32, i32* %4, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  store %struct.TYPE_8__* %94, %struct.TYPE_8__** %101, align 8
  br label %102

102:                                              ; preds = %55
  %103 = load i32, i32* %4, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %4, align 4
  br label %51

105:                                              ; preds = %51
  %106 = load %struct.sfire_chip*, %struct.sfire_chip** %3, align 8
  %107 = getelementptr inbounds %struct.sfire_chip, %struct.sfire_chip* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @snd_pcm_new(i32 %108, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 0, i32 1, i32 1, %struct.snd_pcm** %6)
  store i32 %109, i32* %5, align 4
  %110 = load i32, i32* %5, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %123

112:                                              ; preds = %105
  %113 = load %struct.pcm_runtime*, %struct.pcm_runtime** %7, align 8
  %114 = call i32 @usb6fire_pcm_buffers_destroy(%struct.pcm_runtime* %113)
  %115 = load %struct.pcm_runtime*, %struct.pcm_runtime** %7, align 8
  %116 = call i32 @kfree(%struct.pcm_runtime* %115)
  %117 = load %struct.sfire_chip*, %struct.sfire_chip** %3, align 8
  %118 = getelementptr inbounds %struct.sfire_chip, %struct.sfire_chip* %117, i32 0, i32 1
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = call i32 @dev_err(i32* %120, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %122 = load i32, i32* %5, align 4
  store i32 %122, i32* %2, align 4
  br label %157

123:                                              ; preds = %105
  %124 = load %struct.pcm_runtime*, %struct.pcm_runtime** %7, align 8
  %125 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %126 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %125, i32 0, i32 1
  store %struct.pcm_runtime* %124, %struct.pcm_runtime** %126, align 8
  %127 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %128 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @strcpy(i32 %129, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %131 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %132 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %133 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %131, i32 %132, i32* @pcm_ops)
  %134 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %135 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %136 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %134, i32 %135, i32* @pcm_ops)
  %137 = load i32, i32* %5, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %150

139:                                              ; preds = %123
  %140 = load %struct.pcm_runtime*, %struct.pcm_runtime** %7, align 8
  %141 = call i32 @usb6fire_pcm_buffers_destroy(%struct.pcm_runtime* %140)
  %142 = load %struct.pcm_runtime*, %struct.pcm_runtime** %7, align 8
  %143 = call i32 @kfree(%struct.pcm_runtime* %142)
  %144 = load %struct.sfire_chip*, %struct.sfire_chip** %3, align 8
  %145 = getelementptr inbounds %struct.sfire_chip, %struct.sfire_chip* %144, i32 0, i32 1
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 0
  %148 = call i32 @dev_err(i32* %147, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %149 = load i32, i32* %5, align 4
  store i32 %149, i32* %2, align 4
  br label %157

150:                                              ; preds = %123
  %151 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %152 = load %struct.pcm_runtime*, %struct.pcm_runtime** %7, align 8
  %153 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %152, i32 0, i32 0
  store %struct.snd_pcm* %151, %struct.snd_pcm** %153, align 8
  %154 = load %struct.pcm_runtime*, %struct.pcm_runtime** %7, align 8
  %155 = load %struct.sfire_chip*, %struct.sfire_chip** %3, align 8
  %156 = getelementptr inbounds %struct.sfire_chip, %struct.sfire_chip* %155, i32 0, i32 0
  store %struct.pcm_runtime* %154, %struct.pcm_runtime** %156, align 8
  store i32 0, i32* %2, align 4
  br label %157

157:                                              ; preds = %150, %139, %112, %20, %12
  %158 = load i32, i32* %2, align 4
  ret i32 %158
}

declare dso_local %struct.pcm_runtime* @kzalloc(i32, i32) #1

declare dso_local i32 @usb6fire_pcm_buffers_init(%struct.pcm_runtime*) #1

declare dso_local i32 @usb6fire_pcm_buffers_destroy(%struct.pcm_runtime*) #1

declare dso_local i32 @kfree(%struct.pcm_runtime*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @usb6fire_pcm_init_urb(%struct.TYPE_8__*, %struct.sfire_chip*, i32, i32, i32) #1

declare dso_local i32 @snd_pcm_new(i32, i8*, i32, i32, i32, %struct.snd_pcm**) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @snd_pcm_set_ops(%struct.snd_pcm*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
