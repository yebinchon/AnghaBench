; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_table.c_cmp_key.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_table.c_cmp_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sw_flow_key = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sw_flow_key*, %struct.sw_flow_key*, i32, i32)* @cmp_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmp_key(%struct.sw_flow_key* %0, %struct.sw_flow_key* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sw_flow_key*, align 8
  %6 = alloca %struct.sw_flow_key*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.sw_flow_key* %0, %struct.sw_flow_key** %5, align 8
  store %struct.sw_flow_key* %1, %struct.sw_flow_key** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %14 = bitcast %struct.sw_flow_key* %13 to i32*
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = bitcast i32* %17 to i64*
  store i64* %18, i64** %9, align 8
  %19 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %20 = bitcast %struct.sw_flow_key* %19 to i32*
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = bitcast i32* %23 to i64*
  store i64* %24, i64** %10, align 8
  store i64 0, i64* %11, align 8
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %12, align 4
  br label %26

26:                                               ; preds = %40, %4
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %26
  %31 = load i64*, i64** %9, align 8
  %32 = getelementptr inbounds i64, i64* %31, i32 1
  store i64* %32, i64** %9, align 8
  %33 = load i64, i64* %31, align 8
  %34 = load i64*, i64** %10, align 8
  %35 = getelementptr inbounds i64, i64* %34, i32 1
  store i64* %35, i64** %10, align 8
  %36 = load i64, i64* %34, align 8
  %37 = xor i64 %33, %36
  %38 = load i64, i64* %11, align 8
  %39 = or i64 %38, %37
  store i64 %39, i64* %11, align 8
  br label %40

40:                                               ; preds = %30
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = add i64 %42, 8
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %12, align 4
  br label %26

45:                                               ; preds = %26
  %46 = load i64, i64* %11, align 8
  %47 = icmp eq i64 %46, 0
  %48 = zext i1 %47 to i32
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
