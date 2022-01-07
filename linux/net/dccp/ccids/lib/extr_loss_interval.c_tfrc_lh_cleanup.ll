; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/ccids/lib/extr_loss_interval.c_tfrc_lh_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/ccids/lib/extr_loss_interval.c_tfrc_lh_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tfrc_loss_hist = type { i64, i32** }

@LIH_SIZE = common dso_local global i64 0, align 8
@tfrc_lh_slab = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tfrc_lh_cleanup(%struct.tfrc_loss_hist* %0) #0 {
  %2 = alloca %struct.tfrc_loss_hist*, align 8
  store %struct.tfrc_loss_hist* %0, %struct.tfrc_loss_hist** %2, align 8
  %3 = load %struct.tfrc_loss_hist*, %struct.tfrc_loss_hist** %2, align 8
  %4 = call i32 @tfrc_lh_is_initialised(%struct.tfrc_loss_hist* %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %53

7:                                                ; preds = %1
  %8 = load %struct.tfrc_loss_hist*, %struct.tfrc_loss_hist** %2, align 8
  %9 = getelementptr inbounds %struct.tfrc_loss_hist, %struct.tfrc_loss_hist* %8, i32 0, i32 0
  store i64 0, i64* %9, align 8
  br label %10

10:                                               ; preds = %48, %7
  %11 = load %struct.tfrc_loss_hist*, %struct.tfrc_loss_hist** %2, align 8
  %12 = getelementptr inbounds %struct.tfrc_loss_hist, %struct.tfrc_loss_hist* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @LIH_SIZE, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %53

16:                                               ; preds = %10
  %17 = load %struct.tfrc_loss_hist*, %struct.tfrc_loss_hist** %2, align 8
  %18 = getelementptr inbounds %struct.tfrc_loss_hist, %struct.tfrc_loss_hist* %17, i32 0, i32 1
  %19 = load i32**, i32*** %18, align 8
  %20 = load %struct.tfrc_loss_hist*, %struct.tfrc_loss_hist** %2, align 8
  %21 = getelementptr inbounds %struct.tfrc_loss_hist, %struct.tfrc_loss_hist* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i64 @LIH_INDEX(i64 %22)
  %24 = getelementptr inbounds i32*, i32** %19, i64 %23
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %47

27:                                               ; preds = %16
  %28 = load i32, i32* @tfrc_lh_slab, align 4
  %29 = load %struct.tfrc_loss_hist*, %struct.tfrc_loss_hist** %2, align 8
  %30 = getelementptr inbounds %struct.tfrc_loss_hist, %struct.tfrc_loss_hist* %29, i32 0, i32 1
  %31 = load i32**, i32*** %30, align 8
  %32 = load %struct.tfrc_loss_hist*, %struct.tfrc_loss_hist** %2, align 8
  %33 = getelementptr inbounds %struct.tfrc_loss_hist, %struct.tfrc_loss_hist* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @LIH_INDEX(i64 %34)
  %36 = getelementptr inbounds i32*, i32** %31, i64 %35
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @kmem_cache_free(i32 %28, i32* %37)
  %39 = load %struct.tfrc_loss_hist*, %struct.tfrc_loss_hist** %2, align 8
  %40 = getelementptr inbounds %struct.tfrc_loss_hist, %struct.tfrc_loss_hist* %39, i32 0, i32 1
  %41 = load i32**, i32*** %40, align 8
  %42 = load %struct.tfrc_loss_hist*, %struct.tfrc_loss_hist** %2, align 8
  %43 = getelementptr inbounds %struct.tfrc_loss_hist, %struct.tfrc_loss_hist* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i64 @LIH_INDEX(i64 %44)
  %46 = getelementptr inbounds i32*, i32** %41, i64 %45
  store i32* null, i32** %46, align 8
  br label %47

47:                                               ; preds = %27, %16
  br label %48

48:                                               ; preds = %47
  %49 = load %struct.tfrc_loss_hist*, %struct.tfrc_loss_hist** %2, align 8
  %50 = getelementptr inbounds %struct.tfrc_loss_hist, %struct.tfrc_loss_hist* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* %50, align 8
  br label %10

53:                                               ; preds = %6, %10
  ret void
}

declare dso_local i32 @tfrc_lh_is_initialised(%struct.tfrc_loss_hist*) #1

declare dso_local i64 @LIH_INDEX(i64) #1

declare dso_local i32 @kmem_cache_free(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
