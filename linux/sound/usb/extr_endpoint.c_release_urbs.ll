; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_endpoint.c_release_urbs.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_endpoint.c_release_urbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_endpoint = type { i32, i32*, i32, %struct.TYPE_2__*, i32*, i32*, i32* }
%struct.TYPE_2__ = type { i32 }

@SYNC_URBS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_usb_endpoint*, i32)* @release_urbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @release_urbs(%struct.snd_usb_endpoint* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_usb_endpoint*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.snd_usb_endpoint* %0, %struct.snd_usb_endpoint** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %7 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %6, i32 0, i32 6
  store i32* null, i32** %7, align 8
  %8 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %9 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %8, i32 0, i32 5
  store i32* null, i32** %9, align 8
  %10 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @deactivate_urbs(%struct.snd_usb_endpoint* %10, i32 %11)
  %13 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %14 = call i32 @wait_clear_urbs(%struct.snd_usb_endpoint* %13)
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %29, %2
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %18 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %15
  %22 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %23 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %22, i32 0, i32 4
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = call i32 @release_urb_ctx(i32* %27)
  br label %29

29:                                               ; preds = %21
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %15

32:                                               ; preds = %15
  %33 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %34 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %52

37:                                               ; preds = %32
  %38 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %39 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %38, i32 0, i32 3
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @SYNC_URBS, align 4
  %44 = mul nsw i32 %43, 4
  %45 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %46 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %49 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @usb_free_coherent(i32 %42, i32 %44, i32* %47, i32 %50)
  br label %52

52:                                               ; preds = %37, %32
  %53 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %54 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %53, i32 0, i32 1
  store i32* null, i32** %54, align 8
  %55 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %56 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %55, i32 0, i32 0
  store i32 0, i32* %56, align 8
  ret void
}

declare dso_local i32 @deactivate_urbs(%struct.snd_usb_endpoint*, i32) #1

declare dso_local i32 @wait_clear_urbs(%struct.snd_usb_endpoint*) #1

declare dso_local i32 @release_urb_ctx(i32*) #1

declare dso_local i32 @usb_free_coherent(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
