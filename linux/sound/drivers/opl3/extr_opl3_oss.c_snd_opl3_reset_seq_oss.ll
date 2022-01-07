; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/opl3/extr_opl3_oss.c_snd_opl3_reset_seq_oss.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/opl3/extr_opl3_oss.c_snd_opl3_reset_seq_oss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_oss_arg = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_seq_oss_arg*)* @snd_opl3_reset_seq_oss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_opl3_reset_seq_oss(%struct.snd_seq_oss_arg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_seq_oss_arg*, align 8
  store %struct.snd_seq_oss_arg* %0, %struct.snd_seq_oss_arg** %3, align 8
  %4 = load %struct.snd_seq_oss_arg*, %struct.snd_seq_oss_arg** %3, align 8
  %5 = icmp ne %struct.snd_seq_oss_arg* %4, null
  %6 = xor i1 %5, true
  %7 = zext i1 %6 to i32
  %8 = call i64 @snd_BUG_ON(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @ENXIO, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %14

14:                                               ; preds = %13, %10
  %15 = load i32, i32* %2, align 4
  ret i32 %15
}

declare dso_local i64 @snd_BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
