; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-card.c_axg_card_reallocate_links.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-card.c_axg_card_reallocate_links.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axg_card = type { i8**, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8**, i32, i32 }
%struct.snd_soc_dai_link = type opaque

@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to allocate links\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.axg_card*, i32)* @axg_card_reallocate_links to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axg_card_reallocate_links(%struct.axg_card* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.axg_card*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai_link*, align 8
  %7 = alloca i8**, align 8
  store %struct.axg_card* %0, %struct.axg_card** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.axg_card*, %struct.axg_card** %4, align 8
  %9 = getelementptr inbounds %struct.axg_card, %struct.axg_card* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i8**, i8*** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = zext i32 %12 to i64
  %14 = mul i64 %13, 8
  %15 = trunc i64 %14 to i32
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = load i32, i32* @__GFP_ZERO, align 4
  %18 = or i32 %16, %17
  %19 = call i8* @krealloc(i8** %11, i32 %15, i32 %18)
  %20 = bitcast i8* %19 to %struct.snd_soc_dai_link*
  store %struct.snd_soc_dai_link* %20, %struct.snd_soc_dai_link** %6, align 8
  %21 = load %struct.axg_card*, %struct.axg_card** %4, align 8
  %22 = getelementptr inbounds %struct.axg_card, %struct.axg_card* %21, i32 0, i32 0
  %23 = load i8**, i8*** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = zext i32 %24 to i64
  %26 = mul i64 %25, 8
  %27 = trunc i64 %26 to i32
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = load i32, i32* @__GFP_ZERO, align 4
  %30 = or i32 %28, %29
  %31 = call i8* @krealloc(i8** %23, i32 %27, i32 %30)
  %32 = bitcast i8* %31 to i8**
  store i8** %32, i8*** %7, align 8
  %33 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %6, align 8
  %34 = icmp ne %struct.snd_soc_dai_link* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %2
  %36 = load i8**, i8*** %7, align 8
  %37 = icmp ne i8** %36, null
  br i1 %37, label %46, label %38

38:                                               ; preds = %35, %2
  %39 = load %struct.axg_card*, %struct.axg_card** %4, align 8
  %40 = getelementptr inbounds %struct.axg_card, %struct.axg_card* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dev_err(i32 %42, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %59

46:                                               ; preds = %35
  %47 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %6, align 8
  %48 = bitcast %struct.snd_soc_dai_link* %47 to i8**
  %49 = load %struct.axg_card*, %struct.axg_card** %4, align 8
  %50 = getelementptr inbounds %struct.axg_card, %struct.axg_card* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i8** %48, i8*** %51, align 8
  %52 = load i8**, i8*** %7, align 8
  %53 = load %struct.axg_card*, %struct.axg_card** %4, align 8
  %54 = getelementptr inbounds %struct.axg_card, %struct.axg_card* %53, i32 0, i32 0
  store i8** %52, i8*** %54, align 8
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.axg_card*, %struct.axg_card** %4, align 8
  %57 = getelementptr inbounds %struct.axg_card, %struct.axg_card* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  store i32 %55, i32* %58, align 8
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %46, %38
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i8* @krealloc(i8**, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
