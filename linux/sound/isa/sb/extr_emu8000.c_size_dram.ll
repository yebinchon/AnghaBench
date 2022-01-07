; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/sb/extr_emu8000.c_size_dram.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/sb/extr_emu8000.c_size_dram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu8000 = type { i32, i32, i32 }

@EMU8000_RAM_WRITE = common dso_local global i32 0, align 4
@EMU8000_RAM_READ = common dso_local global i32 0, align 4
@EMU8000_DRAM_OFFSET = common dso_local global i64 0, align 8
@UNIQUE_ID1 = common dso_local global i64 0, align 8
@EMU8000_MAX_DRAM = common dso_local global i32 0, align 4
@UNIQUE_ID2 = common dso_local global i64 0, align 8
@current = common dso_local global i32 0, align 4
@EMU8000_RAM_CLOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"EMU8000 [0x%lx]: %d KiB on-board DRAM detected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_emu8000*)* @size_dram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @size_dram(%struct.snd_emu8000* %0) #0 {
  %2 = alloca %struct.snd_emu8000*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.snd_emu8000* %0, %struct.snd_emu8000** %2, align 8
  %5 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %6 = getelementptr inbounds %struct.snd_emu8000, %struct.snd_emu8000* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %129

10:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  %11 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %12 = load i32, i32* @EMU8000_RAM_WRITE, align 4
  %13 = call i32 @snd_emu8000_dma_chan(%struct.snd_emu8000* %11, i32 0, i32 %12)
  %14 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %15 = load i32, i32* @EMU8000_RAM_READ, align 4
  %16 = call i32 @snd_emu8000_dma_chan(%struct.snd_emu8000* %14, i32 1, i32 %15)
  %17 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %18 = load i64, i64* @EMU8000_DRAM_OFFSET, align 8
  %19 = call i32 @EMU8000_SMALW_WRITE(%struct.snd_emu8000* %17, i64 %18)
  %20 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %21 = load i64, i64* @UNIQUE_ID1, align 8
  %22 = call i32 @EMU8000_SMLD_WRITE(%struct.snd_emu8000* %20, i64 %21)
  %23 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %24 = call i32 @snd_emu8000_init_fm(%struct.snd_emu8000* %23)
  %25 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %26 = call i32 @snd_emu8000_write_wait(%struct.snd_emu8000* %25)
  %27 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %28 = load i64, i64* @EMU8000_DRAM_OFFSET, align 8
  %29 = call i32 @EMU8000_SMALR_WRITE(%struct.snd_emu8000* %27, i64 %28)
  %30 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %31 = call i64 @EMU8000_SMLD_READ(%struct.snd_emu8000* %30)
  %32 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %33 = call i64 @EMU8000_SMLD_READ(%struct.snd_emu8000* %32)
  %34 = load i64, i64* @UNIQUE_ID1, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %10
  br label %91

37:                                               ; preds = %10
  %38 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %39 = call i32 @snd_emu8000_read_wait(%struct.snd_emu8000* %38)
  store i32 524288, i32* %4, align 4
  br label %40

40:                                               ; preds = %87, %37
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @EMU8000_MAX_DRAM, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %90

44:                                               ; preds = %40
  %45 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %46 = load i64, i64* @EMU8000_DRAM_OFFSET, align 8
  %47 = load i32, i32* %4, align 4
  %48 = ashr i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %46, %49
  %51 = call i32 @EMU8000_SMALW_WRITE(%struct.snd_emu8000* %45, i64 %50)
  %52 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %53 = load i64, i64* @UNIQUE_ID2, align 8
  %54 = call i32 @EMU8000_SMLD_WRITE(%struct.snd_emu8000* %52, i64 %53)
  %55 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %56 = call i32 @snd_emu8000_write_wait(%struct.snd_emu8000* %55)
  %57 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %58 = load i64, i64* @EMU8000_DRAM_OFFSET, align 8
  %59 = load i32, i32* %4, align 4
  %60 = ashr i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %58, %61
  %63 = call i32 @EMU8000_SMALR_WRITE(%struct.snd_emu8000* %57, i64 %62)
  %64 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %65 = call i64 @EMU8000_SMLD_READ(%struct.snd_emu8000* %64)
  %66 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %67 = call i64 @EMU8000_SMLD_READ(%struct.snd_emu8000* %66)
  %68 = load i64, i64* @UNIQUE_ID2, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %44
  br label %90

