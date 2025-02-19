; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer_quirks.c_snd_create_std_mono_table.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer_quirks.c_snd_create_std_mono_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_mixer_interface = type { i32 }
%struct.std_mono_table = type { i32, i32*, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_mixer_interface*, %struct.std_mono_table*)* @snd_create_std_mono_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_create_std_mono_table(%struct.usb_mixer_interface* %0, %struct.std_mono_table* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_mixer_interface*, align 8
  %5 = alloca %struct.std_mono_table*, align 8
  %6 = alloca i32, align 4
  store %struct.usb_mixer_interface* %0, %struct.usb_mixer_interface** %4, align 8
  store %struct.std_mono_table* %1, %struct.std_mono_table** %5, align 8
  br label %7

7:                                                ; preds = %37, %2
  %8 = load %struct.std_mono_table*, %struct.std_mono_table** %5, align 8
  %9 = getelementptr inbounds %struct.std_mono_table, %struct.std_mono_table* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %40

12:                                               ; preds = %7
  %13 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %4, align 8
  %14 = load %struct.std_mono_table*, %struct.std_mono_table** %5, align 8
  %15 = getelementptr inbounds %struct.std_mono_table, %struct.std_mono_table* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.std_mono_table*, %struct.std_mono_table** %5, align 8
  %18 = getelementptr inbounds %struct.std_mono_table, %struct.std_mono_table* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.std_mono_table*, %struct.std_mono_table** %5, align 8
  %21 = getelementptr inbounds %struct.std_mono_table, %struct.std_mono_table* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.std_mono_table*, %struct.std_mono_table** %5, align 8
  %24 = getelementptr inbounds %struct.std_mono_table, %struct.std_mono_table* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.std_mono_table*, %struct.std_mono_table** %5, align 8
  %27 = getelementptr inbounds %struct.std_mono_table, %struct.std_mono_table* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.std_mono_table*, %struct.std_mono_table** %5, align 8
  %30 = getelementptr inbounds %struct.std_mono_table, %struct.std_mono_table* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @snd_create_std_mono_ctl(%struct.usb_mixer_interface* %13, i32 %16, i32 %19, i32 %22, i32 %25, i32* %28, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %12
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %3, align 4
  br label %41

37:                                               ; preds = %12
  %38 = load %struct.std_mono_table*, %struct.std_mono_table** %5, align 8
  %39 = getelementptr inbounds %struct.std_mono_table, %struct.std_mono_table* %38, i32 1
  store %struct.std_mono_table* %39, %struct.std_mono_table** %5, align 8
  br label %7

40:                                               ; preds = %7
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %35
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @snd_create_std_mono_ctl(%struct.usb_mixer_interface*, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
