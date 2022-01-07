; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_endpoint.c_snd_usb_endpoint_stop.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_endpoint.c_snd_usb_endpoint_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_endpoint = type { i64, i32 }

@EP_FLAG_STOPPING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_usb_endpoint_stop(%struct.snd_usb_endpoint* %0) #0 {
  %2 = alloca %struct.snd_usb_endpoint*, align 8
  store %struct.snd_usb_endpoint* %0, %struct.snd_usb_endpoint** %2, align 8
  %3 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %2, align 8
  %4 = icmp ne %struct.snd_usb_endpoint* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %28

6:                                                ; preds = %1
  %7 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %2, align 8
  %8 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i64 @snd_BUG_ON(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %6
  br label %28

15:                                               ; preds = %6
  %16 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %2, align 8
  %17 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, -1
  store i64 %19, i64* %17, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %15
  %22 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %2, align 8
  %23 = call i32 @deactivate_urbs(%struct.snd_usb_endpoint* %22, i32 0)
  %24 = load i32, i32* @EP_FLAG_STOPPING, align 4
  %25 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %2, align 8
  %26 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %25, i32 0, i32 1
  %27 = call i32 @set_bit(i32 %24, i32* %26)
  br label %28

28:                                               ; preds = %5, %14, %21, %15
  ret void
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @deactivate_urbs(%struct.snd_usb_endpoint*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
