; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_input.c___sctp_rcv_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_input.c___sctp_rcv_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { i32 }
%struct.net = type { i32 }
%struct.sk_buff = type { i32 }
%union.sctp_addr = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.sctp_transport = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@AF_INET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"sctp: asoc not found for src:%pI4:%d dst:%pI4:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"sctp: asoc not found for src:%pI6:%d dst:%pI6:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sctp_association* (%struct.net*, %struct.sk_buff*, %union.sctp_addr*, %union.sctp_addr*, %struct.sctp_transport**)* @__sctp_rcv_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sctp_association* @__sctp_rcv_lookup(%struct.net* %0, %struct.sk_buff* %1, %union.sctp_addr* %2, %union.sctp_addr* %3, %struct.sctp_transport** %4) #0 {
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %union.sctp_addr*, align 8
  %9 = alloca %union.sctp_addr*, align 8
  %10 = alloca %struct.sctp_transport**, align 8
  %11 = alloca %struct.sctp_association*, align 8
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %union.sctp_addr* %2, %union.sctp_addr** %8, align 8
  store %union.sctp_addr* %3, %union.sctp_addr** %9, align 8
  store %struct.sctp_transport** %4, %struct.sctp_transport*** %10, align 8
  %12 = load %struct.net*, %struct.net** %6, align 8
  %13 = load %union.sctp_addr*, %union.sctp_addr** %9, align 8
  %14 = load %union.sctp_addr*, %union.sctp_addr** %8, align 8
  %15 = load %struct.sctp_transport**, %struct.sctp_transport*** %10, align 8
  %16 = call %struct.sctp_association* @__sctp_lookup_association(%struct.net* %12, %union.sctp_addr* %13, %union.sctp_addr* %14, %struct.sctp_transport** %15)
  store %struct.sctp_association* %16, %struct.sctp_association** %11, align 8
  %17 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %18 = icmp ne %struct.sctp_association* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  br label %73

20:                                               ; preds = %5
  %21 = load %struct.net*, %struct.net** %6, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %23 = load %union.sctp_addr*, %union.sctp_addr** %9, align 8
  %24 = load %struct.sctp_transport**, %struct.sctp_transport*** %10, align 8
  %25 = call %struct.sctp_association* @__sctp_rcv_lookup_harder(%struct.net* %21, %struct.sk_buff* %22, %union.sctp_addr* %23, %struct.sctp_transport** %24)
  store %struct.sctp_association* %25, %struct.sctp_association** %11, align 8
  %26 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %27 = icmp ne %struct.sctp_association* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %73

29:                                               ; preds = %20
  %30 = load %union.sctp_addr*, %union.sctp_addr** %8, align 8
  %31 = bitcast %union.sctp_addr* %30 to %struct.TYPE_4__*
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @AF_INET, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %54

36:                                               ; preds = %29
  %37 = load %union.sctp_addr*, %union.sctp_addr** %9, align 8
  %38 = bitcast %union.sctp_addr* %37 to %struct.TYPE_5__*
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load %union.sctp_addr*, %union.sctp_addr** %9, align 8
  %41 = bitcast %union.sctp_addr* %40 to %struct.TYPE_5__*
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @ntohs(i32 %43)
  %45 = load %union.sctp_addr*, %union.sctp_addr** %8, align 8
  %46 = bitcast %union.sctp_addr* %45 to %struct.TYPE_5__*
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load %union.sctp_addr*, %union.sctp_addr** %8, align 8
  %49 = bitcast %union.sctp_addr* %48 to %struct.TYPE_5__*
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @ntohs(i32 %51)
  %53 = call i32 @pr_debug(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32* %39, i32 %44, i32* %47, i32 %52)
  br label %72

54:                                               ; preds = %29
  %55 = load %union.sctp_addr*, %union.sctp_addr** %9, align 8
  %56 = bitcast %union.sctp_addr* %55 to %struct.TYPE_6__*
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load %union.sctp_addr*, %union.sctp_addr** %9, align 8
  %59 = bitcast %union.sctp_addr* %58 to %struct.TYPE_6__*
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @ntohs(i32 %61)
  %63 = load %union.sctp_addr*, %union.sctp_addr** %8, align 8
  %64 = bitcast %union.sctp_addr* %63 to %struct.TYPE_6__*
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load %union.sctp_addr*, %union.sctp_addr** %8, align 8
  %67 = bitcast %union.sctp_addr* %66 to %struct.TYPE_6__*
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @ntohs(i32 %69)
  %71 = call i32 @pr_debug(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32* %57, i32 %62, i32* %65, i32 %70)
  br label %72

72:                                               ; preds = %54, %36
  br label %73

73:                                               ; preds = %72, %28, %19
  %74 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  ret %struct.sctp_association* %74
}

declare dso_local %struct.sctp_association* @__sctp_lookup_association(%struct.net*, %union.sctp_addr*, %union.sctp_addr*, %struct.sctp_transport**) #1

declare dso_local %struct.sctp_association* @__sctp_rcv_lookup_harder(%struct.net*, %struct.sk_buff*, %union.sctp_addr*, %struct.sctp_transport**) #1

declare dso_local i32 @pr_debug(i8*, i32*, i32, i32*, i32) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
