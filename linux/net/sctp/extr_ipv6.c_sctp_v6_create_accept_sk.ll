; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_ipv6.c_sctp_v6_create_accept_sk.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_ipv6.c_sctp_v6_create_accept_sk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i64 (%struct.sock*)* }
%struct.sctp_association = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ipv6_pinfo = type { i32*, i32*, i32* }
%struct.sctp6_sock = type { i32 }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i32 }

@PF_INET6 = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@SOCK_ZAPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sock* (%struct.sock*, %struct.sctp_association*, i32)* @sctp_v6_create_accept_sk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sock* @sctp_v6_create_accept_sk(%struct.sock* %0, %struct.sctp_association* %1, i32 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sctp_association*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.ipv6_pinfo*, align 8
  %9 = alloca %struct.ipv6_pinfo*, align 8
  %10 = alloca %struct.sctp6_sock*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.sock*, %struct.sock** %4, align 8
  %12 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %11)
  store %struct.ipv6_pinfo* %12, %struct.ipv6_pinfo** %9, align 8
  %13 = load %struct.sock*, %struct.sock** %4, align 8
  %14 = call i32 @sock_net(%struct.sock* %13)
  %15 = load i32, i32* @PF_INET6, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = load %struct.sock*, %struct.sock** %4, align 8
  %18 = getelementptr inbounds %struct.sock, %struct.sock* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call %struct.sock* @sk_alloc(i32 %14, i32 %15, i32 %16, %struct.TYPE_6__* %19, i32 %20)
  store %struct.sock* %21, %struct.sock** %7, align 8
  %22 = load %struct.sock*, %struct.sock** %7, align 8
  %23 = icmp ne %struct.sock* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %3
  br label %87

25:                                               ; preds = %3
  %26 = load %struct.sock*, %struct.sock** %7, align 8
  %27 = call i32 @sock_init_data(i32* null, %struct.sock* %26)
  %28 = load %struct.sock*, %struct.sock** %7, align 8
  %29 = load %struct.sock*, %struct.sock** %4, align 8
  %30 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %31 = call i32 @sctp_copy_sock(%struct.sock* %28, %struct.sock* %29, %struct.sctp_association* %30)
  %32 = load %struct.sock*, %struct.sock** %4, align 8
  %33 = load i32, i32* @SOCK_ZAPPED, align 4
  %34 = call i32 @sock_reset_flag(%struct.sock* %32, i32 %33)
  %35 = load %struct.sock*, %struct.sock** %7, align 8
  %36 = bitcast %struct.sock* %35 to %struct.sctp6_sock*
  store %struct.sctp6_sock* %36, %struct.sctp6_sock** %10, align 8
  %37 = load %struct.sctp6_sock*, %struct.sctp6_sock** %10, align 8
  %38 = getelementptr inbounds %struct.sctp6_sock, %struct.sctp6_sock* %37, i32 0, i32 0
  %39 = load %struct.sock*, %struct.sock** %7, align 8
  %40 = call %struct.TYPE_8__* @inet_sk(%struct.sock* %39)
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  store i32* %38, i32** %41, align 8
  %42 = load %struct.sock*, %struct.sock** %4, align 8
  %43 = call %struct.TYPE_7__* @sctp_sk(%struct.sock* %42)
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.sock*, %struct.sock** %7, align 8
  %47 = call %struct.TYPE_7__* @sctp_sk(%struct.sock* %46)
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 4
  %49 = load %struct.sock*, %struct.sock** %7, align 8
  %50 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %49)
  store %struct.ipv6_pinfo* %50, %struct.ipv6_pinfo** %8, align 8
  %51 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %8, align 8
  %52 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %9, align 8
  %53 = call i32 @memcpy(%struct.ipv6_pinfo* %51, %struct.ipv6_pinfo* %52, i32 24)
  %54 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %8, align 8
  %55 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %54, i32 0, i32 2
  store i32* null, i32** %55, align 8
  %56 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %8, align 8
  %57 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %56, i32 0, i32 1
  store i32* null, i32** %57, align 8
  %58 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %8, align 8
  %59 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %58, i32 0, i32 0
  store i32* null, i32** %59, align 8
  %60 = load %struct.sock*, %struct.sock** %4, align 8
  %61 = load %struct.sock*, %struct.sock** %7, align 8
  %62 = call i32 @sctp_v6_copy_ip_options(%struct.sock* %60, %struct.sock* %61)
  %63 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %64 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load %struct.sock*, %struct.sock** %7, align 8
  %67 = call i32 @sctp_v6_to_sk_daddr(i32* %65, %struct.sock* %66)
  %68 = load %struct.sock*, %struct.sock** %4, align 8
  %69 = getelementptr inbounds %struct.sock, %struct.sock* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.sock*, %struct.sock** %7, align 8
  %72 = getelementptr inbounds %struct.sock, %struct.sock* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 8
  %73 = load %struct.sock*, %struct.sock** %7, align 8
  %74 = call i32 @sk_refcnt_debug_inc(%struct.sock* %73)
  %75 = load %struct.sock*, %struct.sock** %7, align 8
  %76 = getelementptr inbounds %struct.sock, %struct.sock* %75, i32 0, i32 0
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i64 (%struct.sock*)*, i64 (%struct.sock*)** %78, align 8
  %80 = load %struct.sock*, %struct.sock** %7, align 8
  %81 = call i64 %79(%struct.sock* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %25
  %84 = load %struct.sock*, %struct.sock** %7, align 8
  %85 = call i32 @sk_common_release(%struct.sock* %84)
  store %struct.sock* null, %struct.sock** %7, align 8
  br label %86

86:                                               ; preds = %83, %25
  br label %87

87:                                               ; preds = %86, %24
  %88 = load %struct.sock*, %struct.sock** %7, align 8
  ret %struct.sock* %88
}

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local %struct.sock* @sk_alloc(i32, i32, i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @sock_init_data(i32*, %struct.sock*) #1

declare dso_local i32 @sctp_copy_sock(%struct.sock*, %struct.sock*, %struct.sctp_association*) #1

declare dso_local i32 @sock_reset_flag(%struct.sock*, i32) #1

declare dso_local %struct.TYPE_8__* @inet_sk(%struct.sock*) #1

declare dso_local %struct.TYPE_7__* @sctp_sk(%struct.sock*) #1

declare dso_local i32 @memcpy(%struct.ipv6_pinfo*, %struct.ipv6_pinfo*, i32) #1

declare dso_local i32 @sctp_v6_copy_ip_options(%struct.sock*, %struct.sock*) #1

declare dso_local i32 @sctp_v6_to_sk_daddr(i32*, %struct.sock*) #1

declare dso_local i32 @sk_refcnt_debug_inc(%struct.sock*) #1

declare dso_local i32 @sk_common_release(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
