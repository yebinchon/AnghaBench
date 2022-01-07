; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_rsvp.h_rsvp_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_rsvp.h_rsvp_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.tcf_proto = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tcmsg = type { i32 }
%struct.rsvp_filter = type { i32, i32, %struct.tc_rsvp_pinfo*, %struct.TYPE_2__, i32, i32, %struct.rsvp_session* }
%struct.tc_rsvp_pinfo = type { i64, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.rsvp_session = type { i32, i32, i32, %struct.tc_rsvp_pinfo }
%struct.nlattr = type { i32 }

@TCA_OPTIONS = common dso_local global i32 0, align 4
@TCA_RSVP_DST = common dso_local global i32 0, align 4
@TCA_RSVP_PINFO = common dso_local global i32 0, align 4
@TCA_RSVP_CLASSID = common dso_local global i32 0, align 4
@TCA_RSVP_SRC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.tcf_proto*, i8*, %struct.sk_buff*, %struct.tcmsg*, i32)* @rsvp_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsvp_dump(%struct.net* %0, %struct.tcf_proto* %1, i8* %2, %struct.sk_buff* %3, %struct.tcmsg* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.tcf_proto*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.tcmsg*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.rsvp_filter*, align 8
  %15 = alloca %struct.rsvp_session*, align 8
  %16 = alloca %struct.nlattr*, align 8
  %17 = alloca %struct.tc_rsvp_pinfo, align 8
  store %struct.net* %0, %struct.net** %8, align 8
  store %struct.tcf_proto* %1, %struct.tcf_proto** %9, align 8
  store i8* %2, i8** %10, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %11, align 8
  store %struct.tcmsg* %4, %struct.tcmsg** %12, align 8
  store i32 %5, i32* %13, align 4
  %18 = load i8*, i8** %10, align 8
  %19 = bitcast i8* %18 to %struct.rsvp_filter*
  store %struct.rsvp_filter* %19, %struct.rsvp_filter** %14, align 8
  %20 = load %struct.rsvp_filter*, %struct.rsvp_filter** %14, align 8
  %21 = icmp eq %struct.rsvp_filter* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %6
  %23 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %7, align 4
  br label %133

26:                                               ; preds = %6
  %27 = load %struct.rsvp_filter*, %struct.rsvp_filter** %14, align 8
  %28 = getelementptr inbounds %struct.rsvp_filter, %struct.rsvp_filter* %27, i32 0, i32 6
  %29 = load %struct.rsvp_session*, %struct.rsvp_session** %28, align 8
  store %struct.rsvp_session* %29, %struct.rsvp_session** %15, align 8
  %30 = load %struct.rsvp_filter*, %struct.rsvp_filter** %14, align 8
  %31 = getelementptr inbounds %struct.rsvp_filter, %struct.rsvp_filter* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.tcmsg*, %struct.tcmsg** %12, align 8
  %34 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %36 = load i32, i32* @TCA_OPTIONS, align 4
  %37 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %35, i32 %36)
  store %struct.nlattr* %37, %struct.nlattr** %16, align 8
  %38 = load %struct.nlattr*, %struct.nlattr** %16, align 8
  %39 = icmp eq %struct.nlattr* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %26
  br label %129

