; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_api.c_tc_fill_tclass.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_api.c_tc_fill_tclass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.Qdisc = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, %struct.Qdisc_class_ops* }
%struct.Qdisc_class_ops = type { i64 (%struct.Qdisc.0*, i64, %struct.sk_buff*, %struct.tcmsg*)*, i64 (%struct.Qdisc.1*, i64, %struct.gnet_dump*)* }
%struct.Qdisc.0 = type opaque
%struct.tcmsg = type { i64, i32, i32, i32, i64, i64, i32 }
%struct.Qdisc.1 = type opaque
%struct.gnet_dump = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.TYPE_4__ = type { i32 }

@AF_UNSPEC = common dso_local global i32 0, align 4
@TCA_KIND = common dso_local global i32 0, align 4
@TCA_STATS2 = common dso_local global i32 0, align 4
@TCA_STATS = common dso_local global i32 0, align 4
@TCA_XSTATS = common dso_local global i32 0, align 4
@TCA_PAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.Qdisc*, i64, i32, i32, i32, i32)* @tc_fill_tclass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc_fill_tclass(%struct.sk_buff* %0, %struct.Qdisc* %1, i64 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.Qdisc*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.tcmsg*, align 8
  %17 = alloca %struct.nlmsghdr*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.gnet_dump, align 4
  %20 = alloca %struct.Qdisc_class_ops*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %9, align 8
  store %struct.Qdisc* %1, %struct.Qdisc** %10, align 8
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %22 = call i8* @skb_tail_pointer(%struct.sk_buff* %21)
  store i8* %22, i8** %18, align 8
  %23 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %24 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load %struct.Qdisc_class_ops*, %struct.Qdisc_class_ops** %26, align 8
  store %struct.Qdisc_class_ops* %27, %struct.Qdisc_class_ops** %20, align 8
  %28 = call i32 (...) @cond_resched()
  %29 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* %15, align 4
  %33 = load i32, i32* %14, align 4
  %34 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %29, i32 %30, i32 %31, i32 %32, i32 48, i32 %33)
  store %struct.nlmsghdr* %34, %struct.nlmsghdr** %17, align 8
  %35 = load %struct.nlmsghdr*, %struct.nlmsghdr** %17, align 8
  %36 = icmp ne %struct.nlmsghdr* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %7
  br label %134

