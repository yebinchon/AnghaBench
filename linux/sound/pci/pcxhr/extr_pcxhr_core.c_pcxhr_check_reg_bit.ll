; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr_core.c_pcxhr_check_reg_bit.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr_core.c_pcxhr_check_reg_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcxhr_mgr = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"ATTENTION! check_reg(%x) loopcount=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"pcxhr_check_reg_bit: timeout, reg=%x, mask=0x%x, val=%x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcxhr_mgr*, i32, i8, i8, i32, i8*)* @pcxhr_check_reg_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcxhr_check_reg_bit(%struct.pcxhr_mgr* %0, i32 %1, i8 zeroext %2, i8 zeroext %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.pcxhr_mgr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.pcxhr_mgr* %0, %struct.pcxhr_mgr** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8 %2, i8* %10, align 1
  store i8 %3, i8* %11, align 1
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i32 0, i32* %14, align 4
  %16 = load i32, i32* @jiffies, align 4
  %17 = load i32, i32* %12, align 4
  %18 = load i32, i32* @HZ, align 4
  %19 = mul nsw i32 %17, %18
  %20 = add nsw i32 %19, 999
  %21 = sdiv i32 %20, 1000
  %22 = add nsw i32 %16, %21
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %15, align 8
  br label %24

24:                                               ; preds = %53, %6
  %25 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call zeroext i8 @PCXHR_INPB(%struct.pcxhr_mgr* %25, i32 %26)
  %28 = load i8*, i8** %13, align 8
  store i8 %27, i8* %28, align 1
  %29 = load i8*, i8** %13, align 8
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = load i8, i8* %10, align 1
  %33 = zext i8 %32 to i32
  %34 = and i32 %31, %33
  %35 = load i8, i8* %11, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %24
  %39 = load i32, i32* %14, align 4
  %40 = icmp sgt i32 %39, 100
  br i1 %40, label %41, label %49

41:                                               ; preds = %38
  %42 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %8, align 8
  %43 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %14, align 4
  %48 = call i32 @dev_dbg(i32* %45, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %41, %38
  store i32 0, i32* %7, align 4
  br label %70

50:                                               ; preds = %24
  %51 = load i32, i32* %14, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %14, align 4
  br label %53

53:                                               ; preds = %50
  %54 = load i64, i64* %15, align 8
  %55 = load i32, i32* @jiffies, align 4
  %56 = call i64 @time_after_eq(i64 %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %24, label %58

58:                                               ; preds = %53
  %59 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %8, align 8
  %60 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %9, align 4
  %64 = load i8, i8* %10, align 1
  %65 = load i8*, i8** %13, align 8
  %66 = load i8, i8* %65, align 1
  %67 = call i32 @dev_err(i32* %62, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %63, i8 zeroext %64, i8 zeroext %66)
  %68 = load i32, i32* @EIO, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %58, %49
  %71 = load i32, i32* %7, align 4
  ret i32 %71
}

declare dso_local zeroext i8 @PCXHR_INPB(%struct.pcxhr_mgr*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i64 @time_after_eq(i64, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
