; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_..sof-priv.h_sof_stack.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_..sof-priv.h_sof_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_dev = type { i32 }
%struct.TYPE_2__ = type { i32 (%struct.snd_sof_dev*, i8*, i32*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_sof_dev*, i8*, i32*, i32)* @sof_stack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sof_stack(%struct.snd_sof_dev* %0, i8* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.snd_sof_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_sof_dev* %0, %struct.snd_sof_dev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %10 = call %struct.TYPE_2__* @sof_arch_ops(%struct.snd_sof_dev* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32 (%struct.snd_sof_dev*, i8*, i32*, i32)*, i32 (%struct.snd_sof_dev*, i8*, i32*, i32)** %11, align 8
  %13 = icmp ne i32 (%struct.snd_sof_dev*, i8*, i32*, i32)* %12, null
  br i1 %13, label %14, label %24

14:                                               ; preds = %4
  %15 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %16 = call %struct.TYPE_2__* @sof_arch_ops(%struct.snd_sof_dev* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (%struct.snd_sof_dev*, i8*, i32*, i32)*, i32 (%struct.snd_sof_dev*, i8*, i32*, i32)** %17, align 8
  %19 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 %18(%struct.snd_sof_dev* %19, i8* %20, i32* %21, i32 %22)
  br label %24

24:                                               ; preds = %14, %4
  ret void
}

declare dso_local %struct.TYPE_2__* @sof_arch_ops(%struct.snd_sof_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
