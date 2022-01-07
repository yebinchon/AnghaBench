; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c_fl_set_parms.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c_fl_set_parms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.tcf_proto = type { i32 }
%struct.cls_fl_filter = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.fl_flow_mask = type { i32 }
%struct.nlattr = type { i32 }
%struct.fl_flow_tmplt = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@TCA_FLOWER_CLASSID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Mask does not fit the template\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.tcf_proto*, %struct.cls_fl_filter*, %struct.fl_flow_mask*, i64, %struct.nlattr**, %struct.nlattr*, i32, %struct.fl_flow_tmplt*, i32, %struct.netlink_ext_ack*)* @fl_set_parms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fl_set_parms(%struct.net* %0, %struct.tcf_proto* %1, %struct.cls_fl_filter* %2, %struct.fl_flow_mask* %3, i64 %4, %struct.nlattr** %5, %struct.nlattr* %6, i32 %7, %struct.fl_flow_tmplt* %8, i32 %9, %struct.netlink_ext_ack* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca %struct.net*, align 8
  %14 = alloca %struct.tcf_proto*, align 8
  %15 = alloca %struct.cls_fl_filter*, align 8
  %16 = alloca %struct.fl_flow_mask*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.nlattr**, align 8
  %19 = alloca %struct.nlattr*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.fl_flow_tmplt*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.netlink_ext_ack*, align 8
  %24 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %13, align 8
  store %struct.tcf_proto* %1, %struct.tcf_proto** %14, align 8
  store %struct.cls_fl_filter* %2, %struct.cls_fl_filter** %15, align 8
  store %struct.fl_flow_mask* %3, %struct.fl_flow_mask** %16, align 8
  store i64 %4, i64* %17, align 8
  store %struct.nlattr** %5, %struct.nlattr*** %18, align 8
  store %struct.nlattr* %6, %struct.nlattr** %19, align 8
  store i32 %7, i32* %20, align 4
  store %struct.fl_flow_tmplt* %8, %struct.fl_flow_tmplt** %21, align 8
  store i32 %9, i32* %22, align 4
  store %struct.netlink_ext_ack* %10, %struct.netlink_ext_ack** %23, align 8
  %25 = load %struct.net*, %struct.net** %13, align 8
  %26 = load %struct.tcf_proto*, %struct.tcf_proto** %14, align 8
  %27 = load %struct.nlattr**, %struct.nlattr*** %18, align 8
  %28 = load %struct.nlattr*, %struct.nlattr** %19, align 8
  %29 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %15, align 8
  %30 = getelementptr inbounds %struct.cls_fl_filter, %struct.cls_fl_filter* %29, i32 0, i32 3
  %31 = load i32, i32* %20, align 4
  %32 = load i32, i32* %22, align 4
  %33 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %23, align 8
  %34 = call i32 @tcf_exts_validate(%struct.net* %25, %struct.tcf_proto* %26, %struct.nlattr** %27, %struct.nlattr* %28, i32* %30, i32 %31, i32 %32, %struct.netlink_ext_ack* %33)
  store i32 %34, i32* %24, align 4
  %35 = load i32, i32* %24, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %11
  %38 = load i32, i32* %24, align 4
  store i32 %38, i32* %12, align 4
  br label %101

39:                                               ; preds = %11
  %40 = load %struct.nlattr**, %struct.nlattr*** %18, align 8
  %41 = load i64, i64* @TCA_FLOWER_CLASSID, align 8
  %42 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %40, i64 %41
  %43 = load %struct.nlattr*, %struct.nlattr** %42, align 8
  %44 = icmp ne %struct.nlattr* %43, null
  br i1 %44, label %45, label %69

45:                                               ; preds = %39
  %46 = load %struct.nlattr**, %struct.nlattr*** %18, align 8
  %47 = load i64, i64* @TCA_FLOWER_CLASSID, align 8
  %48 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %46, i64 %47
  %49 = load %struct.nlattr*, %struct.nlattr** %48, align 8
  %50 = call i32 @nla_get_u32(%struct.nlattr* %49)
  %51 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %15, align 8
  %52 = getelementptr inbounds %struct.cls_fl_filter, %struct.cls_fl_filter* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 4
  %54 = load i32, i32* %22, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %45
  %57 = call i32 (...) @rtnl_lock()
  br label %58

58:                                               ; preds = %56, %45
  %59 = load %struct.tcf_proto*, %struct.tcf_proto** %14, align 8
  %60 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %15, align 8
  %61 = getelementptr inbounds %struct.cls_fl_filter, %struct.cls_fl_filter* %60, i32 0, i32 2
  %62 = load i64, i64* %17, align 8
  %63 = call i32 @tcf_bind_filter(%struct.tcf_proto* %59, %struct.TYPE_2__* %61, i64 %62)
  %64 = load i32, i32* %22, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %58
  %67 = call i32 (...) @rtnl_unlock()
  br label %68

68:                                               ; preds = %66, %58
  br label %69

69:                                               ; preds = %68, %39
  %70 = load %struct.net*, %struct.net** %13, align 8
  %71 = load %struct.nlattr**, %struct.nlattr*** %18, align 8
  %72 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %15, align 8
  %73 = getelementptr inbounds %struct.cls_fl_filter, %struct.cls_fl_filter* %72, i32 0, i32 0
  %74 = load %struct.fl_flow_mask*, %struct.fl_flow_mask** %16, align 8
  %75 = getelementptr inbounds %struct.fl_flow_mask, %struct.fl_flow_mask* %74, i32 0, i32 0
  %76 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %23, align 8
  %77 = call i32 @fl_set_key(%struct.net* %70, %struct.nlattr** %71, i32* %73, i32* %75, %struct.netlink_ext_ack* %76)
  store i32 %77, i32* %24, align 4
  %78 = load i32, i32* %24, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %69
  %81 = load i32, i32* %24, align 4
  store i32 %81, i32* %12, align 4
  br label %101

82:                                               ; preds = %69
  %83 = load %struct.fl_flow_mask*, %struct.fl_flow_mask** %16, align 8
  %84 = call i32 @fl_mask_update_range(%struct.fl_flow_mask* %83)
  %85 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %15, align 8
  %86 = getelementptr inbounds %struct.cls_fl_filter, %struct.cls_fl_filter* %85, i32 0, i32 1
  %87 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %15, align 8
  %88 = getelementptr inbounds %struct.cls_fl_filter, %struct.cls_fl_filter* %87, i32 0, i32 0
  %89 = load %struct.fl_flow_mask*, %struct.fl_flow_mask** %16, align 8
  %90 = call i32 @fl_set_masked_key(i32* %86, i32* %88, %struct.fl_flow_mask* %89)
  %91 = load %struct.fl_flow_tmplt*, %struct.fl_flow_tmplt** %21, align 8
  %92 = load %struct.fl_flow_mask*, %struct.fl_flow_mask** %16, align 8
  %93 = call i32 @fl_mask_fits_tmplt(%struct.fl_flow_tmplt* %91, %struct.fl_flow_mask* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %82
  %96 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %23, align 8
  %97 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %96, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %12, align 4
  br label %101

100:                                              ; preds = %82
  store i32 0, i32* %12, align 4
  br label %101

101:                                              ; preds = %100, %95, %80, %37
  %102 = load i32, i32* %12, align 4
  ret i32 %102
}

declare dso_local i32 @tcf_exts_validate(%struct.net*, %struct.tcf_proto*, %struct.nlattr**, %struct.nlattr*, i32*, i32, i32, %struct.netlink_ext_ack*) #1

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @tcf_bind_filter(%struct.tcf_proto*, %struct.TYPE_2__*, i64) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @fl_set_key(%struct.net*, %struct.nlattr**, i32*, i32*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @fl_mask_update_range(%struct.fl_flow_mask*) #1

declare dso_local i32 @fl_set_masked_key(i32*, i32*, %struct.fl_flow_mask*) #1

declare dso_local i32 @fl_mask_fits_tmplt(%struct.fl_flow_tmplt*, %struct.fl_flow_mask*) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
