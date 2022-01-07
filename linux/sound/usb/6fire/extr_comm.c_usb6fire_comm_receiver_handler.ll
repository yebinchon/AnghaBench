; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/6fire/extr_comm.c_usb6fire_comm_receiver_handler.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/6fire/extr_comm.c_usb6fire_comm_receiver_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { %struct.TYPE_4__*, i64, i64, %struct.comm_runtime* }
%struct.TYPE_4__ = type { i32 }
%struct.comm_runtime = type { i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.midi_runtime* }
%struct.midi_runtime = type { i32 (%struct.midi_runtime*, i32*, i32)* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"comm data receiver aborted.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @usb6fire_comm_receiver_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb6fire_comm_receiver_handler(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.comm_runtime*, align 8
  %4 = alloca %struct.midi_runtime*, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %5 = load %struct.urb*, %struct.urb** %2, align 8
  %6 = getelementptr inbounds %struct.urb, %struct.urb* %5, i32 0, i32 3
  %7 = load %struct.comm_runtime*, %struct.comm_runtime** %6, align 8
  store %struct.comm_runtime* %7, %struct.comm_runtime** %3, align 8
  %8 = load %struct.comm_runtime*, %struct.comm_runtime** %3, align 8
  %9 = getelementptr inbounds %struct.comm_runtime, %struct.comm_runtime* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load %struct.midi_runtime*, %struct.midi_runtime** %11, align 8
  store %struct.midi_runtime* %12, %struct.midi_runtime** %4, align 8
  %13 = load %struct.urb*, %struct.urb** %2, align 8
  %14 = getelementptr inbounds %struct.urb, %struct.urb* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %44, label %17

17:                                               ; preds = %1
  %18 = load %struct.comm_runtime*, %struct.comm_runtime** %3, align 8
  %19 = getelementptr inbounds %struct.comm_runtime, %struct.comm_runtime* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 16
  br i1 %23, label %24, label %43

24:                                               ; preds = %17
  %25 = load %struct.midi_runtime*, %struct.midi_runtime** %4, align 8
  %26 = icmp ne %struct.midi_runtime* %25, null
  br i1 %26, label %27, label %42

27:                                               ; preds = %24
  %28 = load %struct.midi_runtime*, %struct.midi_runtime** %4, align 8
  %29 = getelementptr inbounds %struct.midi_runtime, %struct.midi_runtime* %28, i32 0, i32 0
  %30 = load i32 (%struct.midi_runtime*, i32*, i32)*, i32 (%struct.midi_runtime*, i32*, i32)** %29, align 8
  %31 = load %struct.midi_runtime*, %struct.midi_runtime** %4, align 8
  %32 = load %struct.comm_runtime*, %struct.comm_runtime** %3, align 8
  %33 = getelementptr inbounds %struct.comm_runtime, %struct.comm_runtime* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 2
  %36 = load %struct.comm_runtime*, %struct.comm_runtime** %3, align 8
  %37 = getelementptr inbounds %struct.comm_runtime, %struct.comm_runtime* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 %30(%struct.midi_runtime* %31, i32* %35, i32 %40)
  br label %42

42:                                               ; preds = %27, %24
  br label %43

43:                                               ; preds = %42, %17
  br label %44

44:                                               ; preds = %43, %1
  %45 = load %struct.comm_runtime*, %struct.comm_runtime** %3, align 8
  %46 = getelementptr inbounds %struct.comm_runtime, %struct.comm_runtime* %45, i32 0, i32 1
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %67, label %51

51:                                               ; preds = %44
  %52 = load %struct.urb*, %struct.urb** %2, align 8
  %53 = getelementptr inbounds %struct.urb, %struct.urb* %52, i32 0, i32 2
  store i64 0, i64* %53, align 8
  %54 = load %struct.urb*, %struct.urb** %2, align 8
  %55 = getelementptr inbounds %struct.urb, %struct.urb* %54, i32 0, i32 1
  store i64 0, i64* %55, align 8
  %56 = load %struct.urb*, %struct.urb** %2, align 8
  %57 = load i32, i32* @GFP_ATOMIC, align 4
  %58 = call i64 @usb_submit_urb(%struct.urb* %56, i32 %57)
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %51
  %61 = load %struct.urb*, %struct.urb** %2, align 8
  %62 = getelementptr inbounds %struct.urb, %struct.urb* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = call i32 @dev_warn(i32* %64, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %66

66:                                               ; preds = %60, %51
  br label %67

67:                                               ; preds = %66, %44
  ret void
}

declare dso_local i64 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
