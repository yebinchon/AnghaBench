; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6mr.c_ip6mr_rtm_dumproute.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6mr.c_ip6mr_rtm_dumproute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.netlink_callback = type { i32, i64, %struct.nlmsghdr* }
%struct.nlmsghdr = type { i32 }
%struct.fib_dump_filter = type { i64, i64 }
%struct.mr_table = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"MR table does not exist\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@_ip6mr_fill_mroute = common dso_local global i32 0, align 4
@mfc_unres_lock = common dso_local global i32 0, align 4
@ip6mr_mr_table_iter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.netlink_callback*)* @ip6mr_rtm_dumproute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip6mr_rtm_dumproute(%struct.sk_buff* %0, %struct.netlink_callback* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.netlink_callback*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.fib_dump_filter, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mr_table*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.netlink_callback* %1, %struct.netlink_callback** %5, align 8
  %10 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %11 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %10, i32 0, i32 2
  %12 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  store %struct.nlmsghdr* %12, %struct.nlmsghdr** %6, align 8
  %13 = bitcast %struct.fib_dump_filter* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 16, i1 false)
  %14 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %15 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %2
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @sock_net(i32 %21)
  %23 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %24 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %25 = call i32 @ip_valid_fib_dump_req(i32 %22, %struct.nlmsghdr* %23, %struct.fib_dump_filter* %7, %struct.netlink_callback* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %18
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %3, align 4
  br label %81

30:                                               ; preds = %18
  br label %31

31:                                               ; preds = %30, %2
  %32 = getelementptr inbounds %struct.fib_dump_filter, %struct.fib_dump_filter* %7, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %75

35:                                               ; preds = %31
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @sock_net(i32 %38)
  %40 = getelementptr inbounds %struct.fib_dump_filter, %struct.fib_dump_filter* %7, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call %struct.mr_table* @ip6mr_get_table(i32 %39, i64 %41)
  store %struct.mr_table* %42, %struct.mr_table** %9, align 8
  %43 = load %struct.mr_table*, %struct.mr_table** %9, align 8
  %44 = icmp ne %struct.mr_table* %43, null
  br i1 %44, label %60, label %45

45:                                               ; preds = %35
  %46 = getelementptr inbounds %struct.fib_dump_filter, %struct.fib_dump_filter* %7, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %3, align 4
  br label %81

53:                                               ; preds = %45
  %54 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %55 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @NL_SET_ERR_MSG_MOD(i32 %56, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %58 = load i32, i32* @ENOENT, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %81

60:                                               ; preds = %35
  %61 = load %struct.mr_table*, %struct.mr_table** %9, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %63 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %64 = load i32, i32* @_ip6mr_fill_mroute, align 4
  %65 = call i32 @mr_table_dump(%struct.mr_table* %61, %struct.sk_buff* %62, %struct.netlink_callback* %63, i32 %64, i32* @mfc_unres_lock, %struct.fib_dump_filter* %7)
  store i32 %65, i32* %8, align 4
  %66 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %67 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %60
  br label %73

71:                                               ; preds = %60
  %72 = load i32, i32* %8, align 4
  br label %73

73:                                               ; preds = %71, %70
  %74 = phi i32 [ %68, %70 ], [ %72, %71 ]
  store i32 %74, i32* %3, align 4
  br label %81

75:                                               ; preds = %31
  %76 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %77 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %78 = load i32, i32* @ip6mr_mr_table_iter, align 4
  %79 = load i32, i32* @_ip6mr_fill_mroute, align 4
  %80 = call i32 @mr_rtm_dumproute(%struct.sk_buff* %76, %struct.netlink_callback* %77, i32 %78, i32 %79, i32* @mfc_unres_lock, %struct.fib_dump_filter* %7)
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %75, %73, %53, %49, %28
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ip_valid_fib_dump_req(i32, %struct.nlmsghdr*, %struct.fib_dump_filter*, %struct.netlink_callback*) #2

declare dso_local i32 @sock_net(i32) #2

declare dso_local %struct.mr_table* @ip6mr_get_table(i32, i64) #2

declare dso_local i32 @NL_SET_ERR_MSG_MOD(i32, i8*) #2

declare dso_local i32 @mr_table_dump(%struct.mr_table*, %struct.sk_buff*, %struct.netlink_callback*, i32, i32*, %struct.fib_dump_filter*) #2

declare dso_local i32 @mr_rtm_dumproute(%struct.sk_buff*, %struct.netlink_callback*, i32, i32, i32*, %struct.fib_dump_filter*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
