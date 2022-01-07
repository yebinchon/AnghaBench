; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tcf_fill_node.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tcf_fill_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tcf_proto = type { %struct.TYPE_5__*, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_5__ = type { i64 (%struct.net*, %struct.tcf_proto*, i8*, %struct.sk_buff*, %struct.tcmsg*, i32)*, i32 }
%struct.tcmsg = type { i64, i32, i32, i32, i32, i64, i64, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.tcf_block = type { i32 }
%struct.Qdisc = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.TYPE_6__ = type { i32 }

@AF_UNSPEC = common dso_local global i32 0, align 4
@TCM_IFINDEX_MAGIC_BLOCK = common dso_local global i32 0, align 4
@TCA_KIND = common dso_local global i32 0, align 4
@TCA_CHAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sk_buff*, %struct.tcf_proto*, %struct.tcf_block*, %struct.Qdisc*, i32, i8*, i32, i32, i32, i32, i32)* @tcf_fill_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_fill_node(%struct.net* %0, %struct.sk_buff* %1, %struct.tcf_proto* %2, %struct.tcf_block* %3, %struct.Qdisc* %4, i32 %5, i8* %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca %struct.net*, align 8
  %15 = alloca %struct.sk_buff*, align 8
  %16 = alloca %struct.tcf_proto*, align 8
  %17 = alloca %struct.tcf_block*, align 8
  %18 = alloca %struct.Qdisc*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.tcmsg*, align 8
  %27 = alloca %struct.nlmsghdr*, align 8
  %28 = alloca i8*, align 8
  store %struct.net* %0, %struct.net** %14, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %15, align 8
  store %struct.tcf_proto* %2, %struct.tcf_proto** %16, align 8
  store %struct.tcf_block* %3, %struct.tcf_block** %17, align 8
  store %struct.Qdisc* %4, %struct.Qdisc** %18, align 8
  store i32 %5, i32* %19, align 4
  store i8* %6, i8** %20, align 8
  store i32 %7, i32* %21, align 4
  store i32 %8, i32* %22, align 4
  store i32 %9, i32* %23, align 4
  store i32 %10, i32* %24, align 4
  store i32 %11, i32* %25, align 4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %30 = call i8* @skb_tail_pointer(%struct.sk_buff* %29)
  store i8* %30, i8** %28, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %32 = load i32, i32* %21, align 4
  %33 = load i32, i32* %22, align 4
  %34 = load i32, i32* %24, align 4
  %35 = load i32, i32* %23, align 4
  %36 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %31, i32 %32, i32 %33, i32 %34, i32 48, i32 %35)
  store %struct.nlmsghdr* %36, %struct.nlmsghdr** %27, align 8
  %37 = load %struct.nlmsghdr*, %struct.nlmsghdr** %27, align 8
  %38 = icmp ne %struct.nlmsghdr* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %12
  br label %144

40:                                               ; preds = %12
  %41 = load %struct.nlmsghdr*, %struct.nlmsghdr** %27, align 8
  %42 = call %struct.tcmsg* @nlmsg_data(%struct.nlmsghdr* %41)
  store %struct.tcmsg* %42, %struct.tcmsg** %26, align 8
  %43 = load i32, i32* @AF_UNSPEC, align 4
  %44 = load %struct.tcmsg*, %struct.tcmsg** %26, align 8
  %45 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %44, i32 0, i32 7
  store i32 %43, i32* %45, align 8
  %46 = load %struct.tcmsg*, %struct.tcmsg** %26, align 8
  %47 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %46, i32 0, i32 6
  store i64 0, i64* %47, align 8
  %48 = load %struct.tcmsg*, %struct.tcmsg** %26, align 8
  %49 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %48, i32 0, i32 5
  store i64 0, i64* %49, align 8
  %50 = load %struct.Qdisc*, %struct.Qdisc** %18, align 8
  %51 = icmp ne %struct.Qdisc* %50, null
  br i1 %51, label %52, label %62

52:                                               ; preds = %40
  %53 = load %struct.Qdisc*, %struct.Qdisc** %18, align 8
  %54 = call %struct.TYPE_6__* @qdisc_dev(%struct.Qdisc* %53)
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.tcmsg*, %struct.tcmsg** %26, align 8
  %58 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* %19, align 4
  %60 = load %struct.tcmsg*, %struct.tcmsg** %26, align 8
  %61 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 4
  br label %71

62:                                               ; preds = %40
  %63 = load i32, i32* @TCM_IFINDEX_MAGIC_BLOCK, align 4
  %64 = load %struct.tcmsg*, %struct.tcmsg** %26, align 8
  %65 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 8
  %66 = load %struct.tcf_block*, %struct.tcf_block** %17, align 8
  %67 = getelementptr inbounds %struct.tcf_block, %struct.tcf_block* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.tcmsg*, %struct.tcmsg** %26, align 8
  %70 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 4
  br label %71

71:                                               ; preds = %62, %52
  %72 = load %struct.tcf_proto*, %struct.tcf_proto** %16, align 8
  %73 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.tcf_proto*, %struct.tcf_proto** %16, align 8
  %76 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @TC_H_MAKE(i32 %74, i32 %77)
  %79 = load %struct.tcmsg*, %struct.tcmsg** %26, align 8
  %80 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %82 = load i32, i32* @TCA_KIND, align 4
  %83 = load %struct.tcf_proto*, %struct.tcf_proto** %16, align 8
  %84 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %83, i32 0, i32 0
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i64 @nla_put_string(%struct.sk_buff* %81, i32 %82, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %71
  br label %145

91:                                               ; preds = %71
  %92 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %93 = load i32, i32* @TCA_CHAIN, align 4
  %94 = load %struct.tcf_proto*, %struct.tcf_proto** %16, align 8
  %95 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %94, i32 0, i32 1
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @nla_put_u32(%struct.sk_buff* %92, i32 %93, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %91
  br label %145

102:                                              ; preds = %91
  %103 = load i8*, i8** %20, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %108, label %105

105:                                              ; preds = %102
  %106 = load %struct.tcmsg*, %struct.tcmsg** %26, align 8
  %107 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %106, i32 0, i32 0
  store i64 0, i64* %107, align 8
  br label %131

108:                                              ; preds = %102
  %109 = load %struct.tcf_proto*, %struct.tcf_proto** %16, align 8
  %110 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %109, i32 0, i32 0
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load i64 (%struct.net*, %struct.tcf_proto*, i8*, %struct.sk_buff*, %struct.tcmsg*, i32)*, i64 (%struct.net*, %struct.tcf_proto*, i8*, %struct.sk_buff*, %struct.tcmsg*, i32)** %112, align 8
  %114 = icmp ne i64 (%struct.net*, %struct.tcf_proto*, i8*, %struct.sk_buff*, %struct.tcmsg*, i32)* %113, null
  br i1 %114, label %115, label %130

115:                                              ; preds = %108
  %116 = load %struct.tcf_proto*, %struct.tcf_proto** %16, align 8
  %117 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %116, i32 0, i32 0
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i64 (%struct.net*, %struct.tcf_proto*, i8*, %struct.sk_buff*, %struct.tcmsg*, i32)*, i64 (%struct.net*, %struct.tcf_proto*, i8*, %struct.sk_buff*, %struct.tcmsg*, i32)** %119, align 8
  %121 = load %struct.net*, %struct.net** %14, align 8
  %122 = load %struct.tcf_proto*, %struct.tcf_proto** %16, align 8
  %123 = load i8*, i8** %20, align 8
  %124 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %125 = load %struct.tcmsg*, %struct.tcmsg** %26, align 8
  %126 = load i32, i32* %25, align 4
  %127 = call i64 %120(%struct.net* %121, %struct.tcf_proto* %122, i8* %123, %struct.sk_buff* %124, %struct.tcmsg* %125, i32 %126)
  %128 = icmp slt i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %115
  br label %145

130:                                              ; preds = %115, %108
  br label %131

131:                                              ; preds = %130, %105
  %132 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %133 = call i8* @skb_tail_pointer(%struct.sk_buff* %132)
  %134 = load i8*, i8** %28, align 8
  %135 = ptrtoint i8* %133 to i64
  %136 = ptrtoint i8* %134 to i64
  %137 = sub i64 %135, %136
  %138 = trunc i64 %137 to i32
  %139 = load %struct.nlmsghdr*, %struct.nlmsghdr** %27, align 8
  %140 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 4
  %141 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %142 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  store i32 %143, i32* %13, align 4
  br label %149

144:                                              ; preds = %39
  br label %145

145:                                              ; preds = %144, %129, %101, %90
  %146 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %147 = load i8*, i8** %28, align 8
  %148 = call i32 @nlmsg_trim(%struct.sk_buff* %146, i8* %147)
  store i32 -1, i32* %13, align 4
  br label %149

149:                                              ; preds = %145, %131
  %150 = load i32, i32* %13, align 4
  ret i32 %150
}

declare dso_local i8* @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.tcmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local %struct.TYPE_6__* @qdisc_dev(%struct.Qdisc*) #1

declare dso_local i32 @TC_H_MAKE(i32, i32) #1

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nlmsg_trim(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
