; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c_fl_mask_fits_tmplt.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c_fl_mask_fits_tmplt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fl_flow_tmplt = type { i32 }
%struct.fl_flow_mask = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fl_flow_tmplt*, %struct.fl_flow_mask*)* @fl_mask_fits_tmplt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fl_mask_fits_tmplt(%struct.fl_flow_tmplt* %0, %struct.fl_flow_mask* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fl_flow_tmplt*, align 8
  %5 = alloca %struct.fl_flow_mask*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  store %struct.fl_flow_tmplt* %0, %struct.fl_flow_tmplt** %4, align 8
  store %struct.fl_flow_mask* %1, %struct.fl_flow_mask** %5, align 8
  %9 = load %struct.fl_flow_mask*, %struct.fl_flow_mask** %5, align 8
  %10 = getelementptr inbounds %struct.fl_flow_mask, %struct.fl_flow_mask* %9, i32 0, i32 0
  %11 = load %struct.fl_flow_mask*, %struct.fl_flow_mask** %5, align 8
  %12 = call i64* @fl_key_get_start(i32* %10, %struct.fl_flow_mask* %11)
  store i64* %12, i64** %6, align 8
  %13 = load %struct.fl_flow_tmplt*, %struct.fl_flow_tmplt** %4, align 8
  %14 = icmp ne %struct.fl_flow_tmplt* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %44

16:                                               ; preds = %2
  %17 = load %struct.fl_flow_tmplt*, %struct.fl_flow_tmplt** %4, align 8
  %18 = getelementptr inbounds %struct.fl_flow_tmplt, %struct.fl_flow_tmplt* %17, i32 0, i32 0
  %19 = load %struct.fl_flow_mask*, %struct.fl_flow_mask** %5, align 8
  %20 = call i64* @fl_key_get_start(i32* %18, %struct.fl_flow_mask* %19)
  store i64* %20, i64** %7, align 8
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %38, %16
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.fl_flow_mask*, %struct.fl_flow_mask** %5, align 8
  %24 = call i32 @fl_mask_range(%struct.fl_flow_mask* %23)
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %26, label %43

26:                                               ; preds = %21
  %27 = load i64*, i64** %7, align 8
  %28 = getelementptr inbounds i64, i64* %27, i32 1
  store i64* %28, i64** %7, align 8
  %29 = load i64, i64* %27, align 8
  %30 = xor i64 %29, -1
  %31 = load i64*, i64** %6, align 8
  %32 = getelementptr inbounds i64, i64* %31, i32 1
  store i64* %32, i64** %6, align 8
  %33 = load i64, i64* %31, align 8
  %34 = and i64 %30, %33
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %44

37:                                               ; preds = %26
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = add i64 %40, 8
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %8, align 4
  br label %21

43:                                               ; preds = %21
  store i32 1, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %36, %15
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i64* @fl_key_get_start(i32*, %struct.fl_flow_mask*) #1

declare dso_local i32 @fl_mask_range(%struct.fl_flow_mask*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
