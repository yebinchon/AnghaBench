; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emu10k1_main.c_snd_emu1010_load_firmware_entry.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emu10k1_main.c_snd_emu1010_load_firmware_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu10k1 = type { i32, i64 }
%struct.firmware = type { i32, i32* }

@EIO = common dso_local global i32 0, align 4
@A_IOCFG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_emu10k1*, %struct.firmware*)* @snd_emu1010_load_firmware_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_emu1010_load_firmware_entry(%struct.snd_emu10k1* %0, %struct.firmware* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_emu10k1*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.snd_emu10k1* %0, %struct.snd_emu10k1** %4, align 8
  store %struct.firmware* %1, %struct.firmware** %5, align 8
  %12 = load %struct.firmware*, %struct.firmware** %5, align 8
  %13 = icmp ne %struct.firmware* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %126

17:                                               ; preds = %2
  %18 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %19 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %18, i32 0, i32 0
  %20 = load i64, i64* %11, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %23 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @A_IOCFG, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @outl(i32 0, i64 %26)
  %28 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %29 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @A_IOCFG, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @inl(i64 %32)
  store i32 %33, i32* %10, align 4
  %34 = call i32 @udelay(i32 100)
  %35 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %36 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @A_IOCFG, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @outl(i32 128, i64 %39)
  %41 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %42 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @A_IOCFG, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @inl(i64 %45)
  store i32 %46, i32* %10, align 4
  %47 = call i32 @udelay(i32 100)
  store i32 0, i32* %6, align 4
  br label %48

48:                                               ; preds = %106, %17
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.firmware*, %struct.firmware** %5, align 8
  %51 = getelementptr inbounds %struct.firmware, %struct.firmware* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %109

54:                                               ; preds = %48
  %55 = load %struct.firmware*, %struct.firmware** %5, align 8
  %56 = getelementptr inbounds %struct.firmware, %struct.firmware* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %62

62:                                               ; preds = %102, %54
  %63 = load i32, i32* %7, align 4
  %64 = icmp slt i32 %63, 8
  br i1 %64, label %65, label %105

65:                                               ; preds = %62
  store i32 128, i32* %8, align 4
  %66 = load i32, i32* %9, align 4
  %67 = and i32 %66, 1
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load i32, i32* %8, align 4
  %71 = or i32 %70, 32
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %69, %65
  %73 = load i32, i32* %9, align 4
  %74 = ashr i32 %73, 1
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %77 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @A_IOCFG, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @outl(i32 %75, i64 %80)
  %82 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %83 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @A_IOCFG, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @inl(i64 %86)
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %8, align 4
  %89 = or i32 %88, 64
  %90 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %91 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @A_IOCFG, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i32 @outl(i32 %89, i64 %94)
  %96 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %97 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @A_IOCFG, align 8
  %100 = add nsw i64 %98, %99
  %101 = call i32 @inl(i64 %100)
  store i32 %101, i32* %10, align 4
  br label %102

102:                                              ; preds = %72
  %103 = load i32, i32* %7, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %7, align 4
  br label %62

105:                                              ; preds = %62
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %6, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %6, align 4
  br label %48

109:                                              ; preds = %48
  %110 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %111 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @A_IOCFG, align 8
  %114 = add nsw i64 %112, %113
  %115 = call i32 @outl(i32 16, i64 %114)
  %116 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %117 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @A_IOCFG, align 8
  %120 = add nsw i64 %118, %119
  %121 = call i32 @inl(i64 %120)
  store i32 %121, i32* %10, align 4
  %122 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %123 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %122, i32 0, i32 0
  %124 = load i64, i64* %11, align 8
  %125 = call i32 @spin_unlock_irqrestore(i32* %123, i64 %124)
  store i32 0, i32* %3, align 4
  br label %126

126:                                              ; preds = %109, %14
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
