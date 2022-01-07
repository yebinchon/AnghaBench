; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/misc/extr_ua101.c_first_capture_urb_complete.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/misc/extr_ua101.c_first_capture_urb_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32 (%struct.urb*)*, %struct.ua101* }
%struct.ua101 = type { i32, i32 }

@CAPTURE_URB_COMPLETED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @first_capture_urb_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @first_capture_urb_complete(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.ua101*, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %4 = load %struct.urb*, %struct.urb** %2, align 8
  %5 = getelementptr inbounds %struct.urb, %struct.urb* %4, i32 0, i32 1
  %6 = load %struct.ua101*, %struct.ua101** %5, align 8
  store %struct.ua101* %6, %struct.ua101** %3, align 8
  %7 = load %struct.urb*, %struct.urb** %2, align 8
  %8 = getelementptr inbounds %struct.urb, %struct.urb* %7, i32 0, i32 0
  store i32 (%struct.urb*)* @capture_urb_complete, i32 (%struct.urb*)** %8, align 8
  %9 = load %struct.urb*, %struct.urb** %2, align 8
  %10 = call i32 @capture_urb_complete(%struct.urb* %9)
  %11 = load i32, i32* @CAPTURE_URB_COMPLETED, align 4
  %12 = load %struct.ua101*, %struct.ua101** %3, align 8
  %13 = getelementptr inbounds %struct.ua101, %struct.ua101* %12, i32 0, i32 1
  %14 = call i32 @set_bit(i32 %11, i32* %13)
  %15 = load %struct.ua101*, %struct.ua101** %3, align 8
  %16 = getelementptr inbounds %struct.ua101, %struct.ua101* %15, i32 0, i32 0
  %17 = call i32 @wake_up(i32* %16)
  ret void
}

declare dso_local i32 @capture_urb_complete(%struct.urb*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
