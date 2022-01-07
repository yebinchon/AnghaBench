; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_validate.c_validate_midi_out_jack.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_validate.c_validate_midi_out_jack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_desc_validator = type { i32 }
%struct.usb_midi_out_jack_descriptor = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.usb_desc_validator*)* @validate_midi_out_jack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_midi_out_jack(i8* %0, %struct.usb_desc_validator* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.usb_desc_validator*, align 8
  %5 = alloca %struct.usb_midi_out_jack_descriptor*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.usb_desc_validator* %1, %struct.usb_desc_validator** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.usb_midi_out_jack_descriptor*
  store %struct.usb_midi_out_jack_descriptor* %7, %struct.usb_midi_out_jack_descriptor** %5, align 8
  %8 = load %struct.usb_midi_out_jack_descriptor*, %struct.usb_midi_out_jack_descriptor** %5, align 8
  %9 = getelementptr inbounds %struct.usb_midi_out_jack_descriptor, %struct.usb_midi_out_jack_descriptor* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = sext i32 %10 to i64
  %12 = icmp uge i64 %11, 8
  br i1 %12, label %13, label %25

13:                                               ; preds = %2
  %14 = load %struct.usb_midi_out_jack_descriptor*, %struct.usb_midi_out_jack_descriptor** %5, align 8
  %15 = getelementptr inbounds %struct.usb_midi_out_jack_descriptor, %struct.usb_midi_out_jack_descriptor* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = load %struct.usb_midi_out_jack_descriptor*, %struct.usb_midi_out_jack_descriptor** %5, align 8
  %19 = getelementptr inbounds %struct.usb_midi_out_jack_descriptor, %struct.usb_midi_out_jack_descriptor* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %20, 2
  %22 = sext i32 %21 to i64
  %23 = add i64 8, %22
  %24 = icmp uge i64 %17, %23
  br label %25

25:                                               ; preds = %13, %2
  %26 = phi i1 [ false, %2 ], [ %24, %13 ]
  %27 = zext i1 %26 to i32
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
