; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_raw.c_rawv6_err.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_raw.c_rawv6_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i32, i32 (%struct.sock*)* }
%struct.sk_buff = type { i64* }
%struct.inet6_skb_parm = type { i32 }
%struct.inet_sock = type { i32 }
%struct.ipv6_pinfo = type { i64, i64 }

@TCP_ESTABLISHED = common dso_local global i64 0, align 8
@ICMPV6_PKT_TOOBIG = common dso_local global i64 0, align 8
@IPV6_PMTUDISC_DO = common dso_local global i64 0, align 8
@NDISC_REDIRECT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.sk_buff*, %struct.inet6_skb_parm*, i64, i64, i32, i32)* @rawv6_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rawv6_err(%struct.sock* %0, %struct.sk_buff* %1, %struct.inet6_skb_parm* %2, i64 %3, i64 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.inet6_skb_parm*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.inet_sock*, align 8
  %16 = alloca %struct.ipv6_pinfo*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64*, align 8
  store %struct.sock* %0, %struct.sock** %8, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %9, align 8
  store %struct.inet6_skb_parm* %2, %struct.inet6_skb_parm** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %20 = load %struct.sock*, %struct.sock** %8, align 8
  %21 = call %struct.inet_sock* @inet_sk(%struct.sock* %20)
  store %struct.inet_sock* %21, %struct.inet_sock** %15, align 8
  %22 = load %struct.sock*, %struct.sock** %8, align 8
  %23 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %22)
  store %struct.ipv6_pinfo* %23, %struct.ipv6_pinfo** %16, align 8
  %24 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %16, align 8
  %25 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %7
  %29 = load %struct.sock*, %struct.sock** %8, align 8
  %30 = getelementptr inbounds %struct.sock, %struct.sock* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @TCP_ESTABLISHED, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %104

35:                                               ; preds = %28, %7
  %36 = load i64, i64* %11, align 8
  %37 = load i64, i64* %12, align 8
  %38 = call i32 @icmpv6_err_convert(i64 %36, i64 %37, i32* %17)
  store i32 %38, i32* %18, align 4
  %39 = load i64, i64* %11, align 8
  %40 = load i64, i64* @ICMPV6_PKT_TOOBIG, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %35
  %43 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %44 = load %struct.sock*, %struct.sock** %8, align 8
  %45 = load i32, i32* %14, align 4
  %46 = call i32 @ip6_sk_update_pmtu(%struct.sk_buff* %43, %struct.sock* %44, i32 %45)
  %47 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %16, align 8
  %48 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @IPV6_PMTUDISC_DO, align 8
  %51 = icmp eq i64 %49, %50
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %18, align 4
  br label %53

53:                                               ; preds = %42, %35
  %54 = load i64, i64* %11, align 8
  %55 = load i64, i64* @NDISC_REDIRECT, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %59 = load %struct.sock*, %struct.sock** %8, align 8
  %60 = call i32 @ip6_sk_redirect(%struct.sk_buff* %58, %struct.sock* %59)
  br label %104

61:                                               ; preds = %53
  %62 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %16, align 8
  %63 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %87

66:                                               ; preds = %61
  %67 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %68 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %67, i32 0, i32 0
  %69 = load i64*, i64** %68, align 8
  store i64* %69, i64** %19, align 8
  %70 = load %struct.inet_sock*, %struct.inet_sock** %15, align 8
  %71 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %66
  %75 = load i32, i32* %13, align 4
  %76 = load i64*, i64** %19, align 8
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds i64, i64* %76, i64 %77
  store i64* %78, i64** %19, align 8
  br label %79

79:                                               ; preds = %74, %66
  %80 = load %struct.sock*, %struct.sock** %8, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %82 = load i32, i32* %17, align 4
  %83 = load i32, i32* %14, align 4
  %84 = call i32 @ntohl(i32 %83)
  %85 = load i64*, i64** %19, align 8
  %86 = call i32 @ipv6_icmp_error(%struct.sock* %80, %struct.sk_buff* %81, i32 %82, i32 0, i32 %84, i64* %85)
  br label %87

87:                                               ; preds = %79, %61
  %88 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %16, align 8
  %89 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %87
  %93 = load i32, i32* %18, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %92, %87
  %96 = load i32, i32* %17, align 4
  %97 = load %struct.sock*, %struct.sock** %8, align 8
  %98 = getelementptr inbounds %struct.sock, %struct.sock* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 8
  %99 = load %struct.sock*, %struct.sock** %8, align 8
  %100 = getelementptr inbounds %struct.sock, %struct.sock* %99, i32 0, i32 2
  %101 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %100, align 8
  %102 = load %struct.sock*, %struct.sock** %8, align 8
  %103 = call i32 %101(%struct.sock* %102)
  br label %104

104:                                              ; preds = %34, %57, %95, %92
  ret void
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local i32 @icmpv6_err_convert(i64, i64, i32*) #1

declare dso_local i32 @ip6_sk_update_pmtu(%struct.sk_buff*, %struct.sock*, i32) #1

declare dso_local i32 @ip6_sk_redirect(%struct.sk_buff*, %struct.sock*) #1

declare dso_local i32 @ipv6_icmp_error(%struct.sock*, %struct.sk_buff*, i32, i32, i32, i64*) #1

declare dso_local i32 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
