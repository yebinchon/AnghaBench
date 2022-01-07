; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_quirks.c_snd_usb_endpoint_start_quirk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_quirks.c_snd_usb_endpoint_start_quirk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_endpoint = type { i64, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@SND_USB_ENDPOINT_TYPE_SYNC = common dso_local global i64 0, align 8
@SND_USB_ENDPOINT_TYPE_DATA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_usb_endpoint_start_quirk(%struct.snd_usb_endpoint* %0) #0 {
  %2 = alloca %struct.snd_usb_endpoint*, align 8
  store %struct.snd_usb_endpoint* %0, %struct.snd_usb_endpoint** %2, align 8
  %3 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %2, align 8
  %4 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %3, i32 0, i32 4
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = call i32 @USB_ID_VENDOR(i64 %7)
  %9 = icmp eq i32 %8, 9146
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %2, align 8
  %12 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SND_USB_ENDPOINT_TYPE_SYNC, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %2, align 8
  %18 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %17, i32 0, i32 1
  store i32 4, i32* %18, align 8
  br label %19

19:                                               ; preds = %16, %10, %1
  %20 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %2, align 8
  %21 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %20, i32 0, i32 4
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i64 @USB_ID(i32 1891, i32 8240)
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %35, label %27

27:                                               ; preds = %19
  %28 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %2, align 8
  %29 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %28, i32 0, i32 4
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i64 @USB_ID(i32 1891, i32 8241)
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %27, %19
  %36 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %2, align 8
  %37 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @SND_USB_ENDPOINT_TYPE_DATA, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %2, align 8
  %43 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %42, i32 0, i32 1
  store i32 16, i32* %43, align 8
  br label %44

44:                                               ; preds = %41, %35, %27
  %45 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %2, align 8
  %46 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %45, i32 0, i32 4
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @USB_ID(i32 1604, i32 32824)
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %60, label %52

52:                                               ; preds = %44
  %53 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %2, align 8
  %54 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %53, i32 0, i32 4
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i64 @USB_ID(i32 6226, i32 20532)
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %52, %44
  %61 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %2, align 8
  %62 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 4
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %2, align 8
  %67 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %66, i32 0, i32 3
  store i32 1, i32* %67, align 8
  br label %68

68:                                               ; preds = %65, %60, %52
  ret void
}

declare dso_local i32 @USB_ID_VENDOR(i64) #1

declare dso_local i64 @USB_ID(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
