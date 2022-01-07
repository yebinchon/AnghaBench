; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_ipv6.c_sctp_inet6_event_msgname.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_ipv6.c_sctp_inet6_event_msgname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_ulpevent = type { %struct.sctp_association* }
%struct.sctp_association = type { %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32, %union.sctp_addr }
%union.sctp_addr = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i8*, i64, i64, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i32, i8*, i64 }

@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i32 0, align 4
@IPV6_ADDR_LINKLOCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_ulpevent*, i8*, i32*)* @sctp_inet6_event_msgname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_inet6_event_msgname(%struct.sctp_ulpevent* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.sctp_ulpevent*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %union.sctp_addr*, align 8
  %8 = alloca %struct.sctp_association*, align 8
  %9 = alloca %union.sctp_addr*, align 8
  store %struct.sctp_ulpevent* %0, %struct.sctp_ulpevent** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  br label %100

13:                                               ; preds = %3
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %union.sctp_addr*
  store %union.sctp_addr* %15, %union.sctp_addr** %7, align 8
  %16 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %4, align 8
  %17 = getelementptr inbounds %struct.sctp_ulpevent, %struct.sctp_ulpevent* %16, i32 0, i32 0
  %18 = load %struct.sctp_association*, %struct.sctp_association** %17, align 8
  store %struct.sctp_association* %18, %struct.sctp_association** %8, align 8
  %19 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %20 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  store %union.sctp_addr* %21, %union.sctp_addr** %9, align 8
  %22 = load %union.sctp_addr*, %union.sctp_addr** %9, align 8
  %23 = bitcast %union.sctp_addr* %22 to %struct.TYPE_6__*
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @AF_INET, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %48

28:                                               ; preds = %13
  %29 = load i64, i64* @AF_INET, align 8
  %30 = load %union.sctp_addr*, %union.sctp_addr** %7, align 8
  %31 = bitcast %union.sctp_addr* %30 to %struct.TYPE_7__*
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 2
  store i64 %29, i64* %32, align 8
  %33 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %34 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i8* @htons(i32 %36)
  %38 = load %union.sctp_addr*, %union.sctp_addr** %7, align 8
  %39 = bitcast %union.sctp_addr* %38 to %struct.TYPE_7__*
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  store i8* %37, i8** %40, align 8
  %41 = load %union.sctp_addr*, %union.sctp_addr** %9, align 8
  %42 = bitcast %union.sctp_addr* %41 to %struct.TYPE_7__*
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %union.sctp_addr*, %union.sctp_addr** %7, align 8
  %46 = bitcast %union.sctp_addr* %45 to %struct.TYPE_7__*
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 8
  br label %91

48:                                               ; preds = %13
  %49 = load i32, i32* @AF_INET6, align 4
  %50 = load %union.sctp_addr*, %union.sctp_addr** %7, align 8
  %51 = bitcast %union.sctp_addr* %50 to %struct.TYPE_9__*
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 4
  store i32 %49, i32* %52, align 8
  %53 = load %union.sctp_addr*, %union.sctp_addr** %7, align 8
  %54 = bitcast %union.sctp_addr* %53 to %struct.TYPE_9__*
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 3
  store i64 0, i64* %55, align 8
  %56 = load %union.sctp_addr*, %union.sctp_addr** %9, align 8
  %57 = bitcast %union.sctp_addr* %56 to %struct.TYPE_9__*
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = call i32 @ipv6_addr_type(i32* %58)
  %60 = load i32, i32* @IPV6_ADDR_LINKLOCAL, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %48
  %64 = load %union.sctp_addr*, %union.sctp_addr** %9, align 8
  %65 = bitcast %union.sctp_addr* %64 to %struct.TYPE_9__*
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load %union.sctp_addr*, %union.sctp_addr** %7, align 8
  %69 = bitcast %union.sctp_addr* %68 to %struct.TYPE_9__*
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 2
  store i64 %67, i64* %70, align 8
  br label %75

71:                                               ; preds = %48
  %72 = load %union.sctp_addr*, %union.sctp_addr** %7, align 8
  %73 = bitcast %union.sctp_addr* %72 to %struct.TYPE_9__*
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 2
  store i64 0, i64* %74, align 8
  br label %75

75:                                               ; preds = %71, %63
  %76 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %77 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i8* @htons(i32 %79)
  %81 = load %union.sctp_addr*, %union.sctp_addr** %7, align 8
  %82 = bitcast %union.sctp_addr* %81 to %struct.TYPE_9__*
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  store i8* %80, i8** %83, align 8
  %84 = load %union.sctp_addr*, %union.sctp_addr** %9, align 8
  %85 = bitcast %union.sctp_addr* %84 to %struct.TYPE_9__*
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %union.sctp_addr*, %union.sctp_addr** %7, align 8
  %89 = bitcast %union.sctp_addr* %88 to %struct.TYPE_9__*
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  store i32 %87, i32* %90, align 8
  br label %91

91:                                               ; preds = %75, %28
  %92 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %93 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @sctp_sk(i32 %95)
  %97 = load %union.sctp_addr*, %union.sctp_addr** %7, align 8
  %98 = call i32 @sctp_v6_addr_to_user(i32 %96, %union.sctp_addr* %97)
  %99 = load i32*, i32** %6, align 8
  store i32 %98, i32* %99, align 4
  br label %100

100:                                              ; preds = %91, %12
  ret void
}

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @ipv6_addr_type(i32*) #1

declare dso_local i32 @sctp_v6_addr_to_user(i32, %union.sctp_addr*) #1

declare dso_local i32 @sctp_sk(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
