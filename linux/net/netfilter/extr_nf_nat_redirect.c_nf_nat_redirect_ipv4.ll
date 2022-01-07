; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_redirect.c_nf_nat_redirect_ipv4.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_redirect.c_nf_nat_redirect_ipv4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_nat_ipv4_multi_range_compat = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.nf_conn = type { i32 }
%struct.nf_nat_range2 = type { i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }
%struct.in_device = type { i32 }
%struct.in_ifaddr = type { i8* }

@NF_INET_PRE_ROUTING = common dso_local global i32 0, align 4
@NF_INET_LOCAL_OUT = common dso_local global i32 0, align 4
@IP_CT_NEW = common dso_local global i32 0, align 4
@IP_CT_RELATED = common dso_local global i32 0, align 4
@NF_DROP = common dso_local global i32 0, align 4
@NF_NAT_RANGE_MAP_IPS = common dso_local global i32 0, align 4
@NF_NAT_MANIP_DST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nf_nat_redirect_ipv4(%struct.sk_buff* %0, %struct.nf_nat_ipv4_multi_range_compat* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nf_nat_ipv4_multi_range_compat*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nf_conn*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.nf_nat_range2, align 8
  %12 = alloca %struct.in_device*, align 8
  %13 = alloca %struct.in_ifaddr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nf_nat_ipv4_multi_range_compat* %1, %struct.nf_nat_ipv4_multi_range_compat** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @NF_INET_PRE_ROUTING, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @NF_INET_LOCAL_OUT, align 4
  %20 = icmp ne i32 %18, %19
  br label %21

21:                                               ; preds = %17, %3
  %22 = phi i1 [ false, %3 ], [ %20, %17 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @WARN_ON(i32 %23)
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = call %struct.nf_conn* @nf_ct_get(%struct.sk_buff* %25, i32* %9)
  store %struct.nf_conn* %26, %struct.nf_conn** %8, align 8
  %27 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %28 = icmp ne %struct.nf_conn* %27, null
  br i1 %28, label %29, label %39

29:                                               ; preds = %21
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @IP_CT_NEW, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @IP_CT_RELATED, align 4
  %36 = icmp eq i32 %34, %35
  br label %37

37:                                               ; preds = %33, %29
  %38 = phi i1 [ true, %29 ], [ %36, %33 ]
  br label %39

39:                                               ; preds = %37, %21
  %40 = phi i1 [ false, %21 ], [ %38, %37 ]
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i32 @WARN_ON(i32 %42)
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @NF_INET_LOCAL_OUT, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = call i8* @htonl(i32 2130706433)
  store i8* %48, i8** %10, align 8
  br label %74

49:                                               ; preds = %39
  store i8* null, i8** %10, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call %struct.in_device* @__in_dev_get_rcu(i32 %52)
  store %struct.in_device* %53, %struct.in_device** %12, align 8
  %54 = load %struct.in_device*, %struct.in_device** %12, align 8
  %55 = icmp ne %struct.in_device* %54, null
  br i1 %55, label %56, label %68

56:                                               ; preds = %49
  %57 = load %struct.in_device*, %struct.in_device** %12, align 8
  %58 = getelementptr inbounds %struct.in_device, %struct.in_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call %struct.in_ifaddr* @rcu_dereference(i32 %59)
  store %struct.in_ifaddr* %60, %struct.in_ifaddr** %13, align 8
  %61 = load %struct.in_ifaddr*, %struct.in_ifaddr** %13, align 8
  %62 = icmp ne %struct.in_ifaddr* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %56
  %64 = load %struct.in_ifaddr*, %struct.in_ifaddr** %13, align 8
  %65 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  store i8* %66, i8** %10, align 8
  br label %67

67:                                               ; preds = %63, %56
  br label %68

68:                                               ; preds = %67, %49
  %69 = load i8*, i8** %10, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %73, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* @NF_DROP, align 4
  store i32 %72, i32* %4, align 4
  br label %111

73:                                               ; preds = %68
  br label %74

74:                                               ; preds = %73, %47
  %75 = getelementptr inbounds %struct.nf_nat_range2, %struct.nf_nat_range2* %11, i32 0, i32 4
  %76 = call i32 @memset(%struct.TYPE_4__* %75, i32 0, i32 8)
  %77 = getelementptr inbounds %struct.nf_nat_range2, %struct.nf_nat_range2* %11, i32 0, i32 3
  %78 = call i32 @memset(%struct.TYPE_4__* %77, i32 0, i32 8)
  %79 = load %struct.nf_nat_ipv4_multi_range_compat*, %struct.nf_nat_ipv4_multi_range_compat** %6, align 8
  %80 = getelementptr inbounds %struct.nf_nat_ipv4_multi_range_compat, %struct.nf_nat_ipv4_multi_range_compat* %79, i32 0, i32 0
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i64 0
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @NF_NAT_RANGE_MAP_IPS, align 4
  %86 = or i32 %84, %85
  %87 = getelementptr inbounds %struct.nf_nat_range2, %struct.nf_nat_range2* %11, i32 0, i32 0
  store i32 %86, i32* %87, align 8
  %88 = load i8*, i8** %10, align 8
  %89 = getelementptr inbounds %struct.nf_nat_range2, %struct.nf_nat_range2* %11, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  store i8* %88, i8** %90, align 8
  %91 = load i8*, i8** %10, align 8
  %92 = getelementptr inbounds %struct.nf_nat_range2, %struct.nf_nat_range2* %11, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  store i8* %91, i8** %93, align 8
  %94 = load %struct.nf_nat_ipv4_multi_range_compat*, %struct.nf_nat_ipv4_multi_range_compat** %6, align 8
  %95 = getelementptr inbounds %struct.nf_nat_ipv4_multi_range_compat, %struct.nf_nat_ipv4_multi_range_compat* %94, i32 0, i32 0
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i64 0
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds %struct.nf_nat_range2, %struct.nf_nat_range2* %11, i32 0, i32 2
  store i32 %99, i32* %100, align 8
  %101 = load %struct.nf_nat_ipv4_multi_range_compat*, %struct.nf_nat_ipv4_multi_range_compat** %6, align 8
  %102 = getelementptr inbounds %struct.nf_nat_ipv4_multi_range_compat, %struct.nf_nat_ipv4_multi_range_compat* %101, i32 0, i32 0
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i64 0
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = getelementptr inbounds %struct.nf_nat_range2, %struct.nf_nat_range2* %11, i32 0, i32 1
  store i32 %106, i32* %107, align 4
  %108 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %109 = load i32, i32* @NF_NAT_MANIP_DST, align 4
  %110 = call i32 @nf_nat_setup_info(%struct.nf_conn* %108, %struct.nf_nat_range2* %11, i32 %109)
  store i32 %110, i32* %4, align 4
  br label %111

111:                                              ; preds = %74, %71
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.nf_conn* @nf_ct_get(%struct.sk_buff*, i32*) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local %struct.in_device* @__in_dev_get_rcu(i32) #1

declare dso_local %struct.in_ifaddr* @rcu_dereference(i32) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @nf_nat_setup_info(%struct.nf_conn*, %struct.nf_nat_range2*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
