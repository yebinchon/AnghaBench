; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_core.c_call_ad.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_core.c_call_ad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ip_set = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.ip_set*, i32)*, i32 (%struct.ip_set*, %struct.nlattr**, i32, i32*, i32, i32)* }
%struct.nlattr = type { i32 }
%struct.nlmsghdr = type { i64, i32 }
%struct.nlmsgerr = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@IPSET_FLAG_EXIST = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@IPSET_ERR_EXIST = common dso_local global i32 0, align 4
@SIZE_MAX = common dso_local global i32 0, align 4
@IPSET_ATTR_CMD_MAX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NLMSG_ERROR = common dso_local global i32 0, align 4
@ip_set_adt_policy = common dso_local global i32 0, align 4
@IPSET_ATTR_LINENO = common dso_local global i64 0, align 8
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, %struct.ip_set*, %struct.nlattr**, i32, i32, i32)* @call_ad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @call_ad(%struct.sock* %0, %struct.sk_buff* %1, %struct.ip_set* %2, %struct.nlattr** %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.ip_set*, align 8
  %12 = alloca %struct.nlattr**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.nlmsghdr*, align 8
  %21 = alloca %struct.nlmsghdr*, align 8
  %22 = alloca %struct.sk_buff*, align 8
  %23 = alloca %struct.nlmsgerr*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i64, align 8
  %28 = alloca %struct.nlattr*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32, align 4
  %31 = alloca %struct.TYPE_4__, align 4
  %32 = alloca %struct.TYPE_4__, align 4
  store %struct.sock* %0, %struct.sock** %9, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %10, align 8
  store %struct.ip_set* %2, %struct.ip_set** %11, align 8
  store %struct.nlattr** %3, %struct.nlattr*** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %17, align 4
  %33 = load i32, i32* %14, align 4
  %34 = load i32, i32* @IPSET_FLAG_EXIST, align 4
  %35 = and i32 %33, %34
  store i32 %35, i32* %18, align 4
  store i32 0, i32* %19, align 4
  br label %36

36:                                               ; preds = %76, %7
  %37 = load %struct.ip_set*, %struct.ip_set** %11, align 8
  %38 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %37, i32 0, i32 0
  %39 = call i32 @spin_lock_bh(i32* %38)
  %40 = load %struct.ip_set*, %struct.ip_set** %11, align 8
  %41 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %40, i32 0, i32 1
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32 (%struct.ip_set*, %struct.nlattr**, i32, i32*, i32, i32)*, i32 (%struct.ip_set*, %struct.nlattr**, i32, i32*, i32, i32)** %43, align 8
  %45 = load %struct.ip_set*, %struct.ip_set** %11, align 8
  %46 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* %19, align 4
  %50 = call i32 %44(%struct.ip_set* %45, %struct.nlattr** %46, i32 %47, i32* %17, i32 %48, i32 %49)
  store i32 %50, i32* %16, align 4
  %51 = load %struct.ip_set*, %struct.ip_set** %11, align 8
  %52 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %51, i32 0, i32 0
  %53 = call i32 @spin_unlock_bh(i32* %52)
  store i32 1, i32* %19, align 4
  br label %54

54:                                               ; preds = %36
  %55 = load i32, i32* %16, align 4
  %56 = load i32, i32* @EAGAIN, align 4
  %57 = sub nsw i32 0, %56
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %59, label %76

59:                                               ; preds = %54
  %60 = load %struct.ip_set*, %struct.ip_set** %11, align 8
  %61 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %60, i32 0, i32 1
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32 (%struct.ip_set*, i32)*, i32 (%struct.ip_set*, i32)** %63, align 8
  %65 = icmp ne i32 (%struct.ip_set*, i32)* %64, null
  br i1 %65, label %66, label %76

66:                                               ; preds = %59
  %67 = load %struct.ip_set*, %struct.ip_set** %11, align 8
  %68 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %67, i32 0, i32 1
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32 (%struct.ip_set*, i32)*, i32 (%struct.ip_set*, i32)** %70, align 8
  %72 = load %struct.ip_set*, %struct.ip_set** %11, align 8
  %73 = load i32, i32* %19, align 4
  %74 = call i32 %71(%struct.ip_set* %72, i32 %73)
  store i32 %74, i32* %16, align 4
  %75 = icmp eq i32 %74, 0
  br label %76

76:                                               ; preds = %66, %59, %54
  %77 = phi i1 [ false, %59 ], [ false, %54 ], [ %75, %66 ]
  br i1 %77, label %36, label %78

78:                                               ; preds = %76
  %79 = load i32, i32* %16, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %78
  %82 = load i32, i32* %16, align 4
  %83 = load i32, i32* @IPSET_ERR_EXIST, align 4
  %84 = sub nsw i32 0, %83
  %85 = icmp eq i32 %82, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %81
  %87 = load i32, i32* %18, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %86, %78
  store i32 0, i32* %8, align 4
  br label %188

90:                                               ; preds = %86, %81
  %91 = load i32, i32* %17, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %186

93:                                               ; preds = %90
  %94 = load i32, i32* %15, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %186

96:                                               ; preds = %93
  %97 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %98 = call %struct.nlmsghdr* @nlmsg_hdr(%struct.sk_buff* %97)
  store %struct.nlmsghdr* %98, %struct.nlmsghdr** %21, align 8
  %99 = load i32, i32* @SIZE_MAX, align 4
  %100 = load %struct.nlmsghdr*, %struct.nlmsghdr** %21, align 8
  %101 = call i64 @nlmsg_len(%struct.nlmsghdr* %100)
  %102 = add i64 8, %101
  %103 = call i64 @min(i32 %99, i64 %102)
  store i64 %103, i64* %24, align 8
  %104 = call i32 @nlmsg_total_size(i32 4)
  store i32 %104, i32* %25, align 4
  %105 = load i32, i32* @IPSET_ATTR_CMD_MAX, align 4
  %106 = add nsw i32 %105, 1
  %107 = zext i32 %106 to i64
  %108 = call i8* @llvm.stacksave()
  store i8* %108, i8** %26, align 8
  %109 = alloca %struct.nlattr*, i64 %107, align 16
  store i64 %107, i64* %27, align 8
  %110 = load i64, i64* %24, align 8
  %111 = load i32, i32* @GFP_KERNEL, align 4
  %112 = call %struct.sk_buff* @nlmsg_new(i64 %110, i32 %111)
  store %struct.sk_buff* %112, %struct.sk_buff** %22, align 8
  %113 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %114 = icmp ne %struct.sk_buff* %113, null
  br i1 %114, label %118, label %115

115:                                              ; preds = %96
  %116 = load i32, i32* @ENOMEM, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %8, align 4
  store i32 1, i32* %30, align 4
  br label %184

118:                                              ; preds = %96
  %119 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %120 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %121 = call i32 @NETLINK_CB(%struct.sk_buff* %120)
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32 %121, i32* %122, align 4
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.nlmsghdr*, %struct.nlmsghdr** %21, align 8
  %126 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @NLMSG_ERROR, align 4
  %129 = load i64, i64* %24, align 8
  %130 = call %struct.nlmsghdr* @__nlmsg_put(%struct.sk_buff* %119, i32 %124, i32 %127, i32 %128, i64 %129, i32 0)
  store %struct.nlmsghdr* %130, %struct.nlmsghdr** %20, align 8
  %131 = load %struct.nlmsghdr*, %struct.nlmsghdr** %20, align 8
  %132 = call %struct.nlmsgerr* @nlmsg_data(%struct.nlmsghdr* %131)
  store %struct.nlmsgerr* %132, %struct.nlmsgerr** %23, align 8
  %133 = load i32, i32* %16, align 4
  %134 = load %struct.nlmsgerr*, %struct.nlmsgerr** %23, align 8
  %135 = getelementptr inbounds %struct.nlmsgerr, %struct.nlmsgerr* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 4
  %136 = load %struct.nlmsgerr*, %struct.nlmsgerr** %23, align 8
  %137 = getelementptr inbounds %struct.nlmsgerr, %struct.nlmsgerr* %136, i32 0, i32 1
  %138 = load %struct.nlmsghdr*, %struct.nlmsghdr** %21, align 8
  %139 = load %struct.nlmsghdr*, %struct.nlmsghdr** %21, align 8
  %140 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @memcpy(i32* %137, %struct.nlmsghdr* %138, i64 %141)
  %143 = load %struct.nlmsgerr*, %struct.nlmsgerr** %23, align 8
  %144 = getelementptr inbounds %struct.nlmsgerr, %struct.nlmsgerr* %143, i32 0, i32 1
  %145 = bitcast i32* %144 to i8*
  %146 = load i32, i32* %25, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr i8, i8* %145, i64 %147
  %149 = bitcast i8* %148 to %struct.nlattr*
  store %struct.nlattr* %149, %struct.nlattr** %28, align 8
  %150 = load i32, i32* @IPSET_ATTR_CMD_MAX, align 4
  %151 = load %struct.nlattr*, %struct.nlattr** %28, align 8
  %152 = load %struct.nlmsghdr*, %struct.nlmsghdr** %21, align 8
  %153 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i32, i32* %25, align 4
  %156 = sext i32 %155 to i64
  %157 = sub nsw i64 %154, %156
  %158 = load i32, i32* @ip_set_adt_policy, align 4
  %159 = call i32 @nla_parse(%struct.nlattr** %109, i32 %150, %struct.nlattr* %151, i64 %157, i32 %158, i32* null)
  store i32 %159, i32* %16, align 4
  %160 = load i32, i32* %16, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %118
  %163 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %164 = call i32 @nlmsg_free(%struct.sk_buff* %163)
  %165 = load i32, i32* %16, align 4
  store i32 %165, i32* %8, align 4
  store i32 1, i32* %30, align 4
  br label %184

166:                                              ; preds = %118
  %167 = load i64, i64* @IPSET_ATTR_LINENO, align 8
  %168 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %109, i64 %167
  %169 = load %struct.nlattr*, %struct.nlattr** %168, align 8
  %170 = call i32* @nla_data(%struct.nlattr* %169)
  store i32* %170, i32** %29, align 8
  %171 = load i32, i32* %17, align 4
  %172 = load i32*, i32** %29, align 8
  store i32 %171, i32* %172, align 4
  %173 = load %struct.sock*, %struct.sock** %9, align 8
  %174 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %175 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %176 = call i32 @NETLINK_CB(%struct.sk_buff* %175)
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 %176, i32* %177, align 4
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @MSG_DONTWAIT, align 4
  %181 = call i32 @netlink_unicast(%struct.sock* %173, %struct.sk_buff* %174, i32 %179, i32 %180)
  %182 = load i32, i32* @EINTR, align 4
  %183 = sub nsw i32 0, %182
  store i32 %183, i32* %8, align 4
  store i32 1, i32* %30, align 4
  br label %184

184:                                              ; preds = %166, %162, %115
  %185 = load i8*, i8** %26, align 8
  call void @llvm.stackrestore(i8* %185)
  br label %188

186:                                              ; preds = %93, %90
  %187 = load i32, i32* %16, align 4
  store i32 %187, i32* %8, align 4
  br label %188

188:                                              ; preds = %186, %184, %89
  %189 = load i32, i32* %8, align 4
  ret i32 %189
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local %struct.nlmsghdr* @nlmsg_hdr(%struct.sk_buff*) #1

declare dso_local i64 @min(i32, i64) #1

declare dso_local i64 @nlmsg_len(%struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_total_size(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.sk_buff* @nlmsg_new(i64, i32) #1

declare dso_local %struct.nlmsghdr* @__nlmsg_put(%struct.sk_buff*, i32, i32, i32, i64, i32) #1

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local %struct.nlmsgerr* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @memcpy(i32*, %struct.nlmsghdr*, i64) #1

declare dso_local i32 @nla_parse(%struct.nlattr**, i32, %struct.nlattr*, i64, i32, i32*) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local i32* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @netlink_unicast(%struct.sock*, %struct.sk_buff*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
