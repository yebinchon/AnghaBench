; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_set_pin_eapd.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_set_pin_eapd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i64, %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i64, i64 }

@AC_PINCAP_EAPD = common dso_local global i32 0, align 4
@AC_VERB_SET_EAPD_BTLENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, i32, i32)* @set_pin_eapd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_pin_eapd(%struct.hda_codec* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hda_gen_spec*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %9 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %8, i32 0, i32 1
  %10 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %9, align 8
  store %struct.hda_gen_spec* %10, %struct.hda_gen_spec** %7, align 8
  %11 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %7, align 8
  %12 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %3
  %16 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @snd_hda_query_pin_caps(%struct.hda_codec* %16, i32 %17)
  %19 = load i32, i32* @AC_PINCAP_EAPD, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %15, %3
  br label %51

23:                                               ; preds = %15
  %24 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %7, align 8
  %25 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  br label %51

32:                                               ; preds = %28, %23
  %33 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %34 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %37, %32
  %43 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @AC_VERB_SET_EAPD_BTLENABLE, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 2, i32 0
  %50 = call i32 @snd_hda_codec_write_cache(%struct.hda_codec* %43, i32 %44, i32 0, i32 %45, i32 %49)
  br label %51

51:                                               ; preds = %42, %31, %22
  ret void
}

declare dso_local i32 @snd_hda_query_pin_caps(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_codec_write_cache(%struct.hda_codec*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
