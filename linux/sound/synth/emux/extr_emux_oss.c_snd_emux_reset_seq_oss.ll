; ModuleID = '/home/carl/AnghaBench/linux/sound/synth/emux/extr_emux_oss.c_snd_emux_reset_seq_oss.c'
source_filename = "/home/carl/AnghaBench/linux/sound/synth/emux/extr_emux_oss.c_snd_emux_reset_seq_oss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_oss_arg = type { %struct.snd_emux_port* }
%struct.snd_emux_port = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_seq_oss_arg*)* @snd_emux_reset_seq_oss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_emux_reset_seq_oss(%struct.snd_seq_oss_arg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_seq_oss_arg*, align 8
  %4 = alloca %struct.snd_emux_port*, align 8
  store %struct.snd_seq_oss_arg* %0, %struct.snd_seq_oss_arg** %3, align 8
  %5 = load %struct.snd_seq_oss_arg*, %struct.snd_seq_oss_arg** %3, align 8
  %6 = icmp ne %struct.snd_seq_oss_arg* %5, null
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i64 @snd_BUG_ON(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @ENXIO, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %30

14:                                               ; preds = %1
  %15 = load %struct.snd_seq_oss_arg*, %struct.snd_seq_oss_arg** %3, align 8
  %16 = getelementptr inbounds %struct.snd_seq_oss_arg, %struct.snd_seq_oss_arg* %15, i32 0, i32 0
  %17 = load %struct.snd_emux_port*, %struct.snd_emux_port** %16, align 8
  store %struct.snd_emux_port* %17, %struct.snd_emux_port** %4, align 8
  %18 = load %struct.snd_emux_port*, %struct.snd_emux_port** %4, align 8
  %19 = icmp ne %struct.snd_emux_port* %18, null
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i64 @snd_BUG_ON(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %14
  %25 = load i32, i32* @ENXIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %30

27:                                               ; preds = %14
  %28 = load %struct.snd_emux_port*, %struct.snd_emux_port** %4, align 8
  %29 = call i32 @snd_emux_reset_port(%struct.snd_emux_port* %28)
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %27, %24, %11
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @snd_emux_reset_port(%struct.snd_emux_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
