; ModuleID = '/home/carl/AnghaBench/linux/net/unix/extr_diag.c_unix_diag_get_exact.c'
source_filename = "/home/carl/AnghaBench/linux/net/unix/extr_diag.c_unix_diag_get_exact.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.unix_diag_req = type { i64, i32 }
%struct.net = type { i32 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.unix_diag_req*)* @unix_diag_get_exact to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unix_diag_get_exact(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.unix_diag_req* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nlmsghdr*, align 8
  %6 = alloca %struct.unix_diag_req*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.net*, align 8
  %12 = alloca %struct.TYPE_2__, align 4
  %13 = alloca %struct.TYPE_2__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %5, align 8
  store %struct.unix_diag_req* %2, %struct.unix_diag_req** %6, align 8
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %7, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load %struct.sock*, %struct.sock** %17, align 8
  %19 = call %struct.net* @sock_net(%struct.sock* %18)
  store %struct.net* %19, %struct.net** %11, align 8
  %20 = load %struct.unix_diag_req*, %struct.unix_diag_req** %6, align 8
  %21 = getelementptr inbounds %struct.unix_diag_req, %struct.unix_diag_req* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  br label %115

25:                                               ; preds = %3
  %26 = load %struct.unix_diag_req*, %struct.unix_diag_req** %6, align 8
  %27 = getelementptr inbounds %struct.unix_diag_req, %struct.unix_diag_req* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call %struct.sock* @unix_lookup_by_ino(i64 %28)
  store %struct.sock* %29, %struct.sock** %8, align 8
  %30 = load i32, i32* @ENOENT, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %7, align 4
  %32 = load %struct.sock*, %struct.sock** %8, align 8
  %33 = icmp eq %struct.sock* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  br label %115

35:                                               ; preds = %25
  %36 = load %struct.sock*, %struct.sock** %8, align 8
  %37 = call %struct.net* @sock_net(%struct.sock* %36)
  %38 = load %struct.net*, %struct.net** %11, align 8
  %39 = call i32 @net_eq(%struct.net* %37, %struct.net* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %35
  br label %108

42:                                               ; preds = %35
  %43 = load %struct.sock*, %struct.sock** %8, align 8
  %44 = load %struct.unix_diag_req*, %struct.unix_diag_req** %6, align 8
  %45 = getelementptr inbounds %struct.unix_diag_req, %struct.unix_diag_req* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @sock_diag_check_cookie(%struct.sock* %43, i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %108

51:                                               ; preds = %42
  store i32 256, i32* %10, align 4
  br label %52

52:                                               ; preds = %91, %51
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %10, align 4
  %56 = zext i32 %55 to i64
  %57 = add i64 4, %56
  %58 = trunc i64 %57 to i32
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call %struct.sk_buff* @nlmsg_new(i32 %58, i32 %59)
  store %struct.sk_buff* %60, %struct.sk_buff** %9, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %62 = icmp ne %struct.sk_buff* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %52
  br label %108

64:                                               ; preds = %52
  %65 = load %struct.sock*, %struct.sock** %8, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %67 = load %struct.unix_diag_req*, %struct.unix_diag_req** %6, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %69 = call i32 @NETLINK_CB(%struct.sk_buff* %68)
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i32 %69, i32* %70, align 4
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %74 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.unix_diag_req*, %struct.unix_diag_req** %6, align 8
  %77 = getelementptr inbounds %struct.unix_diag_req, %struct.unix_diag_req* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @sk_diag_fill(%struct.sock* %65, %struct.sk_buff* %66, %struct.unix_diag_req* %67, i32 %72, i32 %75, i32 0, i64 %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %64
  %83 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %84 = call i32 @nlmsg_free(%struct.sk_buff* %83)
  %85 = load i32, i32* %10, align 4
  %86 = add i32 %85, 256
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* @PAGE_SIZE, align 4
  %89 = icmp uge i32 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %82
  br label %108

91:                                               ; preds = %82
  br label %52

92:                                               ; preds = %64
  %93 = load %struct.net*, %struct.net** %11, align 8
  %94 = getelementptr inbounds %struct.net, %struct.net* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %97 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %98 = call i32 @NETLINK_CB(%struct.sk_buff* %97)
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 %98, i32* %99, align 4
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @MSG_DONTWAIT, align 4
  %103 = call i32 @netlink_unicast(i32 %95, %struct.sk_buff* %96, i32 %101, i32 %102)
  store i32 %103, i32* %7, align 4
  %104 = load i32, i32* %7, align 4
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %92
  store i32 0, i32* %7, align 4
  br label %107

107:                                              ; preds = %106, %92
  br label %108

108:                                              ; preds = %107, %90, %63, %50, %41
  %109 = load %struct.sock*, %struct.sock** %8, align 8
  %110 = icmp ne %struct.sock* %109, null
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = load %struct.sock*, %struct.sock** %8, align 8
  %113 = call i32 @sock_put(%struct.sock* %112)
  br label %114

114:                                              ; preds = %111, %108
  br label %115

115:                                              ; preds = %114, %34, %24
  %116 = load i32, i32* %7, align 4
  ret i32 %116
}

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local %struct.sock* @unix_lookup_by_ino(i64) #1

declare dso_local i32 @net_eq(%struct.net*, %struct.net*) #1

declare dso_local i32 @sock_diag_check_cookie(%struct.sock*, i32) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @sk_diag_fill(%struct.sock*, %struct.sk_buff*, %struct.unix_diag_req*, i32, i32, i32, i64) #1

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local i32 @netlink_unicast(i32, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
