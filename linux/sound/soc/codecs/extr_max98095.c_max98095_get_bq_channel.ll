; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98095.c_max98095_get_bq_channel.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98095.c_max98095_get_bq_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }

@bq_mode_name = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Bad biquad channel name '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i8*)* @max98095_get_bq_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max98095_get_bq_channel(%struct.snd_soc_component* %0, i8* %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i32, i32* @bq_mode_name, align 4
  %7 = load i32, i32* @bq_mode_name, align 4
  %8 = call i32 @ARRAY_SIZE(i32 %7)
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @match_string(i32 %6, i32 %8, i8* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %15 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @dev_err(i32 %16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %17)
  br label %19

19:                                               ; preds = %13, %2
  %20 = load i32, i32* %5, align 4
  ret i32 %20
}

declare dso_local i32 @match_string(i32, i32, i8*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
