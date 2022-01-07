; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_hdmi_read_pin_conn.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_hdmi_read_pin_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hdmi_spec* }
%struct.hdmi_spec = type { i32 }
%struct.hdmi_spec_per_pin = type { i32, i32, i32 }

@AC_WCAP_CONN_LIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"HDMI: pin %d wcaps %#x does not support connection list\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@HDA_MAX_CONNECTIONS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i32)* @hdmi_read_pin_conn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_read_pin_conn(%struct.hda_codec* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hdmi_spec*, align 8
  %7 = alloca %struct.hdmi_spec_per_pin*, align 8
  %8 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %10 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %9, i32 0, i32 0
  %11 = load %struct.hdmi_spec*, %struct.hdmi_spec** %10, align 8
  store %struct.hdmi_spec* %11, %struct.hdmi_spec** %6, align 8
  %12 = load %struct.hdmi_spec*, %struct.hdmi_spec** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.hdmi_spec_per_pin* @get_pin(%struct.hdmi_spec* %12, i32 %13)
  store %struct.hdmi_spec_per_pin* %14, %struct.hdmi_spec_per_pin** %7, align 8
  %15 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %7, align 8
  %16 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  %18 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @get_wcaps(%struct.hda_codec* %18, i32 %19)
  %21 = load i32, i32* @AC_WCAP_CONN_LIST, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %2
  %25 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @get_wcaps(%struct.hda_codec* %27, i32 %28)
  %30 = call i32 @codec_warn(%struct.hda_codec* %25, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %29)
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %43

33:                                               ; preds = %2
  %34 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %7, align 8
  %37 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @HDA_MAX_CONNECTIONS, align 4
  %40 = call i32 @snd_hda_get_connections(%struct.hda_codec* %34, i32 %35, i32 %38, i32 %39)
  %41 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %7, align 8
  %42 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %33, %24
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.hdmi_spec_per_pin* @get_pin(%struct.hdmi_spec*, i32) #1

declare dso_local i32 @get_wcaps(%struct.hda_codec*, i32) #1

declare dso_local i32 @codec_warn(%struct.hda_codec*, i8*, i32, i32) #1

declare dso_local i32 @snd_hda_get_connections(%struct.hda_codec*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
