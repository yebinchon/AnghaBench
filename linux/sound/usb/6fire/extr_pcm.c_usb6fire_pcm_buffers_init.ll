; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/6fire/extr_pcm.c_usb6fire_pcm_buffers_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/6fire/extr_pcm.c_usb6fire_pcm_buffers_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcm_runtime = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i8* }

@PCM_N_URBS = common dso_local global i32 0, align 4
@PCM_MAX_PACKET_SIZE = common dso_local global i32 0, align 4
@PCM_N_PACKETS_PER_URB = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcm_runtime*)* @usb6fire_pcm_buffers_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb6fire_pcm_buffers_init(%struct.pcm_runtime* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcm_runtime*, align 8
  %4 = alloca i32, align 4
  store %struct.pcm_runtime* %0, %struct.pcm_runtime** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %58, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @PCM_N_URBS, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %61

9:                                                ; preds = %5
  %10 = load i32, i32* @PCM_MAX_PACKET_SIZE, align 4
  %11 = load i32, i32* @PCM_N_PACKETS_PER_URB, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i8* @kcalloc(i32 %10, i32 %11, i32 %12)
  %14 = load %struct.pcm_runtime*, %struct.pcm_runtime** %3, align 8
  %15 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i8* %13, i8** %20, align 8
  %21 = load %struct.pcm_runtime*, %struct.pcm_runtime** %3, align 8
  %22 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %9
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %62

33:                                               ; preds = %9
  %34 = load i32, i32* @PCM_MAX_PACKET_SIZE, align 4
  %35 = load i32, i32* @PCM_N_PACKETS_PER_URB, align 4
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i8* @kcalloc(i32 %34, i32 %35, i32 %36)
  %38 = load %struct.pcm_runtime*, %struct.pcm_runtime** %3, align 8
  %39 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i8* %37, i8** %44, align 8
  %45 = load %struct.pcm_runtime*, %struct.pcm_runtime** %3, align 8
  %46 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %33
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %62

57:                                               ; preds = %33
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %4, align 4
  br label %5

61:                                               ; preds = %5
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %54, %30
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i8* @kcalloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
