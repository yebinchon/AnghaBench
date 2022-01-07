; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c_fl_ht_insert_unique.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c_fl_ht_insert_unique.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cls_fl_filter = type { i32, %struct.fl_flow_mask* }
%struct.fl_flow_mask = type { i32, i32 }

@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cls_fl_filter*, %struct.cls_fl_filter*, i32*)* @fl_ht_insert_unique to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fl_ht_insert_unique(%struct.cls_fl_filter* %0, %struct.cls_fl_filter* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cls_fl_filter*, align 8
  %6 = alloca %struct.cls_fl_filter*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.fl_flow_mask*, align 8
  %9 = alloca i32, align 4
  store %struct.cls_fl_filter* %0, %struct.cls_fl_filter** %5, align 8
  store %struct.cls_fl_filter* %1, %struct.cls_fl_filter** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %5, align 8
  %11 = getelementptr inbounds %struct.cls_fl_filter, %struct.cls_fl_filter* %10, i32 0, i32 1
  %12 = load %struct.fl_flow_mask*, %struct.fl_flow_mask** %11, align 8
  store %struct.fl_flow_mask* %12, %struct.fl_flow_mask** %8, align 8
  %13 = load %struct.fl_flow_mask*, %struct.fl_flow_mask** %8, align 8
  %14 = getelementptr inbounds %struct.fl_flow_mask, %struct.fl_flow_mask* %13, i32 0, i32 1
  %15 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %5, align 8
  %16 = getelementptr inbounds %struct.cls_fl_filter, %struct.cls_fl_filter* %15, i32 0, i32 0
  %17 = load %struct.fl_flow_mask*, %struct.fl_flow_mask** %8, align 8
  %18 = getelementptr inbounds %struct.fl_flow_mask, %struct.fl_flow_mask* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @rhashtable_lookup_insert_fast(i32* %14, i32* %16, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %3
  %24 = load i32*, i32** %7, align 8
  store i32 0, i32* %24, align 4
  %25 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %6, align 8
  %26 = icmp ne %struct.cls_fl_filter* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @EEXIST, align 4
  %30 = sub nsw i32 0, %29
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %35

33:                                               ; preds = %27, %23
  %34 = load i32, i32* %9, align 4
  br label %35

35:                                               ; preds = %33, %32
  %36 = phi i32 [ 0, %32 ], [ %34, %33 ]
  store i32 %36, i32* %4, align 4
  br label %39

37:                                               ; preds = %3
  %38 = load i32*, i32** %7, align 8
  store i32 1, i32* %38, align 4
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @rhashtable_lookup_insert_fast(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
