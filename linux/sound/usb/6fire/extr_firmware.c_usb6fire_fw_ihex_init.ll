; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/6fire/extr_firmware.c_usb6fire_fw_ihex_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/6fire/extr_firmware.c_usb6fire_fw_ihex_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firmware = type { i32, i32 }
%struct.ihex_record = type { i64, i64, i64, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.firmware*, %struct.ihex_record*)* @usb6fire_fw_ihex_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb6fire_fw_ihex_init(%struct.firmware* %0, %struct.ihex_record* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.firmware*, align 8
  %5 = alloca %struct.ihex_record*, align 8
  store %struct.firmware* %0, %struct.firmware** %4, align 8
  store %struct.ihex_record* %1, %struct.ihex_record** %5, align 8
  %6 = load %struct.firmware*, %struct.firmware** %4, align 8
  %7 = getelementptr inbounds %struct.firmware, %struct.firmware* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.ihex_record*, %struct.ihex_record** %5, align 8
  %10 = getelementptr inbounds %struct.ihex_record, %struct.ihex_record* %9, i32 0, i32 5
  store i32 %8, i32* %10, align 8
  %11 = load %struct.firmware*, %struct.firmware** %4, align 8
  %12 = getelementptr inbounds %struct.firmware, %struct.firmware* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.ihex_record*, %struct.ihex_record** %5, align 8
  %15 = getelementptr inbounds %struct.ihex_record, %struct.ihex_record* %14, i32 0, i32 4
  store i32 %13, i32* %15, align 4
  %16 = load %struct.ihex_record*, %struct.ihex_record** %5, align 8
  %17 = getelementptr inbounds %struct.ihex_record, %struct.ihex_record* %16, i32 0, i32 0
  store i64 0, i64* %17, align 8
  %18 = load %struct.ihex_record*, %struct.ihex_record** %5, align 8
  %19 = getelementptr inbounds %struct.ihex_record, %struct.ihex_record* %18, i32 0, i32 2
  store i64 0, i64* %19, align 8
  br label %20

20:                                               ; preds = %24, %2
  %21 = load %struct.ihex_record*, %struct.ihex_record** %5, align 8
  %22 = call i64 @usb6fire_fw_ihex_next_record(%struct.ihex_record* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %20
  %25 = load %struct.ihex_record*, %struct.ihex_record** %5, align 8
  %26 = getelementptr inbounds %struct.ihex_record, %struct.ihex_record* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.ihex_record*, %struct.ihex_record** %5, align 8
  %29 = getelementptr inbounds %struct.ihex_record, %struct.ihex_record* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = call i64 @max(i32 %27, i64 %30)
  %32 = load %struct.ihex_record*, %struct.ihex_record** %5, align 8
  %33 = getelementptr inbounds %struct.ihex_record, %struct.ihex_record* %32, i32 0, i32 2
  store i64 %31, i64* %33, align 8
  br label %20

34:                                               ; preds = %20
  %35 = load %struct.ihex_record*, %struct.ihex_record** %5, align 8
  %36 = getelementptr inbounds %struct.ihex_record, %struct.ihex_record* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %45

42:                                               ; preds = %34
  %43 = load %struct.ihex_record*, %struct.ihex_record** %5, align 8
  %44 = getelementptr inbounds %struct.ihex_record, %struct.ihex_record* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %42, %39
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i64 @usb6fire_fw_ihex_next_record(%struct.ihex_record*) #1

declare dso_local i64 @max(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
