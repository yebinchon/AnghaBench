; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_maestro3.c_snd_m3_try_read_vendor.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_maestro3.c_snd_m3_try_read_vendor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_m3 = type { i32 }

@AC97_VENDOR_ID1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_m3*)* @snd_m3_try_read_vendor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_m3_try_read_vendor(%struct.snd_m3* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_m3*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_m3* %0, %struct.snd_m3** %3, align 8
  %5 = load %struct.snd_m3*, %struct.snd_m3** %3, align 8
  %6 = call i64 @snd_m3_ac97_wait(%struct.snd_m3* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %30

9:                                                ; preds = %1
  %10 = load %struct.snd_m3*, %struct.snd_m3** %3, align 8
  %11 = load i32, i32* @AC97_VENDOR_ID1, align 4
  %12 = and i32 %11, 127
  %13 = or i32 128, %12
  %14 = call i32 @snd_m3_outb(%struct.snd_m3* %10, i32 %13, i32 48)
  %15 = load %struct.snd_m3*, %struct.snd_m3** %3, align 8
  %16 = call i64 @snd_m3_ac97_wait(%struct.snd_m3* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %9
  store i32 1, i32* %2, align 4
  br label %30

19:                                               ; preds = %9
  %20 = load %struct.snd_m3*, %struct.snd_m3** %3, align 8
  %21 = call i32 @snd_m3_inw(%struct.snd_m3* %20, i32 50)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* %4, align 4
  %26 = icmp eq i32 %25, 65535
  br label %27

27:                                               ; preds = %24, %19
  %28 = phi i1 [ true, %19 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %27, %18, %8
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i64 @snd_m3_ac97_wait(%struct.snd_m3*) #1

declare dso_local i32 @snd_m3_outb(%struct.snd_m3*, i32, i32) #1

declare dso_local i32 @snd_m3_inw(%struct.snd_m3*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
