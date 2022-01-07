; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ali5451/extr_ali5451.c_snd_ali_convert_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ali5451/extr_ali5451.c_snd_ali_convert_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @snd_ali_convert_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ali_convert_rate(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp ult i32 %6, 4000
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 4000, i32* %3, align 4
  br label %9

9:                                                ; preds = %8, %2
  %10 = load i32, i32* %3, align 4
  %11 = icmp ugt i32 %10, 48000
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i32 48000, i32* %3, align 4
  br label %13

13:                                               ; preds = %12, %9
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %13
  %17 = load i32, i32* %3, align 4
  %18 = icmp eq i32 %17, 44100
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 4458, i32* %5, align 4
  br label %34

20:                                               ; preds = %16
  %21 = load i32, i32* %3, align 4
  %22 = icmp eq i32 %21, 8000
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 24576, i32* %5, align 4
  br label %33

24:                                               ; preds = %20
  %25 = load i32, i32* %3, align 4
  %26 = icmp eq i32 %25, 48000
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 4096, i32* %5, align 4
  br label %32

28:                                               ; preds = %24
  %29 = load i32, i32* %3, align 4
  %30 = udiv i32 196608000, %29
  %31 = and i32 %30, 65535
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %28, %27
  br label %33

33:                                               ; preds = %32, %23
  br label %34

34:                                               ; preds = %33, %19
  br label %57

35:                                               ; preds = %13
  %36 = load i32, i32* %3, align 4
  %37 = icmp eq i32 %36, 44100
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 3763, i32* %5, align 4
  br label %56

39:                                               ; preds = %35
  %40 = load i32, i32* %3, align 4
  %41 = icmp eq i32 %40, 8000
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 683, i32* %5, align 4
  br label %55

43:                                               ; preds = %39
  %44 = load i32, i32* %3, align 4
  %45 = icmp eq i32 %44, 48000
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i32 4096, i32* %5, align 4
  br label %54

47:                                               ; preds = %43
  %48 = load i32, i32* %3, align 4
  %49 = shl i32 %48, 12
  %50 = load i32, i32* %3, align 4
  %51 = add i32 %49, %50
  %52 = udiv i32 %51, 48000
  %53 = and i32 %52, 65535
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %47, %46
  br label %55

55:                                               ; preds = %54, %42
  br label %56

56:                                               ; preds = %55, %38
  br label %57

57:                                               ; preds = %56, %34
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
