; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/usx2y/extr_usbusx2yaudio.c_usX2Y_urb_release.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/usx2y/extr_usbusx2yaudio.c_usX2Y_urb_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb**, i32)* @usX2Y_urb_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usX2Y_urb_release(%struct.urb** %0, i32 %1) #0 {
  %3 = alloca %struct.urb**, align 8
  %4 = alloca i32, align 4
  store %struct.urb** %0, %struct.urb*** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.urb**, %struct.urb*** %3, align 8
  %6 = load %struct.urb*, %struct.urb** %5, align 8
  %7 = icmp ne %struct.urb* %6, null
  br i1 %7, label %8, label %25

8:                                                ; preds = %2
  %9 = load %struct.urb**, %struct.urb*** %3, align 8
  %10 = load %struct.urb*, %struct.urb** %9, align 8
  %11 = call i32 @usb_kill_urb(%struct.urb* %10)
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %8
  %15 = load %struct.urb**, %struct.urb*** %3, align 8
  %16 = load %struct.urb*, %struct.urb** %15, align 8
  %17 = getelementptr inbounds %struct.urb, %struct.urb* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @kfree(i32 %18)
  br label %20

20:                                               ; preds = %14, %8
  %21 = load %struct.urb**, %struct.urb*** %3, align 8
  %22 = load %struct.urb*, %struct.urb** %21, align 8
  %23 = call i32 @usb_free_urb(%struct.urb* %22)
  %24 = load %struct.urb**, %struct.urb*** %3, align 8
  store %struct.urb* null, %struct.urb** %24, align 8
  br label %25

25:                                               ; preds = %20, %2
  ret void
}

declare dso_local i32 @usb_kill_urb(%struct.urb*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
