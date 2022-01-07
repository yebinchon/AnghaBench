; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_net_namespace.c_rtnl_valid_dump_net_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_net_namespace.c_rtnl_valid_dump_net_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlmsghdr = type { i32 }
%struct.sock = type { i32 }
%struct.rtnl_net_dump_cb = type { %struct.net*, %struct.net*, %struct.TYPE_2__ }
%struct.net = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.netlink_callback = type { %struct.netlink_ext_ack* }
%struct.netlink_ext_ack = type { i32 }
%struct.nlattr = type { i32 }

@NETNSA_MAX = common dso_local global i32 0, align 4
@rtnl_net_policy = common dso_local global i32 0, align 4
@NETNSA_TARGET_NSID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Invalid target network namespace id\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Unsupported attribute in dump request\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlmsghdr*, %struct.sock*, %struct.rtnl_net_dump_cb*, %struct.netlink_callback*)* @rtnl_valid_dump_net_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtnl_valid_dump_net_req(%struct.nlmsghdr* %0, %struct.sock* %1, %struct.rtnl_net_dump_cb* %2, %struct.netlink_callback* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.rtnl_net_dump_cb*, align 8
  %9 = alloca %struct.netlink_callback*, align 8
  %10 = alloca %struct.netlink_ext_ack*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.net*, align 8
  store %struct.nlmsghdr* %0, %struct.nlmsghdr** %6, align 8
  store %struct.sock* %1, %struct.sock** %7, align 8
  store %struct.rtnl_net_dump_cb* %2, %struct.rtnl_net_dump_cb** %8, align 8
  store %struct.netlink_callback* %3, %struct.netlink_callback** %9, align 8
  %17 = load %struct.netlink_callback*, %struct.netlink_callback** %9, align 8
  %18 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %17, i32 0, i32 0
  %19 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %18, align 8
  store %struct.netlink_ext_ack* %19, %struct.netlink_ext_ack** %10, align 8
  %20 = load i32, i32* @NETNSA_MAX, align 4
  %21 = add nsw i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %11, align 8
  %24 = alloca %struct.nlattr*, i64 %22, align 16
  store i64 %22, i64* %12, align 8
  %25 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %26 = load i32, i32* @NETNSA_MAX, align 4
  %27 = load i32, i32* @rtnl_net_policy, align 4
  %28 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %10, align 8
  %29 = call i32 @nlmsg_parse_deprecated_strict(%struct.nlmsghdr* %25, i32 4, %struct.nlattr** %24, i32 %26, i32 %27, %struct.netlink_ext_ack* %28)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %4
  %33 = load i32, i32* %13, align 4
  store i32 %33, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %100

34:                                               ; preds = %4
  store i32 0, i32* %14, align 4
  br label %35

35:                                               ; preds = %96, %34
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* @NETNSA_MAX, align 4
  %38 = icmp sle i32 %36, %37
  br i1 %38, label %39, label %99

39:                                               ; preds = %35
  %40 = load i32, i32* %14, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %41
  %43 = load %struct.nlattr*, %struct.nlattr** %42, align 8
  %44 = icmp ne %struct.nlattr* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %39
  br label %96

46:                                               ; preds = %39
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* @NETNSA_TARGET_NSID, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %84

50:                                               ; preds = %46
  %51 = load %struct.sock*, %struct.sock** %7, align 8
  %52 = load i32, i32* %14, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %53
  %55 = load %struct.nlattr*, %struct.nlattr** %54, align 8
  %56 = call i32 @nla_get_s32(%struct.nlattr* %55)
  %57 = call %struct.net* @rtnl_get_net_ns_capable(%struct.sock* %51, i32 %56)
  store %struct.net* %57, %struct.net** %16, align 8
  %58 = load %struct.net*, %struct.net** %16, align 8
  %59 = call i64 @IS_ERR(%struct.net* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %50
  %62 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %10, align 8
  %63 = load i32, i32* %14, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %64
  %66 = load %struct.nlattr*, %struct.nlattr** %65, align 8
  %67 = call i32 @NL_SET_BAD_ATTR(%struct.netlink_ext_ack* %62, %struct.nlattr* %66)
  %68 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %10, align 8
  %69 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %68, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %70 = load %struct.net*, %struct.net** %16, align 8
  %71 = call i32 @PTR_ERR(%struct.net* %70)
  store i32 %71, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %100

72:                                               ; preds = %50
  %73 = load %struct.rtnl_net_dump_cb*, %struct.rtnl_net_dump_cb** %8, align 8
  %74 = getelementptr inbounds %struct.rtnl_net_dump_cb, %struct.rtnl_net_dump_cb* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  store i32 1, i32* %75, align 8
  %76 = load %struct.rtnl_net_dump_cb*, %struct.rtnl_net_dump_cb** %8, align 8
  %77 = getelementptr inbounds %struct.rtnl_net_dump_cb, %struct.rtnl_net_dump_cb* %76, i32 0, i32 0
  %78 = load %struct.net*, %struct.net** %77, align 8
  %79 = load %struct.rtnl_net_dump_cb*, %struct.rtnl_net_dump_cb** %8, align 8
  %80 = getelementptr inbounds %struct.rtnl_net_dump_cb, %struct.rtnl_net_dump_cb* %79, i32 0, i32 1
  store %struct.net* %78, %struct.net** %80, align 8
  %81 = load %struct.net*, %struct.net** %16, align 8
  %82 = load %struct.rtnl_net_dump_cb*, %struct.rtnl_net_dump_cb** %8, align 8
  %83 = getelementptr inbounds %struct.rtnl_net_dump_cb, %struct.rtnl_net_dump_cb* %82, i32 0, i32 0
  store %struct.net* %81, %struct.net** %83, align 8
  br label %95

84:                                               ; preds = %46
  %85 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %10, align 8
  %86 = load i32, i32* %14, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %87
  %89 = load %struct.nlattr*, %struct.nlattr** %88, align 8
  %90 = call i32 @NL_SET_BAD_ATTR(%struct.netlink_ext_ack* %85, %struct.nlattr* %89)
  %91 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %10, align 8
  %92 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %91, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %100

95:                                               ; preds = %72
  br label %96

96:                                               ; preds = %95, %45
  %97 = load i32, i32* %14, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %14, align 4
  br label %35

99:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %100

100:                                              ; preds = %99, %84, %61, %32
  %101 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %101)
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nlmsg_parse_deprecated_strict(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32, %struct.netlink_ext_ack*) #2

declare dso_local %struct.net* @rtnl_get_net_ns_capable(%struct.sock*, i32) #2

declare dso_local i32 @nla_get_s32(%struct.nlattr*) #2

declare dso_local i64 @IS_ERR(%struct.net*) #2

declare dso_local i32 @NL_SET_BAD_ATTR(%struct.netlink_ext_ack*, %struct.nlattr*) #2

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #2

declare dso_local i32 @PTR_ERR(%struct.net*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
