; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ews.c_snd_ice1712_6fire_write_pca.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ews.c_snd_ice1712_6fire_write_pca.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { i32, %struct.ews_spec* }
%struct.ews_spec = type { i32* }

@EWS_I2C_6FIRE = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ice1712*, i8, i8)* @snd_ice1712_6fire_write_pca to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ice1712_6fire_write_pca(%struct.snd_ice1712* %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_ice1712*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca [2 x i8], align 1
  %9 = alloca %struct.ews_spec*, align 8
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8 %2, i8* %7, align 1
  %10 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %11 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %10, i32 0, i32 1
  %12 = load %struct.ews_spec*, %struct.ews_spec** %11, align 8
  store %struct.ews_spec* %12, %struct.ews_spec** %9, align 8
  %13 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %14 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @snd_i2c_lock(i32 %15)
  %17 = load i8, i8* %6, align 1
  %18 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  store i8 %17, i8* %18, align 1
  %19 = load i8, i8* %7, align 1
  %20 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 1
  store i8 %19, i8* %20, align 1
  %21 = load %struct.ews_spec*, %struct.ews_spec** %9, align 8
  %22 = getelementptr inbounds %struct.ews_spec, %struct.ews_spec* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* @EWS_I2C_6FIRE, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  %28 = call i32 @snd_i2c_sendbytes(i32 %26, i8* %27, i32 2)
  %29 = icmp ne i32 %28, 2
  br i1 %29, label %30, label %37

30:                                               ; preds = %3
  %31 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %32 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @snd_i2c_unlock(i32 %33)
  %35 = load i32, i32* @EIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %42

37:                                               ; preds = %3
  %38 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %39 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @snd_i2c_unlock(i32 %40)
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %37, %30
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @snd_i2c_lock(i32) #1

declare dso_local i32 @snd_i2c_sendbytes(i32, i8*, i32) #1

declare dso_local i32 @snd_i2c_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
