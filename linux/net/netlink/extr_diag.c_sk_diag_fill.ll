; ModuleID = '/home/carl/AnghaBench/linux/net/netlink/extr_diag.c_sk_diag_fill.c'
source_filename = "/home/carl/AnghaBench/linux/net/netlink/extr_diag.c_sk_diag_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.netlink_diag_req = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.netlink_diag_msg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netlink_sock = type { i32, i32, i32 }

@SOCK_DIAG_BY_FAMILY = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@AF_NETLINK = common dso_local global i32 0, align 4
@NDIAG_SHOW_GROUPS = common dso_local global i32 0, align 4
@NDIAG_SHOW_MEMINFO = common dso_local global i32 0, align 4
@NETLINK_DIAG_MEMINFO = common dso_local global i32 0, align 4
@NDIAG_SHOW_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, %struct.netlink_diag_req*, i32, i32, i32, i32)* @sk_diag_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sk_diag_fill(%struct.sock* %0, %struct.sk_buff* %1, %struct.netlink_diag_req* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.netlink_diag_req*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.nlmsghdr*, align 8
  %17 = alloca %struct.netlink_diag_msg*, align 8
  %18 = alloca %struct.netlink_sock*, align 8
  store %struct.sock* %0, %struct.sock** %9, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %10, align 8
  store %struct.netlink_diag_req* %2, %struct.netlink_diag_req** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %19 = load %struct.sock*, %struct.sock** %9, align 8
  %20 = call %struct.netlink_sock* @nlk_sk(%struct.sock* %19)
  store %struct.netlink_sock* %20, %struct.netlink_sock** %18, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* @SOCK_DIAG_BY_FAMILY, align 4
  %25 = load i32, i32* %14, align 4
  %26 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %21, i32 %22, i32 %23, i32 %24, i32 36, i32 %25)
  store %struct.nlmsghdr* %26, %struct.nlmsghdr** %16, align 8
  %27 = load %struct.nlmsghdr*, %struct.nlmsghdr** %16, align 8
  %28 = icmp ne %struct.nlmsghdr* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %7
  %30 = load i32, i32* @EMSGSIZE, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %8, align 4
  br label %125

