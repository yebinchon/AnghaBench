; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-core.c_snd_soc_remove_dai_link.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-core.c_snd_soc_remove_dai_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_card = type { i32 (%struct.snd_soc_card*, %struct.snd_soc_dai_link*)*, i32 }
%struct.snd_soc_dai_link = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@SND_SOC_DOBJ_DAI_LINK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"Invalid dai link type %d\0A\00", align 1
@client_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_soc_remove_dai_link(%struct.snd_soc_card* %0, %struct.snd_soc_dai_link* %1) #0 {
  %3 = alloca %struct.snd_soc_card*, align 8
  %4 = alloca %struct.snd_soc_dai_link*, align 8
  store %struct.snd_soc_card* %0, %struct.snd_soc_card** %3, align 8
  store %struct.snd_soc_dai_link* %1, %struct.snd_soc_dai_link** %4, align 8
  %5 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %4, align 8
  %6 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %2
  %11 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %4, align 8
  %12 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SND_SOC_DOBJ_DAI_LINK, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %10
  %18 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %19 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %4, align 8
  %22 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @dev_err(i32 %20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %24)
  br label %49

26:                                               ; preds = %10, %2
  %27 = call i32 @lockdep_assert_held(i32* @client_mutex)
  %28 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %4, align 8
  %29 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %26
  %34 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %35 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %34, i32 0, i32 0
  %36 = load i32 (%struct.snd_soc_card*, %struct.snd_soc_dai_link*)*, i32 (%struct.snd_soc_card*, %struct.snd_soc_dai_link*)** %35, align 8
  %37 = icmp ne i32 (%struct.snd_soc_card*, %struct.snd_soc_dai_link*)* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %40 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %39, i32 0, i32 0
  %41 = load i32 (%struct.snd_soc_card*, %struct.snd_soc_dai_link*)*, i32 (%struct.snd_soc_card*, %struct.snd_soc_dai_link*)** %40, align 8
  %42 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %43 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %4, align 8
  %44 = call i32 %41(%struct.snd_soc_card* %42, %struct.snd_soc_dai_link* %43)
  br label %45

45:                                               ; preds = %38, %33, %26
  %46 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %4, align 8
  %47 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %46, i32 0, i32 0
  %48 = call i32 @list_del(i32* %47)
  br label %49

49:                                               ; preds = %45, %17
  ret void
}

declare dso_local i32 @dev_err(i32, i8*, i64) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @list_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
