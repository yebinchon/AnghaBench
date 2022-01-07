; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_intel8x0.c_snd_intel8x0_codec_semaphore.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_intel8x0.c_snd_intel8x0_codec_semaphore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel8x0 = type { i32, i32*, i64*, %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@GLOB_STA = common dso_local global i32 0, align 4
@ACC_SEMA = common dso_local global i32 0, align 4
@ICH_CAS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"codec_semaphore: semaphore is not ready [0x%x][0x%x]\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel8x0*, i32)* @snd_intel8x0_codec_semaphore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_intel8x0_codec_semaphore(%struct.intel8x0* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel8x0*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.intel8x0* %0, %struct.intel8x0** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ugt i32 %7, 2
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* @EIO, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %86

12:                                               ; preds = %2
  %13 = load %struct.intel8x0*, %struct.intel8x0** %4, align 8
  %14 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %13, i32 0, i32 5
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load %struct.intel8x0*, %struct.intel8x0** %4, align 8
  %19 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %5, align 4
  br label %34

21:                                               ; preds = %12
  %22 = load %struct.intel8x0*, %struct.intel8x0** %4, align 8
  %23 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.intel8x0*, %struct.intel8x0** %4, align 8
  %26 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %25, i32 0, i32 2
  %27 = load i64*, i64** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i32, i32* %24, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %21, %17
  %35 = load %struct.intel8x0*, %struct.intel8x0** %4, align 8
  %36 = load i32, i32* @GLOB_STA, align 4
  %37 = call i32 @ICHREG(i32 %36)
  %38 = call i32 @igetdword(%struct.intel8x0* %35, i32 %37)
  %39 = load i32, i32* %5, align 4
  %40 = and i32 %38, %39
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load i32, i32* @EIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %86

45:                                               ; preds = %34
  %46 = load %struct.intel8x0*, %struct.intel8x0** %4, align 8
  %47 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %86

51:                                               ; preds = %45
  store i32 100, i32* %6, align 4
  br label %52

52:                                               ; preds = %63, %51
  %53 = load %struct.intel8x0*, %struct.intel8x0** %4, align 8
  %54 = load i32, i32* @ACC_SEMA, align 4
  %55 = call i32 @ICHREG(i32 %54)
  %56 = call i32 @igetbyte(%struct.intel8x0* %53, i32 %55)
  %57 = load i32, i32* @ICH_CAS, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  br label %86

61:                                               ; preds = %52
  %62 = call i32 @udelay(i32 10)
  br label %63

63:                                               ; preds = %61
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %6, align 4
  %66 = icmp ne i32 %64, 0
  br i1 %66, label %52, label %67

67:                                               ; preds = %63
  %68 = load %struct.intel8x0*, %struct.intel8x0** %4, align 8
  %69 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %68, i32 0, i32 3
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.intel8x0*, %struct.intel8x0** %4, align 8
  %74 = load i32, i32* @ACC_SEMA, align 4
  %75 = call i32 @ICHREG(i32 %74)
  %76 = call i32 @igetbyte(%struct.intel8x0* %73, i32 %75)
  %77 = load %struct.intel8x0*, %struct.intel8x0** %4, align 8
  %78 = load i32, i32* @GLOB_STA, align 4
  %79 = call i32 @ICHREG(i32 %78)
  %80 = call i32 @igetdword(%struct.intel8x0* %77, i32 %79)
  %81 = call i32 @dev_err(i32 %72, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %76, i32 %80)
  %82 = load %struct.intel8x0*, %struct.intel8x0** %4, align 8
  %83 = call i32 @iagetword(%struct.intel8x0* %82, i32 0)
  %84 = load i32, i32* @EBUSY, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %67, %60, %50, %42, %9
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @igetdword(%struct.intel8x0*, i32) #1

declare dso_local i32 @ICHREG(i32) #1

declare dso_local i32 @igetbyte(%struct.intel8x0*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @iagetword(%struct.intel8x0*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