41:                                               ; preds = %26
  %42 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %43 = load i32, i32* @TCA_RSVP_DST, align 4
  %44 = load %struct.rsvp_session*, %struct.rsvp_session** %15, align 8
  %45 = getelementptr inbounds %struct.rsvp_session, %struct.rsvp_session* %44, i32 0, i32 3
  %46 = call i64 @nla_put(%struct.sk_buff* %42, i32 %43, i32 32, %struct.tc_rsvp_pinfo* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %129

49:                                               ; preds = %41
  %50 = load %struct.rsvp_session*, %struct.rsvp_session** %15, align 8
  %51 = getelementptr inbounds %struct.rsvp_session, %struct.rsvp_session* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = getelementptr inbounds %struct.tc_rsvp_pinfo, %struct.tc_rsvp_pinfo* %17, i32 0, i32 5
  store i32 %52, i32* %53, align 8
  %54 = load %struct.rsvp_filter*, %struct.rsvp_filter** %14, align 8
  %55 = getelementptr inbounds %struct.rsvp_filter, %struct.rsvp_filter* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.tc_rsvp_pinfo, %struct.tc_rsvp_pinfo* %17, i32 0, i32 4
  store i32 %56, i32* %57, align 4
  %58 = load %struct.rsvp_session*, %struct.rsvp_session** %15, align 8
  %59 = getelementptr inbounds %struct.rsvp_session, %struct.rsvp_session* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.tc_rsvp_pinfo, %struct.tc_rsvp_pinfo* %17, i32 0, i32 3
  store i32 %60, i32* %61, align 8
  %62 = load %struct.rsvp_session*, %struct.rsvp_session** %15, align 8
  %63 = getelementptr inbounds %struct.rsvp_session, %struct.rsvp_session* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = getelementptr inbounds %struct.tc_rsvp_pinfo, %struct.tc_rsvp_pinfo* %17, i32 0, i32 2
  store i32 %64, i32* %65, align 4
  %66 = load %struct.rsvp_filter*, %struct.rsvp_filter** %14, align 8
  %67 = getelementptr inbounds %struct.rsvp_filter, %struct.rsvp_filter* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = getelementptr inbounds %struct.tc_rsvp_pinfo, %struct.tc_rsvp_pinfo* %17, i32 0, i32 1
  store i32 %68, i32* %69, align 8
  %70 = getelementptr inbounds %struct.tc_rsvp_pinfo, %struct.tc_rsvp_pinfo* %17, i32 0, i32 0
  store i64 0, i64* %70, align 8
  %71 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %72 = load i32, i32* @TCA_RSVP_PINFO, align 4
  %73 = call i64 @nla_put(%struct.sk_buff* %71, i32 %72, i32 32, %struct.tc_rsvp_pinfo* %17)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %49
  br label %129

76:                                               ; preds = %49
  %77 = load %struct.rsvp_filter*, %struct.rsvp_filter** %14, align 8
  %78 = getelementptr inbounds %struct.rsvp_filter, %struct.rsvp_filter* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %76
  %83 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %84 = load i32, i32* @TCA_RSVP_CLASSID, align 4
  %85 = load %struct.rsvp_filter*, %struct.rsvp_filter** %14, align 8
  %86 = getelementptr inbounds %struct.rsvp_filter, %struct.rsvp_filter* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = call i64 @nla_put_u32(%struct.sk_buff* %83, i32 %84, i64 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %82
  br label %129

92:                                               ; preds = %82, %76
  %93 = load %struct.rsvp_filter*, %struct.rsvp_filter** %14, align 8
  %94 = getelementptr inbounds %struct.rsvp_filter, %struct.rsvp_filter* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = ashr i32 %95, 8
  %97 = and i32 %96, 255
  %98 = icmp ne i32 %97, 16
  br i1 %98, label %99, label %108

99:                                               ; preds = %92
  %100 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %101 = load i32, i32* @TCA_RSVP_SRC, align 4
  %102 = load %struct.rsvp_filter*, %struct.rsvp_filter** %14, align 8
  %103 = getelementptr inbounds %struct.rsvp_filter, %struct.rsvp_filter* %102, i32 0, i32 2
  %104 = load %struct.tc_rsvp_pinfo*, %struct.tc_rsvp_pinfo** %103, align 8
  %105 = call i64 @nla_put(%struct.sk_buff* %100, i32 %101, i32 8, %struct.tc_rsvp_pinfo* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %99
  br label %129

108:                                              ; preds = %99, %92
  %109 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %110 = load %struct.rsvp_filter*, %struct.rsvp_filter** %14, align 8
  %111 = getelementptr inbounds %struct.rsvp_filter, %struct.rsvp_filter* %110, i32 0, i32 1
  %112 = call i64 @tcf_exts_dump(%struct.sk_buff* %109, i32* %111)
  %113 = icmp slt i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  br label %129

115:                                              ; preds = %108
  %116 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %117 = load %struct.nlattr*, %struct.nlattr** %16, align 8
  %118 = call i32 @nla_nest_end(%struct.sk_buff* %116, %struct.nlattr* %117)
  %119 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %120 = load %struct.rsvp_filter*, %struct.rsvp_filter** %14, align 8
  %121 = getelementptr inbounds %struct.rsvp_filter, %struct.rsvp_filter* %120, i32 0, i32 1
  %122 = call i64 @tcf_exts_dump_stats(%struct.sk_buff* %119, i32* %121)
  %123 = icmp slt i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %115
  br label %129

125:                                              ; preds = %115
  %126 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %127 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %7, align 4
  br label %133

129:                                              ; preds = %124, %114, %107, %91, %75, %48, %40
  %130 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %131 = load %struct.nlattr*, %struct.nlattr** %16, align 8
  %132 = call i32 @nla_nest_cancel(%struct.sk_buff* %130, %struct.nlattr* %131)
  store i32 -1, i32* %7, align 4
  br label %133

133:                                              ; preds = %129, %125, %22
  %134 = load i32, i32* %7, align 4
  ret i32 %134
}

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, %struct.tc_rsvp_pinfo*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i64) #1

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
