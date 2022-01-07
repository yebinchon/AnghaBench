; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr_mix22.c_hr222_iec958_update_byte.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr_mix22.c_hr222_iec958_update_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcxhr = type { i8*, i32 }

@PCXHR_XLX_RUER = common dso_local global i32 0, align 4
@PCXHR_XLX_CSUER = common dso_local global i32 0, align 4
@PCXHR_SUER_BIT_C_WRITE_MASK = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hr222_iec958_update_byte(%struct.snd_pcxhr* %0, i32 %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.snd_pcxhr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  store %struct.snd_pcxhr* %0, %struct.snd_pcxhr** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8 %2, i8* %6, align 1
  %11 = load i8, i8* %6, align 1
  store i8 %11, i8* %8, align 1
  %12 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %4, align 8
  %13 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  %18 = load i8, i8* %17, align 1
  store i8 %18, i8* %9, align 1
  %19 = load i32, i32* %5, align 4
  %20 = mul nsw i32 %19, 8
  %21 = trunc i32 %20 to i8
  store i8 %21, i8* %10, align 1
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %67, %3
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 8
  br i1 %24, label %25, label %70

25:                                               ; preds = %22
  %26 = load i8, i8* %9, align 1
  %27 = zext i8 %26 to i32
  %28 = and i32 %27, 1
  %29 = load i8, i8* %8, align 1
  %30 = zext i8 %29 to i32
  %31 = and i32 %30, 1
  %32 = icmp ne i32 %28, %31
  br i1 %32, label %33, label %56

33:                                               ; preds = %25
  %34 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %4, align 8
  %35 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @PCXHR_XLX_RUER, align 4
  %38 = load i8, i8* %10, align 1
  %39 = call i32 @PCXHR_OUTPB(i32 %36, i32 %37, i8 zeroext %38)
  %40 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %4, align 8
  %41 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @PCXHR_XLX_CSUER, align 4
  %44 = load i8, i8* %8, align 1
  %45 = zext i8 %44 to i32
  %46 = and i32 %45, 1
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %33
  %49 = load i8, i8* @PCXHR_SUER_BIT_C_WRITE_MASK, align 1
  %50 = zext i8 %49 to i32
  br label %52

51:                                               ; preds = %33
  br label %52

52:                                               ; preds = %51, %48
  %53 = phi i32 [ %50, %48 ], [ 0, %51 ]
  %54 = trunc i32 %53 to i8
  %55 = call i32 @PCXHR_OUTPB(i32 %42, i32 %43, i8 zeroext %54)
  br label %56

56:                                               ; preds = %52, %25
  %57 = load i8, i8* %10, align 1
  %58 = add i8 %57, 1
  store i8 %58, i8* %10, align 1
  %59 = load i8, i8* %9, align 1
  %60 = zext i8 %59 to i32
  %61 = ashr i32 %60, 1
  %62 = trunc i32 %61 to i8
  store i8 %62, i8* %9, align 1
  %63 = load i8, i8* %8, align 1
  %64 = zext i8 %63 to i32
  %65 = ashr i32 %64, 1
  %66 = trunc i32 %65 to i8
  store i8 %66, i8* %8, align 1
  br label %67

67:                                               ; preds = %56
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %22

70:                                               ; preds = %22
  %71 = load i8, i8* %6, align 1
  %72 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %4, align 8
  %73 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  store i8 %71, i8* %77, align 1
  ret i32 0
}

declare dso_local i32 @PCXHR_OUTPB(i32, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
