; ModuleID = '/home/carl/AnghaBench/linux/sound/xen/extr_xen_snd_front_alsa.c_xen_snd_front_alsa_fini.c'
source_filename = "/home/carl/AnghaBench/linux/sound/xen/extr_xen_snd_front_alsa.c_xen_snd_front_alsa_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_snd_front_info = type { %struct.TYPE_2__*, %struct.xen_snd_front_card_info* }
%struct.TYPE_2__ = type { i32 }
%struct.xen_snd_front_card_info = type { %struct.snd_card* }
%struct.snd_card = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Removing virtual sound card %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xen_snd_front_alsa_fini(%struct.xen_snd_front_info* %0) #0 {
  %2 = alloca %struct.xen_snd_front_info*, align 8
  %3 = alloca %struct.xen_snd_front_card_info*, align 8
  %4 = alloca %struct.snd_card*, align 8
  store %struct.xen_snd_front_info* %0, %struct.xen_snd_front_info** %2, align 8
  %5 = load %struct.xen_snd_front_info*, %struct.xen_snd_front_info** %2, align 8
  %6 = getelementptr inbounds %struct.xen_snd_front_info, %struct.xen_snd_front_info* %5, i32 0, i32 1
  %7 = load %struct.xen_snd_front_card_info*, %struct.xen_snd_front_card_info** %6, align 8
  store %struct.xen_snd_front_card_info* %7, %struct.xen_snd_front_card_info** %3, align 8
  %8 = load %struct.xen_snd_front_card_info*, %struct.xen_snd_front_card_info** %3, align 8
  %9 = icmp ne %struct.xen_snd_front_card_info* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %31

11:                                               ; preds = %1
  %12 = load %struct.xen_snd_front_card_info*, %struct.xen_snd_front_card_info** %3, align 8
  %13 = getelementptr inbounds %struct.xen_snd_front_card_info, %struct.xen_snd_front_card_info* %12, i32 0, i32 0
  %14 = load %struct.snd_card*, %struct.snd_card** %13, align 8
  store %struct.snd_card* %14, %struct.snd_card** %4, align 8
  %15 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %16 = icmp ne %struct.snd_card* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  br label %31

18:                                               ; preds = %11
  %19 = load %struct.xen_snd_front_info*, %struct.xen_snd_front_info** %2, align 8
  %20 = getelementptr inbounds %struct.xen_snd_front_info, %struct.xen_snd_front_info* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %24 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dev_dbg(i32* %22, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %28 = call i32 @snd_card_free(%struct.snd_card* %27)
  %29 = load %struct.xen_snd_front_card_info*, %struct.xen_snd_front_card_info** %3, align 8
  %30 = getelementptr inbounds %struct.xen_snd_front_card_info, %struct.xen_snd_front_card_info* %29, i32 0, i32 0
  store %struct.snd_card* null, %struct.snd_card** %30, align 8
  br label %31

31:                                               ; preds = %18, %17, %10
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @snd_card_free(%struct.snd_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
