; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_xfrm_user_rcv_msg.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_xfrm_user_rcv_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_link = type { i32 (%struct.sk_buff.0*, %struct.nlmsghdr.1*, %struct.nlattr.2**)*, i64, i64, i32, i32*, i32 }
%struct.sk_buff.0 = type opaque
%struct.nlmsghdr.1 = type opaque
%struct.nlattr.2 = type opaque
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32, i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.netlink_dump_control = type { i32, i32*, i32 }
%struct.nlattr = type { i32 }

@XFRMA_MAX = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@XFRM_MSG_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@XFRM_MSG_BASE = common dso_local global i32 0, align 4
@xfrm_dispatch = common dso_local global %struct.xfrm_link* null, align 8
@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@XFRM_MSG_GETSA = common dso_local global i32 0, align 4
@XFRM_MSG_GETPOLICY = common dso_local global i32 0, align 4
@NLM_F_DUMP = common dso_local global i32 0, align 4
@xfrm_msg_min = common dso_local global i32* null, align 8
@xfrma_policy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_ext_ack*)* @xfrm_user_rcv_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm_user_rcv_msg(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.xfrm_link*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.netlink_dump_control, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.net* @sock_net(i32 %18)
  store %struct.net* %19, %struct.net** %8, align 8
  %20 = load i32, i32* @XFRMA_MAX, align 4
  %21 = add nsw i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %9, align 8
  %24 = alloca %struct.nlattr*, i64 %22, align 16
  store i64 %22, i64* %10, align 8
  %25 = call i64 (...) @in_compat_syscall()
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32, i32* @EOPNOTSUPP, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %155

30:                                               ; preds = %3
  %31 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %32 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* @XFRM_MSG_MAX, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %155

40:                                               ; preds = %30
  %41 = load i32, i32* @XFRM_MSG_BASE, align 4
  %42 = load i32, i32* %12, align 4
  %43 = sub nsw i32 %42, %41
  store i32 %43, i32* %12, align 4
  %44 = load %struct.xfrm_link*, %struct.xfrm_link** @xfrm_dispatch, align 8
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.xfrm_link, %struct.xfrm_link* %44, i64 %46
  store %struct.xfrm_link* %47, %struct.xfrm_link** %11, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %49 = load i32, i32* @CAP_NET_ADMIN, align 4
  %50 = call i32 @netlink_net_capable(%struct.sk_buff* %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %40
  %53 = load i32, i32* @EPERM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %155

55:                                               ; preds = %40
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* @XFRM_MSG_GETSA, align 4
  %58 = load i32, i32* @XFRM_MSG_BASE, align 4
  %59 = sub nsw i32 %57, %58
  %60 = icmp eq i32 %56, %59
  br i1 %60, label %67, label %61

61:                                               ; preds = %55
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* @XFRM_MSG_GETPOLICY, align 4
  %64 = load i32, i32* @XFRM_MSG_BASE, align 4
  %65 = sub nsw i32 %63, %64
  %66 = icmp eq i32 %62, %65
  br i1 %66, label %67, label %102

67:                                               ; preds = %61, %55
  %68 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %69 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @NLM_F_DUMP, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %102

74:                                               ; preds = %67
  %75 = load %struct.xfrm_link*, %struct.xfrm_link** %11, align 8
  %76 = getelementptr inbounds %struct.xfrm_link, %struct.xfrm_link* %75, i32 0, i32 4
  %77 = load i32*, i32** %76, align 8
  %78 = icmp eq i32* %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %155

82:                                               ; preds = %74
  %83 = getelementptr inbounds %struct.netlink_dump_control, %struct.netlink_dump_control* %15, i32 0, i32 0
  %84 = load %struct.xfrm_link*, %struct.xfrm_link** %11, align 8
  %85 = getelementptr inbounds %struct.xfrm_link, %struct.xfrm_link* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  store i32 %86, i32* %83, align 8
  %87 = getelementptr inbounds %struct.netlink_dump_control, %struct.netlink_dump_control* %15, i32 0, i32 1
  %88 = load %struct.xfrm_link*, %struct.xfrm_link** %11, align 8
  %89 = getelementptr inbounds %struct.xfrm_link, %struct.xfrm_link* %88, i32 0, i32 4
  %90 = load i32*, i32** %89, align 8
  store i32* %90, i32** %87, align 8
  %91 = getelementptr inbounds %struct.netlink_dump_control, %struct.netlink_dump_control* %15, i32 0, i32 2
  %92 = load %struct.xfrm_link*, %struct.xfrm_link** %11, align 8
  %93 = getelementptr inbounds %struct.xfrm_link, %struct.xfrm_link* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 8
  store i32 %94, i32* %91, align 8
  %95 = load %struct.net*, %struct.net** %8, align 8
  %96 = getelementptr inbounds %struct.net, %struct.net* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %100 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %101 = call i32 @netlink_dump_start(i32 %98, %struct.sk_buff* %99, %struct.nlmsghdr* %100, %struct.netlink_dump_control* %15)
  store i32 %101, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %155

102:                                              ; preds = %67, %61
  %103 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %104 = load i32*, i32** @xfrm_msg_min, align 8
  %105 = load i32, i32* %12, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.xfrm_link*, %struct.xfrm_link** %11, align 8
  %110 = getelementptr inbounds %struct.xfrm_link, %struct.xfrm_link* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %102
  br label %117

114:                                              ; preds = %102
  %115 = load i32, i32* @XFRMA_MAX, align 4
  %116 = sext i32 %115 to i64
  br label %117

117:                                              ; preds = %114, %113
  %118 = phi i64 [ %111, %113 ], [ %116, %114 ]
  %119 = trunc i64 %118 to i32
  %120 = load %struct.xfrm_link*, %struct.xfrm_link** %11, align 8
  %121 = getelementptr inbounds %struct.xfrm_link, %struct.xfrm_link* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %117
  br label %128

125:                                              ; preds = %117
  %126 = load i32, i32* @xfrma_policy, align 4
  %127 = sext i32 %126 to i64
  br label %128

128:                                              ; preds = %125, %124
  %129 = phi i64 [ %122, %124 ], [ %127, %125 ]
  %130 = trunc i64 %129 to i32
  %131 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %132 = call i32 @nlmsg_parse_deprecated(%struct.nlmsghdr* %103, i32 %108, %struct.nlattr** %24, i32 %119, i32 %130, %struct.netlink_ext_ack* %131)
  store i32 %132, i32* %13, align 4
  %133 = load i32, i32* %13, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %128
  %136 = load i32, i32* %13, align 4
  store i32 %136, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %155

137:                                              ; preds = %128
  %138 = load %struct.xfrm_link*, %struct.xfrm_link** %11, align 8
  %139 = getelementptr inbounds %struct.xfrm_link, %struct.xfrm_link* %138, i32 0, i32 0
  %140 = load i32 (%struct.sk_buff.0*, %struct.nlmsghdr.1*, %struct.nlattr.2**)*, i32 (%struct.sk_buff.0*, %struct.nlmsghdr.1*, %struct.nlattr.2**)** %139, align 8
  %141 = icmp eq i32 (%struct.sk_buff.0*, %struct.nlmsghdr.1*, %struct.nlattr.2**)* %140, null
  br i1 %141, label %142, label %145

142:                                              ; preds = %137
  %143 = load i32, i32* @EINVAL, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %155

145:                                              ; preds = %137
  %146 = load %struct.xfrm_link*, %struct.xfrm_link** %11, align 8
  %147 = getelementptr inbounds %struct.xfrm_link, %struct.xfrm_link* %146, i32 0, i32 0
  %148 = load i32 (%struct.sk_buff.0*, %struct.nlmsghdr.1*, %struct.nlattr.2**)*, i32 (%struct.sk_buff.0*, %struct.nlmsghdr.1*, %struct.nlattr.2**)** %147, align 8
  %149 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %150 = bitcast %struct.sk_buff* %149 to %struct.sk_buff.0*
  %151 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %152 = bitcast %struct.nlmsghdr* %151 to %struct.nlmsghdr.1*
  %153 = bitcast %struct.nlattr** %24 to %struct.nlattr.2**
  %154 = call i32 %148(%struct.sk_buff.0* %150, %struct.nlmsghdr.1* %152, %struct.nlattr.2** %153)
  store i32 %154, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %155

155:                                              ; preds = %145, %142, %135, %82, %79, %52, %37, %27
  %156 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %156)
  %157 = load i32, i32* %4, align 4
  ret i32 %157
}

declare dso_local %struct.net* @sock_net(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @in_compat_syscall(...) #1

declare dso_local i32 @netlink_net_capable(%struct.sk_buff*, i32) #1

declare dso_local i32 @netlink_dump_start(i32, %struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_dump_control*) #1

declare dso_local i32 @nlmsg_parse_deprecated(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32, %struct.netlink_ext_ack*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
