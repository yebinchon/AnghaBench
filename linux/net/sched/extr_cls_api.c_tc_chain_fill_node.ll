; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tc_chain_fill_node.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tc_chain_fill_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto_ops = type { i64 (%struct.sk_buff*, %struct.net*, i8*)*, i32 }
%struct.sk_buff = type opaque
%struct.net = type opaque
%struct.net.0 = type { i32 }
%struct.sk_buff.1 = type { i32 }
%struct.tcf_block = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.tcmsg = type { i32, i32, i32, i64, i64, i64, i32 }
%struct.TYPE_3__ = type { i32 }

@AF_UNSPEC = common dso_local global i32 0, align 4
@TCM_IFINDEX_MAGIC_BLOCK = common dso_local global i32 0, align 4
@TCA_CHAIN = common dso_local global i32 0, align 4
@TCA_KIND = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcf_proto_ops*, i8*, i32, %struct.net.0*, %struct.sk_buff.1*, %struct.tcf_block*, i32, i32, i32, i32)* @tc_chain_fill_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc_chain_fill_node(%struct.tcf_proto_ops* %0, i8* %1, i32 %2, %struct.net.0* %3, %struct.sk_buff.1* %4, %struct.tcf_block* %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.tcf_proto_ops*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.net.0*, align 8
  %16 = alloca %struct.sk_buff.1*, align 8
  %17 = alloca %struct.tcf_block*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca %struct.tcf_proto_ops*, align 8
  %24 = alloca %struct.nlmsghdr*, align 8
  %25 = alloca %struct.tcmsg*, align 8
  %26 = alloca i8*, align 8
  store %struct.tcf_proto_ops* %0, %struct.tcf_proto_ops** %12, align 8
  store i8* %1, i8** %13, align 8
  store i32 %2, i32* %14, align 4
  store %struct.net.0* %3, %struct.net.0** %15, align 8
  store %struct.sk_buff.1* %4, %struct.sk_buff.1** %16, align 8
  store %struct.tcf_block* %5, %struct.tcf_block** %17, align 8
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  %27 = load %struct.sk_buff.1*, %struct.sk_buff.1** %16, align 8
  %28 = call i8* @skb_tail_pointer(%struct.sk_buff.1* %27)
  store i8* %28, i8** %22, align 8
  %29 = load %struct.tcf_proto_ops*, %struct.tcf_proto_ops** %12, align 8
  store %struct.tcf_proto_ops* %29, %struct.tcf_proto_ops** %23, align 8
  %30 = load i8*, i8** %13, align 8
  store i8* %30, i8** %26, align 8
  %31 = load %struct.sk_buff.1*, %struct.sk_buff.1** %16, align 8
  %32 = load i32, i32* %18, align 4
  %33 = load i32, i32* %19, align 4
  %34 = load i32, i32* %21, align 4
  %35 = load i32, i32* %20, align 4
  %36 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff.1* %31, i32 %32, i32 %33, i32 %34, i32 48, i32 %35)
  store %struct.nlmsghdr* %36, %struct.nlmsghdr** %24, align 8
  %37 = load %struct.nlmsghdr*, %struct.nlmsghdr** %24, align 8
  %38 = icmp ne %struct.nlmsghdr* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %10
  br label %126

40:                                               ; preds = %10
  %41 = load %struct.nlmsghdr*, %struct.nlmsghdr** %24, align 8
  %42 = call %struct.tcmsg* @nlmsg_data(%struct.nlmsghdr* %41)
  store %struct.tcmsg* %42, %struct.tcmsg** %25, align 8
  %43 = load i32, i32* @AF_UNSPEC, align 4
  %44 = load %struct.tcmsg*, %struct.tcmsg** %25, align 8
  %45 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %44, i32 0, i32 6
  store i32 %43, i32* %45, align 8
  %46 = load %struct.tcmsg*, %struct.tcmsg** %25, align 8
  %47 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %46, i32 0, i32 5
  store i64 0, i64* %47, align 8
  %48 = load %struct.tcmsg*, %struct.tcmsg** %25, align 8
  %49 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %48, i32 0, i32 4
  store i64 0, i64* %49, align 8
  %50 = load %struct.tcmsg*, %struct.tcmsg** %25, align 8
  %51 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %50, i32 0, i32 3
  store i64 0, i64* %51, align 8
  %52 = load %struct.tcf_block*, %struct.tcf_block** %17, align 8
  %53 = getelementptr inbounds %struct.tcf_block, %struct.tcf_block* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = icmp ne %struct.TYPE_4__* %54, null
  br i1 %55, label %56, label %72

