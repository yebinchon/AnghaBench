; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_table.c_mask_equal.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_table.c_mask_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sw_flow_mask = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sw_flow_mask*, %struct.sw_flow_mask*)* @mask_equal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mask_equal(%struct.sw_flow_mask* %0, %struct.sw_flow_mask* %1) #0 {
  %3 = alloca %struct.sw_flow_mask*, align 8
  %4 = alloca %struct.sw_flow_mask*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.sw_flow_mask* %0, %struct.sw_flow_mask** %3, align 8
  store %struct.sw_flow_mask* %1, %struct.sw_flow_mask** %4, align 8
  %7 = load %struct.sw_flow_mask*, %struct.sw_flow_mask** %3, align 8
  %8 = getelementptr inbounds %struct.sw_flow_mask, %struct.sw_flow_mask* %7, i32 0, i32 1
  %9 = load %struct.sw_flow_mask*, %struct.sw_flow_mask** %3, align 8
  %10 = getelementptr inbounds %struct.sw_flow_mask, %struct.sw_flow_mask* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %8, i64 %13
  store i32* %14, i32** %5, align 8
  %15 = load %struct.sw_flow_mask*, %struct.sw_flow_mask** %4, align 8
  %16 = getelementptr inbounds %struct.sw_flow_mask, %struct.sw_flow_mask* %15, i32 0, i32 1
  %17 = load %struct.sw_flow_mask*, %struct.sw_flow_mask** %4, align 8
  %18 = getelementptr inbounds %struct.sw_flow_mask, %struct.sw_flow_mask* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %16, i64 %21
  store i32* %22, i32** %6, align 8
  %23 = load %struct.sw_flow_mask*, %struct.sw_flow_mask** %3, align 8
  %24 = getelementptr inbounds %struct.sw_flow_mask, %struct.sw_flow_mask* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.sw_flow_mask*, %struct.sw_flow_mask** %4, align 8
  %28 = getelementptr inbounds %struct.sw_flow_mask, %struct.sw_flow_mask* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %26, %30
  br i1 %31, label %32, label %50

32:                                               ; preds = %2
  %33 = load %struct.sw_flow_mask*, %struct.sw_flow_mask** %3, align 8
  %34 = getelementptr inbounds %struct.sw_flow_mask, %struct.sw_flow_mask* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.sw_flow_mask*, %struct.sw_flow_mask** %4, align 8
  %38 = getelementptr inbounds %struct.sw_flow_mask, %struct.sw_flow_mask* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %36, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %32
  %43 = load i32*, i32** %5, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = load %struct.sw_flow_mask*, %struct.sw_flow_mask** %3, align 8
  %46 = getelementptr inbounds %struct.sw_flow_mask, %struct.sw_flow_mask* %45, i32 0, i32 0
  %47 = call i32 @range_n_bytes(%struct.TYPE_2__* %46)
  %48 = call i64 @memcmp(i32* %43, i32* %44, i32 %47)
  %49 = icmp eq i64 %48, 0
  br label %50

50:                                               ; preds = %42, %32, %2
  %51 = phi i1 [ false, %32 ], [ false, %2 ], [ %49, %42 ]
  %52 = zext i1 %51 to i32
  ret i32 %52
}

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @range_n_bytes(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
