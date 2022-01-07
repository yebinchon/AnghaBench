; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_fw.c_fw_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_fw.c_fw_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.tcf_proto = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tcmsg = type { i32 }
%struct.fw_head = type { i32 }
%struct.fw_filter = type { i32, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.nlattr = type { i32 }
%struct.net_device = type { i32 }

@TCA_OPTIONS = common dso_local global i32 0, align 4
@TCA_FW_CLASSID = common dso_local global i32 0, align 4
@TCA_FW_INDEV = common dso_local global i32 0, align 4
@TCA_FW_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.tcf_proto*, i8*, %struct.sk_buff*, %struct.tcmsg*, i32)* @fw_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fw_dump(%struct.net* %0, %struct.tcf_proto* %1, i8* %2, %struct.sk_buff* %3, %struct.tcmsg* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.tcf_proto*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.tcmsg*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.fw_head*, align 8
  %15 = alloca %struct.fw_filter*, align 8
  %16 = alloca %struct.nlattr*, align 8
  %17 = alloca %struct.net_device*, align 8
  store %struct.net* %0, %struct.net** %8, align 8
  store %struct.tcf_proto* %1, %struct.tcf_proto** %9, align 8
  store i8* %2, i8** %10, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %11, align 8
  store %struct.tcmsg* %4, %struct.tcmsg** %12, align 8
  store i32 %5, i32* %13, align 4
  %18 = load %struct.tcf_proto*, %struct.tcf_proto** %9, align 8
  %19 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.fw_head* @rtnl_dereference(i32 %20)
  store %struct.fw_head* %21, %struct.fw_head** %14, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = bitcast i8* %22 to %struct.fw_filter*
  store %struct.fw_filter* %23, %struct.fw_filter** %15, align 8
  %24 = load %struct.fw_filter*, %struct.fw_filter** %15, align 8
  %25 = icmp eq %struct.fw_filter* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %6
  %27 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %7, align 4
  br label %135

30:                                               ; preds = %6
  %31 = load %struct.fw_filter*, %struct.fw_filter** %15, align 8
  %32 = getelementptr inbounds %struct.fw_filter, %struct.fw_filter* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.tcmsg*, %struct.tcmsg** %12, align 8
  %35 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.fw_filter*, %struct.fw_filter** %15, align 8
  %37 = getelementptr inbounds %struct.fw_filter, %struct.fw_filter* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %30
  %42 = load %struct.fw_filter*, %struct.fw_filter** %15, align 8
  %43 = getelementptr inbounds %struct.fw_filter, %struct.fw_filter* %42, i32 0, i32 0
  %44 = call i32 @tcf_exts_has_actions(i32* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %41
  %47 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %7, align 4
  br label %135

50:                                               ; preds = %41, %30
  %51 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %52 = load i32, i32* @TCA_OPTIONS, align 4
  %53 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %51, i32 %52)
  store %struct.nlattr* %53, %struct.nlattr** %16, align 8
  %54 = load %struct.nlattr*, %struct.nlattr** %16, align 8
  %55 = icmp eq %struct.nlattr* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %131

57:                                               ; preds = %50
  %58 = load %struct.fw_filter*, %struct.fw_filter** %15, align 8
  %59 = getelementptr inbounds %struct.fw_filter, %struct.fw_filter* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %57
  %64 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %65 = load i32, i32* @TCA_FW_CLASSID, align 4
  %66 = load %struct.fw_filter*, %struct.fw_filter** %15, align 8
  %67 = getelementptr inbounds %struct.fw_filter, %struct.fw_filter* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @nla_put_u32(%struct.sk_buff* %64, i32 %65, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %63
  br label %131

73:                                               ; preds = %63, %57
  %74 = load %struct.fw_filter*, %struct.fw_filter** %15, align 8
  %75 = getelementptr inbounds %struct.fw_filter, %struct.fw_filter* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %96

78:                                               ; preds = %73
  %79 = load %struct.net*, %struct.net** %8, align 8
  %80 = load %struct.fw_filter*, %struct.fw_filter** %15, align 8
  %81 = getelementptr inbounds %struct.fw_filter, %struct.fw_filter* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = call %struct.net_device* @__dev_get_by_index(%struct.net* %79, i64 %82)
  store %struct.net_device* %83, %struct.net_device** %17, align 8
  %84 = load %struct.net_device*, %struct.net_device** %17, align 8
  %85 = icmp ne %struct.net_device* %84, null
  br i1 %85, label %86, label %95

86:                                               ; preds = %78
  %87 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %88 = load i32, i32* @TCA_FW_INDEV, align 4
  %89 = load %struct.net_device*, %struct.net_device** %17, align 8
  %90 = getelementptr inbounds %struct.net_device, %struct.net_device* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @nla_put_string(%struct.sk_buff* %87, i32 %88, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %86
  br label %131

95:                                               ; preds = %86, %78
  br label %96

96:                                               ; preds = %95, %73
  %97 = load %struct.fw_head*, %struct.fw_head** %14, align 8
  %98 = getelementptr inbounds %struct.fw_head, %struct.fw_head* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, -1
  br i1 %100, label %101, label %110

101:                                              ; preds = %96
  %102 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %103 = load i32, i32* @TCA_FW_MASK, align 4
  %104 = load %struct.fw_head*, %struct.fw_head** %14, align 8
  %105 = getelementptr inbounds %struct.fw_head, %struct.fw_head* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i64 @nla_put_u32(%struct.sk_buff* %102, i32 %103, i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %101
  br label %131

110:                                              ; preds = %101, %96
  %111 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %112 = load %struct.fw_filter*, %struct.fw_filter** %15, align 8
  %113 = getelementptr inbounds %struct.fw_filter, %struct.fw_filter* %112, i32 0, i32 0
  %114 = call i64 @tcf_exts_dump(%struct.sk_buff* %111, i32* %113)
  %115 = icmp slt i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %110
  br label %131

117:                                              ; preds = %110
  %118 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %119 = load %struct.nlattr*, %struct.nlattr** %16, align 8
  %120 = call i32 @nla_nest_end(%struct.sk_buff* %118, %struct.nlattr* %119)
  %121 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %122 = load %struct.fw_filter*, %struct.fw_filter** %15, align 8
  %123 = getelementptr inbounds %struct.fw_filter, %struct.fw_filter* %122, i32 0, i32 0
  %124 = call i64 @tcf_exts_dump_stats(%struct.sk_buff* %121, i32* %123)
  %125 = icmp slt i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %117
  br label %131

127:                                              ; preds = %117
  %128 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %129 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %7, align 4
  br label %135

131:                                              ; preds = %126, %116, %109, %94, %72, %56
  %132 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %133 = load %struct.nlattr*, %struct.nlattr** %16, align 8
  %134 = call i32 @nla_nest_cancel(%struct.sk_buff* %132, %struct.nlattr* %133)
  store i32 -1, i32* %7, align 4
  br label %135

135:                                              ; preds = %131, %127, %46, %26
  %136 = load i32, i32* %7, align 4
  ret i32 %136
}

declare dso_local %struct.fw_head* @rtnl_dereference(i32) #1

declare dso_local i32 @tcf_exts_has_actions(i32*) #1

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local %struct.net_device* @__dev_get_by_index(%struct.net*, i64) #1

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @tcf_exts_dump(%struct.sk_buff*, i32*) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i64 @tcf_exts_dump_stats(%struct.sk_buff*, i32*) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
