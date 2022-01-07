; ModuleID = '/home/carl/AnghaBench/linux/lib/842/extr_842_compress.c_add_short_data_template.c'
source_filename = "/home/carl/AnghaBench/linux/lib/842/extr_842_compress.c_add_short_data_template.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sw842_param = type { i32* }

@SHORT_DATA_BITS_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@OP_SHORT_DATA = common dso_local global i32 0, align 4
@OP_BITS = common dso_local global i32 0, align 4
@SHORT_DATA_BITS = common dso_local global i32 0, align 4
@sw842_template_counts = common dso_local global i64 0, align 8
@template_short_data_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sw842_param*, i32)* @add_short_data_template to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_short_data_template(%struct.sw842_param* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sw842_param*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sw842_param* %0, %struct.sw842_param** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @SHORT_DATA_BITS_MAX, align 4
  %13 = icmp sgt i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %10, %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %64

17:                                               ; preds = %10
  %18 = load %struct.sw842_param*, %struct.sw842_param** %4, align 8
  %19 = load i32, i32* @OP_SHORT_DATA, align 4
  %20 = load i32, i32* @OP_BITS, align 4
  %21 = call i32 @add_bits(%struct.sw842_param* %18, i32 %19, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %3, align 4
  br label %64

26:                                               ; preds = %17
  %27 = load %struct.sw842_param*, %struct.sw842_param** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @SHORT_DATA_BITS, align 4
  %30 = call i32 @add_bits(%struct.sw842_param* %27, i32 %28, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %3, align 4
  br label %64

35:                                               ; preds = %26
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %55, %35
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %58

40:                                               ; preds = %36
  %41 = load %struct.sw842_param*, %struct.sw842_param** %4, align 8
  %42 = load %struct.sw842_param*, %struct.sw842_param** %4, align 8
  %43 = getelementptr inbounds %struct.sw842_param, %struct.sw842_param* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @add_bits(%struct.sw842_param* %41, i32 %48, i32 8)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %40
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %3, align 4
  br label %64

54:                                               ; preds = %40
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %36

58:                                               ; preds = %36
  %59 = load i64, i64* @sw842_template_counts, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = call i32 @atomic_inc(i32* @template_short_data_count)
  br label %63

63:                                               ; preds = %61, %58
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %52, %33, %24, %14
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @add_bits(%struct.sw842_param*, i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
