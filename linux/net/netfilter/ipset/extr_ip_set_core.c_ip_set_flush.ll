; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_core.c_ip_set_flush.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_core.c_ip_set_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.ip_set_net = type { i64 }
%struct.ip_set = type { i32 }

@IPSET_ERR_PROTOCOL = common dso_local global i32 0, align 4
@IPSET_ATTR_SETNAME = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sock*, %struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**, %struct.netlink_ext_ack*)* @ip_set_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_set_flush(%struct.net* %0, %struct.sock* %1, %struct.sk_buff* %2, %struct.nlmsghdr* %3, %struct.nlattr** %4, %struct.netlink_ext_ack* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.nlmsghdr*, align 8
  %12 = alloca %struct.nlattr**, align 8
  %13 = alloca %struct.netlink_ext_ack*, align 8
  %14 = alloca %struct.ip_set_net*, align 8
  %15 = alloca %struct.ip_set*, align 8
  %16 = alloca i64, align 8
  store %struct.net* %0, %struct.net** %8, align 8
  store %struct.sock* %1, %struct.sock** %9, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %10, align 8
  store %struct.nlmsghdr* %3, %struct.nlmsghdr** %11, align 8
  store %struct.nlattr** %4, %struct.nlattr*** %12, align 8
  store %struct.netlink_ext_ack* %5, %struct.netlink_ext_ack** %13, align 8
  %17 = load %struct.net*, %struct.net** %8, align 8
  %18 = call %struct.ip_set_net* @ip_set_pernet(%struct.net* %17)
  store %struct.ip_set_net* %18, %struct.ip_set_net** %14, align 8
  %19 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %20 = call i32 @protocol_min_failed(%struct.nlattr** %19)
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %6
  %24 = load i32, i32* @IPSET_ERR_PROTOCOL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %7, align 4
  br label %70

26:                                               ; preds = %6
  %27 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %28 = load i64, i64* @IPSET_ATTR_SETNAME, align 8
  %29 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %28
  %30 = load %struct.nlattr*, %struct.nlattr** %29, align 8
  %31 = icmp ne %struct.nlattr* %30, null
  br i1 %31, label %53, label %32

32:                                               ; preds = %26
  store i64 0, i64* %16, align 8
  br label %33

33:                                               ; preds = %49, %32
  %34 = load i64, i64* %16, align 8
  %35 = load %struct.ip_set_net*, %struct.ip_set_net** %14, align 8
  %36 = getelementptr inbounds %struct.ip_set_net, %struct.ip_set_net* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp slt i64 %34, %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %33
  %40 = load %struct.ip_set_net*, %struct.ip_set_net** %14, align 8
  %41 = load i64, i64* %16, align 8
  %42 = call %struct.ip_set* @ip_set(%struct.ip_set_net* %40, i64 %41)
  store %struct.ip_set* %42, %struct.ip_set** %15, align 8
  %43 = load %struct.ip_set*, %struct.ip_set** %15, align 8
  %44 = icmp ne %struct.ip_set* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load %struct.ip_set*, %struct.ip_set** %15, align 8
  %47 = call i32 @ip_set_flush_set(%struct.ip_set* %46)
  br label %48

48:                                               ; preds = %45, %39
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* %16, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %16, align 8
  br label %33

52:                                               ; preds = %33
  br label %69

53:                                               ; preds = %26
  %54 = load %struct.ip_set_net*, %struct.ip_set_net** %14, align 8
  %55 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %56 = load i64, i64* @IPSET_ATTR_SETNAME, align 8
  %57 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %55, i64 %56
  %58 = load %struct.nlattr*, %struct.nlattr** %57, align 8
  %59 = call i32 @nla_data(%struct.nlattr* %58)
  %60 = call %struct.ip_set* @find_set(%struct.ip_set_net* %54, i32 %59)
  store %struct.ip_set* %60, %struct.ip_set** %15, align 8
  %61 = load %struct.ip_set*, %struct.ip_set** %15, align 8
  %62 = icmp ne %struct.ip_set* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %53
  %64 = load i32, i32* @ENOENT, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %7, align 4
  br label %70

66:                                               ; preds = %53
  %67 = load %struct.ip_set*, %struct.ip_set** %15, align 8
  %68 = call i32 @ip_set_flush_set(%struct.ip_set* %67)
  br label %69

69:                                               ; preds = %66, %52
  store i32 0, i32* %7, align 4
  br label %70

70:                                               ; preds = %69, %63, %23
  %71 = load i32, i32* %7, align 4
  ret i32 %71
}

declare dso_local %struct.ip_set_net* @ip_set_pernet(%struct.net*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @protocol_min_failed(%struct.nlattr**) #1

declare dso_local %struct.ip_set* @ip_set(%struct.ip_set_net*, i64) #1

declare dso_local i32 @ip_set_flush_set(%struct.ip_set*) #1

declare dso_local %struct.ip_set* @find_set(%struct.ip_set_net*, i32) #1

declare dso_local i32 @nla_data(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
