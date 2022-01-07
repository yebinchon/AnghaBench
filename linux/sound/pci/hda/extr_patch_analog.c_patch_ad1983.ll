; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_analog.c_patch_ad1983.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_analog.c_patch_ad1983.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.ad198x_spec* }
%struct.ad198x_spec = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@patch_ad1983.conn_0c = internal global [1 x i32] [i32 8], align 4
@patch_ad1983.conn_0d = internal global [1 x i32] [i32 9], align 4
@HDA_OUTPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @patch_ad1983 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_ad1983(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.ad198x_spec*, align 8
  %5 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %6 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %7 = call i32 @alloc_ad_spec(%struct.hda_codec* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %2, align 4
  br label %47

12:                                               ; preds = %1
  %13 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %14 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %13, i32 0, i32 0
  %15 = load %struct.ad198x_spec*, %struct.ad198x_spec** %14, align 8
  store %struct.ad198x_spec* %15, %struct.ad198x_spec** %4, align 8
  %16 = load %struct.ad198x_spec*, %struct.ad198x_spec** %4, align 8
  %17 = getelementptr inbounds %struct.ad198x_spec, %struct.ad198x_spec* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 14, i32* %18, align 4
  %19 = load %struct.ad198x_spec*, %struct.ad198x_spec** %4, align 8
  %20 = getelementptr inbounds %struct.ad198x_spec, %struct.ad198x_spec* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  store i32 16, i32* %21, align 4
  %22 = load %struct.ad198x_spec*, %struct.ad198x_spec** %4, align 8
  %23 = load i32, i32* @HDA_OUTPUT, align 4
  %24 = call i32 @set_beep_amp(%struct.ad198x_spec* %22, i32 16, i32 0, i32 %23)
  %25 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %26 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([1 x i32], [1 x i32]* @patch_ad1983.conn_0c, i64 0, i64 0))
  %27 = call i32 @snd_hda_override_conn_list(%struct.hda_codec* %25, i32 12, i32 %26, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @patch_ad1983.conn_0c, i64 0, i64 0))
  %28 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %29 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([1 x i32], [1 x i32]* @patch_ad1983.conn_0d, i64 0, i64 0))
  %30 = call i32 @snd_hda_override_conn_list(%struct.hda_codec* %28, i32 13, i32 %29, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @patch_ad1983.conn_0d, i64 0, i64 0))
  %31 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %32 = call i32 @ad198x_parse_auto_config(%struct.hda_codec* %31, i32 0)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %12
  br label %43

36:                                               ; preds = %12
  %37 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %38 = call i32 @ad1983_add_spdif_mux_ctl(%struct.hda_codec* %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %43

42:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %47

43:                                               ; preds = %41, %35
  %44 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %45 = call i32 @snd_hda_gen_free(%struct.hda_codec* %44)
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %43, %42, %10
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @alloc_ad_spec(%struct.hda_codec*) #1

declare dso_local i32 @set_beep_amp(%struct.ad198x_spec*, i32, i32, i32) #1

declare dso_local i32 @snd_hda_override_conn_list(%struct.hda_codec*, i32, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @ad198x_parse_auto_config(%struct.hda_codec*, i32) #1

declare dso_local i32 @ad1983_add_spdif_mux_ctl(%struct.hda_codec*) #1

declare dso_local i32 @snd_hda_gen_free(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
