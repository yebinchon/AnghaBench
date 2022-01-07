; ModuleID = '/home/carl/AnghaBench/linux/sound/synth/emux/extr_emux_oss.c_snd_emux_ioctl_seq_oss.c'
source_filename = "/home/carl/AnghaBench/linux/sound/synth/emux/extr_emux_oss.c_snd_emux_ioctl_seq_oss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_oss_arg = type { %struct.snd_emux_port* }
%struct.snd_emux_port = type { %struct.snd_emux* }
%struct.snd_emux = type { i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_seq_oss_arg*, i32, i64)* @snd_emux_ioctl_seq_oss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_emux_ioctl_seq_oss(%struct.snd_seq_oss_arg* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_seq_oss_arg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.snd_emux_port*, align 8
  %9 = alloca %struct.snd_emux*, align 8
  store %struct.snd_seq_oss_arg* %0, %struct.snd_seq_oss_arg** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %10 = load %struct.snd_seq_oss_arg*, %struct.snd_seq_oss_arg** %5, align 8
  %11 = icmp ne %struct.snd_seq_oss_arg* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i64 @snd_BUG_ON(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @ENXIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %64

19:                                               ; preds = %3
  %20 = load %struct.snd_seq_oss_arg*, %struct.snd_seq_oss_arg** %5, align 8
  %21 = getelementptr inbounds %struct.snd_seq_oss_arg, %struct.snd_seq_oss_arg* %20, i32 0, i32 0
  %22 = load %struct.snd_emux_port*, %struct.snd_emux_port** %21, align 8
  store %struct.snd_emux_port* %22, %struct.snd_emux_port** %8, align 8
  %23 = load %struct.snd_emux_port*, %struct.snd_emux_port** %8, align 8
  %24 = icmp ne %struct.snd_emux_port* %23, null
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i64 @snd_BUG_ON(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %19
  %30 = load i32, i32* @ENXIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %64

32:                                               ; preds = %19
  %33 = load %struct.snd_emux_port*, %struct.snd_emux_port** %8, align 8
  %34 = getelementptr inbounds %struct.snd_emux_port, %struct.snd_emux_port* %33, i32 0, i32 0
  %35 = load %struct.snd_emux*, %struct.snd_emux** %34, align 8
  store %struct.snd_emux* %35, %struct.snd_emux** %9, align 8
  %36 = load %struct.snd_emux*, %struct.snd_emux** %9, align 8
  %37 = icmp ne %struct.snd_emux* %36, null
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i64 @snd_BUG_ON(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %32
  %43 = load i32, i32* @ENXIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %64

45:                                               ; preds = %32
  %46 = load i32, i32* %6, align 4
  switch i32 %46, label %63 [
    i32 129, label %47
    i32 128, label %52
  ]

47:                                               ; preds = %45
  %48 = load %struct.snd_emux*, %struct.snd_emux** %9, align 8
  %49 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @snd_soundfont_remove_samples(i32 %50)
  store i32 0, i32* %4, align 4
  br label %64

52:                                               ; preds = %45
  %53 = load %struct.snd_emux*, %struct.snd_emux** %9, align 8
  %54 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.snd_emux*, %struct.snd_emux** %9, align 8
  %59 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @snd_util_mem_avail(i32 %60)
  store i32 %61, i32* %4, align 4
  br label %64

62:                                               ; preds = %52
  store i32 0, i32* %4, align 4
  br label %64

63:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %62, %57, %47, %42, %29, %16
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @snd_soundfont_remove_samples(i32) #1

declare dso_local i32 @snd_util_mem_avail(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
