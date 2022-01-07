; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c_fl_set_key_ct.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c_fl_set_key_ct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.flow_dissector_key_ct = type { i32*, i32, i32, i32 }
%struct.netlink_ext_ack = type { i32 }

@TCA_FLOWER_KEY_CT_STATE = common dso_local global i64 0, align 8
@CONFIG_NF_CONNTRACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Conntrack isn't enabled\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@TCA_FLOWER_KEY_CT_STATE_MASK = common dso_local global i32 0, align 4
@TCA_FLOWER_KEY_CT_ZONE = common dso_local global i64 0, align 8
@CONFIG_NF_CONNTRACK_ZONES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Conntrack zones isn't enabled\00", align 1
@TCA_FLOWER_KEY_CT_ZONE_MASK = common dso_local global i32 0, align 4
@TCA_FLOWER_KEY_CT_MARK = common dso_local global i64 0, align 8
@CONFIG_NF_CONNTRACK_MARK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Conntrack mark isn't enabled\00", align 1
@TCA_FLOWER_KEY_CT_MARK_MASK = common dso_local global i32 0, align 4
@TCA_FLOWER_KEY_CT_LABELS = common dso_local global i64 0, align 8
@CONFIG_NF_CONNTRACK_LABELS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Conntrack labels aren't enabled\00", align 1
@TCA_FLOWER_KEY_CT_LABELS_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr**, %struct.flow_dissector_key_ct*, %struct.flow_dissector_key_ct*, %struct.netlink_ext_ack*)* @fl_set_key_ct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fl_set_key_ct(%struct.nlattr** %0, %struct.flow_dissector_key_ct* %1, %struct.flow_dissector_key_ct* %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nlattr**, align 8
  %7 = alloca %struct.flow_dissector_key_ct*, align 8
  %8 = alloca %struct.flow_dissector_key_ct*, align 8
  %9 = alloca %struct.netlink_ext_ack*, align 8
  store %struct.nlattr** %0, %struct.nlattr*** %6, align 8
  store %struct.flow_dissector_key_ct* %1, %struct.flow_dissector_key_ct** %7, align 8
  store %struct.flow_dissector_key_ct* %2, %struct.flow_dissector_key_ct** %8, align 8
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  %10 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %11 = load i64, i64* @TCA_FLOWER_KEY_CT_STATE, align 8
  %12 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %10, i64 %11
  %13 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %14 = icmp ne %struct.nlattr* %13, null
  br i1 %14, label %15, label %33

15:                                               ; preds = %4
  %16 = load i32, i32* @CONFIG_NF_CONNTRACK, align 4
  %17 = call i32 @IS_ENABLED(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %21 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EOPNOTSUPP, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %108

24:                                               ; preds = %15
  %25 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %26 = load %struct.flow_dissector_key_ct*, %struct.flow_dissector_key_ct** %7, align 8
  %27 = getelementptr inbounds %struct.flow_dissector_key_ct, %struct.flow_dissector_key_ct* %26, i32 0, i32 3
  %28 = load i64, i64* @TCA_FLOWER_KEY_CT_STATE, align 8
  %29 = load %struct.flow_dissector_key_ct*, %struct.flow_dissector_key_ct** %8, align 8
  %30 = getelementptr inbounds %struct.flow_dissector_key_ct, %struct.flow_dissector_key_ct* %29, i32 0, i32 3
  %31 = load i32, i32* @TCA_FLOWER_KEY_CT_STATE_MASK, align 4
  %32 = call i32 @fl_set_key_val(%struct.nlattr** %25, i32* %27, i64 %28, i32* %30, i32 %31, i32 4)
  br label %33

33:                                               ; preds = %24, %4
  %34 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %35 = load i64, i64* @TCA_FLOWER_KEY_CT_ZONE, align 8
  %36 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %34, i64 %35
  %37 = load %struct.nlattr*, %struct.nlattr** %36, align 8
  %38 = icmp ne %struct.nlattr* %37, null
  br i1 %38, label %39, label %57

39:                                               ; preds = %33
  %40 = load i32, i32* @CONFIG_NF_CONNTRACK_ZONES, align 4
  %41 = call i32 @IS_ENABLED(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %39
  %44 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %45 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %44, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @EOPNOTSUPP, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %108

48:                                               ; preds = %39
  %49 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %50 = load %struct.flow_dissector_key_ct*, %struct.flow_dissector_key_ct** %7, align 8
  %51 = getelementptr inbounds %struct.flow_dissector_key_ct, %struct.flow_dissector_key_ct* %50, i32 0, i32 2
  %52 = load i64, i64* @TCA_FLOWER_KEY_CT_ZONE, align 8
  %53 = load %struct.flow_dissector_key_ct*, %struct.flow_dissector_key_ct** %8, align 8
  %54 = getelementptr inbounds %struct.flow_dissector_key_ct, %struct.flow_dissector_key_ct* %53, i32 0, i32 2
  %55 = load i32, i32* @TCA_FLOWER_KEY_CT_ZONE_MASK, align 4
  %56 = call i32 @fl_set_key_val(%struct.nlattr** %49, i32* %51, i64 %52, i32* %54, i32 %55, i32 4)
  br label %57

57:                                               ; preds = %48, %33
  %58 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %59 = load i64, i64* @TCA_FLOWER_KEY_CT_MARK, align 8
  %60 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %58, i64 %59
  %61 = load %struct.nlattr*, %struct.nlattr** %60, align 8
  %62 = icmp ne %struct.nlattr* %61, null
  br i1 %62, label %63, label %81

63:                                               ; preds = %57
  %64 = load i32, i32* @CONFIG_NF_CONNTRACK_MARK, align 4
  %65 = call i32 @IS_ENABLED(i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %63
  %68 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %69 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %68, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %70 = load i32, i32* @EOPNOTSUPP, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %5, align 4
  br label %108

72:                                               ; preds = %63
  %73 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %74 = load %struct.flow_dissector_key_ct*, %struct.flow_dissector_key_ct** %7, align 8
  %75 = getelementptr inbounds %struct.flow_dissector_key_ct, %struct.flow_dissector_key_ct* %74, i32 0, i32 1
  %76 = load i64, i64* @TCA_FLOWER_KEY_CT_MARK, align 8
  %77 = load %struct.flow_dissector_key_ct*, %struct.flow_dissector_key_ct** %8, align 8
  %78 = getelementptr inbounds %struct.flow_dissector_key_ct, %struct.flow_dissector_key_ct* %77, i32 0, i32 1
  %79 = load i32, i32* @TCA_FLOWER_KEY_CT_MARK_MASK, align 4
  %80 = call i32 @fl_set_key_val(%struct.nlattr** %73, i32* %75, i64 %76, i32* %78, i32 %79, i32 4)
  br label %81

81:                                               ; preds = %72, %57
  %82 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %83 = load i64, i64* @TCA_FLOWER_KEY_CT_LABELS, align 8
  %84 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %82, i64 %83
  %85 = load %struct.nlattr*, %struct.nlattr** %84, align 8
  %86 = icmp ne %struct.nlattr* %85, null
  br i1 %86, label %87, label %107

87:                                               ; preds = %81
  %88 = load i32, i32* @CONFIG_NF_CONNTRACK_LABELS, align 4
  %89 = call i32 @IS_ENABLED(i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %87
  %92 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %93 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %92, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %94 = load i32, i32* @EOPNOTSUPP, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %5, align 4
  br label %108

96:                                               ; preds = %87
  %97 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %98 = load %struct.flow_dissector_key_ct*, %struct.flow_dissector_key_ct** %7, align 8
  %99 = getelementptr inbounds %struct.flow_dissector_key_ct, %struct.flow_dissector_key_ct* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i64, i64* @TCA_FLOWER_KEY_CT_LABELS, align 8
  %102 = load %struct.flow_dissector_key_ct*, %struct.flow_dissector_key_ct** %8, align 8
  %103 = getelementptr inbounds %struct.flow_dissector_key_ct, %struct.flow_dissector_key_ct* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* @TCA_FLOWER_KEY_CT_LABELS_MASK, align 4
  %106 = call i32 @fl_set_key_val(%struct.nlattr** %97, i32* %100, i64 %101, i32* %104, i32 %105, i32 8)
  br label %107

107:                                              ; preds = %96, %81
  store i32 0, i32* %5, align 4
  br label %108

108:                                              ; preds = %107, %91, %67, %43, %19
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @fl_set_key_val(%struct.nlattr**, i32*, i64, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
