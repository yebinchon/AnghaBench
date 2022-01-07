; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c_fl_range_port_dst_cmp.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c_fl_range_port_dst_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cls_fl_filter = type { %struct.TYPE_17__, %struct.TYPE_24__, %struct.TYPE_21__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__, %struct.TYPE_14__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_24__ = type { %struct.TYPE_23__, %struct.TYPE_22__ }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__, %struct.TYPE_18__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.fl_flow_key = type { %struct.TYPE_15__, %struct.TYPE_26__, %struct.TYPE_25__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_25__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cls_fl_filter*, %struct.fl_flow_key*, %struct.fl_flow_key*)* @fl_range_port_dst_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fl_range_port_dst_cmp(%struct.cls_fl_filter* %0, %struct.fl_flow_key* %1, %struct.fl_flow_key* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cls_fl_filter*, align 8
  %6 = alloca %struct.fl_flow_key*, align 8
  %7 = alloca %struct.fl_flow_key*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.cls_fl_filter* %0, %struct.cls_fl_filter** %5, align 8
  store %struct.fl_flow_key* %1, %struct.fl_flow_key** %6, align 8
  store %struct.fl_flow_key* %2, %struct.fl_flow_key** %7, align 8
  %12 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %5, align 8
  %13 = getelementptr inbounds %struct.cls_fl_filter, %struct.cls_fl_filter* %12, i32 0, i32 2
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @htons(i32 %18)
  store i64 %19, i64* %8, align 8
  %20 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %5, align 8
  %21 = getelementptr inbounds %struct.cls_fl_filter, %struct.cls_fl_filter* %20, i32 0, i32 2
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @htons(i32 %26)
  store i64 %27, i64* %9, align 8
  %28 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %5, align 8
  %29 = getelementptr inbounds %struct.cls_fl_filter, %struct.cls_fl_filter* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @htons(i32 %32)
  store i64 %33, i64* %10, align 8
  %34 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %5, align 8
  %35 = getelementptr inbounds %struct.cls_fl_filter, %struct.cls_fl_filter* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @htons(i32 %38)
  store i64 %39, i64* %11, align 8
  %40 = load i64, i64* %8, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %79

42:                                               ; preds = %3
  %43 = load i64, i64* %9, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %79

45:                                               ; preds = %42
  %46 = load %struct.fl_flow_key*, %struct.fl_flow_key** %6, align 8
  %47 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @htons(i32 %49)
  %51 = load i64, i64* %10, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %61, label %53

53:                                               ; preds = %45
  %54 = load %struct.fl_flow_key*, %struct.fl_flow_key** %6, align 8
  %55 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @htons(i32 %57)
  %59 = load i64, i64* %11, align 8
  %60 = icmp sgt i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %53, %45
  store i32 0, i32* %4, align 4
  br label %80

62:                                               ; preds = %53
  %63 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %5, align 8
  %64 = getelementptr inbounds %struct.cls_fl_filter, %struct.cls_fl_filter* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.fl_flow_key*, %struct.fl_flow_key** %7, align 8
  %69 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 4
  %71 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %5, align 8
  %72 = getelementptr inbounds %struct.cls_fl_filter, %struct.cls_fl_filter* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.fl_flow_key*, %struct.fl_flow_key** %7, align 8
  %77 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  store i32 %75, i32* %78, align 4
  br label %79

79:                                               ; preds = %62, %42, %3
  store i32 1, i32* %4, align 4
  br label %80

80:                                               ; preds = %79, %61
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i64 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
