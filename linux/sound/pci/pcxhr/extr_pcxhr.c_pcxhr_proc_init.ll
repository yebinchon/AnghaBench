; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr.c_pcxhr_proc_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr.c_pcxhr_proc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcxhr = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [5 x i8] c"info\00", align 1
@pcxhr_proc_info = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"sync\00", align 1
@pcxhr_proc_sync = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"gpio\00", align 1
@pcxhr_proc_gpio_read = common dso_local global i32 0, align 4
@pcxhr_proc_gpo_write = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"ltc\00", align 1
@pcxhr_proc_ltc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcxhr*)* @pcxhr_proc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcxhr_proc_init(%struct.snd_pcxhr* %0) #0 {
  %2 = alloca %struct.snd_pcxhr*, align 8
  store %struct.snd_pcxhr* %0, %struct.snd_pcxhr** %2, align 8
  %3 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %2, align 8
  %4 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %2, align 8
  %7 = load i32, i32* @pcxhr_proc_info, align 4
  %8 = call i32 @snd_card_ro_proc_new(i32 %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.snd_pcxhr* %6, i32 %7)
  %9 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %2, align 8
  %10 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %2, align 8
  %13 = load i32, i32* @pcxhr_proc_sync, align 4
  %14 = call i32 @snd_card_ro_proc_new(i32 %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %struct.snd_pcxhr* %12, i32 %13)
  %15 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %2, align 8
  %16 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %1
  %22 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %2, align 8
  %23 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %2, align 8
  %26 = load i32, i32* @pcxhr_proc_gpio_read, align 4
  %27 = load i32, i32* @pcxhr_proc_gpo_write, align 4
  %28 = call i32 @snd_card_rw_proc_new(i32 %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %struct.snd_pcxhr* %25, i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %21, %1
  %30 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %2, align 8
  %31 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %2, align 8
  %34 = load i32, i32* @pcxhr_proc_ltc, align 4
  %35 = call i32 @snd_card_ro_proc_new(i32 %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), %struct.snd_pcxhr* %33, i32 %34)
  ret void
}

declare dso_local i32 @snd_card_ro_proc_new(i32, i8*, %struct.snd_pcxhr*, i32) #1

declare dso_local i32 @snd_card_rw_proc_new(i32, i8*, %struct.snd_pcxhr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