71:                                               ; preds = %44
  %72 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %73 = call i32 @snd_emu8000_read_wait(%struct.snd_emu8000* %72)
  %74 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %75 = load i64, i64* @EMU8000_DRAM_OFFSET, align 8
  %76 = call i32 @EMU8000_SMALR_WRITE(%struct.snd_emu8000* %74, i64 %75)
  %77 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %78 = call i64 @EMU8000_SMLD_READ(%struct.snd_emu8000* %77)
  %79 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %80 = call i64 @EMU8000_SMLD_READ(%struct.snd_emu8000* %79)
  %81 = load i64, i64* @UNIQUE_ID1, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %71
  br label %90

84:                                               ; preds = %71
  %85 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %86 = call i32 @snd_emu8000_read_wait(%struct.snd_emu8000* %85)
  br label %87

87:                                               ; preds = %84
  %88 = load i32, i32* %4, align 4
  %89 = add nsw i32 %88, 524288
  store i32 %89, i32* %4, align 4
  br label %40

90:                                               ; preds = %83, %70, %40
  br label %91

91:                                               ; preds = %90, %36
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %108, %91
  %93 = load i32, i32* %3, align 4
  %94 = icmp slt i32 %93, 10000
  br i1 %94, label %95, label %111

95:                                               ; preds = %92
  %96 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %97 = call i32 @EMU8000_SMALW_READ(%struct.snd_emu8000* %96)
  %98 = and i32 %97, -2147483648
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  br label %111

101:                                              ; preds = %95
  %102 = call i32 @schedule_timeout_interruptible(i32 1)
  %103 = load i32, i32* @current, align 4
  %104 = call i64 @signal_pending(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  br label %111

107:                                              ; preds = %101
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %3, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %3, align 4
  br label %92

111:                                              ; preds = %106, %100, %92
  %112 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %113 = load i32, i32* @EMU8000_RAM_CLOSE, align 4
  %114 = call i32 @snd_emu8000_dma_chan(%struct.snd_emu8000* %112, i32 0, i32 %113)
  %115 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %116 = load i32, i32* @EMU8000_RAM_CLOSE, align 4
  %117 = call i32 @snd_emu8000_dma_chan(%struct.snd_emu8000* %115, i32 1, i32 %116)
  %118 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %119 = getelementptr inbounds %struct.snd_emu8000, %struct.snd_emu8000* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %4, align 4
  %122 = sdiv i32 %121, 1024
  %123 = call i32 @pr_info(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %120, i32 %122)
  %124 = load i32, i32* %4, align 4
  %125 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %126 = getelementptr inbounds %struct.snd_emu8000, %struct.snd_emu8000* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 4
  %127 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %128 = getelementptr inbounds %struct.snd_emu8000, %struct.snd_emu8000* %127, i32 0, i32 0
  store i32 1, i32* %128, align 4
  br label %129

129:                                              ; preds = %111, %9
  ret void
}

declare dso_local i32 @snd_emu8000_dma_chan(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_SMALW_WRITE(%struct.snd_emu8000*, i64) #1

declare dso_local i32 @EMU8000_SMLD_WRITE(%struct.snd_emu8000*, i64) #1

declare dso_local i32 @snd_emu8000_init_fm(%struct.snd_emu8000*) #1

declare dso_local i32 @snd_emu8000_write_wait(%struct.snd_emu8000*) #1

declare dso_local i32 @EMU8000_SMALR_WRITE(%struct.snd_emu8000*, i64) #1

declare dso_local i64 @EMU8000_SMLD_READ(%struct.snd_emu8000*) #1

declare dso_local i32 @snd_emu8000_read_wait(%struct.snd_emu8000*) #1

declare dso_local i32 @EMU8000_SMALW_READ(%struct.snd_emu8000*) #1

declare dso_local i32 @schedule_timeout_interruptible(i32) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
