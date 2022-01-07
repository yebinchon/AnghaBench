; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer_scarlett_gen2.c_scarlett2_fill_request_header.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer_scarlett_gen2.c_scarlett2_fill_request_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scarlett2_mixer_data = type { i32 }
%struct.scarlett2_usb_packet = type { i64, i64, i8*, i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scarlett2_mixer_data*, %struct.scarlett2_usb_packet*, i32, i32)* @scarlett2_fill_request_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scarlett2_fill_request_header(%struct.scarlett2_mixer_data* %0, %struct.scarlett2_usb_packet* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.scarlett2_mixer_data*, align 8
  %6 = alloca %struct.scarlett2_usb_packet*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.scarlett2_mixer_data* %0, %struct.scarlett2_mixer_data** %5, align 8
  store %struct.scarlett2_usb_packet* %1, %struct.scarlett2_usb_packet** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.scarlett2_mixer_data*, %struct.scarlett2_mixer_data** %5, align 8
  %11 = getelementptr inbounds %struct.scarlett2_mixer_data, %struct.scarlett2_mixer_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %11, align 4
  store i32 %12, i32* %9, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @cpu_to_le32(i32 %14)
  %16 = load %struct.scarlett2_usb_packet*, %struct.scarlett2_usb_packet** %6, align 8
  %17 = getelementptr inbounds %struct.scarlett2_usb_packet, %struct.scarlett2_usb_packet* %16, i32 0, i32 4
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i8* @cpu_to_le16(i32 %18)
  %20 = load %struct.scarlett2_usb_packet*, %struct.scarlett2_usb_packet** %6, align 8
  %21 = getelementptr inbounds %struct.scarlett2_usb_packet, %struct.scarlett2_usb_packet* %20, i32 0, i32 3
  store i8* %19, i8** %21, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i8* @cpu_to_le16(i32 %22)
  %24 = load %struct.scarlett2_usb_packet*, %struct.scarlett2_usb_packet** %6, align 8
  %25 = getelementptr inbounds %struct.scarlett2_usb_packet, %struct.scarlett2_usb_packet* %24, i32 0, i32 2
  store i8* %23, i8** %25, align 8
  %26 = load %struct.scarlett2_usb_packet*, %struct.scarlett2_usb_packet** %6, align 8
  %27 = getelementptr inbounds %struct.scarlett2_usb_packet, %struct.scarlett2_usb_packet* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = load %struct.scarlett2_usb_packet*, %struct.scarlett2_usb_packet** %6, align 8
  %29 = getelementptr inbounds %struct.scarlett2_usb_packet, %struct.scarlett2_usb_packet* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  ret void
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
