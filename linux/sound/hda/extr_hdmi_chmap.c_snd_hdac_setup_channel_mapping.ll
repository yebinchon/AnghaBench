; ModuleID = '/home/carl/AnghaBench/linux/sound/hda/extr_hdmi_chmap.c_snd_hdac_setup_channel_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/sound/hda/extr_hdmi_chmap.c_snd_hdac_setup_channel_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_chmap = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_hdac_setup_channel_mapping(%struct.hdac_chmap* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5, i32 %6) #0 {
  %8 = alloca %struct.hdac_chmap*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.hdac_chmap* %0, %struct.hdac_chmap** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i32 %6, i32* %14, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %7
  %18 = load i32, i32* %14, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = load %struct.hdac_chmap*, %struct.hdac_chmap** %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %12, align 4
  %24 = load i8*, i8** %13, align 8
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @hdmi_manual_setup_channel_mapping(%struct.hdac_chmap* %21, i32 %22, i32 %23, i8* %24, i32 %25)
  br label %36

27:                                               ; preds = %17, %7
  %28 = load %struct.hdac_chmap*, %struct.hdac_chmap** %8, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @hdmi_std_setup_channel_mapping(%struct.hdac_chmap* %28, i32 %29, i32 %30, i32 %31)
  %33 = load i8*, i8** %13, align 8
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @hdmi_setup_fake_chmap(i8* %33, i32 %34)
  br label %36

36:                                               ; preds = %27, %20
  %37 = load %struct.hdac_chmap*, %struct.hdac_chmap** %8, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @hdmi_debug_channel_mapping(%struct.hdac_chmap* %37, i32 %38)
  ret void
}

declare dso_local i32 @hdmi_manual_setup_channel_mapping(%struct.hdac_chmap*, i32, i32, i8*, i32) #1

declare dso_local i32 @hdmi_std_setup_channel_mapping(%struct.hdac_chmap*, i32, i32, i32) #1

declare dso_local i32 @hdmi_setup_fake_chmap(i8*, i32) #1

declare dso_local i32 @hdmi_debug_channel_mapping(%struct.hdac_chmap*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