56:                                               ; preds = %40
  %57 = load %struct.tcf_block*, %struct.tcf_block** %17, align 8
  %58 = getelementptr inbounds %struct.tcf_block, %struct.tcf_block* %57, i32 0, i32 1
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = call %struct.TYPE_3__* @qdisc_dev(%struct.TYPE_4__* %59)
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.tcmsg*, %struct.tcmsg** %25, align 8
  %64 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.tcf_block*, %struct.tcf_block** %17, align 8
  %66 = getelementptr inbounds %struct.tcf_block, %struct.tcf_block* %65, i32 0, i32 1
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.tcmsg*, %struct.tcmsg** %25, align 8
  %71 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  br label %81

72:                                               ; preds = %40
  %73 = load i32, i32* @TCM_IFINDEX_MAGIC_BLOCK, align 4
  %74 = load %struct.tcmsg*, %struct.tcmsg** %25, align 8
  %75 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load %struct.tcf_block*, %struct.tcf_block** %17, align 8
  %77 = getelementptr inbounds %struct.tcf_block, %struct.tcf_block* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.tcmsg*, %struct.tcmsg** %25, align 8
  %80 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  br label %81

81:                                               ; preds = %72, %56
  %82 = load %struct.sk_buff.1*, %struct.sk_buff.1** %16, align 8
  %83 = load i32, i32* @TCA_CHAIN, align 4
  %84 = load i32, i32* %14, align 4
  %85 = call i64 @nla_put_u32(%struct.sk_buff.1* %82, i32 %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  br label %127

88:                                               ; preds = %81
  %89 = load %struct.tcf_proto_ops*, %struct.tcf_proto_ops** %23, align 8
  %90 = icmp ne %struct.tcf_proto_ops* %89, null
  br i1 %90, label %91, label %113

91:                                               ; preds = %88
  %92 = load %struct.sk_buff.1*, %struct.sk_buff.1** %16, align 8
  %93 = load i32, i32* @TCA_KIND, align 4
  %94 = load %struct.tcf_proto_ops*, %struct.tcf_proto_ops** %23, align 8
  %95 = getelementptr inbounds %struct.tcf_proto_ops, %struct.tcf_proto_ops* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i64 @nla_put_string(%struct.sk_buff.1* %92, i32 %93, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %91
  br label %127

100:                                              ; preds = %91
  %101 = load %struct.tcf_proto_ops*, %struct.tcf_proto_ops** %23, align 8
  %102 = getelementptr inbounds %struct.tcf_proto_ops, %struct.tcf_proto_ops* %101, i32 0, i32 0
  %103 = load i64 (%struct.sk_buff*, %struct.net*, i8*)*, i64 (%struct.sk_buff*, %struct.net*, i8*)** %102, align 8
  %104 = load %struct.sk_buff.1*, %struct.sk_buff.1** %16, align 8
  %105 = bitcast %struct.sk_buff.1* %104 to %struct.sk_buff*
  %106 = load %struct.net.0*, %struct.net.0** %15, align 8
  %107 = bitcast %struct.net.0* %106 to %struct.net*
  %108 = load i8*, i8** %26, align 8
  %109 = call i64 %103(%struct.sk_buff* %105, %struct.net* %107, i8* %108)
  %110 = icmp slt i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %100
  br label %127

112:                                              ; preds = %100
  br label %113

113:                                              ; preds = %112, %88
  %114 = load %struct.sk_buff.1*, %struct.sk_buff.1** %16, align 8
  %115 = call i8* @skb_tail_pointer(%struct.sk_buff.1* %114)
  %116 = load i8*, i8** %22, align 8
  %117 = ptrtoint i8* %115 to i64
  %118 = ptrtoint i8* %116 to i64
  %119 = sub i64 %117, %118
  %120 = trunc i64 %119 to i32
  %121 = load %struct.nlmsghdr*, %struct.nlmsghdr** %24, align 8
  %122 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 4
  %123 = load %struct.sk_buff.1*, %struct.sk_buff.1** %16, align 8
  %124 = getelementptr inbounds %struct.sk_buff.1, %struct.sk_buff.1* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  store i32 %125, i32* %11, align 4
  br label %133

126:                                              ; preds = %39
  br label %127

127:                                              ; preds = %126, %111, %99, %87
  %128 = load %struct.sk_buff.1*, %struct.sk_buff.1** %16, align 8
  %129 = load i8*, i8** %22, align 8
  %130 = call i32 @nlmsg_trim(%struct.sk_buff.1* %128, i8* %129)
  %131 = load i32, i32* @EMSGSIZE, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %11, align 4
  br label %133

133:                                              ; preds = %127, %113
  %134 = load i32, i32* %11, align 4
  ret i32 %134
}

declare dso_local i8* @skb_tail_pointer(%struct.sk_buff.1*) #1

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff.1*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.tcmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local %struct.TYPE_3__* @qdisc_dev(%struct.TYPE_4__*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff.1*, i32, i32) #1

declare dso_local i64 @nla_put_string(%struct.sk_buff.1*, i32, i32) #1

declare dso_local i32 @nlmsg_trim(%struct.sk_buff.1*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
