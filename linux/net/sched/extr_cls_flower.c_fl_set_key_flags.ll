; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c_fl_set_key_flags.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c_fl_set_key_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }

@TCA_FLOWER_KEY_FLAGS_MASK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@TCA_FLOWER_KEY_FLAGS = common dso_local global i64 0, align 8
@TCA_FLOWER_KEY_FLAGS_IS_FRAGMENT = common dso_local global i32 0, align 4
@FLOW_DIS_IS_FRAGMENT = common dso_local global i32 0, align 4
@TCA_FLOWER_KEY_FLAGS_FRAG_IS_FIRST = common dso_local global i32 0, align 4
@FLOW_DIS_FIRST_FRAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr**, i64*, i64*)* @fl_set_key_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fl_set_key_flags(%struct.nlattr** %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nlattr**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.nlattr** %0, %struct.nlattr*** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %11 = load i64, i64* @TCA_FLOWER_KEY_FLAGS_MASK, align 8
  %12 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %10, i64 %11
  %13 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %14 = icmp ne %struct.nlattr* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %47

18:                                               ; preds = %3
  %19 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %20 = load i64, i64* @TCA_FLOWER_KEY_FLAGS, align 8
  %21 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %19, i64 %20
  %22 = load %struct.nlattr*, %struct.nlattr** %21, align 8
  %23 = call i32 @nla_get_u32(%struct.nlattr* %22)
  %24 = call i64 @be32_to_cpu(i32 %23)
  store i64 %24, i64* %8, align 8
  %25 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %26 = load i64, i64* @TCA_FLOWER_KEY_FLAGS_MASK, align 8
  %27 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %26
  %28 = load %struct.nlattr*, %struct.nlattr** %27, align 8
  %29 = call i32 @nla_get_u32(%struct.nlattr* %28)
  %30 = call i64 @be32_to_cpu(i32 %29)
  store i64 %30, i64* %9, align 8
  %31 = load i64*, i64** %6, align 8
  store i64 0, i64* %31, align 8
  %32 = load i64*, i64** %7, align 8
  store i64 0, i64* %32, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load i64*, i64** %6, align 8
  %36 = load i64*, i64** %7, align 8
  %37 = load i32, i32* @TCA_FLOWER_KEY_FLAGS_IS_FRAGMENT, align 4
  %38 = load i32, i32* @FLOW_DIS_IS_FRAGMENT, align 4
  %39 = call i32 @fl_set_key_flag(i64 %33, i64 %34, i64* %35, i64* %36, i32 %37, i32 %38)
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* %9, align 8
  %42 = load i64*, i64** %6, align 8
  %43 = load i64*, i64** %7, align 8
  %44 = load i32, i32* @TCA_FLOWER_KEY_FLAGS_FRAG_IS_FIRST, align 4
  %45 = load i32, i32* @FLOW_DIS_FIRST_FRAG, align 4
  %46 = call i32 @fl_set_key_flag(i64 %40, i64 %41, i64* %42, i64* %43, i32 %44, i32 %45)
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %18, %15
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local i32 @fl_set_key_flag(i64, i64, i64*, i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
