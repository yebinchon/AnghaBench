; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c_fl_mask_update_range.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c_fl_mask_update_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fl_flow_mask = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fl_flow_mask*)* @fl_mask_update_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fl_mask_update_range(%struct.fl_flow_mask* %0) #0 {
  %2 = alloca %struct.fl_flow_mask*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.fl_flow_mask* %0, %struct.fl_flow_mask** %2, align 8
  %8 = load %struct.fl_flow_mask*, %struct.fl_flow_mask** %2, align 8
  %9 = getelementptr inbounds %struct.fl_flow_mask, %struct.fl_flow_mask* %8, i32 0, i32 1
  %10 = bitcast i32* %9 to i64*
  store i64* %10, i64** %3, align 8
  store i64 4, i64* %4, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %5, align 8
  br label %11

11:                                               ; preds = %24, %1
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* %4, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %11
  %16 = load i64*, i64** %3, align 8
  %17 = load i64, i64* %5, align 8
  %18 = getelementptr inbounds i64, i64* %16, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i64, i64* %5, align 8
  store i64 %22, i64* %6, align 8
  br label %27

23:                                               ; preds = %15
  br label %24

24:                                               ; preds = %23
  %25 = load i64, i64* %5, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %5, align 8
  br label %11

27:                                               ; preds = %21, %11
  %28 = load i64, i64* %6, align 8
  store i64 %28, i64* %7, align 8
  %29 = load i64, i64* %4, align 8
  %30 = sub i64 %29, 1
  store i64 %30, i64* %5, align 8
  br label %31

31:                                               ; preds = %44, %27
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* %6, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %47

35:                                               ; preds = %31
  %36 = load i64*, i64** %3, align 8
  %37 = load i64, i64* %5, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i64, i64* %5, align 8
  store i64 %42, i64* %7, align 8
  br label %47

43:                                               ; preds = %35
  br label %44

44:                                               ; preds = %43
  %45 = load i64, i64* %5, align 8
  %46 = add i64 %45, -1
  store i64 %46, i64* %5, align 8
  br label %31

47:                                               ; preds = %41, %31
  %48 = load i64, i64* %6, align 8
  %49 = call i32 @rounddown(i64 %48, i32 8)
  %50 = load %struct.fl_flow_mask*, %struct.fl_flow_mask** %2, align 8
  %51 = getelementptr inbounds %struct.fl_flow_mask, %struct.fl_flow_mask* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  store i32 %49, i32* %52, align 4
  %53 = load i64, i64* %7, align 8
  %54 = add i64 %53, 1
  %55 = call i32 @roundup(i64 %54, i32 8)
  %56 = load %struct.fl_flow_mask*, %struct.fl_flow_mask** %2, align 8
  %57 = getelementptr inbounds %struct.fl_flow_mask, %struct.fl_flow_mask* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 4
  ret void
}

declare dso_local i32 @rounddown(i64, i32) #1

declare dso_local i32 @roundup(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
