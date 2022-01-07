; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_flex_proportions.c_fprop_reflect_period_single.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_flex_proportions.c_fprop_reflect_period_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fprop_global = type { i32 }
%struct.fprop_local_single = type { i32, i32, i32 }

@BITS_PER_LONG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fprop_global*, %struct.fprop_local_single*)* @fprop_reflect_period_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fprop_reflect_period_single(%struct.fprop_global* %0, %struct.fprop_local_single* %1) #0 {
  %3 = alloca %struct.fprop_global*, align 8
  %4 = alloca %struct.fprop_local_single*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.fprop_global* %0, %struct.fprop_global** %3, align 8
  store %struct.fprop_local_single* %1, %struct.fprop_local_single** %4, align 8
  %7 = load %struct.fprop_global*, %struct.fprop_global** %3, align 8
  %8 = getelementptr inbounds %struct.fprop_global, %struct.fprop_global* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %5, align 4
  %10 = load %struct.fprop_local_single*, %struct.fprop_local_single** %4, align 8
  %11 = getelementptr inbounds %struct.fprop_local_single, %struct.fprop_local_single* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %60

16:                                               ; preds = %2
  %17 = load %struct.fprop_local_single*, %struct.fprop_local_single** %4, align 8
  %18 = getelementptr inbounds %struct.fprop_local_single, %struct.fprop_local_single* %17, i32 0, i32 2
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @raw_spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.fprop_local_single*, %struct.fprop_local_single** %4, align 8
  %22 = getelementptr inbounds %struct.fprop_local_single, %struct.fprop_local_single* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp uge i32 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %16
  %27 = load %struct.fprop_local_single*, %struct.fprop_local_single** %4, align 8
  %28 = getelementptr inbounds %struct.fprop_local_single, %struct.fprop_local_single* %27, i32 0, i32 2
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @raw_spin_unlock_irqrestore(i32* %28, i64 %29)
  br label %60

31:                                               ; preds = %16
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.fprop_local_single*, %struct.fprop_local_single** %4, align 8
  %34 = getelementptr inbounds %struct.fprop_local_single, %struct.fprop_local_single* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sub i32 %32, %35
  %37 = load i32, i32* @BITS_PER_LONG, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %31
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.fprop_local_single*, %struct.fprop_local_single** %4, align 8
  %42 = getelementptr inbounds %struct.fprop_local_single, %struct.fprop_local_single* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sub i32 %40, %43
  %45 = load %struct.fprop_local_single*, %struct.fprop_local_single** %4, align 8
  %46 = getelementptr inbounds %struct.fprop_local_single, %struct.fprop_local_single* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = lshr i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %52

49:                                               ; preds = %31
  %50 = load %struct.fprop_local_single*, %struct.fprop_local_single** %4, align 8
  %51 = getelementptr inbounds %struct.fprop_local_single, %struct.fprop_local_single* %50, i32 0, i32 1
  store i32 0, i32* %51, align 4
  br label %52

52:                                               ; preds = %49, %39
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.fprop_local_single*, %struct.fprop_local_single** %4, align 8
  %55 = getelementptr inbounds %struct.fprop_local_single, %struct.fprop_local_single* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load %struct.fprop_local_single*, %struct.fprop_local_single** %4, align 8
  %57 = getelementptr inbounds %struct.fprop_local_single, %struct.fprop_local_single* %56, i32 0, i32 2
  %58 = load i64, i64* %6, align 8
  %59 = call i32 @raw_spin_unlock_irqrestore(i32* %57, i64 %58)
  br label %60

60:                                               ; preds = %52, %26, %15
  ret void
}

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
