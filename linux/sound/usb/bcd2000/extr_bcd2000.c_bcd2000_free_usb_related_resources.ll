; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/bcd2000/extr_bcd2000.c_bcd2000_free_usb_related_resources.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/bcd2000/extr_bcd2000.c_bcd2000_free_usb_related_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcd2000 = type { i32*, i32, i32 }
%struct.usb_interface = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcd2000*, %struct.usb_interface*)* @bcd2000_free_usb_related_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcd2000_free_usb_related_resources(%struct.bcd2000* %0, %struct.usb_interface* %1) #0 {
  %3 = alloca %struct.bcd2000*, align 8
  %4 = alloca %struct.usb_interface*, align 8
  store %struct.bcd2000* %0, %struct.bcd2000** %3, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %4, align 8
  %5 = load %struct.bcd2000*, %struct.bcd2000** %3, align 8
  %6 = getelementptr inbounds %struct.bcd2000, %struct.bcd2000* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @usb_free_urb(i32 %7)
  %9 = load %struct.bcd2000*, %struct.bcd2000** %3, align 8
  %10 = getelementptr inbounds %struct.bcd2000, %struct.bcd2000* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @usb_free_urb(i32 %11)
  %13 = load %struct.bcd2000*, %struct.bcd2000** %3, align 8
  %14 = getelementptr inbounds %struct.bcd2000, %struct.bcd2000* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load %struct.bcd2000*, %struct.bcd2000** %3, align 8
  %19 = getelementptr inbounds %struct.bcd2000, %struct.bcd2000* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @usb_set_intfdata(i32* %20, i32* null)
  %22 = load %struct.bcd2000*, %struct.bcd2000** %3, align 8
  %23 = getelementptr inbounds %struct.bcd2000, %struct.bcd2000* %22, i32 0, i32 0
  store i32* null, i32** %23, align 8
  br label %24

24:                                               ; preds = %17, %2
  ret void
}

declare dso_local i32 @usb_free_urb(i32) #1

declare dso_local i32 @usb_set_intfdata(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
