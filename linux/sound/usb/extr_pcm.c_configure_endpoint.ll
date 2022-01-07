; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_pcm.c_configure_endpoint.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_pcm.c_configure_endpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_substream = type { i64, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_usb_substream*)* @configure_endpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @configure_endpoint(%struct.snd_usb_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_usb_substream*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_usb_substream* %0, %struct.snd_usb_substream** %3, align 8
  %5 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %6 = call i32 @stop_endpoints(%struct.snd_usb_substream* %5, i32 1)
  %7 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %8 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %7, i32 0, i32 8
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %11 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %10, i32 0, i32 7
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %14 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %17 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %20 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %23 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %26 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %29 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %32 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @snd_usb_endpoint_set_params(i32 %9, i32 %12, i32 %15, i32 %18, i32 %21, i32 %24, i32 %27, i32 %30, i64 %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %1
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %49

39:                                               ; preds = %1
  %40 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %41 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %46 = call i32 @configure_sync_endpoint(%struct.snd_usb_substream* %45)
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %44, %39
  %48 = load i32, i32* %4, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %47, %37
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @stop_endpoints(%struct.snd_usb_substream*, i32) #1

declare dso_local i32 @snd_usb_endpoint_set_params(i32, i32, i32, i32, i32, i32, i32, i32, i64) #1

declare dso_local i32 @configure_sync_endpoint(%struct.snd_usb_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
