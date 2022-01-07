; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_test_xdp_meta.c_ing_cls.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_test_xdp_meta.c_ing_cls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__sk_buff = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@TC_ACT_SHOT = common dso_local global i32 0, align 4
@TC_ACT_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ing_cls(%struct.__sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.__sk_buff*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.__sk_buff* %0, %struct.__sk_buff** %3, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.__sk_buff*, %struct.__sk_buff** %3, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = call i32* @ctx_ptr(%struct.__sk_buff* %8, i32* %9)
  store i32* %10, i32** %5, align 8
  %11 = load %struct.__sk_buff*, %struct.__sk_buff** %3, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = call i32* @ctx_ptr(%struct.__sk_buff* %11, i32* %12)
  store i32* %13, i32** %6, align 8
  %14 = load %struct.__sk_buff*, %struct.__sk_buff** %3, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call i32* @ctx_ptr(%struct.__sk_buff* %14, i32* %15)
  store i32* %16, i32** %4, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* @ETH_ALEN, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32*, i32** %6, align 8
  %22 = icmp ugt i32* %20, %21
  br i1 %22, label %31, label %23

23:                                               ; preds = %1
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* @ETH_ALEN, align 4
  %26 = call i32 @round_up(i32 %25, i32 4)
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = load i32*, i32** %4, align 8
  %30 = icmp ugt i32* %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %23, %1
  %32 = load i32, i32* @TC_ACT_SHOT, align 4
  store i32 %32, i32* %2, align 4
  br label %60

33:                                               ; preds = %23
  %34 = load i32*, i32** %5, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %4, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = xor i32 %36, %39
  %41 = load i32, i32* %7, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %7, align 4
  %43 = load i32*, i32** %5, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %4, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 2
  %48 = load i32, i32* %47, align 4
  %49 = xor i32 %45, %48
  %50 = load i32, i32* %7, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %33
  %55 = load i32, i32* @TC_ACT_SHOT, align 4
  br label %58

56:                                               ; preds = %33
  %57 = load i32, i32* @TC_ACT_OK, align 4
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i32 [ %55, %54 ], [ %57, %56 ]
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %58, %31
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32* @ctx_ptr(%struct.__sk_buff*, i32*) #1

declare dso_local i32 @round_up(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
