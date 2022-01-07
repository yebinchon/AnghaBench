; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ews.c_snd_ice1712_6fire_read_pca.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ews.c_snd_ice1712_6fire_read_pca.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { i32, %struct.TYPE_2__*, %struct.ews_spec* }
%struct.TYPE_2__ = type { i32 }
%struct.ews_spec = type { i32* }

@EWS_I2C_6FIRE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"cannot send pca\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"cannot read pca\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ice1712*, i8)* @snd_ice1712_6fire_read_pca to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ice1712_6fire_read_pca(%struct.snd_ice1712* %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_ice1712*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca %struct.ews_spec*, align 8
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %4, align 8
  store i8 %1, i8* %5, align 1
  %8 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %9 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %8, i32 0, i32 2
  %10 = load %struct.ews_spec*, %struct.ews_spec** %9, align 8
  store %struct.ews_spec* %10, %struct.ews_spec** %7, align 8
  %11 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %12 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @snd_i2c_lock(i32 %13)
  %15 = load i8, i8* %5, align 1
  store i8 %15, i8* %6, align 1
  %16 = load %struct.ews_spec*, %struct.ews_spec** %7, align 8
  %17 = getelementptr inbounds %struct.ews_spec, %struct.ews_spec* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* @EWS_I2C_6FIRE, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @snd_i2c_sendbytes(i32 %21, i8* %6, i32 1)
  %23 = icmp ne i32 %22, 1
  br i1 %23, label %24, label %37

24:                                               ; preds = %2
  %25 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %26 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @snd_i2c_unlock(i32 %27)
  %29 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %30 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @dev_err(i32 %33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @EIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %66

37:                                               ; preds = %2
  store i8 0, i8* %6, align 1
  %38 = load %struct.ews_spec*, %struct.ews_spec** %7, align 8
  %39 = getelementptr inbounds %struct.ews_spec, %struct.ews_spec* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* @EWS_I2C_6FIRE, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @snd_i2c_readbytes(i32 %43, i8* %6, i32 1)
  %45 = icmp ne i32 %44, 1
  br i1 %45, label %46, label %59

46:                                               ; preds = %37
  %47 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %48 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @snd_i2c_unlock(i32 %49)
  %51 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %52 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @dev_err(i32 %55, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32, i32* @EIO, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %66

59:                                               ; preds = %37
  %60 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %61 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @snd_i2c_unlock(i32 %62)
  %64 = load i8, i8* %6, align 1
  %65 = zext i8 %64 to i32
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %59, %46, %24
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @snd_i2c_lock(i32) #1

declare dso_local i32 @snd_i2c_sendbytes(i32, i8*, i32) #1

declare dso_local i32 @snd_i2c_unlock(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @snd_i2c_readbytes(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
