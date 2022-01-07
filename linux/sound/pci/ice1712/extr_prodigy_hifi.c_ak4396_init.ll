; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_prodigy_hifi.c_ak4396_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_prodigy_hifi.c_ak4396_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { i32 }

@ak4396_init.ak4396_inits = internal global [10 x i16] [i16 132, i16 135, i16 131, i16 2, i16 130, i16 0, i16 129, i16 0, i16 128, i16 0], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ice1712*)* @ak4396_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ak4396_init(%struct.snd_ice1712* %0) #0 {
  %2 = alloca %struct.snd_ice1712*, align 8
  %3 = alloca i32, align 4
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %2, align 8
  %4 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %5 = call i32 @ak4396_write(%struct.snd_ice1712* %4, i32 132, i16 zeroext 134)
  %6 = call i32 @msleep(i32 100)
  %7 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %8 = call i32 @ak4396_write(%struct.snd_ice1712* %7, i32 132, i16 zeroext 135)
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %26, %1
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @ARRAY_SIZE(i16* getelementptr inbounds ([10 x i16], [10 x i16]* @ak4396_init.ak4396_inits, i64 0, i64 0))
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %29

13:                                               ; preds = %9
  %14 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %15 = load i32, i32* %3, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds [10 x i16], [10 x i16]* @ak4396_init.ak4396_inits, i64 0, i64 %16
  %18 = load i16, i16* %17, align 2
  %19 = zext i16 %18 to i32
  %20 = load i32, i32* %3, align 4
  %21 = add i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds [10 x i16], [10 x i16]* @ak4396_init.ak4396_inits, i64 0, i64 %22
  %24 = load i16, i16* %23, align 2
  %25 = call i32 @ak4396_write(%struct.snd_ice1712* %14, i32 %19, i16 zeroext %24)
  br label %26

26:                                               ; preds = %13
  %27 = load i32, i32* %3, align 4
  %28 = add i32 %27, 2
  store i32 %28, i32* %3, align 4
  br label %9

29:                                               ; preds = %9
  ret void
}

declare dso_local i32 @ak4396_write(%struct.snd_ice1712*, i32, i16 zeroext) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @ARRAY_SIZE(i16*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
