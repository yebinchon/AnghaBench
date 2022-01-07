; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-core.c_snd_soc_add_dai_link.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-core.c_snd_soc_add_dai_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_card = type { i32, {}*, i32 }
%struct.snd_soc_dai_link = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@SND_SOC_DOBJ_DAI_LINK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"Invalid dai link type %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@client_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_soc_add_dai_link(%struct.snd_soc_card* %0, %struct.snd_soc_dai_link* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_card*, align 8
  %5 = alloca %struct.snd_soc_dai_link*, align 8
  store %struct.snd_soc_card* %0, %struct.snd_soc_card** %4, align 8
  store %struct.snd_soc_dai_link* %1, %struct.snd_soc_dai_link** %5, align 8
  %6 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %5, align 8
  %7 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %2
  %12 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %5, align 8
  %13 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SND_SOC_DOBJ_DAI_LINK, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %11
  %19 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %20 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %5, align 8
  %23 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @dev_err(i32 %21, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %25)
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %56

29:                                               ; preds = %11, %2
  %30 = call i32 @lockdep_assert_held(i32* @client_mutex)
  %31 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %5, align 8
  %32 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %29
  %37 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %38 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %37, i32 0, i32 1
  %39 = bitcast {}** %38 to i32 (%struct.snd_soc_card*, %struct.snd_soc_dai_link*)**
  %40 = load i32 (%struct.snd_soc_card*, %struct.snd_soc_dai_link*)*, i32 (%struct.snd_soc_card*, %struct.snd_soc_dai_link*)** %39, align 8
  %41 = icmp ne i32 (%struct.snd_soc_card*, %struct.snd_soc_dai_link*)* %40, null
  br i1 %41, label %42, label %50

42:                                               ; preds = %36
  %43 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %44 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %43, i32 0, i32 1
  %45 = bitcast {}** %44 to i32 (%struct.snd_soc_card*, %struct.snd_soc_dai_link*)**
  %46 = load i32 (%struct.snd_soc_card*, %struct.snd_soc_dai_link*)*, i32 (%struct.snd_soc_card*, %struct.snd_soc_dai_link*)** %45, align 8
  %47 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %48 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %5, align 8
  %49 = call i32 %46(%struct.snd_soc_card* %47, %struct.snd_soc_dai_link* %48)
  br label %50

50:                                               ; preds = %42, %36, %29
  %51 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %5, align 8
  %52 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %51, i32 0, i32 0
  %53 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %54 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %53, i32 0, i32 0
  %55 = call i32 @list_add_tail(i32* %52, i32* %54)
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %50, %18
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @dev_err(i32, i8*, i64) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
