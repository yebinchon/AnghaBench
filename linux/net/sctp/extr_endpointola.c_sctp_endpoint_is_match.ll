; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_endpointola.c_sctp_endpoint_is_match.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_endpointola.c_sctp_endpoint_is_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_endpoint = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.net = type { i32 }
%union.sctp_addr = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sctp_endpoint* @sctp_endpoint_is_match(%struct.sctp_endpoint* %0, %struct.net* %1, %union.sctp_addr* %2) #0 {
  %4 = alloca %struct.sctp_endpoint*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca %union.sctp_addr*, align 8
  %7 = alloca %struct.sctp_endpoint*, align 8
  store %struct.sctp_endpoint* %0, %struct.sctp_endpoint** %4, align 8
  store %struct.net* %1, %struct.net** %5, align 8
  store %union.sctp_addr* %2, %union.sctp_addr** %6, align 8
  store %struct.sctp_endpoint* null, %struct.sctp_endpoint** %7, align 8
  %8 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %4, align 8
  %9 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @htons(i32 %12)
  %14 = load %union.sctp_addr*, %union.sctp_addr** %6, align 8
  %15 = bitcast %union.sctp_addr* %14 to %struct.TYPE_4__*
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %13, %17
  br i1 %18, label %19, label %43

19:                                               ; preds = %3
  %20 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %4, align 8
  %21 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @sock_net(i32 %23)
  %25 = load %struct.net*, %struct.net** %5, align 8
  %26 = call i64 @net_eq(i32 %24, %struct.net* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %19
  %29 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %4, align 8
  %30 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load %union.sctp_addr*, %union.sctp_addr** %6, align 8
  %33 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %4, align 8
  %34 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @sctp_sk(i32 %36)
  %38 = call i64 @sctp_bind_addr_match(%struct.TYPE_6__* %31, %union.sctp_addr* %32, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %28
  %41 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %4, align 8
  store %struct.sctp_endpoint* %41, %struct.sctp_endpoint** %7, align 8
  br label %42

42:                                               ; preds = %40, %28
  br label %43

43:                                               ; preds = %42, %19, %3
  %44 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  ret %struct.sctp_endpoint* %44
}

declare dso_local i64 @htons(i32) #1

declare dso_local i64 @net_eq(i32, %struct.net*) #1

declare dso_local i32 @sock_net(i32) #1

declare dso_local i64 @sctp_bind_addr_match(%struct.TYPE_6__*, %union.sctp_addr*, i32) #1

declare dso_local i32 @sctp_sk(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
