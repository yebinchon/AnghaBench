; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer.c_snd_usb_mixer_dump_cval.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer.c_snd_usb_mixer_dump_cval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_buffer = type { i32 }
%struct.usb_mixer_elem_list = type { i32 }
%struct.usb_mixer_elem_info = type { i64, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@snd_usb_mixer_dump_cval.val_types = internal global [6 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [8 x i8] c"BOOLEAN\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"INV_BOOLEAN\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"S8\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"U8\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"S16\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"U16\00", align 1
@.str.6 = private unnamed_addr constant [65 x i8] c"    Info: id=%i, control=%i, cmask=0x%x, channels=%i, type=\22%s\22\0A\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"    Volume: min=%i, max=%i, dBmin=%i, dBmax=%i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_buffer*, %struct.usb_mixer_elem_list*)* @snd_usb_mixer_dump_cval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_usb_mixer_dump_cval(%struct.snd_info_buffer* %0, %struct.usb_mixer_elem_list* %1) #0 {
  %3 = alloca %struct.snd_info_buffer*, align 8
  %4 = alloca %struct.usb_mixer_elem_list*, align 8
  %5 = alloca %struct.usb_mixer_elem_info*, align 8
  store %struct.snd_info_buffer* %0, %struct.snd_info_buffer** %3, align 8
  store %struct.usb_mixer_elem_list* %1, %struct.usb_mixer_elem_list** %4, align 8
  %6 = load %struct.usb_mixer_elem_list*, %struct.usb_mixer_elem_list** %4, align 8
  %7 = call %struct.usb_mixer_elem_info* @mixer_elem_list_to_info(%struct.usb_mixer_elem_list* %6)
  store %struct.usb_mixer_elem_info* %7, %struct.usb_mixer_elem_info** %5, align 8
  %8 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %3, align 8
  %9 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %10 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %9, i32 0, i32 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %14 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %13, i32 0, i32 7
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %17 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %20 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %23 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds [6 x i8*], [6 x i8*]* @snd_usb_mixer_dump_cval.val_types, i64 0, i64 %24
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 (%struct.snd_info_buffer*, i8*, i32, i32, i32, i32, ...) @snd_iprintf(%struct.snd_info_buffer* %8, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.6, i64 0, i64 0), i32 %12, i32 %15, i32 %18, i32 %21, i8* %26)
  %28 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %3, align 8
  %29 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %30 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %33 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %36 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %39 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 (%struct.snd_info_buffer*, i8*, i32, i32, i32, i32, ...) @snd_iprintf(%struct.snd_info_buffer* %28, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i32 %31, i32 %34, i32 %37, i32 %40)
  ret void
}

declare dso_local %struct.usb_mixer_elem_info* @mixer_elem_list_to_info(%struct.usb_mixer_elem_list*) #1

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, i32, i32, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
