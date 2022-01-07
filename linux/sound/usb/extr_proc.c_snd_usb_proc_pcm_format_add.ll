; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_proc.c_snd_usb_proc_pcm_format_add.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_proc.c_snd_usb_proc_pcm_format_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_stream = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_card* }
%struct.snd_card = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"stream%d\00", align 1
@proc_pcm_format_read = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_usb_proc_pcm_format_add(%struct.snd_usb_stream* %0) #0 {
  %2 = alloca %struct.snd_usb_stream*, align 8
  %3 = alloca [32 x i8], align 16
  %4 = alloca %struct.snd_card*, align 8
  store %struct.snd_usb_stream* %0, %struct.snd_usb_stream** %2, align 8
  %5 = load %struct.snd_usb_stream*, %struct.snd_usb_stream** %2, align 8
  %6 = getelementptr inbounds %struct.snd_usb_stream, %struct.snd_usb_stream* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.snd_card*, %struct.snd_card** %8, align 8
  store %struct.snd_card* %9, %struct.snd_card** %4, align 8
  %10 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %11 = load %struct.snd_usb_stream*, %struct.snd_usb_stream** %2, align 8
  %12 = getelementptr inbounds %struct.snd_usb_stream, %struct.snd_usb_stream* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @sprintf(i8* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %16 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %17 = load %struct.snd_usb_stream*, %struct.snd_usb_stream** %2, align 8
  %18 = load i32, i32* @proc_pcm_format_read, align 4
  %19 = call i32 @snd_card_ro_proc_new(%struct.snd_card* %15, i8* %16, %struct.snd_usb_stream* %17, i32 %18)
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @snd_card_ro_proc_new(%struct.snd_card*, i8*, %struct.snd_usb_stream*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
