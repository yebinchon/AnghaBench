; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_ipv6.c_sctp_v6_addr_to_user.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_ipv6.c_sctp_v6_addr_to_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_sock = type { i64 }
%union.sctp_addr = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sctp_sock*, %union.sctp_addr*)* @sctp_v6_addr_to_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_v6_addr_to_user(%struct.sctp_sock* %0, %union.sctp_addr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sctp_sock*, align 8
  %5 = alloca %union.sctp_addr*, align 8
  store %struct.sctp_sock* %0, %struct.sctp_sock** %4, align 8
  store %union.sctp_addr* %1, %union.sctp_addr** %5, align 8
  %6 = load %struct.sctp_sock*, %struct.sctp_sock** %4, align 8
  %7 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %2
  %11 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %12 = bitcast %union.sctp_addr* %11 to %struct.TYPE_6__*
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @AF_INET, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %19 = call i32 @sctp_v4_map_v6(%union.sctp_addr* %18)
  br label %20

20:                                               ; preds = %17, %10
  br label %38

21:                                               ; preds = %2
  %22 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %23 = bitcast %union.sctp_addr* %22 to %struct.TYPE_6__*
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @AF_INET6, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %21
  %29 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %30 = bitcast %union.sctp_addr* %29 to %struct.TYPE_5__*
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = call i64 @ipv6_addr_v4mapped(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %36 = call i32 @sctp_v6_map_v4(%union.sctp_addr* %35)
  br label %37

37:                                               ; preds = %34, %28, %21
  br label %38

38:                                               ; preds = %37, %20
  %39 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %40 = bitcast %union.sctp_addr* %39 to %struct.TYPE_6__*
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @AF_INET, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %38
  %46 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %47 = bitcast %union.sctp_addr* %46 to %struct.TYPE_4__*
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @memset(i32 %49, i32 0, i32 4)
  store i32 4, i32* %3, align 4
  br label %52

51:                                               ; preds = %38
  store i32 4, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %45
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @sctp_v4_map_v6(%union.sctp_addr*) #1

declare dso_local i64 @ipv6_addr_v4mapped(i32*) #1

declare dso_local i32 @sctp_v6_map_v4(%union.sctp_addr*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
