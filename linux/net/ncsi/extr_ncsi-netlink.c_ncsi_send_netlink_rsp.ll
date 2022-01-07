; ModuleID = '/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-netlink.c_ncsi_send_netlink_rsp.c'
source_filename = "/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-netlink.c_ncsi_send_netlink_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncsi_request = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ncsi_package = type { i32 }
%struct.ncsi_channel = type { i32 }
%struct.sk_buff = type { i32 }
%struct.net = type { i32 }

@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ncsi_genl_family = common dso_local global i32 0, align 4
@NCSI_CMD_SEND_CMD = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@NCSI_ATTR_IFINDEX = common dso_local global i32 0, align 4
@NCSI_ATTR_PACKAGE_ID = common dso_local global i32 0, align 4
@NCSI_ATTR_CHANNEL_ID = common dso_local global i32 0, align 4
@NCSI_RESERVED_CHANNEL = common dso_local global i32 0, align 4
@NCSI_ATTR_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ncsi_send_netlink_rsp(%struct.ncsi_request* %0, %struct.ncsi_package* %1, %struct.ncsi_channel* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ncsi_request*, align 8
  %6 = alloca %struct.ncsi_package*, align 8
  %7 = alloca %struct.ncsi_channel*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.net*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.ncsi_request* %0, %struct.ncsi_request** %5, align 8
  store %struct.ncsi_package* %1, %struct.ncsi_package** %6, align 8
  store %struct.ncsi_channel* %2, %struct.ncsi_channel** %7, align 8
  %12 = load %struct.ncsi_request*, %struct.ncsi_request** %5, align 8
  %13 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = call %struct.net* @dev_net(%struct.TYPE_4__* %16)
  store %struct.net* %17, %struct.net** %9, align 8
  %18 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %19 = load i32, i32* @GFP_ATOMIC, align 4
  %20 = call %struct.sk_buff* @genlmsg_new(i32 %18, i32 %19)
  store %struct.sk_buff* %20, %struct.sk_buff** %8, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %22 = icmp ne %struct.sk_buff* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %110

26:                                               ; preds = %3
  %27 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %28 = load %struct.ncsi_request*, %struct.ncsi_request** %5, align 8
  %29 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.ncsi_request*, %struct.ncsi_request** %5, align 8
  %32 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @NCSI_CMD_SEND_CMD, align 4
  %35 = call i8* @genlmsg_put(%struct.sk_buff* %27, i32 %30, i32 %33, i32* @ncsi_genl_family, i32 0, i32 %34)
  store i8* %35, i8** %10, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %26
  %39 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %40 = call i32 @kfree_skb(%struct.sk_buff* %39)
  %41 = load i32, i32* @EMSGSIZE, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %110

43:                                               ; preds = %26
  %44 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %45 = load i32, i32* @NCSI_ATTR_IFINDEX, align 4
  %46 = load %struct.ncsi_request*, %struct.ncsi_request** %5, align 8
  %47 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %46, i32 0, i32 1
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @nla_put_u32(%struct.sk_buff* %44, i32 %45, i32 %52)
  %54 = load %struct.ncsi_package*, %struct.ncsi_package** %6, align 8
  %55 = icmp ne %struct.ncsi_package* %54, null
  br i1 %55, label %56, label %63

56:                                               ; preds = %43
  %57 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %58 = load i32, i32* @NCSI_ATTR_PACKAGE_ID, align 4
  %59 = load %struct.ncsi_package*, %struct.ncsi_package** %6, align 8
  %60 = getelementptr inbounds %struct.ncsi_package, %struct.ncsi_package* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @nla_put_u32(%struct.sk_buff* %57, i32 %58, i32 %61)
  br label %63

63:                                               ; preds = %56, %43
  %64 = load %struct.ncsi_channel*, %struct.ncsi_channel** %7, align 8
  %65 = icmp ne %struct.ncsi_channel* %64, null
  br i1 %65, label %66, label %73

66:                                               ; preds = %63
  %67 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %68 = load i32, i32* @NCSI_ATTR_CHANNEL_ID, align 4
  %69 = load %struct.ncsi_channel*, %struct.ncsi_channel** %7, align 8
  %70 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @nla_put_u32(%struct.sk_buff* %67, i32 %68, i32 %71)
  br label %78

73:                                               ; preds = %63
  %74 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %75 = load i32, i32* @NCSI_ATTR_CHANNEL_ID, align 4
  %76 = load i32, i32* @NCSI_RESERVED_CHANNEL, align 4
  %77 = call i32 @nla_put_u32(%struct.sk_buff* %74, i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %73, %66
  %79 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %80 = load i32, i32* @NCSI_ATTR_DATA, align 4
  %81 = load %struct.ncsi_request*, %struct.ncsi_request** %5, align 8
  %82 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %81, i32 0, i32 1
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.ncsi_request*, %struct.ncsi_request** %5, align 8
  %87 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %86, i32 0, i32 1
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = inttoptr i64 %90 to i8*
  %92 = call i32 @nla_put(%struct.sk_buff* %79, i32 %80, i32 %85, i8* %91)
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* %11, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %78
  br label %106

96:                                               ; preds = %78
  %97 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %98 = load i8*, i8** %10, align 8
  %99 = call i32 @genlmsg_end(%struct.sk_buff* %97, i8* %98)
  %100 = load %struct.net*, %struct.net** %9, align 8
  %101 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %102 = load %struct.ncsi_request*, %struct.ncsi_request** %5, align 8
  %103 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @genlmsg_unicast(%struct.net* %100, %struct.sk_buff* %101, i32 %104)
  store i32 %105, i32* %4, align 4
  br label %110

106:                                              ; preds = %95
  %107 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %108 = call i32 @kfree_skb(%struct.sk_buff* %107)
  %109 = load i32, i32* %11, align 4
  store i32 %109, i32* %4, align 4
  br label %110

110:                                              ; preds = %106, %96, %38, %23
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local %struct.net* @dev_net(%struct.TYPE_4__*) #1

declare dso_local %struct.sk_buff* @genlmsg_new(i32, i32) #1

declare dso_local i8* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nla_put(%struct.sk_buff*, i32, i32, i8*) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_unicast(%struct.net*, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
