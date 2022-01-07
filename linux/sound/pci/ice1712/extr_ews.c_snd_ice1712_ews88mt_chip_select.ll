; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ews.c_snd_ice1712_ews88mt_chip_select.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ews.c_snd_ice1712_ews88mt_chip_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { %struct.TYPE_2__*, i32, %struct.ews_spec* }
%struct.TYPE_2__ = type { i32 }
%struct.ews_spec = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@EWS_I2C_PCF2 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [60 x i8] c"AK4524 chip select failed, check cable to the front module\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ice1712*, i32)* @snd_ice1712_ews88mt_chip_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ice1712_ews88mt_chip_select(%struct.snd_ice1712* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_ice1712*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ews_spec*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %10 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %9, i32 0, i32 2
  %11 = load %struct.ews_spec*, %struct.ews_spec** %10, align 8
  store %struct.ews_spec* %11, %struct.ews_spec** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = icmp sgt i32 %15, 15
  br label %17

17:                                               ; preds = %14, %2
  %18 = phi i1 [ true, %2 ], [ %16, %14 ]
  %19 = zext i1 %18 to i32
  %20 = call i64 @snd_BUG_ON(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %80

25:                                               ; preds = %17
  %26 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %27 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @snd_i2c_lock(i32 %28)
  %30 = load %struct.ews_spec*, %struct.ews_spec** %6, align 8
  %31 = getelementptr inbounds %struct.ews_spec, %struct.ews_spec* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* @EWS_I2C_PCF2, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @snd_i2c_readbytes(i32 %35, i8* %7, i32 1)
  %37 = icmp ne i32 %36, 1
  br i1 %37, label %38, label %39

38:                                               ; preds = %25
  br label %67

39:                                               ; preds = %25
  %40 = load i8, i8* %7, align 1
  %41 = zext i8 %40 to i32
  %42 = and i32 %41, 240
  %43 = load i32, i32* %5, align 4
  %44 = or i32 %42, %43
  %45 = trunc i32 %44 to i8
  store i8 %45, i8* %8, align 1
  %46 = load i8, i8* %8, align 1
  %47 = zext i8 %46 to i32
  %48 = load i8, i8* %7, align 1
  %49 = zext i8 %48 to i32
  %50 = icmp ne i32 %47, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %39
  %52 = load %struct.ews_spec*, %struct.ews_spec** %6, align 8
  %53 = getelementptr inbounds %struct.ews_spec, %struct.ews_spec* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* @EWS_I2C_PCF2, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @snd_i2c_sendbytes(i32 %57, i8* %8, i32 1)
  %59 = icmp ne i32 %58, 1
  br i1 %59, label %60, label %61

60:                                               ; preds = %51
  br label %67

61:                                               ; preds = %51
  br label %62

62:                                               ; preds = %61, %39
  %63 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %64 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @snd_i2c_unlock(i32 %65)
  store i32 0, i32* %3, align 4
  br label %80

67:                                               ; preds = %60, %38
  %68 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %69 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @snd_i2c_unlock(i32 %70)
  %72 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %73 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @dev_err(i32 %76, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  %78 = load i32, i32* @EIO, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %67, %62, %22
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @snd_i2c_lock(i32) #1

declare dso_local i32 @snd_i2c_readbytes(i32, i8*, i32) #1

declare dso_local i32 @snd_i2c_sendbytes(i32, i8*, i32) #1

declare dso_local i32 @snd_i2c_unlock(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
