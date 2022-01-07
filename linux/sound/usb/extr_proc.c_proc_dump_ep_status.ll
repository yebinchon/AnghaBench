; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_proc.c_proc_dump_ep_status.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_proc.c_proc_dump_ep_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_substream = type { i64 }
%struct.snd_usb_endpoint = type { i32, i32, i32, i32 }
%struct.snd_info_buffer = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"    Packet Size = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"    Momentary freq = %u Hz (%#x.%04x)\0A\00", align 1
@USB_SPEED_FULL = common dso_local global i64 0, align 8
@INT_MIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"    Feedback Format = %d.%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_usb_substream*, %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint*, %struct.snd_info_buffer*)* @proc_dump_ep_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @proc_dump_ep_status(%struct.snd_usb_substream* %0, %struct.snd_usb_endpoint* %1, %struct.snd_usb_endpoint* %2, %struct.snd_info_buffer* %3) #0 {
  %5 = alloca %struct.snd_usb_substream*, align 8
  %6 = alloca %struct.snd_usb_endpoint*, align 8
  %7 = alloca %struct.snd_usb_endpoint*, align 8
  %8 = alloca %struct.snd_info_buffer*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_usb_substream* %0, %struct.snd_usb_substream** %5, align 8
  store %struct.snd_usb_endpoint* %1, %struct.snd_usb_endpoint** %6, align 8
  store %struct.snd_usb_endpoint* %2, %struct.snd_usb_endpoint** %7, align 8
  store %struct.snd_info_buffer* %3, %struct.snd_info_buffer** %8, align 8
  %10 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %6, align 8
  %11 = icmp ne %struct.snd_usb_endpoint* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  br label %70

13:                                               ; preds = %4
  %14 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %8, align 8
  %15 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %6, align 8
  %16 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i32 (%struct.snd_info_buffer*, i8*, i32, ...) @snd_iprintf(%struct.snd_info_buffer* %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %8, align 8
  %20 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %5, align 8
  %21 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @USB_SPEED_FULL, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %13
  %26 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %6, align 8
  %27 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @get_full_speed_hz(i32 %28)
  br label %35

30:                                               ; preds = %13
  %31 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %6, align 8
  %32 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @get_high_speed_hz(i32 %33)
  br label %35

35:                                               ; preds = %30, %25
  %36 = phi i32 [ %29, %25 ], [ %34, %30 ]
  %37 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %6, align 8
  %38 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = ashr i32 %39, 16
  %41 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %6, align 8
  %42 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, 65535
  %45 = call i32 (%struct.snd_info_buffer*, i8*, i32, ...) @snd_iprintf(%struct.snd_info_buffer* %19, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %40, i32 %44)
  %46 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %7, align 8
  %47 = icmp ne %struct.snd_usb_endpoint* %46, null
  br i1 %47, label %48, label %70

48:                                               ; preds = %35
  %49 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %6, align 8
  %50 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @INT_MIN, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %70

54:                                               ; preds = %48
  %55 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %6, align 8
  %56 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = sub nsw i32 16, %57
  store i32 %58, i32* %9, align 4
  %59 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %8, align 8
  %60 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %7, align 8
  %61 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = icmp sgt i32 %62, 3
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 32, i32 24
  %66 = load i32, i32* %9, align 4
  %67 = sub nsw i32 %65, %66
  %68 = load i32, i32* %9, align 4
  %69 = call i32 (%struct.snd_info_buffer*, i8*, i32, ...) @snd_iprintf(%struct.snd_info_buffer* %59, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %12, %54, %48, %35
  ret void
}

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, i32, ...) #1

declare dso_local i32 @get_full_speed_hz(i32) #1

declare dso_local i32 @get_high_speed_hz(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
