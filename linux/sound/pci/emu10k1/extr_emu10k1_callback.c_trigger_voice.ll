; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emu10k1_callback.c_trigger_voice.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emu10k1_callback.c_trigger_voice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emux_voice = type { i32, i32, %struct.TYPE_4__, i32, i32, i64, i64, %struct.snd_emu10k1* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.snd_emu10k1 = type { i32 }
%struct.snd_emu10k1_memblk = type { i64 }

@PTRX = common dso_local global i32 0, align 4
@CPF = common dso_local global i32 0, align 4
@DCYSUSV = common dso_local global i32 0, align 4
@DCYSUSV_CHANNELENABLE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_emux_voice*)* @trigger_voice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trigger_voice(%struct.snd_emux_voice* %0) #0 {
  %2 = alloca %struct.snd_emux_voice*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_emu10k1*, align 8
  %6 = alloca %struct.snd_emu10k1_memblk*, align 8
  store %struct.snd_emux_voice* %0, %struct.snd_emux_voice** %2, align 8
  %7 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %8 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %7, i32 0, i32 7
  %9 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %8, align 8
  store %struct.snd_emu10k1* %9, %struct.snd_emu10k1** %5, align 8
  %10 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %11 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %10, i32 0, i32 6
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.snd_emu10k1_memblk*
  store %struct.snd_emu10k1_memblk* %13, %struct.snd_emu10k1_memblk** %6, align 8
  %14 = load %struct.snd_emu10k1_memblk*, %struct.snd_emu10k1_memblk** %6, align 8
  %15 = icmp ne %struct.snd_emu10k1_memblk* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.snd_emu10k1_memblk*, %struct.snd_emu10k1_memblk** %6, align 8
  %18 = getelementptr inbounds %struct.snd_emu10k1_memblk, %struct.snd_emu10k1_memblk* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16, %1
  br label %64

22:                                               ; preds = %16
  %23 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %24 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @IP_TO_CP(i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %29 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = shl i32 %30, 8
  %32 = or i32 %27, %31
  %33 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %34 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %32, %35
  store i32 %36, i32* %3, align 4
  %37 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %38 = load i32, i32* @PTRX, align 4
  %39 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %40 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %37, i32 %38, i32 %41, i32 %42)
  %44 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %45 = load i32, i32* @CPF, align 4
  %46 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %47 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %44, i32 %45, i32 %48, i32 %49)
  %51 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %52 = load i32, i32* @DCYSUSV, align 4
  %53 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %54 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %57 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @DCYSUSV_CHANNELENABLE_MASK, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %51, i32 %52, i32 %55, i32 %62)
  br label %64

64:                                               ; preds = %22, %21
  ret void
}

declare dso_local i32 @IP_TO_CP(i32) #1

declare dso_local i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
