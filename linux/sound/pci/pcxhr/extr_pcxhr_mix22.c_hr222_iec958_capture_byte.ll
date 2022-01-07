; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr_mix22.c_hr222_iec958_capture_byte.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr_mix22.c_hr222_iec958_capture_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcxhr = type { i32, %struct.TYPE_4__*, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i64 }

@PCXHR_SUER1_BIT_C_READ_MASK = common dso_local global i8 0, align 1
@PCXHR_SUER_BIT_C_READ_MASK = common dso_local global i8 0, align 1
@PCXHR_XLX_RUER = common dso_local global i32 0, align 4
@PCXHR_XLX_CSUER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"read iec958 AES %d byte %d = 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hr222_iec958_capture_byte(%struct.snd_pcxhr* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.snd_pcxhr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store %struct.snd_pcxhr* %0, %struct.snd_pcxhr** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = mul nsw i32 %11, 8
  %13 = trunc i32 %12 to i8
  store i8 %13, i8* %7, align 1
  store i8 0, i8* %8, align 1
  %14 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %4, align 8
  %15 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %14, i32 0, i32 2
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i8, i8* @PCXHR_SUER1_BIT_C_READ_MASK, align 1
  %22 = zext i8 %21 to i32
  br label %26

23:                                               ; preds = %3
  %24 = load i8, i8* @PCXHR_SUER_BIT_C_READ_MASK, align 1
  %25 = zext i8 %24 to i32
  br label %26

26:                                               ; preds = %23, %20
  %27 = phi i32 [ %22, %20 ], [ %25, %23 ]
  %28 = trunc i32 %27 to i8
  store i8 %28, i8* %9, align 1
  store i32 0, i32* %10, align 4
  br label %29

29:                                               ; preds = %61, %26
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %30, 8
  br i1 %31, label %32, label %64

32:                                               ; preds = %29
  %33 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %4, align 8
  %34 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %33, i32 0, i32 2
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = load i32, i32* @PCXHR_XLX_RUER, align 4
  %37 = load i8, i8* %7, align 1
  %38 = add i8 %37, 1
  store i8 %38, i8* %7, align 1
  %39 = zext i8 %37 to i32
  %40 = call i32 @PCXHR_OUTPB(%struct.TYPE_5__* %35, i32 %36, i32 %39)
  %41 = load i8, i8* %8, align 1
  %42 = zext i8 %41 to i32
  %43 = shl i32 %42, 1
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %8, align 1
  %45 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %4, align 8
  %46 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %45, i32 0, i32 2
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = load i32, i32* @PCXHR_XLX_CSUER, align 4
  %49 = call zeroext i8 @PCXHR_INPB(%struct.TYPE_5__* %47, i32 %48)
  %50 = zext i8 %49 to i32
  %51 = load i8, i8* %9, align 1
  %52 = zext i8 %51 to i32
  %53 = and i32 %50, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %32
  %56 = load i8, i8* %8, align 1
  %57 = zext i8 %56 to i32
  %58 = or i32 %57, 1
  %59 = trunc i32 %58 to i8
  store i8 %59, i8* %8, align 1
  br label %60

60:                                               ; preds = %55, %32
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %10, align 4
  br label %29

64:                                               ; preds = %29
  %65 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %4, align 8
  %66 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %65, i32 0, i32 1
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %4, align 8
  %71 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = load i8, i8* %8, align 1
  %75 = call i32 @dev_dbg(i32 %69, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %72, i32 %73, i8 zeroext %74)
  %76 = load i8, i8* %8, align 1
  %77 = load i8*, i8** %6, align 8
  store i8 %76, i8* %77, align 1
  ret i32 0
}

declare dso_local i32 @PCXHR_OUTPB(%struct.TYPE_5__*, i32, i32) #1

declare dso_local zeroext i8 @PCXHR_INPB(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
