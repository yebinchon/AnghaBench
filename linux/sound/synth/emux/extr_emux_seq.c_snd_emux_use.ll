; ModuleID = '/home/carl/AnghaBench/linux/sound/synth/emux/extr_emux_seq.c_snd_emux_use.c'
source_filename = "/home/carl/AnghaBench/linux/sound/synth/emux/extr_emux_seq.c_snd_emux_use.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_port_subscribe = type { i32 }
%struct.snd_emux_port = type { %struct.snd_emux* }
%struct.snd_emux = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.snd_seq_port_subscribe*)* @snd_emux_use to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_emux_use(i8* %0, %struct.snd_seq_port_subscribe* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.snd_seq_port_subscribe*, align 8
  %6 = alloca %struct.snd_emux_port*, align 8
  %7 = alloca %struct.snd_emux*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.snd_seq_port_subscribe* %1, %struct.snd_seq_port_subscribe** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.snd_emux_port*
  store %struct.snd_emux_port* %9, %struct.snd_emux_port** %6, align 8
  %10 = load %struct.snd_emux_port*, %struct.snd_emux_port** %6, align 8
  %11 = icmp ne %struct.snd_emux_port* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i64 @snd_BUG_ON(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %43

19:                                               ; preds = %2
  %20 = load %struct.snd_emux_port*, %struct.snd_emux_port** %6, align 8
  %21 = getelementptr inbounds %struct.snd_emux_port, %struct.snd_emux_port* %20, i32 0, i32 0
  %22 = load %struct.snd_emux*, %struct.snd_emux** %21, align 8
  store %struct.snd_emux* %22, %struct.snd_emux** %7, align 8
  %23 = load %struct.snd_emux*, %struct.snd_emux** %7, align 8
  %24 = icmp ne %struct.snd_emux* %23, null
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i64 @snd_BUG_ON(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %19
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %43

32:                                               ; preds = %19
  %33 = load %struct.snd_emux*, %struct.snd_emux** %7, align 8
  %34 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %33, i32 0, i32 0
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load %struct.snd_emux_port*, %struct.snd_emux_port** %6, align 8
  %37 = call i32 @snd_emux_init_port(%struct.snd_emux_port* %36)
  %38 = load %struct.snd_emux*, %struct.snd_emux** %7, align 8
  %39 = call i32 @__snd_emux_inc_count(%struct.snd_emux* %38)
  %40 = load %struct.snd_emux*, %struct.snd_emux** %7, align 8
  %41 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %40, i32 0, i32 0
  %42 = call i32 @mutex_unlock(i32* %41)
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %32, %29, %16
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snd_emux_init_port(%struct.snd_emux_port*) #1

declare dso_local i32 @__snd_emux_inc_count(%struct.snd_emux*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
