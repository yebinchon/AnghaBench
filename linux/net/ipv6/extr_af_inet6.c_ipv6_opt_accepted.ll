; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_af_inet6.c_ipv6_opt_accepted.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_af_inet6.c_ipv6_opt_accepted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.inet6_skb_parm = type { i32, i64, i64, i64 }
%struct.ipv6_pinfo = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.ipv6hdr = type { i32 }

@IP6SKB_HOPBYHOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipv6_opt_accepted(%struct.sock* %0, %struct.sk_buff* %1, %struct.inet6_skb_parm* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.inet6_skb_parm*, align 8
  %8 = alloca %struct.ipv6_pinfo*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.inet6_skb_parm* %2, %struct.inet6_skb_parm** %7, align 8
  %9 = load %struct.sock*, %struct.sock** %5, align 8
  %10 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %9)
  store %struct.ipv6_pinfo* %10, %struct.ipv6_pinfo** %8, align 8
  %11 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %8, align 8
  %12 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %95

16:                                               ; preds = %3
  %17 = load %struct.inet6_skb_parm*, %struct.inet6_skb_parm** %7, align 8
  %18 = getelementptr inbounds %struct.inet6_skb_parm, %struct.inet6_skb_parm* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @IP6SKB_HOPBYHOP, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %16
  %24 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %8, align 8
  %25 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 6
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %93, label %30

30:                                               ; preds = %23
  %31 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %8, align 8
  %32 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 5
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %93, label %37

37:                                               ; preds = %30, %16
  %38 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %39 = call i64 @skb_network_header(%struct.sk_buff* %38)
  %40 = inttoptr i64 %39 to %struct.ipv6hdr*
  %41 = call i64 @ip6_flowinfo(%struct.ipv6hdr* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %37
  %44 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %8, align 8
  %45 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %93, label %50

50:                                               ; preds = %43, %37
  %51 = load %struct.inet6_skb_parm*, %struct.inet6_skb_parm** %7, align 8
  %52 = getelementptr inbounds %struct.inet6_skb_parm, %struct.inet6_skb_parm* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %69

55:                                               ; preds = %50
  %56 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %8, align 8
  %57 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %93, label %62

62:                                               ; preds = %55
  %63 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %8, align 8
  %64 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %93, label %69

69:                                               ; preds = %62, %50
  %70 = load %struct.inet6_skb_parm*, %struct.inet6_skb_parm** %7, align 8
  %71 = getelementptr inbounds %struct.inet6_skb_parm, %struct.inet6_skb_parm* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %69
  %75 = load %struct.inet6_skb_parm*, %struct.inet6_skb_parm** %7, align 8
  %76 = getelementptr inbounds %struct.inet6_skb_parm, %struct.inet6_skb_parm* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %94

79:                                               ; preds = %74, %69
  %80 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %8, align 8
  %81 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %93, label %86

86:                                               ; preds = %79
  %87 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %8, align 8
  %88 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %86, %79, %62, %55, %43, %30, %23
  store i32 1, i32* %4, align 4
  br label %96

94:                                               ; preds = %86, %74
  br label %95

95:                                               ; preds = %94, %3
  store i32 0, i32* %4, align 4
  br label %96

96:                                               ; preds = %95, %93
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local i64 @ip6_flowinfo(%struct.ipv6hdr*) #1

declare dso_local i64 @skb_network_header(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
