; ModuleID = '/home/carl/AnghaBench/linux/sound/hda/extr_hdmi_chmap.c_snd_hdac_chmap_to_spk_mask.c'
source_filename = "/home/carl/AnghaBench/linux/sound/hda/extr_hdmi_chmap.c_snd_hdac_chmap_to_spk_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.channel_map_table = type { i8, i32 }

@map_tables = common dso_local global %struct.channel_map_table* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hdac_chmap_to_spk_mask(i8 zeroext %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = alloca %struct.channel_map_table*, align 8
  store i8 %0, i8* %3, align 1
  %5 = load %struct.channel_map_table*, %struct.channel_map_table** @map_tables, align 8
  store %struct.channel_map_table* %5, %struct.channel_map_table** %4, align 8
  br label %6

6:                                                ; preds = %24, %1
  %7 = load %struct.channel_map_table*, %struct.channel_map_table** %4, align 8
  %8 = getelementptr inbounds %struct.channel_map_table, %struct.channel_map_table* %7, i32 0, i32 0
  %9 = load i8, i8* %8, align 4
  %10 = icmp ne i8 %9, 0
  br i1 %10, label %11, label %27

11:                                               ; preds = %6
  %12 = load %struct.channel_map_table*, %struct.channel_map_table** %4, align 8
  %13 = getelementptr inbounds %struct.channel_map_table, %struct.channel_map_table* %12, i32 0, i32 0
  %14 = load i8, i8* %13, align 4
  %15 = sext i8 %14 to i32
  %16 = load i8, i8* %3, align 1
  %17 = zext i8 %16 to i32
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %11
  %20 = load %struct.channel_map_table*, %struct.channel_map_table** %4, align 8
  %21 = getelementptr inbounds %struct.channel_map_table, %struct.channel_map_table* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %2, align 4
  br label %28

23:                                               ; preds = %11
  br label %24

24:                                               ; preds = %23
  %25 = load %struct.channel_map_table*, %struct.channel_map_table** %4, align 8
  %26 = getelementptr inbounds %struct.channel_map_table, %struct.channel_map_table* %25, i32 1
  store %struct.channel_map_table* %26, %struct.channel_map_table** %4, align 8
  br label %6

27:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %27, %19
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
