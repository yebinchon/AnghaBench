; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/ccids/lib/extr_loss_interval.c_tfrc_lh_calc_i_mean.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/ccids/lib/extr_loss_interval.c_tfrc_lh_calc_i_mean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tfrc_loss_hist = type { i32 }

@tfrc_lh_weights = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tfrc_loss_hist*)* @tfrc_lh_calc_i_mean to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tfrc_lh_calc_i_mean(%struct.tfrc_loss_hist* %0) #0 {
  %2 = alloca %struct.tfrc_loss_hist*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tfrc_loss_hist* %0, %struct.tfrc_loss_hist** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %9 = load %struct.tfrc_loss_hist*, %struct.tfrc_loss_hist** %2, align 8
  %10 = call i32 @tfrc_lh_length(%struct.tfrc_loss_hist* %9)
  %11 = sub nsw i32 %10, 1
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp sle i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %70

15:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %59, %15
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp sle i32 %17, %18
  br i1 %19, label %20, label %62

20:                                               ; preds = %16
  %21 = load %struct.tfrc_loss_hist*, %struct.tfrc_loss_hist** %2, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @tfrc_lh_get_interval(%struct.tfrc_loss_hist* %21, i32 %22)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %44

27:                                               ; preds = %20
  %28 = load i32, i32* %3, align 4
  %29 = load i32*, i32** @tfrc_lh_weights, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = mul nsw i32 %28, %33
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, %34
  store i32 %36, i32* %4, align 4
  %37 = load i32*, i32** @tfrc_lh_weights, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %27, %20
  %45 = load i32, i32* %7, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %44
  %48 = load i32, i32* %3, align 4
  %49 = load i32*, i32** @tfrc_lh_weights, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sub nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = mul nsw i32 %48, %54
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, %55
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %47, %44
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %16

62:                                               ; preds = %16
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @max(i32 %63, i32 %64)
  %66 = load i32, i32* %6, align 4
  %67 = sdiv i32 %65, %66
  %68 = load %struct.tfrc_loss_hist*, %struct.tfrc_loss_hist** %2, align 8
  %69 = getelementptr inbounds %struct.tfrc_loss_hist, %struct.tfrc_loss_hist* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  br label %70

70:                                               ; preds = %62, %14
  ret void
}

declare dso_local i32 @tfrc_lh_length(%struct.tfrc_loss_hist*) #1

declare dso_local i32 @tfrc_lh_get_interval(%struct.tfrc_loss_hist*, i32) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
