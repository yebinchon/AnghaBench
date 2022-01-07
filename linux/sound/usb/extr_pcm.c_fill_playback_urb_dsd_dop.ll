; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_pcm.c_fill_playback_urb_dsd_dop.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_pcm.c_fill_playback_urb_dsd_dop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_substream = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, i64, i32 }
%struct.TYPE_4__ = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i32*, i32 }
%struct.urb = type { i32* }

@__const.fill_playback_urb_dsd_dop.marker = private unnamed_addr constant [2 x i32] [i32 5, i32 250], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_usb_substream*, %struct.urb*, i32)* @fill_playback_urb_dsd_dop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_playback_urb_dsd_dop(%struct.snd_usb_substream* %0, %struct.urb* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_usb_substream*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_pcm_runtime*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca [2 x i32], align 4
  %15 = alloca i32, align 4
  store %struct.snd_usb_substream* %0, %struct.snd_usb_substream** %4, align 8
  store %struct.urb* %1, %struct.urb** %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %4, align 8
  %17 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %16, i32 0, i32 3
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %19, align 8
  store %struct.snd_pcm_runtime* %20, %struct.snd_pcm_runtime** %7, align 8
  %21 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %22 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = ashr i32 %23, 3
  store i32 %24, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %25 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %4, align 8
  %26 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %10, align 4
  %28 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %29 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %8, align 4
  %32 = mul i32 %30, %31
  store i32 %32, i32* %11, align 4
  %33 = load %struct.urb*, %struct.urb** %5, align 8
  %34 = getelementptr inbounds %struct.urb, %struct.urb* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %12, align 8
  %36 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %37 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %13, align 8
  %39 = bitcast [2 x i32]* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %39, i8* align 4 bitcast ([2 x i32]* @__const.fill_playback_urb_dsd_dop.marker to i8*), i64 8, i1 false)
  br label %40

40:                                               ; preds = %139, %3
  %41 = load i32, i32* %6, align 4
  %42 = add i32 %41, -1
  store i32 %42, i32* %6, align 4
  %43 = icmp ne i32 %41, 0
  br i1 %43, label %44, label %140

44:                                               ; preds = %40
  %45 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %4, align 8
  %46 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 8
  %50 = icmp eq i32 %49, 3
  br i1 %50, label %51, label %95

51:                                               ; preds = %44
  %52 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %4, align 8
  %53 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %12, align 8
  %59 = load i32, i32* %9, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %9, align 4
  %61 = zext i32 %59 to i64
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  store i32 %57, i32* %62, align 4
  %63 = load i32, i32* %10, align 4
  %64 = add i32 %63, 2
  store i32 %64, i32* %10, align 4
  %65 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %4, align 8
  %66 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  store i32 0, i32* %67, align 8
  %68 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %4, align 8
  %69 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 8
  %73 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %74 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = srem i32 %72, %75
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %94

78:                                               ; preds = %51
  %79 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %4, align 8
  %80 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %81, align 8
  %84 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %85 = call i64 @ARRAY_SIZE(i32* %84)
  %86 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %4, align 8
  %87 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = urem i64 %89, %85
  store i64 %90, i64* %88, align 8
  %91 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %4, align 8
  %92 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 2
  store i32 0, i32* %93, align 8
  br label %94

94:                                               ; preds = %78, %51
  br label %139

95:                                               ; preds = %44
  %96 = load i32, i32* %10, align 4
  %97 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %4, align 8
  %98 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = add i32 %96, %100
  %102 = sub i32 %101, 1
  %103 = load i32, i32* %11, align 4
  %104 = urem i32 %102, %103
  store i32 %104, i32* %15, align 4
  %105 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %4, align 8
  %106 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %105, i32 0, i32 1
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %123

111:                                              ; preds = %95
  %112 = load i32*, i32** %13, align 8
  %113 = load i32, i32* %15, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @bitrev8(i32 %116)
  %118 = load i32*, i32** %12, align 8
  %119 = load i32, i32* %9, align 4
  %120 = add i32 %119, 1
  store i32 %120, i32* %9, align 4
  %121 = zext i32 %119 to i64
  %122 = getelementptr inbounds i32, i32* %118, i64 %121
  store i32 %117, i32* %122, align 4
  br label %134

123:                                              ; preds = %95
  %124 = load i32*, i32** %13, align 8
  %125 = load i32, i32* %15, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = load i32*, i32** %12, align 8
  %130 = load i32, i32* %9, align 4
  %131 = add i32 %130, 1
  store i32 %131, i32* %9, align 4
  %132 = zext i32 %130 to i64
  %133 = getelementptr inbounds i32, i32* %129, i64 %132
  store i32 %128, i32* %133, align 4
  br label %134

134:                                              ; preds = %123, %111
  %135 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %4, align 8
  %136 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = add i32 %137, 1
  store i32 %138, i32* %136, align 8
  br label %139

139:                                              ; preds = %134, %94
  br label %40

140:                                              ; preds = %40
  %141 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %4, align 8
  %142 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %145 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %8, align 4
  %148 = mul i32 %146, %147
  %149 = icmp uge i32 %143, %148
  br i1 %149, label %150, label %160

150:                                              ; preds = %140
  %151 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %152 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %8, align 4
  %155 = mul i32 %153, %154
  %156 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %4, align 8
  %157 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = sub i32 %158, %155
  store i32 %159, i32* %157, align 8
  br label %160

160:                                              ; preds = %150, %140
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @bitrev8(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
