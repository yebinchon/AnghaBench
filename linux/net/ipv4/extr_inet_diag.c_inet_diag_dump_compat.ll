; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_inet_diag.c_inet_diag_dump_compat.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_inet_diag.c_inet_diag_dump_compat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.netlink_callback = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.inet_diag_req = type { i32, i32, i32 }
%struct.inet_diag_req_v2 = type { i32, i32, i32, i32, i32 }
%struct.nlattr = type { i32 }

@AF_UNSPEC = common dso_local global i32 0, align 4
@INET_DIAG_REQ_BYTECODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.netlink_callback*)* @inet_diag_dump_compat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet_diag_dump_compat(%struct.sk_buff* %0, %struct.netlink_callback* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.netlink_callback*, align 8
  %5 = alloca %struct.inet_diag_req*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.inet_diag_req_v2, align 4
  %8 = alloca %struct.nlattr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.netlink_callback* %1, %struct.netlink_callback** %4, align 8
  %9 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %10 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = call %struct.inet_diag_req* @nlmsg_data(%struct.TYPE_4__* %11)
  store %struct.inet_diag_req* %12, %struct.inet_diag_req** %5, align 8
  store i32 12, i32* %6, align 4
  store %struct.nlattr* null, %struct.nlattr** %8, align 8
  %13 = load i32, i32* @AF_UNSPEC, align 4
  %14 = getelementptr inbounds %struct.inet_diag_req_v2, %struct.inet_diag_req_v2* %7, i32 0, i32 4
  store i32 %13, i32* %14, align 4
  %15 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %16 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @inet_diag_type2proto(i32 %19)
  %21 = getelementptr inbounds %struct.inet_diag_req_v2, %struct.inet_diag_req_v2* %7, i32 0, i32 3
  store i32 %20, i32* %21, align 4
  %22 = load %struct.inet_diag_req*, %struct.inet_diag_req** %5, align 8
  %23 = getelementptr inbounds %struct.inet_diag_req, %struct.inet_diag_req* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.inet_diag_req_v2, %struct.inet_diag_req_v2* %7, i32 0, i32 2
  store i32 %24, i32* %25, align 4
  %26 = load %struct.inet_diag_req*, %struct.inet_diag_req** %5, align 8
  %27 = getelementptr inbounds %struct.inet_diag_req, %struct.inet_diag_req* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.inet_diag_req_v2, %struct.inet_diag_req_v2* %7, i32 0, i32 1
  store i32 %28, i32* %29, align 4
  %30 = load %struct.inet_diag_req*, %struct.inet_diag_req** %5, align 8
  %31 = getelementptr inbounds %struct.inet_diag_req, %struct.inet_diag_req* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.inet_diag_req_v2, %struct.inet_diag_req_v2* %7, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  %34 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %35 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i64 @nlmsg_attrlen(%struct.TYPE_4__* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %2
  %41 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %42 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @INET_DIAG_REQ_BYTECODE, align 4
  %46 = call %struct.nlattr* @nlmsg_find_attr(%struct.TYPE_4__* %43, i32 %44, i32 %45)
  store %struct.nlattr* %46, %struct.nlattr** %8, align 8
  br label %47

47:                                               ; preds = %40, %2
  %48 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %49 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %50 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %51 = call i32 @__inet_diag_dump(%struct.sk_buff* %48, %struct.netlink_callback* %49, %struct.inet_diag_req_v2* %7, %struct.nlattr* %50)
  ret i32 %51
}

declare dso_local %struct.inet_diag_req* @nlmsg_data(%struct.TYPE_4__*) #1

declare dso_local i32 @inet_diag_type2proto(i32) #1

declare dso_local i64 @nlmsg_attrlen(%struct.TYPE_4__*, i32) #1

declare dso_local %struct.nlattr* @nlmsg_find_attr(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @__inet_diag_dump(%struct.sk_buff*, %struct.netlink_callback*, %struct.inet_diag_req_v2*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
