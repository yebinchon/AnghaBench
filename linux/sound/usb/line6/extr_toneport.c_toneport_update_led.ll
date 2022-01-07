; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/line6/extr_toneport.c_toneport_update_led.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/line6/extr_toneport.c_toneport_update_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_line6_toneport = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_line6_toneport*)* @toneport_update_led to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @toneport_update_led(%struct.usb_line6_toneport* %0) #0 {
  %2 = alloca %struct.usb_line6_toneport*, align 8
  store %struct.usb_line6_toneport* %0, %struct.usb_line6_toneport** %2, align 8
  %3 = load %struct.usb_line6_toneport*, %struct.usb_line6_toneport** %2, align 8
  %4 = getelementptr inbounds %struct.usb_line6_toneport, %struct.usb_line6_toneport* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.usb_line6_toneport*, %struct.usb_line6_toneport** %2, align 8
  %8 = getelementptr inbounds %struct.usb_line6_toneport, %struct.usb_line6_toneport* %7, i32 0, i32 0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i64 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = shl i32 %13, 8
  %15 = or i32 %14, 2
  %16 = load %struct.usb_line6_toneport*, %struct.usb_line6_toneport** %2, align 8
  %17 = getelementptr inbounds %struct.usb_line6_toneport, %struct.usb_line6_toneport* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i64 1
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @toneport_send_cmd(i32 %6, i32 %15, i32 %22)
  ret void
}

declare dso_local i32 @toneport_send_cmd(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
