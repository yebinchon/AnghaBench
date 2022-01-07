; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/line6/extr_toneport.c_toneport_setup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/line6/extr_toneport.c_toneport_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.usb_line6_toneport = type { i64, %struct.usb_line6 }
%struct.usb_line6 = type { i32, %struct.usb_device* }
%struct.usb_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@toneport_source_info = common dso_local global %struct.TYPE_2__* null, align 8
@TONEPORT_PCM_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_line6_toneport*)* @toneport_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @toneport_setup(%struct.usb_line6_toneport* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_line6_toneport*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.usb_line6*, align 8
  %6 = alloca %struct.usb_device*, align 8
  store %struct.usb_line6_toneport* %0, %struct.usb_line6_toneport** %3, align 8
  %7 = load %struct.usb_line6_toneport*, %struct.usb_line6_toneport** %3, align 8
  %8 = getelementptr inbounds %struct.usb_line6_toneport, %struct.usb_line6_toneport* %7, i32 0, i32 1
  store %struct.usb_line6* %8, %struct.usb_line6** %5, align 8
  %9 = load %struct.usb_line6*, %struct.usb_line6** %5, align 8
  %10 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %9, i32 0, i32 1
  %11 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  store %struct.usb_device* %11, %struct.usb_device** %6, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i64* @kmalloc(i32 8, i32 %12)
  store i64* %13, i64** %4, align 8
  %14 = load i64*, i64** %4, align 8
  %15 = icmp ne i64* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %57

19:                                               ; preds = %1
  %20 = call i64 (...) @ktime_get_real_seconds()
  %21 = load i64*, i64** %4, align 8
  store i64 %20, i64* %21, align 8
  %22 = load %struct.usb_line6*, %struct.usb_line6** %5, align 8
  %23 = load i64*, i64** %4, align 8
  %24 = call i32 @line6_write_data(%struct.usb_line6* %22, i32 32966, i64* %23, i32 4)
  %25 = load i64*, i64** %4, align 8
  %26 = call i32 @kfree(i64* %25)
  %27 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %28 = call i32 @toneport_send_cmd(%struct.usb_device* %27, i32 769, i32 0)
  %29 = load %struct.usb_line6_toneport*, %struct.usb_line6_toneport** %3, align 8
  %30 = call i64 @toneport_has_source_select(%struct.usb_line6_toneport* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %19
  %33 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @toneport_source_info, align 8
  %35 = load %struct.usb_line6_toneport*, %struct.usb_line6_toneport** %3, align 8
  %36 = getelementptr inbounds %struct.usb_line6_toneport, %struct.usb_line6_toneport* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @toneport_send_cmd(%struct.usb_device* %33, i32 %40, i32 0)
  br label %42

42:                                               ; preds = %32, %19
  %43 = load %struct.usb_line6_toneport*, %struct.usb_line6_toneport** %3, align 8
  %44 = call i64 @toneport_has_led(%struct.usb_line6_toneport* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load %struct.usb_line6_toneport*, %struct.usb_line6_toneport** %3, align 8
  %48 = call i32 @toneport_update_led(%struct.usb_line6_toneport* %47)
  br label %49

49:                                               ; preds = %46, %42
  %50 = load %struct.usb_line6_toneport*, %struct.usb_line6_toneport** %3, align 8
  %51 = getelementptr inbounds %struct.usb_line6_toneport, %struct.usb_line6_toneport* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %51, i32 0, i32 0
  %53 = load i32, i32* @TONEPORT_PCM_DELAY, align 4
  %54 = mul nsw i32 %53, 1000
  %55 = call i32 @msecs_to_jiffies(i32 %54)
  %56 = call i32 @schedule_delayed_work(i32* %52, i32 %55)
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %49, %16
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i64* @kmalloc(i32, i32) #1

declare dso_local i64 @ktime_get_real_seconds(...) #1

declare dso_local i32 @line6_write_data(%struct.usb_line6*, i32, i64*, i32) #1

declare dso_local i32 @kfree(i64*) #1

declare dso_local i32 @toneport_send_cmd(%struct.usb_device*, i32, i32) #1

declare dso_local i64 @toneport_has_source_select(%struct.usb_line6_toneport*) #1

declare dso_local i64 @toneport_has_led(%struct.usb_line6_toneport*) #1

declare dso_local i32 @toneport_update_led(%struct.usb_line6_toneport*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
