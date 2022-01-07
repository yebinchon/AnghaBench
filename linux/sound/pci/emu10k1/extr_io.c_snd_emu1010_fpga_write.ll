; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_io.c_snd_emu1010_fpga_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_io.c_snd_emu1010_fpga_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu10k1 = type { i32, i64 }

@A_IOCFG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_emu1010_fpga_write(%struct.snd_emu10k1* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_emu10k1*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.snd_emu10k1* %0, %struct.snd_emu10k1** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp sgt i32 %9, 63
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %60

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = add nsw i32 %13, 64
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp sgt i32 %15, 63
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 1, i32* %4, align 4
  br label %60

18:                                               ; preds = %12
  %19 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %20 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %19, i32 0, i32 0
  %21 = load i64, i64* %8, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %25 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @A_IOCFG, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @outl(i32 %23, i64 %28)
  %30 = call i32 @udelay(i32 10)
  %31 = load i32, i32* %6, align 4
  %32 = or i32 %31, 128
  %33 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %34 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @A_IOCFG, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @outl(i32 %32, i64 %37)
  %39 = call i32 @udelay(i32 10)
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %42 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @A_IOCFG, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @outl(i32 %40, i64 %45)
  %47 = call i32 @udelay(i32 10)
  %48 = load i32, i32* %7, align 4
  %49 = or i32 %48, 128
  %50 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %51 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @A_IOCFG, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @outl(i32 %49, i64 %54)
  %56 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %57 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %56, i32 0, i32 0
  %58 = load i64, i64* %8, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* %57, i64 %58)
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %18, %17, %11
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
