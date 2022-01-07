; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_codec.c_snd_hda_codec_cleanup_for_unbind.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_codec.c_snd_hda_codec_cleanup_for_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, i32, i32, i64, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_hda_codec_cleanup_for_unbind(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %3 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %4 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %3, i32 0, i32 15
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %1
  %8 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %9 = call i32 @hda_codec_dev(%struct.hda_codec* %8)
  %10 = call i32 @pm_runtime_get_noresume(i32 %9)
  %11 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %12 = call i32 @hda_codec_dev(%struct.hda_codec* %11)
  %13 = call i32 @pm_runtime_disable(i32 %12)
  %14 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %15 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %14, i32 0, i32 15
  store i64 0, i64* %15, align 8
  br label %16

16:                                               ; preds = %7, %1
  %17 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %18 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %17, i32 0, i32 14
  %19 = call i32 @cancel_delayed_work_sync(i32* %18)
  %20 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %21 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %20, i32 0, i32 13
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %16
  %25 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %26 = call i32 @snd_hda_ctls_clear(%struct.hda_codec* %25)
  br label %27

27:                                               ; preds = %24, %16
  %28 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %29 = call i32 @codec_release_pcms(%struct.hda_codec* %28)
  %30 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %31 = call i32 @snd_hda_detach_beep_device(%struct.hda_codec* %30)
  %32 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %33 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %32, i32 0, i32 12
  %34 = call i32 @memset(i32* %33, i32 0, i32 4)
  %35 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %36 = call i32 @snd_hda_jack_tbl_clear(%struct.hda_codec* %35)
  %37 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %38 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %37, i32 0, i32 11
  store i32* null, i32** %38, align 8
  %39 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %40 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %39, i32 0, i32 10
  store i32* null, i32** %40, align 8
  %41 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %42 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %41, i32 0, i32 9
  %43 = call i32 @snd_array_free(i32* %42)
  %44 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %45 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %44, i32 0, i32 8
  %46 = call i32 @snd_array_free(i32* %45)
  %47 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %48 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %47, i32 0, i32 7
  %49 = call i32 @snd_array_free(i32* %48)
  %50 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %51 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %50, i32 0, i32 6
  %52 = call i32 @snd_array_free(i32* %51)
  %53 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %54 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %53, i32 0, i32 5
  store i32* null, i32** %54, align 8
  %55 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %56 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %55, i32 0, i32 4
  store i32* null, i32** %56, align 8
  %57 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %58 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %57, i32 0, i32 3
  store i64 0, i64* %58, align 8
  %59 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %60 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %59, i32 0, i32 2
  %61 = call i32 @snd_array_free(i32* %60)
  %62 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %63 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %62, i32 0, i32 1
  %64 = call i32 @snd_array_free(i32* %63)
  %65 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %66 = call i32 @remove_conn_list(%struct.hda_codec* %65)
  %67 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %68 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %67, i32 0, i32 0
  %69 = call i32 @snd_hdac_regmap_exit(i32* %68)
  ret void
}

declare dso_local i32 @pm_runtime_get_noresume(i32) #1

declare dso_local i32 @hda_codec_dev(%struct.hda_codec*) #1

declare dso_local i32 @pm_runtime_disable(i32) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @snd_hda_ctls_clear(%struct.hda_codec*) #1

declare dso_local i32 @codec_release_pcms(%struct.hda_codec*) #1

declare dso_local i32 @snd_hda_detach_beep_device(%struct.hda_codec*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @snd_hda_jack_tbl_clear(%struct.hda_codec*) #1

declare dso_local i32 @snd_array_free(i32*) #1

declare dso_local i32 @remove_conn_list(%struct.hda_codec*) #1

declare dso_local i32 @snd_hdac_regmap_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
