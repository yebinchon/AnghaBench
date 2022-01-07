; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c_fl_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c_fl_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.tcf_proto = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tcmsg = type { i32 }
%struct.cls_fl_filter = type { i32, i64, i64, %struct.TYPE_4__*, %struct.fl_flow_key, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { %struct.fl_flow_key }
%struct.fl_flow_key = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.nlattr = type { i32 }

@TCA_OPTIONS = common dso_local global i32 0, align 4
@TCA_FLOWER_CLASSID = common dso_local global i32 0, align 4
@TCA_FLOWER_FLAGS = common dso_local global i32 0, align 4
@TCA_FLOWER_IN_HW_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.tcf_proto*, i8*, %struct.sk_buff*, %struct.tcmsg*, i32)* @fl_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fl_dump(%struct.net* %0, %struct.tcf_proto* %1, i8* %2, %struct.sk_buff* %3, %struct.tcmsg* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.tcf_proto*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.tcmsg*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.cls_fl_filter*, align 8
  %15 = alloca %struct.nlattr*, align 8
  %16 = alloca %struct.fl_flow_key*, align 8
  %17 = alloca %struct.fl_flow_key*, align 8
  %18 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %8, align 8
  store %struct.tcf_proto* %1, %struct.tcf_proto** %9, align 8
  store i8* %2, i8** %10, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %11, align 8
  store %struct.tcmsg* %4, %struct.tcmsg** %12, align 8
  store i32 %5, i32* %13, align 4
  %19 = load i8*, i8** %10, align 8
  %20 = bitcast i8* %19 to %struct.cls_fl_filter*
  store %struct.cls_fl_filter* %20, %struct.cls_fl_filter** %14, align 8
  %21 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %14, align 8
  %22 = icmp ne %struct.cls_fl_filter* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %6
  %24 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %7, align 4
  br label %139

27:                                               ; preds = %6
  %28 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %14, align 8
  %29 = getelementptr inbounds %struct.cls_fl_filter, %struct.cls_fl_filter* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.tcmsg*, %struct.tcmsg** %12, align 8
  %32 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %34 = load i32, i32* @TCA_OPTIONS, align 4
  %35 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %33, i32 %34)
  store %struct.nlattr* %35, %struct.nlattr** %15, align 8
  %36 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %37 = icmp ne %struct.nlattr* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %27
  br label %135

