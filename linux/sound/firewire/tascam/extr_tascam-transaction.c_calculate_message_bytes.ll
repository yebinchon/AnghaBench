; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/tascam/extr_tascam-transaction.c_calculate_message_bytes.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/tascam/extr_tascam-transaction.c_calculate_message_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @calculate_message_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calculate_message_bytes(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %11 [
    i32 246, label %5
    i32 248, label %5
    i32 250, label %5
    i32 251, label %5
    i32 252, label %5
    i32 254, label %5
    i32 255, label %5
    i32 241, label %6
    i32 243, label %6
    i32 242, label %7
    i32 240, label %8
    i32 247, label %9
    i32 244, label %10
    i32 245, label %10
    i32 249, label %10
    i32 253, label %10
  ]

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1
  store i32 1, i32* %2, align 4
  br label %21

6:                                                ; preds = %1, %1
  store i32 2, i32* %2, align 4
  br label %21

7:                                                ; preds = %1
  store i32 3, i32* %2, align 4
  br label %21

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %21

9:                                                ; preds = %1
  br label %18

10:                                               ; preds = %1, %1, %1, %1
  br label %18

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, 240
  switch i32 %13, label %16 [
    i32 128, label %14
    i32 144, label %14
    i32 160, label %14
    i32 176, label %14
    i32 224, label %14
    i32 192, label %15
    i32 208, label %15
  ]

14:                                               ; preds = %11, %11, %11, %11, %11
  store i32 3, i32* %2, align 4
  br label %21

15:                                               ; preds = %11, %11
  store i32 2, i32* %2, align 4
  br label %21

16:                                               ; preds = %11
  br label %17

17:                                               ; preds = %16
  br label %18

18:                                               ; preds = %17, %10, %9
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %18, %15, %14, %8, %7, %6, %5
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
