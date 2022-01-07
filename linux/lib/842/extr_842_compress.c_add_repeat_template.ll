; ModuleID = '/home/carl/AnghaBench/linux/lib/842/extr_842_compress.c_add_repeat_template.c'
source_filename = "/home/carl/AnghaBench/linux/lib/842/extr_842_compress.c_add_repeat_template.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sw842_param = type { i32 }

@REPEAT_BITS_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@OP_REPEAT = common dso_local global i64 0, align 8
@OP_BITS = common dso_local global i32 0, align 4
@REPEAT_BITS = common dso_local global i32 0, align 4
@sw842_template_counts = common dso_local global i64 0, align 8
@template_repeat_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sw842_param*, i64)* @add_repeat_template to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_repeat_template(%struct.sw842_param* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sw842_param*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.sw842_param* %0, %struct.sw842_param** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load i64, i64* %5, align 8
  %11 = add nsw i64 %10, -1
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* @REPEAT_BITS_MAX, align 8
  %13 = icmp sgt i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %9, %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %41

17:                                               ; preds = %9
  %18 = load %struct.sw842_param*, %struct.sw842_param** %4, align 8
  %19 = load i64, i64* @OP_REPEAT, align 8
  %20 = load i32, i32* @OP_BITS, align 4
  %21 = call i32 @add_bits(%struct.sw842_param* %18, i64 %19, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %3, align 4
  br label %41

26:                                               ; preds = %17
  %27 = load %struct.sw842_param*, %struct.sw842_param** %4, align 8
  %28 = load i64, i64* %5, align 8
  %29 = load i32, i32* @REPEAT_BITS, align 4
  %30 = call i32 @add_bits(%struct.sw842_param* %27, i64 %28, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %3, align 4
  br label %41

35:                                               ; preds = %26
  %36 = load i64, i64* @sw842_template_counts, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = call i32 @atomic_inc(i32* @template_repeat_count)
  br label %40

40:                                               ; preds = %38, %35
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %33, %24, %14
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @add_bits(%struct.sw842_param*, i64, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
