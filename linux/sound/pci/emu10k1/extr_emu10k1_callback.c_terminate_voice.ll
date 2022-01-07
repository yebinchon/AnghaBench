; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emu10k1_callback.c_terminate_voice.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emu10k1_callback.c_terminate_voice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emux_voice = type { i64, i32, %struct.snd_emu10k1* }
%struct.snd_emu10k1 = type { i32 }
%struct.snd_emu10k1_memblk = type { i64 }

@DCYSUSV = common dso_local global i32 0, align 4
@DCYSUSV_CHANNELENABLE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_emux_voice*)* @terminate_voice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @terminate_voice(%struct.snd_emux_voice* %0) #0 {
  %2 = alloca %struct.snd_emux_voice*, align 8
  %3 = alloca %struct.snd_emu10k1*, align 8
  %4 = alloca %struct.snd_emu10k1_memblk*, align 8
  store %struct.snd_emux_voice* %0, %struct.snd_emux_voice** %2, align 8
  %5 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %6 = icmp ne %struct.snd_emux_voice* %5, null
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i64 @snd_BUG_ON(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %43

12:                                               ; preds = %1
  %13 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %14 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %13, i32 0, i32 2
  %15 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %14, align 8
  store %struct.snd_emu10k1* %15, %struct.snd_emu10k1** %3, align 8
  %16 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %17 = load i32, i32* @DCYSUSV, align 4
  %18 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %19 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @DCYSUSV_CHANNELENABLE_MASK, align 4
  %22 = or i32 32895, %21
  %23 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %16, i32 %17, i32 %20, i32 %22)
  %24 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %25 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %12
  %29 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %30 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.snd_emu10k1_memblk*
  store %struct.snd_emu10k1_memblk* %32, %struct.snd_emu10k1_memblk** %4, align 8
  %33 = load %struct.snd_emu10k1_memblk*, %struct.snd_emu10k1_memblk** %4, align 8
  %34 = getelementptr inbounds %struct.snd_emu10k1_memblk, %struct.snd_emu10k1_memblk* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %28
  %38 = load %struct.snd_emu10k1_memblk*, %struct.snd_emu10k1_memblk** %4, align 8
  %39 = getelementptr inbounds %struct.snd_emu10k1_memblk, %struct.snd_emu10k1_memblk* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, -1
  store i64 %41, i64* %39, align 8
  br label %42

42:                                               ; preds = %37, %28
  br label %43

43:                                               ; preds = %11, %42, %12
  ret void
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
