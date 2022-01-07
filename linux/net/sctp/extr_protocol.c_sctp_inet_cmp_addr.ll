; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_protocol.c_sctp_inet_cmp_addr.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_protocol.c_sctp_inet_cmp_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.sctp_addr = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.sctp_sock = type { i32 }
%struct.TYPE_4__ = type { i64 }

@INADDR_ANY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.sctp_addr*, %union.sctp_addr*, %struct.sctp_sock*)* @sctp_inet_cmp_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_inet_cmp_addr(%union.sctp_addr* %0, %union.sctp_addr* %1, %struct.sctp_sock* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %union.sctp_addr*, align 8
  %6 = alloca %union.sctp_addr*, align 8
  %7 = alloca %struct.sctp_sock*, align 8
  store %union.sctp_addr* %0, %union.sctp_addr** %5, align 8
  store %union.sctp_addr* %1, %union.sctp_addr** %6, align 8
  store %struct.sctp_sock* %2, %struct.sctp_sock** %7, align 8
  %8 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %9 = bitcast %union.sctp_addr* %8 to %struct.TYPE_4__*
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %union.sctp_addr*, %union.sctp_addr** %6, align 8
  %13 = bitcast %union.sctp_addr* %12 to %struct.TYPE_4__*
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %11, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %51

18:                                               ; preds = %3
  %19 = load i32, i32* @INADDR_ANY, align 4
  %20 = call i64 @htonl(i32 %19)
  %21 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %22 = bitcast %union.sctp_addr* %21 to %struct.TYPE_5__*
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %20, %25
  br i1 %26, label %36, label %27

27:                                               ; preds = %18
  %28 = load i32, i32* @INADDR_ANY, align 4
  %29 = call i64 @htonl(i32 %28)
  %30 = load %union.sctp_addr*, %union.sctp_addr** %6, align 8
  %31 = bitcast %union.sctp_addr* %30 to %struct.TYPE_5__*
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %29, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %27, %18
  store i32 1, i32* %4, align 4
  br label %51

37:                                               ; preds = %27
  %38 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %39 = bitcast %union.sctp_addr* %38 to %struct.TYPE_5__*
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %union.sctp_addr*, %union.sctp_addr** %6, align 8
  %44 = bitcast %union.sctp_addr* %43 to %struct.TYPE_5__*
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %42, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %37
  store i32 1, i32* %4, align 4
  br label %51

50:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %50, %49, %36, %17
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i64 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
