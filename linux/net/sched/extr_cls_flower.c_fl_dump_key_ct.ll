; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c_fl_dump_key_ct.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c_fl_dump_key_ct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.flow_dissector_key_ct = type { i32, i32, i32, i32 }

@CONFIG_NF_CONNTRACK = common dso_local global i32 0, align 4
@TCA_FLOWER_KEY_CT_STATE = common dso_local global i32 0, align 4
@TCA_FLOWER_KEY_CT_STATE_MASK = common dso_local global i32 0, align 4
@CONFIG_NF_CONNTRACK_ZONES = common dso_local global i32 0, align 4
@TCA_FLOWER_KEY_CT_ZONE = common dso_local global i32 0, align 4
@TCA_FLOWER_KEY_CT_ZONE_MASK = common dso_local global i32 0, align 4
@CONFIG_NF_CONNTRACK_MARK = common dso_local global i32 0, align 4
@TCA_FLOWER_KEY_CT_MARK = common dso_local global i32 0, align 4
@TCA_FLOWER_KEY_CT_MARK_MASK = common dso_local global i32 0, align 4
@CONFIG_NF_CONNTRACK_LABELS = common dso_local global i32 0, align 4
@TCA_FLOWER_KEY_CT_LABELS = common dso_local global i32 0, align 4
@TCA_FLOWER_KEY_CT_LABELS_MASK = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.flow_dissector_key_ct*, %struct.flow_dissector_key_ct*)* @fl_dump_key_ct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fl_dump_key_ct(%struct.sk_buff* %0, %struct.flow_dissector_key_ct* %1, %struct.flow_dissector_key_ct* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.flow_dissector_key_ct*, align 8
  %7 = alloca %struct.flow_dissector_key_ct*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.flow_dissector_key_ct* %1, %struct.flow_dissector_key_ct** %6, align 8
  store %struct.flow_dissector_key_ct* %2, %struct.flow_dissector_key_ct** %7, align 8
  %8 = load i32, i32* @CONFIG_NF_CONNTRACK, align 4
  %9 = call i64 @IS_ENABLED(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %3
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = load %struct.flow_dissector_key_ct*, %struct.flow_dissector_key_ct** %6, align 8
  %14 = getelementptr inbounds %struct.flow_dissector_key_ct, %struct.flow_dissector_key_ct* %13, i32 0, i32 3
  %15 = load i32, i32* @TCA_FLOWER_KEY_CT_STATE, align 4
  %16 = load %struct.flow_dissector_key_ct*, %struct.flow_dissector_key_ct** %7, align 8
  %17 = getelementptr inbounds %struct.flow_dissector_key_ct, %struct.flow_dissector_key_ct* %16, i32 0, i32 3
  %18 = load i32, i32* @TCA_FLOWER_KEY_CT_STATE_MASK, align 4
  %19 = call i64 @fl_dump_key_val(%struct.sk_buff* %12, i32* %14, i32 %15, i32* %17, i32 %18, i32 4)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %11
  br label %68

22:                                               ; preds = %11, %3
  %23 = load i32, i32* @CONFIG_NF_CONNTRACK_ZONES, align 4
  %24 = call i64 @IS_ENABLED(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %22
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = load %struct.flow_dissector_key_ct*, %struct.flow_dissector_key_ct** %6, align 8
  %29 = getelementptr inbounds %struct.flow_dissector_key_ct, %struct.flow_dissector_key_ct* %28, i32 0, i32 2
  %30 = load i32, i32* @TCA_FLOWER_KEY_CT_ZONE, align 4
  %31 = load %struct.flow_dissector_key_ct*, %struct.flow_dissector_key_ct** %7, align 8
  %32 = getelementptr inbounds %struct.flow_dissector_key_ct, %struct.flow_dissector_key_ct* %31, i32 0, i32 2
  %33 = load i32, i32* @TCA_FLOWER_KEY_CT_ZONE_MASK, align 4
  %34 = call i64 @fl_dump_key_val(%struct.sk_buff* %27, i32* %29, i32 %30, i32* %32, i32 %33, i32 4)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  br label %68

37:                                               ; preds = %26, %22
  %38 = load i32, i32* @CONFIG_NF_CONNTRACK_MARK, align 4
  %39 = call i64 @IS_ENABLED(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %37
  %42 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %43 = load %struct.flow_dissector_key_ct*, %struct.flow_dissector_key_ct** %6, align 8
  %44 = getelementptr inbounds %struct.flow_dissector_key_ct, %struct.flow_dissector_key_ct* %43, i32 0, i32 1
  %45 = load i32, i32* @TCA_FLOWER_KEY_CT_MARK, align 4
  %46 = load %struct.flow_dissector_key_ct*, %struct.flow_dissector_key_ct** %7, align 8
  %47 = getelementptr inbounds %struct.flow_dissector_key_ct, %struct.flow_dissector_key_ct* %46, i32 0, i32 1
  %48 = load i32, i32* @TCA_FLOWER_KEY_CT_MARK_MASK, align 4
  %49 = call i64 @fl_dump_key_val(%struct.sk_buff* %42, i32* %44, i32 %45, i32* %47, i32 %48, i32 4)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %41
  br label %68

52:                                               ; preds = %41, %37
  %53 = load i32, i32* @CONFIG_NF_CONNTRACK_LABELS, align 4
  %54 = call i64 @IS_ENABLED(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %52
  %57 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %58 = load %struct.flow_dissector_key_ct*, %struct.flow_dissector_key_ct** %6, align 8
  %59 = getelementptr inbounds %struct.flow_dissector_key_ct, %struct.flow_dissector_key_ct* %58, i32 0, i32 0
  %60 = load i32, i32* @TCA_FLOWER_KEY_CT_LABELS, align 4
  %61 = load %struct.flow_dissector_key_ct*, %struct.flow_dissector_key_ct** %7, align 8
  %62 = getelementptr inbounds %struct.flow_dissector_key_ct, %struct.flow_dissector_key_ct* %61, i32 0, i32 0
  %63 = load i32, i32* @TCA_FLOWER_KEY_CT_LABELS_MASK, align 4
  %64 = call i64 @fl_dump_key_val(%struct.sk_buff* %57, i32* %59, i32 %60, i32* %62, i32 %63, i32 4)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %56
  br label %68

67:                                               ; preds = %56, %52
  store i32 0, i32* %4, align 4
  br label %71

68:                                               ; preds = %66, %51, %36, %21
  %69 = load i32, i32* @EMSGSIZE, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %68, %67
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i64 @fl_dump_key_val(%struct.sk_buff*, i32*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
