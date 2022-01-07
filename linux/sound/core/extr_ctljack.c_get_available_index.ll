; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_ctljack.c_get_available_index.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_ctljack.c_get_available_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { i32 }
%struct.snd_ctl_elem_id = type { i32, i64, i32, i32 }

@SNDRV_CTL_ELEM_IFACE_CARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_card*, i8*)* @get_available_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_available_index(%struct.snd_card* %0, i8* %1) #0 {
  %3 = alloca %struct.snd_card*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.snd_ctl_elem_id, align 8
  store %struct.snd_card* %0, %struct.snd_card** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = call i32 @memset(%struct.snd_ctl_elem_id* %5, i32 0, i32 24)
  %7 = getelementptr inbounds %struct.snd_ctl_elem_id, %struct.snd_ctl_elem_id* %5, i32 0, i32 0
  store i32 0, i32* %7, align 8
  %8 = load i32, i32* @SNDRV_CTL_ELEM_IFACE_CARD, align 4
  %9 = getelementptr inbounds %struct.snd_ctl_elem_id, %struct.snd_ctl_elem_id* %5, i32 0, i32 3
  store i32 %8, i32* %9, align 4
  %10 = getelementptr inbounds %struct.snd_ctl_elem_id, %struct.snd_ctl_elem_id* %5, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @strlcpy(i32 %11, i8* %12, i32 4)
  br label %14

14:                                               ; preds = %18, %2
  %15 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %16 = call i64 @snd_ctl_find_id(%struct.snd_card* %15, %struct.snd_ctl_elem_id* %5)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.snd_ctl_elem_id, %struct.snd_ctl_elem_id* %5, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 8
  %22 = getelementptr inbounds %struct.snd_ctl_elem_id, %struct.snd_ctl_elem_id* %5, i32 0, i32 1
  store i64 0, i64* %22, align 8
  br label %14

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.snd_ctl_elem_id, %struct.snd_ctl_elem_id* %5, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  ret i32 %25
}

declare dso_local i32 @memset(%struct.snd_ctl_elem_id*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i64 @snd_ctl_find_id(%struct.snd_card*, %struct.snd_ctl_elem_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
