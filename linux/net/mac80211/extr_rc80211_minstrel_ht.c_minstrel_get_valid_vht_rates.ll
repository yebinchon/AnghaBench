; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_get_valid_vht_rates.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_get_valid_vht_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BW_20 = common dso_local global i32 0, align 4
@BW_80 = common dso_local global i32 0, align 4
@BW_40 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @minstrel_get_valid_vht_rates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @minstrel_get_valid_vht_rates(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @BW_20, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %20

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 3
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 6
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = call i32 @BIT(i32 9)
  store i32 %18, i32* %7, align 4
  br label %19

19:                                               ; preds = %17, %14, %11
  br label %46

20:                                               ; preds = %3
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @BW_80, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %39

24:                                               ; preds = %20
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %25, 3
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %28, 7
  br i1 %29, label %30, label %32

30:                                               ; preds = %27, %24
  %31 = call i32 @BIT(i32 6)
  store i32 %31, i32* %7, align 4
  br label %38

32:                                               ; preds = %27
  %33 = load i32, i32* %5, align 4
  %34 = icmp eq i32 %33, 6
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = call i32 @BIT(i32 9)
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %35, %32
  br label %38

38:                                               ; preds = %37, %30
  br label %45

39:                                               ; preds = %20
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @BW_40, align 4
  %42 = icmp ne i32 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @WARN_ON(i32 %43)
  br label %45

45:                                               ; preds = %39, %38
  br label %46

46:                                               ; preds = %45, %19
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @le16_to_cpu(i32 %47)
  %49 = load i32, i32* %5, align 4
  %50 = sub nsw i32 %49, 1
  %51 = mul nsw i32 2, %50
  %52 = ashr i32 %48, %51
  %53 = and i32 %52, 3
  switch i32 %53, label %61 [
    i32 130, label %54
    i32 129, label %57
    i32 128, label %60
  ]

54:                                               ; preds = %46
  %55 = load i32, i32* %7, align 4
  %56 = or i32 %55, 768
  store i32 %56, i32* %7, align 4
  br label %62

57:                                               ; preds = %46
  %58 = load i32, i32* %7, align 4
  %59 = or i32 %58, 512
  store i32 %59, i32* %7, align 4
  br label %62

60:                                               ; preds = %46
  br label %62

61:                                               ; preds = %46
  store i32 1023, i32* %7, align 4
  br label %62

62:                                               ; preds = %61, %60, %57, %54
  %63 = load i32, i32* %7, align 4
  %64 = xor i32 %63, -1
  %65 = and i32 1023, %64
  ret i32 %65
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
