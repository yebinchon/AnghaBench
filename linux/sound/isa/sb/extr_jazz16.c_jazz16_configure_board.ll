; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/sb/extr_jazz16.c_jazz16_configure_board.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/sb/extr_jazz16.c_jazz16_configure_board.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sb = type { i64, i64, i64 }

@jazz16_configure_board.jazz_irq_bits = internal global [16 x i8] c"\00\00\02\03\00\01\00\04\00\02\05\00\00\00\00\06", align 16
@jazz16_configure_board.jazz_dma_bits = internal global [8 x i8] c"\00\01\00\02\00\03\00\04", align 1
@EINVAL = common dso_local global i32 0, align 4
@SB_JAZZ16_SET_DMAINTR = common dso_local global i8 0, align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_sb*, i32)* @jazz16_configure_board to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jazz16_configure_board(%struct.snd_sb* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_sb*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_sb* %0, %struct.snd_sb** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %7 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds [8 x i8], [8 x i8]* @jazz16_configure_board.jazz_dma_bits, i64 0, i64 %8
  %10 = load i8, i8* %9, align 1
  %11 = zext i8 %10 to i32
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %29, label %13

13:                                               ; preds = %2
  %14 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %15 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds [8 x i8], [8 x i8]* @jazz16_configure_board.jazz_dma_bits, i64 0, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %13
  %22 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %23 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds [16 x i8], [16 x i8]* @jazz16_configure_board.jazz_irq_bits, i64 0, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %21, %13, %2
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %84

32:                                               ; preds = %21
  %33 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %34 = load i8, i8* @SB_JAZZ16_SET_DMAINTR, align 1
  %35 = call i32 @snd_sbdsp_command(%struct.snd_sb* %33, i8 zeroext %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @EBUSY, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %84

40:                                               ; preds = %32
  %41 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %42 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %43 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds [8 x i8], [8 x i8]* @jazz16_configure_board.jazz_dma_bits, i64 0, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %49 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds [8 x i8], [8 x i8]* @jazz16_configure_board.jazz_dma_bits, i64 0, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = shl i32 %53, 4
  %55 = or i32 %47, %54
  %56 = trunc i32 %55 to i8
  %57 = call i32 @snd_sbdsp_command(%struct.snd_sb* %41, i8 zeroext %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %40
  %60 = load i32, i32* @EBUSY, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %84

62:                                               ; preds = %40
  %63 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %64 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %65 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds [16 x i8], [16 x i8]* @jazz16_configure_board.jazz_irq_bits, i64 0, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [16 x i8], [16 x i8]* @jazz16_configure_board.jazz_irq_bits, i64 0, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = shl i32 %74, 4
  %76 = or i32 %69, %75
  %77 = trunc i32 %76 to i8
  %78 = call i32 @snd_sbdsp_command(%struct.snd_sb* %63, i8 zeroext %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %62
  %81 = load i32, i32* @EBUSY, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %84

83:                                               ; preds = %62
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %83, %80, %59, %37, %29
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @snd_sbdsp_command(%struct.snd_sb*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
