; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5645.c_rt5645_validate_hweq.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5645.c_rt5645_validate_hweq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RT5645_EQ_CTRL2 = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i16)* @rt5645_validate_hweq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5645_validate_hweq(i16 zeroext %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i16, align 2
  store i16 %0, i16* %3, align 2
  %4 = load i16, i16* %3, align 2
  %5 = zext i16 %4 to i32
  %6 = icmp sge i32 %5, 420
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load i16, i16* %3, align 2
  %9 = zext i16 %8 to i32
  %10 = icmp sle i32 %9, 461
  br label %11

11:                                               ; preds = %7, %1
  %12 = phi i1 [ false, %1 ], [ %10, %7 ]
  %13 = zext i1 %12 to i32
  %14 = load i16, i16* %3, align 2
  %15 = zext i16 %14 to i32
  %16 = icmp sge i32 %15, 485
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = load i16, i16* %3, align 2
  %19 = zext i16 %18 to i32
  %20 = icmp sle i32 %19, 504
  br label %21

21:                                               ; preds = %17, %11
  %22 = phi i1 [ false, %11 ], [ %20, %17 ]
  %23 = zext i1 %22 to i32
  %24 = or i32 %13, %23
  %25 = load i16, i16* %3, align 2
  %26 = zext i16 %25 to i32
  %27 = load i16, i16* @RT5645_EQ_CTRL2, align 2
  %28 = zext i16 %27 to i32
  %29 = icmp eq i32 %26, %28
  %30 = zext i1 %29 to i32
  %31 = or i32 %24, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %21
  store i32 1, i32* %2, align 4
  br label %35

34:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %33
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
