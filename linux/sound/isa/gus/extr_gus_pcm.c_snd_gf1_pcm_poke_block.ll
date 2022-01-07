; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/gus/extr_gus_pcm.c_snd_gf1_pcm_poke_block.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/gus/extr_gus_pcm.c_snd_gf1_pcm_poke_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_gus_card = type { i32, i64 }

@SNDRV_GF1_GB_MEMORY_CONTROL = common dso_local global i32 0, align 4
@SNDRV_GF1_GW_DRAM_IO16 = common dso_local global i32 0, align 4
@GF1REGSEL = common dso_local global i32 0, align 4
@GF1DATALOW = common dso_local global i32 0, align 4
@DRAM = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_gus_card*, i8*, i32, i32, i32, i32)* @snd_gf1_pcm_poke_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_gf1_pcm_poke_block(%struct.snd_gus_card* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_gus_card*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.snd_gus_card* %0, %struct.snd_gus_card** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  br label %16

16:                                               ; preds = %146, %6
  %17 = load i32, i32* %11, align 4
  %18 = icmp ugt i32 %17, 0
  br i1 %18, label %19, label %147

19:                                               ; preds = %16
  %20 = load i32, i32* %11, align 4
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %14, align 4
  %22 = icmp ugt i32 %21, 512
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 512, i32* %14, align 4
  br label %24

24:                                               ; preds = %23, %19
  %25 = load i32, i32* %14, align 4
  %26 = load i32, i32* %11, align 4
  %27 = sub i32 %26, %25
  store i32 %27, i32* %11, align 4
  %28 = load %struct.snd_gus_card*, %struct.snd_gus_card** %8, align 8
  %29 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %79

32:                                               ; preds = %24
  %33 = load %struct.snd_gus_card*, %struct.snd_gus_card** %8, align 8
  %34 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %33, i32 0, i32 0
  %35 = load i64, i64* %15, align 8
  %36 = call i32 @spin_lock_irqsave(i32* %34, i64 %35)
  %37 = load %struct.snd_gus_card*, %struct.snd_gus_card** %8, align 8
  %38 = load i32, i32* @SNDRV_GF1_GB_MEMORY_CONTROL, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 8, i32 0
  %43 = or i32 1, %42
  %44 = call i32 @snd_gf1_write8(%struct.snd_gus_card* %37, i32 %38, i32 %43)
  %45 = load %struct.snd_gus_card*, %struct.snd_gus_card** %8, align 8
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @snd_gf1_dram_addr(%struct.snd_gus_card* %45, i32 %46)
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %32
  %51 = load i32, i32* @SNDRV_GF1_GW_DRAM_IO16, align 4
  %52 = load %struct.snd_gus_card*, %struct.snd_gus_card** %8, align 8
  %53 = load i32, i32* @GF1REGSEL, align 4
  %54 = call i32 @GUSP(%struct.snd_gus_card* %52, i32 %53)
  %55 = call i32 @outb(i32 %51, i32 %54)
  %56 = load %struct.snd_gus_card*, %struct.snd_gus_card** %8, align 8
  %57 = load i32, i32* @GF1DATALOW, align 4
  %58 = call i32 @GUSP(%struct.snd_gus_card* %56, i32 %57)
  %59 = load i8*, i8** %9, align 8
  %60 = load i32, i32* %14, align 4
  %61 = lshr i32 %60, 1
  %62 = call i32 @outsw(i32 %58, i8* %59, i32 %61)
  br label %70

63:                                               ; preds = %32
  %64 = load %struct.snd_gus_card*, %struct.snd_gus_card** %8, align 8
  %65 = load i32, i32* @DRAM, align 4
  %66 = call i32 @GUSP(%struct.snd_gus_card* %64, i32 %65)
  %67 = load i8*, i8** %9, align 8
  %68 = load i32, i32* %14, align 4
  %69 = call i32 @outsb(i32 %66, i8* %67, i32 %68)
  br label %70

70:                                               ; preds = %63, %50
  %71 = load %struct.snd_gus_card*, %struct.snd_gus_card** %8, align 8
  %72 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %71, i32 0, i32 0
  %73 = load i64, i64* %15, align 8
  %74 = call i32 @spin_unlock_irqrestore(i32* %72, i64 %73)
  %75 = load i8*, i8** %9, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 512
  store i8* %76, i8** %9, align 8
  %77 = load i32, i32* %10, align 4
  %78 = add i32 %77, 512
  store i32 %78, i32* %10, align 4
  br label %131

79:                                               ; preds = %24
  %80 = load i32, i32* %13, align 4
  %81 = icmp ne i32 %80, 0
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i32 128, i32 0
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* %12, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %113

86:                                               ; preds = %79
  %87 = load i32, i32* %14, align 4
  %88 = lshr i32 %87, 1
  store i32 %88, i32* %14, align 4
  br label %89

89:                                               ; preds = %93, %86
  %90 = load i32, i32* %14, align 4
  %91 = add i32 %90, -1
  store i32 %91, i32* %14, align 4
  %92 = icmp ne i32 %90, 0
  br i1 %92, label %93, label %112

93:                                               ; preds = %89
  %94 = load %struct.snd_gus_card*, %struct.snd_gus_card** %8, align 8
  %95 = load i32, i32* %10, align 4
  %96 = add i32 %95, 1
  store i32 %96, i32* %10, align 4
  %97 = load i8*, i8** %9, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %9, align 8
  %99 = load i8, i8* %97, align 1
  %100 = zext i8 %99 to i32
  %101 = call i32 @snd_gf1_poke(%struct.snd_gus_card* %94, i32 %95, i32 %100)
  %102 = load %struct.snd_gus_card*, %struct.snd_gus_card** %8, align 8
  %103 = load i32, i32* %10, align 4
  %104 = add i32 %103, 1
  store i32 %104, i32* %10, align 4
  %105 = load i8*, i8** %9, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %9, align 8
  %107 = load i8, i8* %105, align 1
  %108 = zext i8 %107 to i32
  %109 = load i32, i32* %13, align 4
  %110 = xor i32 %108, %109
  %111 = call i32 @snd_gf1_poke(%struct.snd_gus_card* %102, i32 %103, i32 %110)
  br label %89

112:                                              ; preds = %89
  br label %130

113:                                              ; preds = %79
  br label %114

114:                                              ; preds = %118, %113
  %115 = load i32, i32* %14, align 4
  %116 = add i32 %115, -1
  store i32 %116, i32* %14, align 4
  %117 = icmp ne i32 %115, 0
  br i1 %117, label %118, label %129

118:                                              ; preds = %114
  %119 = load %struct.snd_gus_card*, %struct.snd_gus_card** %8, align 8
  %120 = load i32, i32* %10, align 4
  %121 = add i32 %120, 1
  store i32 %121, i32* %10, align 4
  %122 = load i8*, i8** %9, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %9, align 8
  %124 = load i8, i8* %122, align 1
  %125 = zext i8 %124 to i32
  %126 = load i32, i32* %13, align 4
  %127 = xor i32 %125, %126
  %128 = call i32 @snd_gf1_poke(%struct.snd_gus_card* %119, i32 %120, i32 %127)
  br label %114

129:                                              ; preds = %114
  br label %130

130:                                              ; preds = %129, %112
  br label %131

131:                                              ; preds = %130, %70
  %132 = load i32, i32* %11, align 4
  %133 = icmp ugt i32 %132, 0
  br i1 %133, label %134, label %146

134:                                              ; preds = %131
  %135 = call i32 (...) @in_interrupt()
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %146, label %137

137:                                              ; preds = %134
  %138 = call i32 @schedule_timeout_interruptible(i32 1)
  %139 = load i32, i32* @current, align 4
  %140 = call i64 @signal_pending(i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %137
  %143 = load i32, i32* @EAGAIN, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %7, align 4
  br label %148

145:                                              ; preds = %137
  br label %146

146:                                              ; preds = %145, %134, %131
  br label %16

147:                                              ; preds = %16
  store i32 0, i32* %7, align 4
  br label %148

148:                                              ; preds = %147, %142
  %149 = load i32, i32* %7, align 4
  ret i32 %149
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_gf1_write8(%struct.snd_gus_card*, i32, i32) #1

declare dso_local i32 @snd_gf1_dram_addr(%struct.snd_gus_card*, i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @GUSP(%struct.snd_gus_card*, i32) #1

declare dso_local i32 @outsw(i32, i8*, i32) #1

declare dso_local i32 @outsb(i32, i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snd_gf1_poke(%struct.snd_gus_card*, i32, i32) #1

declare dso_local i32 @in_interrupt(...) #1

declare dso_local i32 @schedule_timeout_interruptible(i32) #1

declare dso_local i64 @signal_pending(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
