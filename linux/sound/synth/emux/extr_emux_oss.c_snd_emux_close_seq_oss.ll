; ModuleID = '/home/carl/AnghaBench/linux/sound/synth/emux/extr_emux_oss.c_snd_emux_close_seq_oss.c'
source_filename = "/home/carl/AnghaBench/linux/sound/synth/emux/extr_emux_oss.c_snd_emux_close_seq_oss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_oss_arg = type { %struct.snd_emux_port* }
%struct.snd_emux_port = type { %struct.TYPE_2__, %struct.snd_emux* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.snd_emux = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_seq_oss_arg*)* @snd_emux_close_seq_oss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_emux_close_seq_oss(%struct.snd_seq_oss_arg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_seq_oss_arg*, align 8
  %4 = alloca %struct.snd_emux*, align 8
  %5 = alloca %struct.snd_emux_port*, align 8
  store %struct.snd_seq_oss_arg* %0, %struct.snd_seq_oss_arg** %3, align 8
  %6 = load %struct.snd_seq_oss_arg*, %struct.snd_seq_oss_arg** %3, align 8
  %7 = icmp ne %struct.snd_seq_oss_arg* %6, null
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i64 @snd_BUG_ON(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @ENXIO, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %64

15:                                               ; preds = %1
  %16 = load %struct.snd_seq_oss_arg*, %struct.snd_seq_oss_arg** %3, align 8
  %17 = getelementptr inbounds %struct.snd_seq_oss_arg, %struct.snd_seq_oss_arg* %16, i32 0, i32 0
  %18 = load %struct.snd_emux_port*, %struct.snd_emux_port** %17, align 8
  store %struct.snd_emux_port* %18, %struct.snd_emux_port** %5, align 8
  %19 = load %struct.snd_emux_port*, %struct.snd_emux_port** %5, align 8
  %20 = icmp ne %struct.snd_emux_port* %19, null
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @snd_BUG_ON(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %15
  %26 = load i32, i32* @ENXIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %64

28:                                               ; preds = %15
  %29 = load %struct.snd_emux_port*, %struct.snd_emux_port** %5, align 8
  %30 = getelementptr inbounds %struct.snd_emux_port, %struct.snd_emux_port* %29, i32 0, i32 1
  %31 = load %struct.snd_emux*, %struct.snd_emux** %30, align 8
  store %struct.snd_emux* %31, %struct.snd_emux** %4, align 8
  %32 = load %struct.snd_emux*, %struct.snd_emux** %4, align 8
  %33 = icmp ne %struct.snd_emux* %32, null
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i64 @snd_BUG_ON(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %28
  %39 = load i32, i32* @ENXIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %64

41:                                               ; preds = %28
  %42 = load %struct.snd_emux_port*, %struct.snd_emux_port** %5, align 8
  %43 = call i32 @snd_emux_sounds_off_all(%struct.snd_emux_port* %42)
  %44 = load %struct.snd_emux*, %struct.snd_emux** %4, align 8
  %45 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.snd_emux_port*, %struct.snd_emux_port** %5, align 8
  %48 = getelementptr inbounds %struct.snd_emux_port, %struct.snd_emux_port* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @SF_CLIENT_NO(i32 %50)
  %52 = call i32 @snd_soundfont_close_check(i32 %46, i32 %51)
  %53 = load %struct.snd_emux_port*, %struct.snd_emux_port** %5, align 8
  %54 = getelementptr inbounds %struct.snd_emux_port, %struct.snd_emux_port* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.snd_emux_port*, %struct.snd_emux_port** %5, align 8
  %58 = getelementptr inbounds %struct.snd_emux_port, %struct.snd_emux_port* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @snd_seq_event_port_detach(i32 %56, i32 %60)
  %62 = load %struct.snd_emux*, %struct.snd_emux** %4, align 8
  %63 = call i32 @snd_emux_dec_count(%struct.snd_emux* %62)
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %41, %38, %25, %12
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @snd_emux_sounds_off_all(%struct.snd_emux_port*) #1

declare dso_local i32 @snd_soundfont_close_check(i32, i32) #1

declare dso_local i32 @SF_CLIENT_NO(i32) #1

declare dso_local i32 @snd_seq_event_port_detach(i32, i32) #1

declare dso_local i32 @snd_emux_dec_count(%struct.snd_emux*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
