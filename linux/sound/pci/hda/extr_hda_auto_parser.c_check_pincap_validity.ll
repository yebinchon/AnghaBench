; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_auto_parser.c_check_pincap_validity.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_auto_parser.c_check_pincap_validity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }

@AC_PINCAP_OUT = common dso_local global i32 0, align 4
@AC_PINCAP_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i32, i32)* @check_pincap_validity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_pincap_validity(%struct.hda_codec* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @snd_hda_query_pin_caps(%struct.hda_codec* %9, i32 %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %33

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %25 [
    i32 130, label %17
    i32 128, label %17
    i32 131, label %17
    i32 129, label %17
    i32 132, label %17
  ]

17:                                               ; preds = %15, %15, %15, %15, %15
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @AC_PINCAP_OUT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %4, align 4
  br label %33

25:                                               ; preds = %15
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @AC_PINCAP_IN, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %25, %17, %14
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @snd_hda_query_pin_caps(%struct.hda_codec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
