; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_intel8x0m.c_snd_intel8x0m_codec_semaphore.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_intel8x0m.c_snd_intel8x0m_codec_semaphore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel8x0m = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@GLOB_STA = common dso_local global i32 0, align 4
@ACC_SEMA = common dso_local global i32 0, align 4
@ICH_CAS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"codec_semaphore: semaphore is not ready [0x%x][0x%x]\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel8x0m*, i32)* @snd_intel8x0m_codec_semaphore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_intel8x0m_codec_semaphore(%struct.intel8x0m* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel8x0m*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.intel8x0m* %0, %struct.intel8x0m** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ugt i32 %7, 1
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* @EIO, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %61

12:                                               ; preds = %2
  %13 = load %struct.intel8x0m*, %struct.intel8x0m** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @get_ich_codec_bit(%struct.intel8x0m* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.intel8x0m*, %struct.intel8x0m** %4, align 8
  %17 = load i32, i32* @GLOB_STA, align 4
  %18 = call i32 @ICHREG(i32 %17)
  %19 = call i32 @igetdword(%struct.intel8x0m* %16, i32 %18)
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %12
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %61

26:                                               ; preds = %12
  store i32 100, i32* %6, align 4
  br label %27

27:                                               ; preds = %38, %26
  %28 = load %struct.intel8x0m*, %struct.intel8x0m** %4, align 8
  %29 = load i32, i32* @ACC_SEMA, align 4
  %30 = call i32 @ICHREG(i32 %29)
  %31 = call i32 @igetbyte(%struct.intel8x0m* %28, i32 %30)
  %32 = load i32, i32* @ICH_CAS, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %61

36:                                               ; preds = %27
  %37 = call i32 @udelay(i32 10)
  br label %38

38:                                               ; preds = %36
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %6, align 4
  %41 = icmp ne i32 %39, 0
  br i1 %41, label %27, label %42

42:                                               ; preds = %38
  %43 = load %struct.intel8x0m*, %struct.intel8x0m** %4, align 8
  %44 = getelementptr inbounds %struct.intel8x0m, %struct.intel8x0m* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.intel8x0m*, %struct.intel8x0m** %4, align 8
  %49 = load i32, i32* @ACC_SEMA, align 4
  %50 = call i32 @ICHREG(i32 %49)
  %51 = call i32 @igetbyte(%struct.intel8x0m* %48, i32 %50)
  %52 = load %struct.intel8x0m*, %struct.intel8x0m** %4, align 8
  %53 = load i32, i32* @GLOB_STA, align 4
  %54 = call i32 @ICHREG(i32 %53)
  %55 = call i32 @igetdword(%struct.intel8x0m* %52, i32 %54)
  %56 = call i32 @dev_err(i32 %47, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %55)
  %57 = load %struct.intel8x0m*, %struct.intel8x0m** %4, align 8
  %58 = call i32 @iagetword(%struct.intel8x0m* %57, i32 0)
  %59 = load i32, i32* @EBUSY, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %42, %35, %23, %9
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @get_ich_codec_bit(%struct.intel8x0m*, i32) #1

declare dso_local i32 @igetdword(%struct.intel8x0m*, i32) #1

declare dso_local i32 @ICHREG(i32) #1

declare dso_local i32 @igetbyte(%struct.intel8x0m*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @iagetword(%struct.intel8x0m*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
