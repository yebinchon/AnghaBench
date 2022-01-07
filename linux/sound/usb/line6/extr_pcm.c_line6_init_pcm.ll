; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/line6/extr_pcm.c_line6_init_pcm.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/line6/extr_pcm.c_line6_init_pcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_line6 = type { i32, i32, i32, %struct.snd_line6_pcm*, %struct.TYPE_4__* }
%struct.snd_line6_pcm = type { i32*, i32, %struct.usb_line6*, i8*, i8*, i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.line6_pcm_properties*, %struct.snd_pcm*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.snd_pcm = type { i32, %struct.snd_line6_pcm* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.line6_pcm_properties = type { i32 }

@LINE6_CAP_PCM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LINE6_IMPULSE_DEFAULT_PERIOD = common dso_local global i32 0, align 4
@line6_cleanup_pcm = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"cannot get proper max packet size\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@line6_controls = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @line6_init_pcm(%struct.usb_line6* %0, %struct.line6_pcm_properties* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_line6*, align 8
  %5 = alloca %struct.line6_pcm_properties*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_pcm*, align 8
  %11 = alloca %struct.snd_line6_pcm*, align 8
  store %struct.usb_line6* %0, %struct.usb_line6** %4, align 8
  store %struct.line6_pcm_properties* %1, %struct.line6_pcm_properties** %5, align 8
  %12 = load %struct.usb_line6*, %struct.usb_line6** %4, align 8
  %13 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %12, i32 0, i32 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %8, align 4
  %17 = load %struct.usb_line6*, %struct.usb_line6** %4, align 8
  %18 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %17, i32 0, i32 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %9, align 4
  %22 = load %struct.usb_line6*, %struct.usb_line6** %4, align 8
  %23 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %22, i32 0, i32 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @LINE6_CAP_PCM, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %169

31:                                               ; preds = %2
  %32 = load %struct.usb_line6*, %struct.usb_line6** %4, align 8
  %33 = call i32 @snd_line6_new_pcm(%struct.usb_line6* %32, %struct.snd_pcm** %10)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %3, align 4
  br label %169

38:                                               ; preds = %31
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call %struct.snd_line6_pcm* @kzalloc(i32 80, i32 %39)
  store %struct.snd_line6_pcm* %40, %struct.snd_line6_pcm** %11, align 8
  %41 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %11, align 8
  %42 = icmp ne %struct.snd_line6_pcm* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %169

46:                                               ; preds = %38
  %47 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %11, align 8
  %48 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %47, i32 0, i32 10
  %49 = call i32 @mutex_init(i32* %48)
  %50 = load %struct.snd_pcm*, %struct.snd_pcm** %10, align 8
  %51 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %11, align 8
  %52 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %51, i32 0, i32 9
  store %struct.snd_pcm* %50, %struct.snd_pcm** %52, align 8
  %53 = load %struct.line6_pcm_properties*, %struct.line6_pcm_properties** %5, align 8
  %54 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %11, align 8
  %55 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %54, i32 0, i32 8
  store %struct.line6_pcm_properties* %53, %struct.line6_pcm_properties** %55, align 8
  %56 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %11, align 8
  %57 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  store i32 255, i32* %59, align 4
  %60 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %11, align 8
  %61 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  store i32 255, i32* %63, align 4
  %64 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %11, align 8
  %65 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %64, i32 0, i32 1
  store i32 255, i32* %65, align 8
  %66 = load %struct.usb_line6*, %struct.usb_line6** %4, align 8
  %67 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %11, align 8
  %68 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %67, i32 0, i32 2
  store %struct.usb_line6* %66, %struct.usb_line6** %68, align 8
  %69 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %11, align 8
  %70 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %69, i32 0, i32 7
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = call i32 @spin_lock_init(i32* %71)
  %73 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %11, align 8
  %74 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %73, i32 0, i32 6
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = call i32 @spin_lock_init(i32* %75)
  %77 = load i32, i32* @LINE6_IMPULSE_DEFAULT_PERIOD, align 4
  %78 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %11, align 8
  %79 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %78, i32 0, i32 5
  store i32 %77, i32* %79, align 8
  %80 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %11, align 8
  %81 = load %struct.usb_line6*, %struct.usb_line6** %4, align 8
  %82 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %81, i32 0, i32 3
  store %struct.snd_line6_pcm* %80, %struct.snd_line6_pcm** %82, align 8
  %83 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %11, align 8
  %84 = load %struct.snd_pcm*, %struct.snd_pcm** %10, align 8
  %85 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %84, i32 0, i32 1
  store %struct.snd_line6_pcm* %83, %struct.snd_line6_pcm** %85, align 8
  %86 = load i32, i32* @line6_cleanup_pcm, align 4
  %87 = load %struct.snd_pcm*, %struct.snd_pcm** %10, align 8
  %88 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  %89 = load %struct.usb_line6*, %struct.usb_line6** %4, align 8
  %90 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.usb_line6*, %struct.usb_line6** %4, align 8
  %93 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @usb_rcvisocpipe(i32 %94, i32 %95)
  %97 = call i8* @usb_maxpacket(i32 %91, i32 %96, i32 0)
  %98 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %11, align 8
  %99 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %98, i32 0, i32 4
  store i8* %97, i8** %99, align 8
  %100 = load %struct.usb_line6*, %struct.usb_line6** %4, align 8
  %101 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.usb_line6*, %struct.usb_line6** %4, align 8
  %104 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @usb_sndisocpipe(i32 %105, i32 %106)
  %108 = call i8* @usb_maxpacket(i32 %102, i32 %107, i32 1)
  %109 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %11, align 8
  %110 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %109, i32 0, i32 3
  store i8* %108, i8** %110, align 8
  %111 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %11, align 8
  %112 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %111, i32 0, i32 4
  %113 = load i8*, i8** %112, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %115, label %120

115:                                              ; preds = %46
  %116 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %11, align 8
  %117 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %116, i32 0, i32 3
  %118 = load i8*, i8** %117, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %129, label %120

120:                                              ; preds = %115, %46
  %121 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %11, align 8
  %122 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %121, i32 0, i32 2
  %123 = load %struct.usb_line6*, %struct.usb_line6** %122, align 8
  %124 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @dev_err(i32 %125, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %127 = load i32, i32* @EINVAL, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %3, align 4
  br label %169

129:                                              ; preds = %115
  %130 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %11, align 8
  %131 = call i32 @line6_create_audio_out_urbs(%struct.snd_line6_pcm* %130)
  store i32 %131, i32* %7, align 4
  %132 = load i32, i32* %7, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %129
  %135 = load i32, i32* %7, align 4
  store i32 %135, i32* %3, align 4
  br label %169

136:                                              ; preds = %129
  %137 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %11, align 8
  %138 = call i32 @line6_create_audio_in_urbs(%struct.snd_line6_pcm* %137)
  store i32 %138, i32* %7, align 4
  %139 = load i32, i32* %7, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %136
  %142 = load i32, i32* %7, align 4
  store i32 %142, i32* %3, align 4
  br label %169

143:                                              ; preds = %136
  store i32 0, i32* %6, align 4
  br label %144

144:                                              ; preds = %165, %143
  %145 = load i32, i32* %6, align 4
  %146 = load i32*, i32** @line6_controls, align 8
  %147 = call i32 @ARRAY_SIZE(i32* %146)
  %148 = icmp slt i32 %145, %147
  br i1 %148, label %149, label %168

149:                                              ; preds = %144
  %150 = load %struct.usb_line6*, %struct.usb_line6** %4, align 8
  %151 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32*, i32** @line6_controls, align 8
  %154 = load i32, i32* %6, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %11, align 8
  %158 = call i32 @snd_ctl_new1(i32* %156, %struct.snd_line6_pcm* %157)
  %159 = call i32 @snd_ctl_add(i32 %152, i32 %158)
  store i32 %159, i32* %7, align 4
  %160 = load i32, i32* %7, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %149
  %163 = load i32, i32* %7, align 4
  store i32 %163, i32* %3, align 4
  br label %169

164:                                              ; preds = %149
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %6, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %6, align 4
  br label %144

168:                                              ; preds = %144
  store i32 0, i32* %3, align 4
  br label %169

169:                                              ; preds = %168, %162, %141, %134, %120, %43, %36, %30
  %170 = load i32, i32* %3, align 4
  ret i32 %170
}

declare dso_local i32 @snd_line6_new_pcm(%struct.usb_line6*, %struct.snd_pcm**) #1

declare dso_local %struct.snd_line6_pcm* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i8* @usb_maxpacket(i32, i32, i32) #1

declare dso_local i32 @usb_rcvisocpipe(i32, i32) #1

declare dso_local i32 @usb_sndisocpipe(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @line6_create_audio_out_urbs(%struct.snd_line6_pcm*) #1

declare dso_local i32 @line6_create_audio_in_urbs(%struct.snd_line6_pcm*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @snd_ctl_add(i32, i32) #1

declare dso_local i32 @snd_ctl_new1(i32*, %struct.snd_line6_pcm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
