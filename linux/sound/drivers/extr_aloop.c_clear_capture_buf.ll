; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/extr_aloop.c_clear_capture_buf.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/extr_aloop.c_clear_capture_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loopback_pcm = type { i32, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i8*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.loopback_pcm*, i32)* @clear_capture_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_capture_buf(%struct.loopback_pcm* %0, i32 %1) #0 {
  %3 = alloca %struct.loopback_pcm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.loopback_pcm* %0, %struct.loopback_pcm** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.loopback_pcm*, %struct.loopback_pcm** %3, align 8
  %10 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %9, i32 0, i32 3
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %12, align 8
  store %struct.snd_pcm_runtime* %13, %struct.snd_pcm_runtime** %5, align 8
  %14 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %6, align 8
  %17 = load %struct.loopback_pcm*, %struct.loopback_pcm** %3, align 8
  %18 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %7, align 4
  %20 = load %struct.loopback_pcm*, %struct.loopback_pcm** %3, align 8
  %21 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.loopback_pcm*, %struct.loopback_pcm** %3, align 8
  %24 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp sge i64 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  br label %96

28:                                               ; preds = %2
  %29 = load %struct.loopback_pcm*, %struct.loopback_pcm** %3, align 8
  %30 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = zext i32 %32 to i64
  %34 = add nsw i64 %31, %33
  %35 = load %struct.loopback_pcm*, %struct.loopback_pcm** %3, align 8
  %36 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp sgt i64 %34, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %28
  %40 = load %struct.loopback_pcm*, %struct.loopback_pcm** %3, align 8
  %41 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.loopback_pcm*, %struct.loopback_pcm** %3, align 8
  %44 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = sub nsw i64 %42, %45
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %39, %28
  br label %49

49:                                               ; preds = %95, %48
  %50 = load i32, i32* %4, align 4
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %8, align 4
  %53 = add i32 %51, %52
  %54 = zext i32 %53 to i64
  %55 = load %struct.loopback_pcm*, %struct.loopback_pcm** %3, align 8
  %56 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp sgt i64 %54, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %49
  %60 = load %struct.loopback_pcm*, %struct.loopback_pcm** %3, align 8
  %61 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = zext i32 %63 to i64
  %65 = sub nsw i64 %62, %64
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %59, %49
  %68 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %69 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load i8*, i8** %6, align 8
  %72 = load i32, i32* %7, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @bytes_to_frames(%struct.snd_pcm_runtime* %75, i32 %76)
  %78 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %79 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = mul nsw i32 %77, %80
  %82 = call i32 @snd_pcm_format_set_silence(i32 %70, i8* %74, i32 %81)
  %83 = load i32, i32* %8, align 4
  %84 = zext i32 %83 to i64
  %85 = load %struct.loopback_pcm*, %struct.loopback_pcm** %3, align 8
  %86 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %87, %84
  store i64 %88, i64* %86, align 8
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* %4, align 4
  %91 = sub i32 %90, %89
  store i32 %91, i32* %4, align 4
  %92 = load i32, i32* %4, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %67
  br label %96

95:                                               ; preds = %67
  store i32 0, i32* %7, align 4
  br label %49

96:                                               ; preds = %27, %94
  ret void
}

declare dso_local i32 @snd_pcm_format_set_silence(i32, i8*, i32) #1

declare dso_local i32 @bytes_to_frames(%struct.snd_pcm_runtime*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
