; ModuleID = '/home/carl/AnghaBench/linux/lib/842/extr_842_compress.c___split_add_bits.c'
source_filename = "/home/carl/AnghaBench/linux/lib/842/extr_842_compress.c___split_add_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sw842_param = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sw842_param*, i32, i32, i32)* @__split_add_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__split_add_bits(%struct.sw842_param* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sw842_param*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sw842_param* %0, %struct.sw842_param** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp sle i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %5, align 4
  br label %39

17:                                               ; preds = %4
  %18 = load %struct.sw842_param*, %struct.sw842_param** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %9, align 4
  %21 = ashr i32 %19, %20
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = sub nsw i32 %22, %23
  %25 = call i32 @add_bits(%struct.sw842_param* %18, i32 %21, i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %17
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %5, align 4
  br label %39

30:                                               ; preds = %17
  %31 = load %struct.sw842_param*, %struct.sw842_param** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %9, align 4
  %34 = sub nsw i32 %33, 1
  %35 = call i32 @GENMASK_ULL(i32 %34, i32 0)
  %36 = and i32 %32, %35
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @add_bits(%struct.sw842_param* %31, i32 %36, i32 %37)
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %30, %28, %14
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i32 @add_bits(%struct.sw842_param*, i32, i32) #1

declare dso_local i32 @GENMASK_ULL(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
