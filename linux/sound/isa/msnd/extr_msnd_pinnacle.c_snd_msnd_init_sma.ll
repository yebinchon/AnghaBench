; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/msnd/extr_msnd_pinnacle.c_snd_msnd_init_sma.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/msnd/extr_msnd_pinnacle.c_snd_msnd_init_sma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_msnd = type { i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i32, i64, i32 }

@snd_msnd_init_sma.initted = internal global i32 0, align 4
@HPBLKSEL_0 = common dso_local global i32 0, align 4
@HP_BLKS = common dso_local global i64 0, align 8
@SMA_STRUCT_START = common dso_local global i64 0, align 8
@SMA_wCurrMastVolLeft = common dso_local global i64 0, align 8
@SMA_wCurrMastVolRight = common dso_local global i64 0, align 8
@HPBLKSEL_1 = common dso_local global i32 0, align 4
@DAPQ_OFFSET = common dso_local global i64 0, align 8
@DAPQ_DATA_BUFF = common dso_local global i32 0, align 4
@DAPQ_BUFF_SIZE = common dso_local global i32 0, align 4
@DARQ_OFFSET = common dso_local global i64 0, align 8
@DARQ_DATA_BUFF = common dso_local global i32 0, align 4
@DARQ_BUFF_SIZE = common dso_local global i32 0, align 4
@MODQ_OFFSET = common dso_local global i64 0, align 8
@MODQ_DATA_BUFF = common dso_local global i32 0, align 4
@MODQ_BUFF_SIZE = common dso_local global i32 0, align 4
@MIDQ_OFFSET = common dso_local global i64 0, align 8
@MIDQ_DATA_BUFF = common dso_local global i32 0, align 4
@MIDQ_BUFF_SIZE = common dso_local global i32 0, align 4
@DSPQ_OFFSET = common dso_local global i64 0, align 8
@DSPQ_DATA_BUFF = common dso_local global i32 0, align 4
@DSPQ_BUFF_SIZE = common dso_local global i32 0, align 4
@SMA_wCurrPlayFormat = common dso_local global i64 0, align 8
@SMA_wCurrPlaySampleSize = common dso_local global i64 0, align 8
@SMA_wCurrPlayChannels = common dso_local global i64 0, align 8
@SMA_wCurrPlaySampleRate = common dso_local global i64 0, align 8
@SMA_wCalFreqAtoD = common dso_local global i64 0, align 8
@SMA_dwCurrPlayPitch = common dso_local global i64 0, align 8
@SMA_dwCurrPlayRate = common dso_local global i64 0, align 8
@SMA_wCurrInputTagBits = common dso_local global i64 0, align 8
@HP_MEMM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_msnd*)* @snd_msnd_init_sma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_msnd_init_sma(%struct.snd_msnd* %0) #0 {
  %2 = alloca %struct.snd_msnd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.snd_msnd* %0, %struct.snd_msnd** %2, align 8
  %6 = load i32, i32* @HPBLKSEL_0, align 4
  %7 = load %struct.snd_msnd*, %struct.snd_msnd** %2, align 8
  %8 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %7, i32 0, i32 11
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @HP_BLKS, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @outb(i32 %6, i64 %11)
  %13 = load %struct.snd_msnd*, %struct.snd_msnd** %2, align 8
  %14 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %13, i32 0, i32 5
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SMA_STRUCT_START, align 8
  %17 = add nsw i64 %15, %16
  %18 = load %struct.snd_msnd*, %struct.snd_msnd** %2, align 8
  %19 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %18, i32 0, i32 3
  store i64 %17, i64* %19, align 8
  %20 = load i32, i32* @snd_msnd_init_sma.initted, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %1
  %23 = load %struct.snd_msnd*, %struct.snd_msnd** %2, align 8
  %24 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SMA_wCurrMastVolLeft, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @readw(i64 %27)
  store i32 %28, i32* %3, align 4
  %29 = load %struct.snd_msnd*, %struct.snd_msnd** %2, align 8
  %30 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @SMA_wCurrMastVolRight, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @readw(i64 %33)
  store i32 %34, i32* %4, align 4
  br label %36

35:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %22
  %37 = load %struct.snd_msnd*, %struct.snd_msnd** %2, align 8
  %38 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %37, i32 0, i32 5
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @memset_io(i64 %39, i32 0, i32 32768)
  %41 = load %struct.snd_msnd*, %struct.snd_msnd** %2, align 8
  %42 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %41, i32 0, i32 10
  %43 = load i64, i64* %5, align 8
  %44 = call i32 @spin_lock_irqsave(i32* %42, i64 %43)
  %45 = load i32, i32* @HPBLKSEL_1, align 4
  %46 = load %struct.snd_msnd*, %struct.snd_msnd** %2, align 8
  %47 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %46, i32 0, i32 11
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @HP_BLKS, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @outb(i32 %45, i64 %50)
  %52 = load %struct.snd_msnd*, %struct.snd_msnd** %2, align 8
  %53 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %52, i32 0, i32 5
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @memset_io(i64 %54, i32 0, i32 32768)
  %56 = load i32, i32* @HPBLKSEL_0, align 4
  %57 = load %struct.snd_msnd*, %struct.snd_msnd** %2, align 8
  %58 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %57, i32 0, i32 11
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @HP_BLKS, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @outb(i32 %56, i64 %61)
  %63 = load %struct.snd_msnd*, %struct.snd_msnd** %2, align 8
  %64 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %63, i32 0, i32 10
  %65 = load i64, i64* %5, align 8
  %66 = call i32 @spin_unlock_irqrestore(i32* %64, i64 %65)
  %67 = load %struct.snd_msnd*, %struct.snd_msnd** %2, align 8
  %68 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %67, i32 0, i32 5
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @DAPQ_OFFSET, align 8
  %71 = add nsw i64 %69, %70
  %72 = load %struct.snd_msnd*, %struct.snd_msnd** %2, align 8
  %73 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %72, i32 0, i32 9
  store i64 %71, i64* %73, align 8
  %74 = load %struct.snd_msnd*, %struct.snd_msnd** %2, align 8
  %75 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %74, i32 0, i32 9
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* @DAPQ_DATA_BUFF, align 4
  %78 = load i32, i32* @DAPQ_BUFF_SIZE, align 4
  %79 = call i32 @snd_msnd_init_queue(i64 %76, i32 %77, i32 %78)
  %80 = load %struct.snd_msnd*, %struct.snd_msnd** %2, align 8
  %81 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %80, i32 0, i32 5
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @DARQ_OFFSET, align 8
  %84 = add nsw i64 %82, %83
  %85 = load %struct.snd_msnd*, %struct.snd_msnd** %2, align 8
  %86 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %85, i32 0, i32 8
  store i64 %84, i64* %86, align 8
  %87 = load %struct.snd_msnd*, %struct.snd_msnd** %2, align 8
  %88 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %87, i32 0, i32 8
  %89 = load i64, i64* %88, align 8
  %90 = load i32, i32* @DARQ_DATA_BUFF, align 4
  %91 = load i32, i32* @DARQ_BUFF_SIZE, align 4
  %92 = call i32 @snd_msnd_init_queue(i64 %89, i32 %90, i32 %91)
  %93 = load %struct.snd_msnd*, %struct.snd_msnd** %2, align 8
  %94 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %93, i32 0, i32 5
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @MODQ_OFFSET, align 8
  %97 = add nsw i64 %95, %96
  %98 = load %struct.snd_msnd*, %struct.snd_msnd** %2, align 8
  %99 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %98, i32 0, i32 7
  store i64 %97, i64* %99, align 8
  %100 = load %struct.snd_msnd*, %struct.snd_msnd** %2, align 8
  %101 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %100, i32 0, i32 7
  %102 = load i64, i64* %101, align 8
  %103 = load i32, i32* @MODQ_DATA_BUFF, align 4
  %104 = load i32, i32* @MODQ_BUFF_SIZE, align 4
  %105 = call i32 @snd_msnd_init_queue(i64 %102, i32 %103, i32 %104)
  %106 = load %struct.snd_msnd*, %struct.snd_msnd** %2, align 8
  %107 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %106, i32 0, i32 5
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @MIDQ_OFFSET, align 8
  %110 = add nsw i64 %108, %109
  %111 = load %struct.snd_msnd*, %struct.snd_msnd** %2, align 8
  %112 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %111, i32 0, i32 6
  store i64 %110, i64* %112, align 8
  %113 = load %struct.snd_msnd*, %struct.snd_msnd** %2, align 8
  %114 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %113, i32 0, i32 6
  %115 = load i64, i64* %114, align 8
  %116 = load i32, i32* @MIDQ_DATA_BUFF, align 4
  %117 = load i32, i32* @MIDQ_BUFF_SIZE, align 4
  %118 = call i32 @snd_msnd_init_queue(i64 %115, i32 %116, i32 %117)
  %119 = load %struct.snd_msnd*, %struct.snd_msnd** %2, align 8
  %120 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %119, i32 0, i32 5
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @DSPQ_OFFSET, align 8
  %123 = add nsw i64 %121, %122
  %124 = load %struct.snd_msnd*, %struct.snd_msnd** %2, align 8
  %125 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %124, i32 0, i32 4
  store i64 %123, i64* %125, align 8
  %126 = load %struct.snd_msnd*, %struct.snd_msnd** %2, align 8
  %127 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %126, i32 0, i32 4
  %128 = load i64, i64* %127, align 8
  %129 = load i32, i32* @DSPQ_DATA_BUFF, align 4
  %130 = load i32, i32* @DSPQ_BUFF_SIZE, align 4
  %131 = call i32 @snd_msnd_init_queue(i64 %128, i32 %129, i32 %130)
  %132 = load %struct.snd_msnd*, %struct.snd_msnd** %2, align 8
  %133 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %132, i32 0, i32 3
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @SMA_wCurrPlayFormat, align 8
  %136 = add nsw i64 %134, %135
  %137 = call i32 @writew(i32 1, i64 %136)
  %138 = load %struct.snd_msnd*, %struct.snd_msnd** %2, align 8
  %139 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.snd_msnd*, %struct.snd_msnd** %2, align 8
  %142 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %141, i32 0, i32 3
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @SMA_wCurrPlaySampleSize, align 8
  %145 = add nsw i64 %143, %144
  %146 = call i32 @writew(i32 %140, i64 %145)
  %147 = load %struct.snd_msnd*, %struct.snd_msnd** %2, align 8
  %148 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.snd_msnd*, %struct.snd_msnd** %2, align 8
  %151 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %150, i32 0, i32 3
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @SMA_wCurrPlayChannels, align 8
  %154 = add nsw i64 %152, %153
  %155 = call i32 @writew(i32 %149, i64 %154)
  %156 = load %struct.snd_msnd*, %struct.snd_msnd** %2, align 8
  %157 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.snd_msnd*, %struct.snd_msnd** %2, align 8
  %160 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %159, i32 0, i32 3
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @SMA_wCurrPlaySampleRate, align 8
  %163 = add nsw i64 %161, %162
  %164 = call i32 @writew(i32 %158, i64 %163)
  %165 = load %struct.snd_msnd*, %struct.snd_msnd** %2, align 8
  %166 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.snd_msnd*, %struct.snd_msnd** %2, align 8
  %169 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %168, i32 0, i32 3
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @SMA_wCalFreqAtoD, align 8
  %172 = add nsw i64 %170, %171
  %173 = call i32 @writew(i32 %167, i64 %172)
  %174 = load i32, i32* %3, align 4
  %175 = load %struct.snd_msnd*, %struct.snd_msnd** %2, align 8
  %176 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %175, i32 0, i32 3
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @SMA_wCurrMastVolLeft, align 8
  %179 = add nsw i64 %177, %178
  %180 = call i32 @writew(i32 %174, i64 %179)
  %181 = load i32, i32* %4, align 4
  %182 = load %struct.snd_msnd*, %struct.snd_msnd** %2, align 8
  %183 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %182, i32 0, i32 3
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @SMA_wCurrMastVolRight, align 8
  %186 = add nsw i64 %184, %185
  %187 = call i32 @writew(i32 %181, i64 %186)
  %188 = load %struct.snd_msnd*, %struct.snd_msnd** %2, align 8
  %189 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %188, i32 0, i32 3
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @SMA_dwCurrPlayPitch, align 8
  %192 = add nsw i64 %190, %191
  %193 = call i32 @writel(i32 65536, i64 %192)
  %194 = load %struct.snd_msnd*, %struct.snd_msnd** %2, align 8
  %195 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %194, i32 0, i32 3
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @SMA_dwCurrPlayRate, align 8
  %198 = add nsw i64 %196, %197
  %199 = call i32 @writel(i32 1, i64 %198)
  %200 = load %struct.snd_msnd*, %struct.snd_msnd** %2, align 8
  %201 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %200, i32 0, i32 3
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* @SMA_wCurrInputTagBits, align 8
  %204 = add nsw i64 %202, %203
  %205 = call i32 @writew(i32 771, i64 %204)
  store i32 1, i32* @snd_msnd_init_sma.initted, align 4
  ret i32 0
}

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @readw(i64) #1

declare dso_local i32 @memset_io(i64, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snd_msnd_init_queue(i64, i32, i32) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
