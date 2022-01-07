; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c_fl_dump_key_port_range.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c_fl_dump_key_port_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.fl_flow_key = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@TCA_FLOWER_KEY_PORT_DST_MIN = common dso_local global i32 0, align 4
@TCA_FLOWER_UNSPEC = common dso_local global i32 0, align 4
@TCA_FLOWER_KEY_PORT_DST_MAX = common dso_local global i32 0, align 4
@TCA_FLOWER_KEY_PORT_SRC_MIN = common dso_local global i32 0, align 4
@TCA_FLOWER_KEY_PORT_SRC_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.fl_flow_key*, %struct.fl_flow_key*)* @fl_dump_key_port_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fl_dump_key_port_range(%struct.sk_buff* %0, %struct.fl_flow_key* %1, %struct.fl_flow_key* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.fl_flow_key*, align 8
  %7 = alloca %struct.fl_flow_key*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.fl_flow_key* %1, %struct.fl_flow_key** %6, align 8
  store %struct.fl_flow_key* %2, %struct.fl_flow_key** %7, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %9 = load %struct.fl_flow_key*, %struct.fl_flow_key** %6, align 8
  %10 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load i32, i32* @TCA_FLOWER_KEY_PORT_DST_MIN, align 4
  %13 = load %struct.fl_flow_key*, %struct.fl_flow_key** %7, align 8
  %14 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i32, i32* @TCA_FLOWER_UNSPEC, align 4
  %17 = call i64 @fl_dump_key_val(%struct.sk_buff* %8, i32* %11, i32 %12, i32* %15, i32 %16, i32 4)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %55, label %19

19:                                               ; preds = %3
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = load %struct.fl_flow_key*, %struct.fl_flow_key** %6, align 8
  %22 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* @TCA_FLOWER_KEY_PORT_DST_MAX, align 4
  %25 = load %struct.fl_flow_key*, %struct.fl_flow_key** %7, align 8
  %26 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* @TCA_FLOWER_UNSPEC, align 4
  %29 = call i64 @fl_dump_key_val(%struct.sk_buff* %20, i32* %23, i32 %24, i32* %27, i32 %28, i32 4)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %55, label %31

31:                                               ; preds = %19
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = load %struct.fl_flow_key*, %struct.fl_flow_key** %6, align 8
  %34 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* @TCA_FLOWER_KEY_PORT_SRC_MIN, align 4
  %37 = load %struct.fl_flow_key*, %struct.fl_flow_key** %7, align 8
  %38 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* @TCA_FLOWER_UNSPEC, align 4
  %41 = call i64 @fl_dump_key_val(%struct.sk_buff* %32, i32* %35, i32 %36, i32* %39, i32 %40, i32 4)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %55, label %43

43:                                               ; preds = %31
  %44 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %45 = load %struct.fl_flow_key*, %struct.fl_flow_key** %6, align 8
  %46 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* @TCA_FLOWER_KEY_PORT_SRC_MAX, align 4
  %49 = load %struct.fl_flow_key*, %struct.fl_flow_key** %7, align 8
  %50 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* @TCA_FLOWER_UNSPEC, align 4
  %53 = call i64 @fl_dump_key_val(%struct.sk_buff* %44, i32* %47, i32 %48, i32* %51, i32 %52, i32 4)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %43, %31, %19, %3
  store i32 -1, i32* %4, align 4
  br label %57

56:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %56, %55
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i64 @fl_dump_key_val(%struct.sk_buff*, i32*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
