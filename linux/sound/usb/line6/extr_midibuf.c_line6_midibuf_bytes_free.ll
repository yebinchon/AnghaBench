; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/line6/extr_midibuf.c_line6_midibuf_bytes_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/line6/extr_midibuf.c_line6_midibuf_bytes_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.midi_buffer = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @line6_midibuf_bytes_free(%struct.midi_buffer* %0) #0 {
  %2 = alloca %struct.midi_buffer*, align 8
  store %struct.midi_buffer* %0, %struct.midi_buffer** %2, align 8
  %3 = load %struct.midi_buffer*, %struct.midi_buffer** %2, align 8
  %4 = call i64 @midibuf_is_full(%struct.midi_buffer* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %25

7:                                                ; preds = %1
  %8 = load %struct.midi_buffer*, %struct.midi_buffer** %2, align 8
  %9 = getelementptr inbounds %struct.midi_buffer, %struct.midi_buffer* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.midi_buffer*, %struct.midi_buffer** %2, align 8
  %12 = getelementptr inbounds %struct.midi_buffer, %struct.midi_buffer* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = sub nsw i32 %10, %13
  %15 = load %struct.midi_buffer*, %struct.midi_buffer** %2, align 8
  %16 = getelementptr inbounds %struct.midi_buffer, %struct.midi_buffer* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %14, %17
  %19 = sub nsw i32 %18, 1
  %20 = load %struct.midi_buffer*, %struct.midi_buffer** %2, align 8
  %21 = getelementptr inbounds %struct.midi_buffer, %struct.midi_buffer* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = srem i32 %19, %22
  %24 = add nsw i32 %23, 1
  br label %25

25:                                               ; preds = %7, %6
  %26 = phi i32 [ 0, %6 ], [ %24, %7 ]
  ret i32 %26
}

declare dso_local i64 @midibuf_is_full(%struct.midi_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