32:                                               ; preds = %7
  %33 = load %struct.nlmsghdr*, %struct.nlmsghdr** %16, align 8
  %34 = call %struct.netlink_diag_msg* @nlmsg_data(%struct.nlmsghdr* %33)
  store %struct.netlink_diag_msg* %34, %struct.netlink_diag_msg** %17, align 8
  %35 = load i32, i32* @AF_NETLINK, align 4
  %36 = load %struct.netlink_diag_msg*, %struct.netlink_diag_msg** %17, align 8
  %37 = getelementptr inbounds %struct.netlink_diag_msg, %struct.netlink_diag_msg* %36, i32 0, i32 8
  store i32 %35, i32* %37, align 4
  %38 = load %struct.sock*, %struct.sock** %9, align 8
  %39 = getelementptr inbounds %struct.sock, %struct.sock* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.netlink_diag_msg*, %struct.netlink_diag_msg** %17, align 8
  %42 = getelementptr inbounds %struct.netlink_diag_msg, %struct.netlink_diag_msg* %41, i32 0, i32 7
  store i32 %40, i32* %42, align 4
  %43 = load %struct.sock*, %struct.sock** %9, align 8
  %44 = getelementptr inbounds %struct.sock, %struct.sock* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.netlink_diag_msg*, %struct.netlink_diag_msg** %17, align 8
  %47 = getelementptr inbounds %struct.netlink_diag_msg, %struct.netlink_diag_msg* %46, i32 0, i32 6
  store i32 %45, i32* %47, align 4
  %48 = load %struct.sock*, %struct.sock** %9, align 8
  %49 = getelementptr inbounds %struct.sock, %struct.sock* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.netlink_diag_msg*, %struct.netlink_diag_msg** %17, align 8
  %52 = getelementptr inbounds %struct.netlink_diag_msg, %struct.netlink_diag_msg* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %15, align 4
  %54 = load %struct.netlink_diag_msg*, %struct.netlink_diag_msg** %17, align 8
  %55 = getelementptr inbounds %struct.netlink_diag_msg, %struct.netlink_diag_msg* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load %struct.netlink_sock*, %struct.netlink_sock** %18, align 8
  %57 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.netlink_diag_msg*, %struct.netlink_diag_msg** %17, align 8
  %60 = getelementptr inbounds %struct.netlink_diag_msg, %struct.netlink_diag_msg* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 4
  %61 = load %struct.netlink_sock*, %struct.netlink_sock** %18, align 8
  %62 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.netlink_diag_msg*, %struct.netlink_diag_msg** %17, align 8
  %65 = getelementptr inbounds %struct.netlink_diag_msg, %struct.netlink_diag_msg* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  %66 = load %struct.netlink_sock*, %struct.netlink_sock** %18, align 8
  %67 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.netlink_diag_msg*, %struct.netlink_diag_msg** %17, align 8
  %70 = getelementptr inbounds %struct.netlink_diag_msg, %struct.netlink_diag_msg* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 4
  %71 = load %struct.sock*, %struct.sock** %9, align 8
  %72 = load %struct.netlink_diag_msg*, %struct.netlink_diag_msg** %17, align 8
  %73 = getelementptr inbounds %struct.netlink_diag_msg, %struct.netlink_diag_msg* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @sock_diag_save_cookie(%struct.sock* %71, i32 %74)
  %76 = load %struct.netlink_diag_req*, %struct.netlink_diag_req** %11, align 8
  %77 = getelementptr inbounds %struct.netlink_diag_req, %struct.netlink_diag_req* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @NDIAG_SHOW_GROUPS, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %32
  %83 = load %struct.sock*, %struct.sock** %9, align 8
  %84 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %85 = call i64 @sk_diag_dump_groups(%struct.sock* %83, %struct.sk_buff* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  br label %119

88:                                               ; preds = %82, %32
  %89 = load %struct.netlink_diag_req*, %struct.netlink_diag_req** %11, align 8
  %90 = getelementptr inbounds %struct.netlink_diag_req, %struct.netlink_diag_req* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @NDIAG_SHOW_MEMINFO, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %88
  %96 = load %struct.sock*, %struct.sock** %9, align 8
  %97 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %98 = load i32, i32* @NETLINK_DIAG_MEMINFO, align 4
  %99 = call i64 @sock_diag_put_meminfo(%struct.sock* %96, %struct.sk_buff* %97, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %95
  br label %119

102:                                              ; preds = %95, %88
  %103 = load %struct.netlink_diag_req*, %struct.netlink_diag_req** %11, align 8
  %104 = getelementptr inbounds %struct.netlink_diag_req, %struct.netlink_diag_req* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @NDIAG_SHOW_FLAGS, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %102
  %110 = load %struct.sock*, %struct.sock** %9, align 8
  %111 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %112 = call i64 @sk_diag_put_flags(%struct.sock* %110, %struct.sk_buff* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %109
  br label %119

115:                                              ; preds = %109, %102
  %116 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %117 = load %struct.nlmsghdr*, %struct.nlmsghdr** %16, align 8
  %118 = call i32 @nlmsg_end(%struct.sk_buff* %116, %struct.nlmsghdr* %117)
  store i32 0, i32* %8, align 4
  br label %125

119:                                              ; preds = %114, %101, %87
  %120 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %121 = load %struct.nlmsghdr*, %struct.nlmsghdr** %16, align 8
  %122 = call i32 @nlmsg_cancel(%struct.sk_buff* %120, %struct.nlmsghdr* %121)
  %123 = load i32, i32* @EMSGSIZE, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %8, align 4
  br label %125

125:                                              ; preds = %119, %115, %29
  %126 = load i32, i32* %8, align 4
  ret i32 %126
}

declare dso_local %struct.netlink_sock* @nlk_sk(%struct.sock*) #1

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.netlink_diag_msg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @sock_diag_save_cookie(%struct.sock*, i32) #1

declare dso_local i64 @sk_diag_dump_groups(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i64 @sock_diag_put_meminfo(%struct.sock*, %struct.sk_buff*, i32) #1

declare dso_local i64 @sk_diag_put_flags(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_cancel(%struct.sk_buff*, %struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
