; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c_fl_set_masked_key.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c_fl_set_masked_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fl_flow_key = type { i32 }
%struct.fl_flow_mask = type { %struct.fl_flow_key }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fl_flow_key*, %struct.fl_flow_key*, %struct.fl_flow_mask*)* @fl_set_masked_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fl_set_masked_key(%struct.fl_flow_key* %0, %struct.fl_flow_key* %1, %struct.fl_flow_mask* %2) #0 {
  %4 = alloca %struct.fl_flow_key*, align 8
  %5 = alloca %struct.fl_flow_key*, align 8
  %6 = alloca %struct.fl_flow_mask*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  store %struct.fl_flow_key* %0, %struct.fl_flow_key** %4, align 8
  store %struct.fl_flow_key* %1, %struct.fl_flow_key** %5, align 8
  store %struct.fl_flow_mask* %2, %struct.fl_flow_mask** %6, align 8
  %11 = load %struct.fl_flow_key*, %struct.fl_flow_key** %5, align 8
  %12 = load %struct.fl_flow_mask*, %struct.fl_flow_mask** %6, align 8
  %13 = call i8* @fl_key_get_start(%struct.fl_flow_key* %11, %struct.fl_flow_mask* %12)
  %14 = bitcast i8* %13 to i64*
  store i64* %14, i64** %7, align 8
  %15 = load %struct.fl_flow_mask*, %struct.fl_flow_mask** %6, align 8
  %16 = getelementptr inbounds %struct.fl_flow_mask, %struct.fl_flow_mask* %15, i32 0, i32 0
  %17 = load %struct.fl_flow_mask*, %struct.fl_flow_mask** %6, align 8
  %18 = call i8* @fl_key_get_start(%struct.fl_flow_key* %16, %struct.fl_flow_mask* %17)
  %19 = bitcast i8* %18 to i64*
  store i64* %19, i64** %8, align 8
  %20 = load %struct.fl_flow_key*, %struct.fl_flow_key** %4, align 8
  %21 = load %struct.fl_flow_mask*, %struct.fl_flow_mask** %6, align 8
  %22 = call i8* @fl_key_get_start(%struct.fl_flow_key* %20, %struct.fl_flow_mask* %21)
  %23 = bitcast i8* %22 to i64*
  store i64* %23, i64** %9, align 8
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %39, %3
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.fl_flow_mask*, %struct.fl_flow_mask** %6, align 8
  %27 = call i32 @fl_mask_range(%struct.fl_flow_mask* %26)
  %28 = icmp slt i32 %25, %27
  br i1 %28, label %29, label %44

29:                                               ; preds = %24
  %30 = load i64*, i64** %7, align 8
  %31 = getelementptr inbounds i64, i64* %30, i32 1
  store i64* %31, i64** %7, align 8
  %32 = load i64, i64* %30, align 8
  %33 = load i64*, i64** %8, align 8
  %34 = getelementptr inbounds i64, i64* %33, i32 1
  store i64* %34, i64** %8, align 8
  %35 = load i64, i64* %33, align 8
  %36 = and i64 %32, %35
  %37 = load i64*, i64** %9, align 8
  %38 = getelementptr inbounds i64, i64* %37, i32 1
  store i64* %38, i64** %9, align 8
  store i64 %36, i64* %37, align 8
  br label %39

39:                                               ; preds = %29
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = add i64 %41, 8
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %10, align 4
  br label %24

44:                                               ; preds = %24
  ret void
}

declare dso_local i8* @fl_key_get_start(%struct.fl_flow_key*, %struct.fl_flow_mask*) #1

declare dso_local i32 @fl_mask_range(%struct.fl_flow_mask*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
