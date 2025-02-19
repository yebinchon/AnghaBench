; ModuleID = '/home/carl/AnghaBench/linux/scripts/kconfig/extr_mconf.c_reset_subtitle.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/kconfig/extr_mconf.c_reset_subtitle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subtitle_list = type { %struct.subtitle_list* }

@subtitles = common dso_local global %struct.subtitle_list* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @reset_subtitle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_subtitle() #0 {
  %1 = alloca %struct.subtitle_list*, align 8
  %2 = alloca %struct.subtitle_list*, align 8
  %3 = load %struct.subtitle_list*, %struct.subtitle_list** @subtitles, align 8
  store %struct.subtitle_list* %3, %struct.subtitle_list** %1, align 8
  br label %4

4:                                                ; preds = %13, %0
  %5 = load %struct.subtitle_list*, %struct.subtitle_list** %1, align 8
  %6 = icmp ne %struct.subtitle_list* %5, null
  br i1 %6, label %7, label %15

7:                                                ; preds = %4
  %8 = load %struct.subtitle_list*, %struct.subtitle_list** %1, align 8
  %9 = getelementptr inbounds %struct.subtitle_list, %struct.subtitle_list* %8, i32 0, i32 0
  %10 = load %struct.subtitle_list*, %struct.subtitle_list** %9, align 8
  store %struct.subtitle_list* %10, %struct.subtitle_list** %2, align 8
  %11 = load %struct.subtitle_list*, %struct.subtitle_list** %1, align 8
  %12 = call i32 @free(%struct.subtitle_list* %11)
  br label %13

13:                                               ; preds = %7
  %14 = load %struct.subtitle_list*, %struct.subtitle_list** %2, align 8
  store %struct.subtitle_list* %14, %struct.subtitle_list** %1, align 8
  br label %4

15:                                               ; preds = %4
  store %struct.subtitle_list* null, %struct.subtitle_list** @subtitles, align 8
  %16 = load %struct.subtitle_list*, %struct.subtitle_list** @subtitles, align 8
  %17 = call i32 @set_dialog_subtitles(%struct.subtitle_list* %16)
  ret void
}

declare dso_local i32 @free(%struct.subtitle_list*) #1

declare dso_local i32 @set_dialog_subtitles(%struct.subtitle_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
