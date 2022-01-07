; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_inet_diag.c_inet_diag_get_exact_compat.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_inet_diag.c_inet_diag_get_exact_compat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.inet_diag_req = type { i32, i32, i32, i32 }
%struct.inet_diag_req_v2 = type { i32, i32, i32, i32, i32 }

@SOCK_DIAG_BY_FAMILY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*)* @inet_diag_get_exact_compat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet_diag_get_exact_compat(%struct.sk_buff* %0, %struct.nlmsghdr* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.nlmsghdr*, align 8
  %5 = alloca %struct.inet_diag_req*, align 8
  %6 = alloca %struct.inet_diag_req_v2, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %4, align 8
  %7 = load %struct.nlmsghdr*, %struct.nlmsghdr** %4, align 8
  %8 = call %struct.inet_diag_req* @nlmsg_data(%struct.nlmsghdr* %7)
  store %struct.inet_diag_req* %8, %struct.inet_diag_req** %5, align 8
  %9 = load %struct.inet_diag_req*, %struct.inet_diag_req** %5, align 8
  %10 = getelementptr inbounds %struct.inet_diag_req, %struct.inet_diag_req* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.inet_diag_req_v2, %struct.inet_diag_req_v2* %6, i32 0, i32 4
  store i32 %11, i32* %12, align 4
  %13 = load %struct.nlmsghdr*, %struct.nlmsghdr** %4, align 8
  %14 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @inet_diag_type2proto(i32 %15)
  %17 = getelementptr inbounds %struct.inet_diag_req_v2, %struct.inet_diag_req_v2* %6, i32 0, i32 3
  store i32 %16, i32* %17, align 4
  %18 = load %struct.inet_diag_req*, %struct.inet_diag_req** %5, align 8
  %19 = getelementptr inbounds %struct.inet_diag_req, %struct.inet_diag_req* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.inet_diag_req_v2, %struct.inet_diag_req_v2* %6, i32 0, i32 2
  store i32 %20, i32* %21, align 4
  %22 = load %struct.inet_diag_req*, %struct.inet_diag_req** %5, align 8
  %23 = getelementptr inbounds %struct.inet_diag_req, %struct.inet_diag_req* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.inet_diag_req_v2, %struct.inet_diag_req_v2* %6, i32 0, i32 1
  store i32 %24, i32* %25, align 4
  %26 = load %struct.inet_diag_req*, %struct.inet_diag_req** %5, align 8
  %27 = getelementptr inbounds %struct.inet_diag_req, %struct.inet_diag_req* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.inet_diag_req_v2, %struct.inet_diag_req_v2* %6, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* @SOCK_DIAG_BY_FAMILY, align 4
  %31 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %32 = load %struct.nlmsghdr*, %struct.nlmsghdr** %4, align 8
  %33 = call i32 @inet_diag_cmd_exact(i32 %30, %struct.sk_buff* %31, %struct.nlmsghdr* %32, %struct.inet_diag_req_v2* %6)
  ret i32 %33
}

declare dso_local %struct.inet_diag_req* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @inet_diag_type2proto(i32) #1

declare dso_local i32 @inet_diag_cmd_exact(i32, %struct.sk_buff*, %struct.nlmsghdr*, %struct.inet_diag_req_v2*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
