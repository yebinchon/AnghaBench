; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cx20442.c_v253_receive.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cx20442.c_v253_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.cx20442_priv = type { %struct.tty_struct* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, i8*, i8*, i32)* @v253_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @v253_receive(%struct.tty_struct* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_soc_component*, align 8
  %10 = alloca %struct.cx20442_priv*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %12 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %11, i32 0, i32 0
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %9, align 8
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %9, align 8
  %15 = icmp ne %struct.snd_soc_component* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  br label %32

17:                                               ; preds = %4
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %9, align 8
  %19 = call %struct.cx20442_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %18)
  store %struct.cx20442_priv* %19, %struct.cx20442_priv** %10, align 8
  %20 = load %struct.cx20442_priv*, %struct.cx20442_priv** %10, align 8
  %21 = getelementptr inbounds %struct.cx20442_priv, %struct.cx20442_priv* %20, i32 0, i32 0
  %22 = load %struct.tty_struct*, %struct.tty_struct** %21, align 8
  %23 = icmp ne %struct.tty_struct* %22, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %17
  %25 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %26 = load %struct.cx20442_priv*, %struct.cx20442_priv** %10, align 8
  %27 = getelementptr inbounds %struct.cx20442_priv, %struct.cx20442_priv* %26, i32 0, i32 0
  store %struct.tty_struct* %25, %struct.tty_struct** %27, align 8
  %28 = load %struct.snd_soc_component*, %struct.snd_soc_component** %9, align 8
  %29 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 1, i32* %31, align 4
  br label %32

32:                                               ; preds = %16, %24, %17
  ret void
}

declare dso_local %struct.cx20442_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
