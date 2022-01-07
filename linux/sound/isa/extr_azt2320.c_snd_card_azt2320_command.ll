; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/extr_azt2320.c_snd_card_azt2320_command.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/extr_azt2320.c_snd_card_azt2320_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8)* @snd_card_azt2320_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_card_azt2320_command(i64 %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i8 %1, i8* %5, align 1
  %8 = load i32, i32* @jiffies, align 4
  %9 = load i32, i32* @HZ, align 4
  %10 = sdiv i32 %9, 10
  %11 = add nsw i32 %8, %10
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %7, align 8
  store i32 50000, i32* %6, align 4
  br label %13

13:                                               ; preds = %35, %2
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load i64, i64* %7, align 8
  %18 = load i32, i32* @jiffies, align 4
  %19 = call i64 @time_after(i64 %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br label %21

21:                                               ; preds = %16, %13
  %22 = phi i1 [ false, %13 ], [ %20, %16 ]
  br i1 %22, label %23, label %38

23:                                               ; preds = %21
  %24 = load i64, i64* %4, align 8
  %25 = add i64 %24, 12
  %26 = call i32 @inb(i64 %25)
  %27 = and i32 %26, 128
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %23
  %30 = load i8, i8* %5, align 1
  %31 = load i64, i64* %4, align 8
  %32 = add i64 %31, 12
  %33 = call i32 @outb(i8 zeroext %30, i64 %32)
  store i32 0, i32* %3, align 4
  br label %41

34:                                               ; preds = %23
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %6, align 4
  br label %13

38:                                               ; preds = %21
  %39 = load i32, i32* @EBUSY, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %38, %29
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i64 @time_after(i64, i32) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @outb(i8 zeroext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