38:                                               ; preds = %7
  %39 = load %struct.nlmsghdr*, %struct.nlmsghdr** %17, align 8
  %40 = call %struct.tcmsg* @nlmsg_data(%struct.nlmsghdr* %39)
  store %struct.tcmsg* %40, %struct.tcmsg** %16, align 8
  %41 = load i32, i32* @AF_UNSPEC, align 4
  %42 = load %struct.tcmsg*, %struct.tcmsg** %16, align 8
  %43 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %42, i32 0, i32 6
  store i32 %41, i32* %43, align 8
  %44 = load %struct.tcmsg*, %struct.tcmsg** %16, align 8
  %45 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %44, i32 0, i32 5
  store i64 0, i64* %45, align 8
  %46 = load %struct.tcmsg*, %struct.tcmsg** %16, align 8
  %47 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %46, i32 0, i32 4
  store i64 0, i64* %47, align 8
  %48 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %49 = call %struct.TYPE_4__* @qdisc_dev(%struct.Qdisc* %48)
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.tcmsg*, %struct.tcmsg** %16, align 8
  %53 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 8
  %54 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %55 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.tcmsg*, %struct.tcmsg** %16, align 8
  %58 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  %59 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %60 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.tcmsg*, %struct.tcmsg** %16, align 8
  %63 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 8
  %64 = load %struct.tcmsg*, %struct.tcmsg** %16, align 8
  %65 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %64, i32 0, i32 0
  store i64 0, i64* %65, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %67 = load i32, i32* @TCA_KIND, align 4
  %68 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %69 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %68, i32 0, i32 0
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @nla_put_string(%struct.sk_buff* %66, i32 %67, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %38
  br label %135

76:                                               ; preds = %38
  %77 = load %struct.Qdisc_class_ops*, %struct.Qdisc_class_ops** %20, align 8
  %78 = getelementptr inbounds %struct.Qdisc_class_ops, %struct.Qdisc_class_ops* %77, i32 0, i32 0
  %79 = load i64 (%struct.Qdisc.0*, i64, %struct.sk_buff*, %struct.tcmsg*)*, i64 (%struct.Qdisc.0*, i64, %struct.sk_buff*, %struct.tcmsg*)** %78, align 8
  %80 = icmp ne i64 (%struct.Qdisc.0*, i64, %struct.sk_buff*, %struct.tcmsg*)* %79, null
  br i1 %80, label %81, label %93

81:                                               ; preds = %76
  %82 = load %struct.Qdisc_class_ops*, %struct.Qdisc_class_ops** %20, align 8
  %83 = getelementptr inbounds %struct.Qdisc_class_ops, %struct.Qdisc_class_ops* %82, i32 0, i32 0
  %84 = load i64 (%struct.Qdisc.0*, i64, %struct.sk_buff*, %struct.tcmsg*)*, i64 (%struct.Qdisc.0*, i64, %struct.sk_buff*, %struct.tcmsg*)** %83, align 8
  %85 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %86 = bitcast %struct.Qdisc* %85 to %struct.Qdisc.0*
  %87 = load i64, i64* %11, align 8
  %88 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %89 = load %struct.tcmsg*, %struct.tcmsg** %16, align 8
  %90 = call i64 %84(%struct.Qdisc.0* %86, i64 %87, %struct.sk_buff* %88, %struct.tcmsg* %89)
  %91 = icmp slt i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %81
  br label %135

93:                                               ; preds = %81, %76
  %94 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %95 = load i32, i32* @TCA_STATS2, align 4
  %96 = load i32, i32* @TCA_STATS, align 4
  %97 = load i32, i32* @TCA_XSTATS, align 4
  %98 = load i32, i32* @TCA_PAD, align 4
  %99 = call i64 @gnet_stats_start_copy_compat(%struct.sk_buff* %94, i32 %95, i32 %96, i32 %97, i32* null, %struct.gnet_dump* %19, i32 %98)
  %100 = icmp slt i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %93
  br label %135

102:                                              ; preds = %93
  %103 = load %struct.Qdisc_class_ops*, %struct.Qdisc_class_ops** %20, align 8
  %104 = getelementptr inbounds %struct.Qdisc_class_ops, %struct.Qdisc_class_ops* %103, i32 0, i32 1
  %105 = load i64 (%struct.Qdisc.1*, i64, %struct.gnet_dump*)*, i64 (%struct.Qdisc.1*, i64, %struct.gnet_dump*)** %104, align 8
  %106 = icmp ne i64 (%struct.Qdisc.1*, i64, %struct.gnet_dump*)* %105, null
  br i1 %106, label %107, label %117

107:                                              ; preds = %102
  %108 = load %struct.Qdisc_class_ops*, %struct.Qdisc_class_ops** %20, align 8
  %109 = getelementptr inbounds %struct.Qdisc_class_ops, %struct.Qdisc_class_ops* %108, i32 0, i32 1
  %110 = load i64 (%struct.Qdisc.1*, i64, %struct.gnet_dump*)*, i64 (%struct.Qdisc.1*, i64, %struct.gnet_dump*)** %109, align 8
  %111 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %112 = bitcast %struct.Qdisc* %111 to %struct.Qdisc.1*
  %113 = load i64, i64* %11, align 8
  %114 = call i64 %110(%struct.Qdisc.1* %112, i64 %113, %struct.gnet_dump* %19)
  %115 = icmp slt i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %107
  br label %135

117:                                              ; preds = %107, %102
  %118 = call i64 @gnet_stats_finish_copy(%struct.gnet_dump* %19)
  %119 = icmp slt i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %117
  br label %135

121:                                              ; preds = %117
  %122 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %123 = call i8* @skb_tail_pointer(%struct.sk_buff* %122)
  %124 = load i8*, i8** %18, align 8
  %125 = ptrtoint i8* %123 to i64
  %126 = ptrtoint i8* %124 to i64
  %127 = sub i64 %125, %126
  %128 = trunc i64 %127 to i32
  %129 = load %struct.nlmsghdr*, %struct.nlmsghdr** %17, align 8
  %130 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 4
  %131 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %132 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  store i32 %133, i32* %8, align 4
  br label %139

134:                                              ; preds = %37
  br label %135

135:                                              ; preds = %134, %120, %116, %101, %92, %75
  %136 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %137 = load i8*, i8** %18, align 8
  %138 = call i32 @nlmsg_trim(%struct.sk_buff* %136, i8* %137)
  store i32 -1, i32* %8, align 4
  br label %139

139:                                              ; preds = %135, %121
  %140 = load i32, i32* %8, align 4
  ret i32 %140
}

declare dso_local i8* @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.tcmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local %struct.TYPE_4__* @qdisc_dev(%struct.Qdisc*) #1

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @gnet_stats_start_copy_compat(%struct.sk_buff*, i32, i32, i32, i32*, %struct.gnet_dump*, i32) #1

declare dso_local i64 @gnet_stats_finish_copy(%struct.gnet_dump*) #1

declare dso_local i32 @nlmsg_trim(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
