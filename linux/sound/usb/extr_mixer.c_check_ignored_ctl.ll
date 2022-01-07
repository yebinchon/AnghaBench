; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer.c_check_ignored_ctl.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer.c_check_ignored_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbmix_name_map = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbmix_name_map*)* @check_ignored_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_ignored_ctl(%struct.usbmix_name_map* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usbmix_name_map*, align 8
  store %struct.usbmix_name_map* %0, %struct.usbmix_name_map** %3, align 8
  %4 = load %struct.usbmix_name_map*, %struct.usbmix_name_map** %3, align 8
  %5 = icmp ne %struct.usbmix_name_map* %4, null
  br i1 %5, label %6, label %16

6:                                                ; preds = %1
  %7 = load %struct.usbmix_name_map*, %struct.usbmix_name_map** %3, align 8
  %8 = getelementptr inbounds %struct.usbmix_name_map, %struct.usbmix_name_map* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = load %struct.usbmix_name_map*, %struct.usbmix_name_map** %3, align 8
  %13 = getelementptr inbounds %struct.usbmix_name_map, %struct.usbmix_name_map* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11, %6, %1
  store i32 0, i32* %2, align 4
  br label %18

17:                                               ; preds = %11
  store i32 1, i32* %2, align 4
  br label %18

18:                                               ; preds = %17, %16
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
