; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_quartet.c_qtet_akm_set_regs.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_quartet.c_qtet_akm_set_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_akm4xxx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_akm4xxx*, i8, i8, i8)* @qtet_akm_set_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qtet_akm_set_regs(%struct.snd_akm4xxx* %0, i8 zeroext %1, i8 zeroext %2, i8 zeroext %3) #0 {
  %5 = alloca %struct.snd_akm4xxx*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store %struct.snd_akm4xxx* %0, %struct.snd_akm4xxx** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8 %2, i8* %7, align 1
  store i8 %3, i8* %8, align 1
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %40, %4
  %12 = load i32, i32* %10, align 4
  %13 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %5, align 8
  %14 = getelementptr inbounds %struct.snd_akm4xxx, %struct.snd_akm4xxx* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %43

17:                                               ; preds = %11
  %18 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %5, align 8
  %19 = load i32, i32* %10, align 4
  %20 = load i8, i8* %6, align 1
  %21 = call zeroext i8 @snd_akm4xxx_get(%struct.snd_akm4xxx* %18, i32 %19, i8 zeroext %20)
  store i8 %21, i8* %9, align 1
  %22 = load i8, i8* %7, align 1
  %23 = zext i8 %22 to i32
  %24 = xor i32 %23, -1
  %25 = load i8, i8* %9, align 1
  %26 = zext i8 %25 to i32
  %27 = and i32 %26, %24
  %28 = trunc i32 %27 to i8
  store i8 %28, i8* %9, align 1
  %29 = load i8, i8* %8, align 1
  %30 = zext i8 %29 to i32
  %31 = load i8, i8* %9, align 1
  %32 = zext i8 %31 to i32
  %33 = or i32 %32, %30
  %34 = trunc i32 %33 to i8
  store i8 %34, i8* %9, align 1
  %35 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %5, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load i8, i8* %6, align 1
  %38 = load i8, i8* %9, align 1
  %39 = call i32 @snd_akm4xxx_write(%struct.snd_akm4xxx* %35, i32 %36, i8 zeroext %37, i8 zeroext %38)
  br label %40

40:                                               ; preds = %17
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %10, align 4
  br label %11

43:                                               ; preds = %11
  ret void
}

declare dso_local zeroext i8 @snd_akm4xxx_get(%struct.snd_akm4xxx*, i32, i8 zeroext) #1

declare dso_local i32 @snd_akm4xxx_write(%struct.snd_akm4xxx*, i32, i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
