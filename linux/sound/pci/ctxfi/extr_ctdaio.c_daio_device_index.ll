; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctdaio.c_daio_device_index.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctdaio.c_daio_device_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.hw*)* @daio_device_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @daio_device_index(i32 %0, %struct.hw* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.hw*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.hw* %1, %struct.hw** %5, align 8
  %6 = load %struct.hw*, %struct.hw** %5, align 8
  %7 = getelementptr inbounds %struct.hw, %struct.hw* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %35 [
    i32 138, label %9
    i32 137, label %22
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %19 [
    i32 128, label %11
    i32 129, label %12
    i32 130, label %13
    i32 135, label %14
    i32 134, label %15
    i32 133, label %16
    i32 132, label %17
    i32 136, label %18
  ]

11:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %38

12:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %38

13:                                               ; preds = %9
  store i32 1, i32* %3, align 4
  br label %38

14:                                               ; preds = %9
  store i32 4, i32* %3, align 4
  br label %38

15:                                               ; preds = %9
  store i32 7, i32* %3, align 4
  br label %38

16:                                               ; preds = %9
  store i32 5, i32* %3, align 4
  br label %38

17:                                               ; preds = %9
  store i32 6, i32* %3, align 4
  br label %38

18:                                               ; preds = %9
  store i32 7, i32* %3, align 4
  br label %38

19:                                               ; preds = %9
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %38

22:                                               ; preds = %2
  %23 = load i32, i32* %4, align 4
  switch i32 %23, label %32 [
    i32 128, label %24
    i32 129, label %25
    i32 135, label %26
    i32 134, label %27
    i32 133, label %28
    i32 132, label %29
    i32 136, label %30
    i32 131, label %31
  ]

24:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %38

25:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %38

26:                                               ; preds = %22
  store i32 4, i32* %3, align 4
  br label %38

27:                                               ; preds = %22
  store i32 7, i32* %3, align 4
  br label %38

28:                                               ; preds = %22
  store i32 5, i32* %3, align 4
  br label %38

29:                                               ; preds = %22
  store i32 6, i32* %3, align 4
  br label %38

30:                                               ; preds = %22
  store i32 4, i32* %3, align 4
  br label %38

31:                                               ; preds = %22
  store i32 5, i32* %3, align 4
  br label %38

32:                                               ; preds = %22
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %38

35:                                               ; preds = %2
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %35, %32, %31, %30, %29, %28, %27, %26, %25, %24, %19, %18, %17, %16, %15, %14, %13, %12, %11
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
