; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_fw.c_fw_set_parms.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_fw.c_fw_set_parms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.tcf_proto = type { i32 }
%struct.fw_filter = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8* }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.fw_head = type { i32 }

@TCA_RATE = common dso_local global i64 0, align 8
@TCA_FW_CLASSID = common dso_local global i64 0, align 8
@TCA_FW_INDEV = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@TCA_FW_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.tcf_proto*, %struct.fw_filter*, %struct.nlattr**, %struct.nlattr**, i64, i32, %struct.netlink_ext_ack*)* @fw_set_parms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fw_set_parms(%struct.net* %0, %struct.tcf_proto* %1, %struct.fw_filter* %2, %struct.nlattr** %3, %struct.nlattr** %4, i64 %5, i32 %6, %struct.netlink_ext_ack* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.net*, align 8
  %11 = alloca %struct.tcf_proto*, align 8
  %12 = alloca %struct.fw_filter*, align 8
  %13 = alloca %struct.nlattr**, align 8
  %14 = alloca %struct.nlattr**, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.netlink_ext_ack*, align 8
  %18 = alloca %struct.fw_head*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %10, align 8
  store %struct.tcf_proto* %1, %struct.tcf_proto** %11, align 8
  store %struct.fw_filter* %2, %struct.fw_filter** %12, align 8
  store %struct.nlattr** %3, %struct.nlattr*** %13, align 8
  store %struct.nlattr** %4, %struct.nlattr*** %14, align 8
  store i64 %5, i64* %15, align 8
  store i32 %6, i32* %16, align 4
  store %struct.netlink_ext_ack* %7, %struct.netlink_ext_ack** %17, align 8
  %22 = load %struct.tcf_proto*, %struct.tcf_proto** %11, align 8
  %23 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.fw_head* @rtnl_dereference(i32 %24)
  store %struct.fw_head* %25, %struct.fw_head** %18, align 8
  %26 = load %struct.net*, %struct.net** %10, align 8
  %27 = load %struct.tcf_proto*, %struct.tcf_proto** %11, align 8
  %28 = load %struct.nlattr**, %struct.nlattr*** %13, align 8
  %29 = load %struct.nlattr**, %struct.nlattr*** %14, align 8
  %30 = load i64, i64* @TCA_RATE, align 8
  %31 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %29, i64 %30
  %32 = load %struct.nlattr*, %struct.nlattr** %31, align 8
  %33 = load %struct.fw_filter*, %struct.fw_filter** %12, align 8
  %34 = getelementptr inbounds %struct.fw_filter, %struct.fw_filter* %33, i32 0, i32 2
  %35 = load i32, i32* %16, align 4
  %36 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %17, align 8
  %37 = call i32 @tcf_exts_validate(%struct.net* %26, %struct.tcf_proto* %27, %struct.nlattr** %28, %struct.nlattr* %32, i32* %34, i32 %35, i32 1, %struct.netlink_ext_ack* %36)
  store i32 %37, i32* %20, align 4
  %38 = load i32, i32* %20, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %8
  %41 = load i32, i32* %20, align 4
  store i32 %41, i32* %9, align 4
  br label %116

42:                                               ; preds = %8
  %43 = load %struct.nlattr**, %struct.nlattr*** %13, align 8
  %44 = load i64, i64* @TCA_FW_CLASSID, align 8
  %45 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %43, i64 %44
  %46 = load %struct.nlattr*, %struct.nlattr** %45, align 8
  %47 = icmp ne %struct.nlattr* %46, null
  br i1 %47, label %48, label %62

48:                                               ; preds = %42
  %49 = load %struct.nlattr**, %struct.nlattr*** %13, align 8
  %50 = load i64, i64* @TCA_FW_CLASSID, align 8
  %51 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %49, i64 %50
  %52 = load %struct.nlattr*, %struct.nlattr** %51, align 8
  %53 = call i8* @nla_get_u32(%struct.nlattr* %52)
  %54 = load %struct.fw_filter*, %struct.fw_filter** %12, align 8
  %55 = getelementptr inbounds %struct.fw_filter, %struct.fw_filter* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i8* %53, i8** %56, align 8
  %57 = load %struct.tcf_proto*, %struct.tcf_proto** %11, align 8
  %58 = load %struct.fw_filter*, %struct.fw_filter** %12, align 8
  %59 = getelementptr inbounds %struct.fw_filter, %struct.fw_filter* %58, i32 0, i32 1
  %60 = load i64, i64* %15, align 8
  %61 = call i32 @tcf_bind_filter(%struct.tcf_proto* %57, %struct.TYPE_2__* %59, i64 %60)
  br label %62

62:                                               ; preds = %48, %42
  %63 = load %struct.nlattr**, %struct.nlattr*** %13, align 8
  %64 = load i64, i64* @TCA_FW_INDEV, align 8
  %65 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %63, i64 %64
  %66 = load %struct.nlattr*, %struct.nlattr** %65, align 8
  %67 = icmp ne %struct.nlattr* %66, null
  br i1 %67, label %68, label %84

68:                                               ; preds = %62
  %69 = load %struct.net*, %struct.net** %10, align 8
  %70 = load %struct.nlattr**, %struct.nlattr*** %13, align 8
  %71 = load i64, i64* @TCA_FW_INDEV, align 8
  %72 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %70, i64 %71
  %73 = load %struct.nlattr*, %struct.nlattr** %72, align 8
  %74 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %17, align 8
  %75 = call i32 @tcf_change_indev(%struct.net* %69, %struct.nlattr* %73, %struct.netlink_ext_ack* %74)
  store i32 %75, i32* %21, align 4
  %76 = load i32, i32* %21, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %68
  %79 = load i32, i32* %21, align 4
  store i32 %79, i32* %9, align 4
  br label %116

80:                                               ; preds = %68
  %81 = load i32, i32* %21, align 4
  %82 = load %struct.fw_filter*, %struct.fw_filter** %12, align 8
  %83 = getelementptr inbounds %struct.fw_filter, %struct.fw_filter* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  br label %84

84:                                               ; preds = %80, %62
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %20, align 4
  %87 = load %struct.nlattr**, %struct.nlattr*** %13, align 8
  %88 = load i64, i64* @TCA_FW_MASK, align 8
  %89 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %87, i64 %88
  %90 = load %struct.nlattr*, %struct.nlattr** %89, align 8
  %91 = icmp ne %struct.nlattr* %90, null
  br i1 %91, label %92, label %107

92:                                               ; preds = %84
  %93 = load %struct.nlattr**, %struct.nlattr*** %13, align 8
  %94 = load i64, i64* @TCA_FW_MASK, align 8
  %95 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %93, i64 %94
  %96 = load %struct.nlattr*, %struct.nlattr** %95, align 8
  %97 = call i8* @nla_get_u32(%struct.nlattr* %96)
  %98 = ptrtoint i8* %97 to i32
  store i32 %98, i32* %19, align 4
  %99 = load i32, i32* %19, align 4
  %100 = load %struct.fw_head*, %struct.fw_head** %18, align 8
  %101 = getelementptr inbounds %struct.fw_head, %struct.fw_head* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %99, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %92
  %105 = load i32, i32* %20, align 4
  store i32 %105, i32* %9, align 4
  br label %116

106:                                              ; preds = %92
  br label %115

107:                                              ; preds = %84
  %108 = load %struct.fw_head*, %struct.fw_head** %18, align 8
  %109 = getelementptr inbounds %struct.fw_head, %struct.fw_head* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, -1
  br i1 %111, label %112, label %114

112:                                              ; preds = %107
  %113 = load i32, i32* %20, align 4
  store i32 %113, i32* %9, align 4
  br label %116

114:                                              ; preds = %107
  br label %115

115:                                              ; preds = %114, %106
  store i32 0, i32* %9, align 4
  br label %116

116:                                              ; preds = %115, %112, %104, %78, %40
  %117 = load i32, i32* %9, align 4
  ret i32 %117
}

declare dso_local %struct.fw_head* @rtnl_dereference(i32) #1

declare dso_local i32 @tcf_exts_validate(%struct.net*, %struct.tcf_proto*, %struct.nlattr**, %struct.nlattr*, i32*, i32, i32, %struct.netlink_ext_ack*) #1

declare dso_local i8* @nla_get_u32(%struct.nlattr*) #1

declare dso_local i32 @tcf_bind_filter(%struct.tcf_proto*, %struct.TYPE_2__*, i64) #1

declare dso_local i32 @tcf_change_indev(%struct.net*, %struct.nlattr*, %struct.netlink_ext_ack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