39:                                               ; preds = %27
  %40 = load %struct.tcf_proto*, %struct.tcf_proto** %9, align 8
  %41 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %40, i32 0, i32 0
  %42 = call i32 @spin_lock(i32* %41)
  %43 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %14, align 8
  %44 = getelementptr inbounds %struct.cls_fl_filter, %struct.cls_fl_filter* %43, i32 0, i32 5
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %39
  %49 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %50 = load i32, i32* @TCA_FLOWER_CLASSID, align 4
  %51 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %14, align 8
  %52 = getelementptr inbounds %struct.cls_fl_filter, %struct.cls_fl_filter* %51, i32 0, i32 5
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i64 @nla_put_u32(%struct.sk_buff* %49, i32 %50, i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  br label %131

58:                                               ; preds = %48, %39
  %59 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %14, align 8
  %60 = getelementptr inbounds %struct.cls_fl_filter, %struct.cls_fl_filter* %59, i32 0, i32 4
  store %struct.fl_flow_key* %60, %struct.fl_flow_key** %16, align 8
  %61 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %14, align 8
  %62 = getelementptr inbounds %struct.cls_fl_filter, %struct.cls_fl_filter* %61, i32 0, i32 3
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  store %struct.fl_flow_key* %64, %struct.fl_flow_key** %17, align 8
  %65 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %14, align 8
  %66 = getelementptr inbounds %struct.cls_fl_filter, %struct.cls_fl_filter* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @tc_skip_hw(i64 %67)
  store i32 %68, i32* %18, align 4
  %69 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %70 = load %struct.net*, %struct.net** %8, align 8
  %71 = load %struct.fl_flow_key*, %struct.fl_flow_key** %16, align 8
  %72 = load %struct.fl_flow_key*, %struct.fl_flow_key** %17, align 8
  %73 = call i64 @fl_dump_key(%struct.sk_buff* %69, %struct.net* %70, %struct.fl_flow_key* %71, %struct.fl_flow_key* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %58
  br label %131

76:                                               ; preds = %58
  %77 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %14, align 8
  %78 = getelementptr inbounds %struct.cls_fl_filter, %struct.cls_fl_filter* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %76
  %82 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %83 = load i32, i32* @TCA_FLOWER_FLAGS, align 4
  %84 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %14, align 8
  %85 = getelementptr inbounds %struct.cls_fl_filter, %struct.cls_fl_filter* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = call i64 @nla_put_u32(%struct.sk_buff* %82, i32 %83, i64 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %81
  br label %131

90:                                               ; preds = %81, %76
  %91 = load %struct.tcf_proto*, %struct.tcf_proto** %9, align 8
  %92 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %91, i32 0, i32 0
  %93 = call i32 @spin_unlock(i32* %92)
  %94 = load i32, i32* %18, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %90
  %97 = load %struct.tcf_proto*, %struct.tcf_proto** %9, align 8
  %98 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %14, align 8
  %99 = load i32, i32* %13, align 4
  %100 = call i32 @fl_hw_update_stats(%struct.tcf_proto* %97, %struct.cls_fl_filter* %98, i32 %99)
  br label %101

101:                                              ; preds = %96, %90
  %102 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %103 = load i32, i32* @TCA_FLOWER_IN_HW_COUNT, align 4
  %104 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %14, align 8
  %105 = getelementptr inbounds %struct.cls_fl_filter, %struct.cls_fl_filter* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = call i64 @nla_put_u32(%struct.sk_buff* %102, i32 %103, i64 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %101
  br label %135

110:                                              ; preds = %101
  %111 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %112 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %14, align 8
  %113 = getelementptr inbounds %struct.cls_fl_filter, %struct.cls_fl_filter* %112, i32 0, i32 0
  %114 = call i64 @tcf_exts_dump(%struct.sk_buff* %111, i32* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %110
  br label %135

117:                                              ; preds = %110
  %118 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %119 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %120 = call i32 @nla_nest_end(%struct.sk_buff* %118, %struct.nlattr* %119)
  %121 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %122 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %14, align 8
  %123 = getelementptr inbounds %struct.cls_fl_filter, %struct.cls_fl_filter* %122, i32 0, i32 0
  %124 = call i64 @tcf_exts_dump_stats(%struct.sk_buff* %121, i32* %123)
  %125 = icmp slt i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %117
  br label %135

127:                                              ; preds = %117
  %128 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %129 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %7, align 4
  br label %139

131:                                              ; preds = %89, %75, %57
  %132 = load %struct.tcf_proto*, %struct.tcf_proto** %9, align 8
  %133 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %132, i32 0, i32 0
  %134 = call i32 @spin_unlock(i32* %133)
  br label %135

135:                                              ; preds = %131, %126, %116, %109, %38
  %136 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %137 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %138 = call i32 @nla_nest_cancel(%struct.sk_buff* %136, %struct.nlattr* %137)
  store i32 -1, i32* %7, align 4
  br label %139

139:                                              ; preds = %135, %127, %23
  %140 = load i32, i32* %7, align 4
  ret i32 %140
}

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i64) #1

declare dso_local i32 @tc_skip_hw(i64) #1

declare dso_local i64 @fl_dump_key(%struct.sk_buff*, %struct.net*, %struct.fl_flow_key*, %struct.fl_flow_key*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @fl_hw_update_stats(%struct.tcf_proto*, %struct.cls_fl_filter*, i32) #1

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
