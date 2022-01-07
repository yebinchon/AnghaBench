; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/sb/extr_sb_common.c_snd_sbdsp_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/sb/extr_sb_common.c_snd_sbdsp_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sb = type { i64, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_sb*)* @snd_sbdsp_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_sbdsp_free(%struct.snd_sb* %0) #0 {
  %2 = alloca %struct.snd_sb*, align 8
  store %struct.snd_sb* %0, %struct.snd_sb** %2, align 8
  %3 = load %struct.snd_sb*, %struct.snd_sb** %2, align 8
  %4 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %3, i32 0, i32 3
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @release_and_free_resource(i32 %5)
  %7 = load %struct.snd_sb*, %struct.snd_sb** %2, align 8
  %8 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp sge i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.snd_sb*, %struct.snd_sb** %2, align 8
  %13 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.snd_sb*, %struct.snd_sb** %2, align 8
  %16 = bitcast %struct.snd_sb* %15 to i8*
  %17 = call i32 @free_irq(i64 %14, i8* %16)
  br label %18

18:                                               ; preds = %11, %1
  %19 = load %struct.snd_sb*, %struct.snd_sb** %2, align 8
  %20 = call i32 @kfree(%struct.snd_sb* %19)
  ret i32 0
}

declare dso_local i32 @release_and_free_resource(i32) #1

declare dso_local i32 @free_irq(i64, i8*) #1

declare dso_local i32 @kfree(%struct.snd_sb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
