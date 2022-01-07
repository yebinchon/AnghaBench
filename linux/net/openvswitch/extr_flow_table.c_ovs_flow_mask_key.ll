; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_table.c_ovs_flow_mask_key.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_table.c_ovs_flow_mask_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sw_flow_key = type { i32 }
%struct.sw_flow_mask = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ovs_flow_mask_key(%struct.sw_flow_key* %0, %struct.sw_flow_key* %1, i32 %2, %struct.sw_flow_mask* %3) #0 {
  %5 = alloca %struct.sw_flow_key*, align 8
  %6 = alloca %struct.sw_flow_key*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sw_flow_mask*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  store %struct.sw_flow_key* %0, %struct.sw_flow_key** %5, align 8
  store %struct.sw_flow_key* %1, %struct.sw_flow_key** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.sw_flow_mask* %3, %struct.sw_flow_mask** %8, align 8
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  br label %23

18:                                               ; preds = %4
  %19 = load %struct.sw_flow_mask*, %struct.sw_flow_mask** %8, align 8
  %20 = getelementptr inbounds %struct.sw_flow_mask, %struct.sw_flow_mask* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  br label %23

23:                                               ; preds = %18, %17
  %24 = phi i32 [ 0, %17 ], [ %22, %18 ]
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %33

28:                                               ; preds = %23
  %29 = load %struct.sw_flow_mask*, %struct.sw_flow_mask** %8, align 8
  %30 = getelementptr inbounds %struct.sw_flow_mask, %struct.sw_flow_mask* %29, i32 0, i32 1
  %31 = call i32 @range_n_bytes(%struct.TYPE_2__* %30)
  %32 = sext i32 %31 to i64
  br label %33

33:                                               ; preds = %28, %27
  %34 = phi i64 [ 4, %27 ], [ %32, %28 ]
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %10, align 4
  %36 = load %struct.sw_flow_mask*, %struct.sw_flow_mask** %8, align 8
  %37 = getelementptr inbounds %struct.sw_flow_mask, %struct.sw_flow_mask* %36, i32 0, i32 0
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = bitcast i32* %40 to i64*
  store i64* %41, i64** %11, align 8
  %42 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %43 = bitcast %struct.sw_flow_key* %42 to i32*
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = bitcast i32* %46 to i64*
  store i64* %47, i64** %12, align 8
  %48 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %49 = bitcast %struct.sw_flow_key* %48 to i32*
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = bitcast i32* %52 to i64*
  store i64* %53, i64** %13, align 8
  store i32 0, i32* %14, align 4
  br label %54

54:                                               ; preds = %68, %33
  %55 = load i32, i32* %14, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %73

58:                                               ; preds = %54
  %59 = load i64*, i64** %12, align 8
  %60 = getelementptr inbounds i64, i64* %59, i32 1
  store i64* %60, i64** %12, align 8
  %61 = load i64, i64* %59, align 8
  %62 = load i64*, i64** %11, align 8
  %63 = getelementptr inbounds i64, i64* %62, i32 1
  store i64* %63, i64** %11, align 8
  %64 = load i64, i64* %62, align 8
  %65 = and i64 %61, %64
  %66 = load i64*, i64** %13, align 8
  %67 = getelementptr inbounds i64, i64* %66, i32 1
  store i64* %67, i64** %13, align 8
  store i64 %65, i64* %66, align 8
  br label %68

68:                                               ; preds = %58
  %69 = load i32, i32* %14, align 4
  %70 = sext i32 %69 to i64
  %71 = add i64 %70, 8
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %14, align 4
  br label %54

73:                                               ; preds = %54
  ret void
}

declare dso_local i32 @range_n_bytes(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
