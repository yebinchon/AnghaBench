; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctatc.c_convert_format.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctatc.c_convert_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { i32 }

@SRC_SF_U8 = common dso_local global i32 0, align 4
@SRC_SF_S16 = common dso_local global i32 0, align 4
@SRC_SF_S24 = common dso_local global i32 0, align 4
@SRC_SF_S32 = common dso_local global i32 0, align 4
@SRC_SF_F32 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"not recognized snd format is %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.snd_card*)* @convert_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_format(i32 %0, %struct.snd_card* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_card*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.snd_card* %1, %struct.snd_card** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %17 [
    i32 128, label %7
    i32 131, label %9
    i32 130, label %11
    i32 129, label %13
    i32 132, label %15
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* @SRC_SF_U8, align 4
  store i32 %8, i32* %3, align 4
  br label %24

9:                                                ; preds = %2
  %10 = load i32, i32* @SRC_SF_S16, align 4
  store i32 %10, i32* %3, align 4
  br label %24

11:                                               ; preds = %2
  %12 = load i32, i32* @SRC_SF_S24, align 4
  store i32 %12, i32* %3, align 4
  br label %24

13:                                               ; preds = %2
  %14 = load i32, i32* @SRC_SF_S32, align 4
  store i32 %14, i32* %3, align 4
  br label %24

15:                                               ; preds = %2
  %16 = load i32, i32* @SRC_SF_F32, align 4
  store i32 %16, i32* %3, align 4
  br label %24

17:                                               ; preds = %2
  %18 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %19 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @dev_err(i32 %20, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @SRC_SF_S16, align 4
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %17, %15, %13, %11, %9, %7
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
