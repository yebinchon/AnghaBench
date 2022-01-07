; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ews.c_snd_ice1712_ews_cs8404_spdif_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ews.c_snd_ice1712_ews_cs8404_spdif_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { i32, %struct.TYPE_2__, %struct.ews_spec* }
%struct.TYPE_2__ = type { i32 }
%struct.ews_spec = type { i32* }

@EWS_I2C_CS8404 = common dso_local global i64 0, align 8
@EWS_I2C_88D = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ice1712*, i8)* @snd_ice1712_ews_cs8404_spdif_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_ice1712_ews_cs8404_spdif_write(%struct.snd_ice1712* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.snd_ice1712*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.ews_spec*, align 8
  %6 = alloca [2 x i8], align 1
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %3, align 8
  store i8 %1, i8* %4, align 1
  %7 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %8 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %7, i32 0, i32 2
  %9 = load %struct.ews_spec*, %struct.ews_spec** %8, align 8
  store %struct.ews_spec* %9, %struct.ews_spec** %5, align 8
  %10 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %11 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @snd_i2c_lock(i32 %12)
  %14 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %15 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %62 [
    i32 131, label %18
    i32 130, label %18
    i32 129, label %18
    i32 128, label %18
    i32 132, label %29
  ]

18:                                               ; preds = %2, %2, %2, %2
  %19 = load %struct.ews_spec*, %struct.ews_spec** %5, align 8
  %20 = getelementptr inbounds %struct.ews_spec, %struct.ews_spec* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* @EWS_I2C_CS8404, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @snd_i2c_sendbytes(i32 %24, i8* %4, i32 1)
  %26 = icmp ne i32 %25, 1
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  br label %63

28:                                               ; preds = %18
  br label %62

29:                                               ; preds = %2
  %30 = load %struct.ews_spec*, %struct.ews_spec** %5, align 8
  %31 = getelementptr inbounds %struct.ews_spec, %struct.ews_spec* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* @EWS_I2C_88D, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %37 = call i32 @snd_i2c_readbytes(i32 %35, i8* %36, i32 2)
  %38 = icmp ne i32 %37, 2
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  br label %63

40:                                               ; preds = %29
  %41 = load i8, i8* %4, align 1
  %42 = zext i8 %41 to i32
  %43 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 1
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp ne i32 %42, %45
  br i1 %46, label %47, label %61

47:                                               ; preds = %40
  %48 = load i8, i8* %4, align 1
  %49 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 1
  store i8 %48, i8* %49, align 1
  %50 = load %struct.ews_spec*, %struct.ews_spec** %5, align 8
  %51 = getelementptr inbounds %struct.ews_spec, %struct.ews_spec* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* @EWS_I2C_88D, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %57 = call i32 @snd_i2c_sendbytes(i32 %55, i8* %56, i32 2)
  %58 = icmp ne i32 %57, 2
  br i1 %58, label %59, label %60

59:                                               ; preds = %47
  br label %63

60:                                               ; preds = %47
  br label %61

61:                                               ; preds = %60, %40
  br label %62

62:                                               ; preds = %2, %61, %28
  br label %63

63:                                               ; preds = %62, %59, %39, %27
  %64 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %65 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @snd_i2c_unlock(i32 %66)
  ret void
}

declare dso_local i32 @snd_i2c_lock(i32) #1

declare dso_local i32 @snd_i2c_sendbytes(i32, i8*, i32) #1

declare dso_local i32 @snd_i2c_readbytes(i32, i8*, i32) #1

declare dso_local i32 @snd_i2c_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
