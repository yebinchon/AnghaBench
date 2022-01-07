; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_pcm.c_copy_to_urb.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_pcm.c_copy_to_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_substream = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i64 }
%struct.urb = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_usb_substream*, %struct.urb*, i32, i32, i32)* @copy_to_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_to_urb(%struct.snd_usb_substream* %0, %struct.urb* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.snd_usb_substream*, align 8
  %7 = alloca %struct.urb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.snd_pcm_runtime*, align 8
  %12 = alloca i32, align 4
  store %struct.snd_usb_substream* %0, %struct.snd_usb_substream** %6, align 8
  store %struct.urb* %1, %struct.urb** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %6, align 8
  %14 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %16, align 8
  store %struct.snd_pcm_runtime* %17, %struct.snd_pcm_runtime** %11, align 8
  %18 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %6, align 8
  %19 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %10, align 4
  %22 = add i32 %20, %21
  %23 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  %24 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %9, align 4
  %27 = mul nsw i32 %25, %26
  %28 = icmp ugt i32 %22, %27
  br i1 %28, label %29, label %71

29:                                               ; preds = %5
  %30 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  %31 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = mul nsw i32 %32, %33
  %35 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %6, align 8
  %36 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sub i32 %34, %37
  store i32 %38, i32* %12, align 4
  %39 = load %struct.urb*, %struct.urb** %7, align 8
  %40 = getelementptr inbounds %struct.urb, %struct.urb* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %41, %43
  %45 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  %46 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %6, align 8
  %49 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = zext i32 %50 to i64
  %52 = add nsw i64 %47, %51
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @memcpy(i64 %44, i64 %52, i32 %53)
  %55 = load %struct.urb*, %struct.urb** %7, align 8
  %56 = getelementptr inbounds %struct.urb, %struct.urb* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %57, %59
  %61 = load i32, i32* %12, align 4
  %62 = zext i32 %61 to i64
  %63 = add nsw i64 %60, %62
  %64 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  %65 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %12, align 4
  %69 = sub i32 %67, %68
  %70 = call i32 @memcpy(i64 %63, i64 %66, i32 %69)
  br label %88

71:                                               ; preds = %5
  %72 = load %struct.urb*, %struct.urb** %7, align 8
  %73 = getelementptr inbounds %struct.urb, %struct.urb* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %74, %76
  %78 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  %79 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %6, align 8
  %82 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = zext i32 %83 to i64
  %85 = add nsw i64 %80, %84
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @memcpy(i64 %77, i64 %85, i32 %86)
  br label %88

88:                                               ; preds = %71, %29
  %89 = load i32, i32* %10, align 4
  %90 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %6, align 8
  %91 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = add i32 %92, %89
  store i32 %93, i32* %91, align 8
  %94 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %6, align 8
  %95 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  %98 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %9, align 4
  %101 = mul nsw i32 %99, %100
  %102 = icmp uge i32 %96, %101
  br i1 %102, label %103, label %113

103:                                              ; preds = %88
  %104 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  %105 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %9, align 4
  %108 = mul nsw i32 %106, %107
  %109 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %6, align 8
  %110 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = sub i32 %111, %108
  store i32 %112, i32* %110, align 8
  br label %113

113:                                              ; preds = %103, %88
  ret void
}

declare dso_local i32 @memcpy(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
