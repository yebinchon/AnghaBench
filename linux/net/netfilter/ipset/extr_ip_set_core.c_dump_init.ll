; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_core.c_dump_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_core.c_dump_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netlink_callback = type { i64*, i32 }
%struct.ip_set_net = type { i32 }
%struct.nlmsghdr = type { i64 }
%struct.nlattr = type { i32 }
%struct.ip_set = type { i32 }

@IPSET_ATTR_CMD_MAX = common dso_local global i32 0, align 4
@ip_set_dump_policy = common dso_local global i32 0, align 4
@IPSET_ATTR_PROTOCOL = common dso_local global i64 0, align 8
@IPSET_CB_PROTO = common dso_local global i64 0, align 8
@IPSET_ATTR_SETNAME = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@DUMP_ONE = common dso_local global i32 0, align 4
@IPSET_CB_INDEX = common dso_local global i64 0, align 8
@DUMP_ALL = common dso_local global i32 0, align 4
@IPSET_ATTR_FLAGS = common dso_local global i64 0, align 8
@IPSET_CB_NET = common dso_local global i64 0, align 8
@IPSET_CB_DUMP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netlink_callback*, %struct.ip_set_net*)* @dump_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_init(%struct.netlink_callback* %0, %struct.ip_set_net* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.netlink_callback*, align 8
  %5 = alloca %struct.ip_set_net*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.nlattr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ip_set*, align 8
  %16 = alloca i32, align 4
  store %struct.netlink_callback* %0, %struct.netlink_callback** %4, align 8
  store %struct.ip_set_net* %1, %struct.ip_set_net** %5, align 8
  %17 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %18 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.nlmsghdr* @nlmsg_hdr(i32 %19)
  store %struct.nlmsghdr* %20, %struct.nlmsghdr** %6, align 8
  %21 = call i32 @nlmsg_total_size(i32 4)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* @IPSET_ATTR_CMD_MAX, align 4
  %23 = add nsw i32 %22, 1
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %8, align 8
  %26 = alloca %struct.nlattr*, i64 %24, align 16
  store i64 %24, i64* %9, align 8
  %27 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %28 = bitcast %struct.nlmsghdr* %27 to i8*
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr i8, i8* %28, i64 %30
  %32 = bitcast i8* %31 to %struct.nlattr*
  store %struct.nlattr* %32, %struct.nlattr** %10, align 8
  %33 = load i32, i32* @IPSET_ATTR_CMD_MAX, align 4
  %34 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %35 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %36 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = sub nsw i64 %37, %39
  %41 = load i32, i32* @ip_set_dump_policy, align 4
  %42 = call i32 @nla_parse(%struct.nlattr** %26, i32 %33, %struct.nlattr* %34, i64 %40, i32 %41, i32* null)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %2
  %46 = load i32, i32* %13, align 4
  store i32 %46, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %112

47:                                               ; preds = %2
  %48 = load i64, i64* @IPSET_ATTR_PROTOCOL, align 8
  %49 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %26, i64 %48
  %50 = load %struct.nlattr*, %struct.nlattr** %49, align 8
  %51 = call i64 @nla_get_u8(%struct.nlattr* %50)
  %52 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %53 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %52, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = load i64, i64* @IPSET_CB_PROTO, align 8
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  store i64 %51, i64* %56, align 8
  %57 = load i64, i64* @IPSET_ATTR_SETNAME, align 8
  %58 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %26, i64 %57
  %59 = load %struct.nlattr*, %struct.nlattr** %58, align 8
  %60 = icmp ne %struct.nlattr* %59, null
  br i1 %60, label %61, label %81

61:                                               ; preds = %47
  %62 = load %struct.ip_set_net*, %struct.ip_set_net** %5, align 8
  %63 = load i64, i64* @IPSET_ATTR_SETNAME, align 8
  %64 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %26, i64 %63
  %65 = load %struct.nlattr*, %struct.nlattr** %64, align 8
  %66 = call i32 @nla_data(%struct.nlattr* %65)
  %67 = call %struct.ip_set* @find_set_and_id(%struct.ip_set_net* %62, i32 %66, i64* %12)
  store %struct.ip_set* %67, %struct.ip_set** %15, align 8
  %68 = load %struct.ip_set*, %struct.ip_set** %15, align 8
  %69 = icmp ne %struct.ip_set* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %61
  %71 = load i32, i32* @ENOENT, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %112

73:                                               ; preds = %61
  %74 = load i32, i32* @DUMP_ONE, align 4
  store i32 %74, i32* %11, align 4
  %75 = load i64, i64* %12, align 8
  %76 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %77 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %76, i32 0, i32 0
  %78 = load i64*, i64** %77, align 8
  %79 = load i64, i64* @IPSET_CB_INDEX, align 8
  %80 = getelementptr inbounds i64, i64* %78, i64 %79
  store i64 %75, i64* %80, align 8
  br label %83

81:                                               ; preds = %47
  %82 = load i32, i32* @DUMP_ALL, align 4
  store i32 %82, i32* %11, align 4
  br label %83

83:                                               ; preds = %81, %73
  %84 = load i64, i64* @IPSET_ATTR_FLAGS, align 8
  %85 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %26, i64 %84
  %86 = load %struct.nlattr*, %struct.nlattr** %85, align 8
  %87 = icmp ne %struct.nlattr* %86, null
  br i1 %87, label %88, label %97

88:                                               ; preds = %83
  %89 = load i64, i64* @IPSET_ATTR_FLAGS, align 8
  %90 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %26, i64 %89
  %91 = load %struct.nlattr*, %struct.nlattr** %90, align 8
  %92 = call i32 @ip_set_get_h32(%struct.nlattr* %91)
  store i32 %92, i32* %16, align 4
  %93 = load i32, i32* %16, align 4
  %94 = shl i32 %93, 16
  %95 = load i32, i32* %11, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %11, align 4
  br label %97

97:                                               ; preds = %88, %83
  %98 = load %struct.ip_set_net*, %struct.ip_set_net** %5, align 8
  %99 = ptrtoint %struct.ip_set_net* %98 to i64
  %100 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %101 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %100, i32 0, i32 0
  %102 = load i64*, i64** %101, align 8
  %103 = load i64, i64* @IPSET_CB_NET, align 8
  %104 = getelementptr inbounds i64, i64* %102, i64 %103
  store i64 %99, i64* %104, align 8
  %105 = load i32, i32* %11, align 4
  %106 = sext i32 %105 to i64
  %107 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %108 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %107, i32 0, i32 0
  %109 = load i64*, i64** %108, align 8
  %110 = load i64, i64* @IPSET_CB_DUMP, align 8
  %111 = getelementptr inbounds i64, i64* %109, i64 %110
  store i64 %106, i64* %111, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %112

112:                                              ; preds = %97, %70, %45
  %113 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %113)
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local %struct.nlmsghdr* @nlmsg_hdr(i32) #1

declare dso_local i32 @nlmsg_total_size(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @nla_parse(%struct.nlattr**, i32, %struct.nlattr*, i64, i32, i32*) #1

declare dso_local i64 @nla_get_u8(%struct.nlattr*) #1

declare dso_local %struct.ip_set* @find_set_and_id(%struct.ip_set_net*, i32, i64*) #1

declare dso_local i32 @nla_data(%struct.nlattr*) #1

declare dso_local i32 @ip_set_get_h32(%struct.nlattr*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
