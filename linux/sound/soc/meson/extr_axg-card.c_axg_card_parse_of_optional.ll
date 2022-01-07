; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-card.c_axg_card_parse_of_optional.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-card.c_axg_card_parse_of_optional.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_card = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_card*, i8*, i32 (%struct.snd_soc_card*, i8*)*)* @axg_card_parse_of_optional to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axg_card_parse_of_optional(%struct.snd_soc_card* %0, i8* %1, i32 (%struct.snd_soc_card*, i8*)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_card*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32 (%struct.snd_soc_card*, i8*)*, align 8
  store %struct.snd_soc_card* %0, %struct.snd_soc_card** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 (%struct.snd_soc_card*, i8*)* %2, i32 (%struct.snd_soc_card*, i8*)** %7, align 8
  %8 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %9 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @of_property_read_bool(i32 %12, i8* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %22

17:                                               ; preds = %3
  %18 = load i32 (%struct.snd_soc_card*, i8*)*, i32 (%struct.snd_soc_card*, i8*)** %7, align 8
  %19 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 %18(%struct.snd_soc_card* %19, i8* %20)
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %17, %16
  %23 = load i32, i32* %4, align 4
  ret i32 %23
}

declare dso_local i32 @of_property_read_bool(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
