; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_input.c___sctp_rcv_lookup_harder.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_input.c___sctp_rcv_lookup_harder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { i32 }
%struct.net = type { i32 }
%struct.sk_buff = type { i64, i64 }
%union.sctp_addr = type { i32 }
%struct.sctp_transport = type { i32 }
%struct.sctp_chunkhdr = type { i64, i32 }

@SCTP_CID_INIT = common dso_local global i64 0, align 8
@SCTP_CID_INIT_ACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sctp_association* (%struct.net*, %struct.sk_buff*, %union.sctp_addr*, %struct.sctp_transport**)* @__sctp_rcv_lookup_harder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sctp_association* @__sctp_rcv_lookup_harder(%struct.net* %0, %struct.sk_buff* %1, %union.sctp_addr* %2, %struct.sctp_transport** %3) #0 {
  %5 = alloca %struct.sctp_association*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %union.sctp_addr*, align 8
  %9 = alloca %struct.sctp_transport**, align 8
  %10 = alloca %struct.sctp_chunkhdr*, align 8
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %union.sctp_addr* %2, %union.sctp_addr** %8, align 8
  store %struct.sctp_transport** %3, %struct.sctp_transport*** %9, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %12 = call i64 @skb_is_gso(%struct.sk_buff* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %16 = call i64 @skb_is_gso_sctp(%struct.sk_buff* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store %struct.sctp_association* null, %struct.sctp_association** %5, align 8
  br label %58

19:                                               ; preds = %14, %4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.sctp_chunkhdr*
  store %struct.sctp_chunkhdr* %23, %struct.sctp_chunkhdr** %10, align 8
  %24 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %10, align 8
  %25 = getelementptr inbounds %struct.sctp_chunkhdr, %struct.sctp_chunkhdr* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @ntohs(i32 %26)
  %28 = call i64 @SCTP_PAD4(i32 %27)
  %29 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %19
  store %struct.sctp_association* null, %struct.sctp_association** %5, align 8
  br label %58

34:                                               ; preds = %19
  %35 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %10, align 8
  %36 = getelementptr inbounds %struct.sctp_chunkhdr, %struct.sctp_chunkhdr* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SCTP_CID_INIT, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %10, align 8
  %42 = getelementptr inbounds %struct.sctp_chunkhdr, %struct.sctp_chunkhdr* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @SCTP_CID_INIT_ACK, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %40, %34
  %47 = load %struct.net*, %struct.net** %6, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %49 = load %union.sctp_addr*, %union.sctp_addr** %8, align 8
  %50 = load %struct.sctp_transport**, %struct.sctp_transport*** %9, align 8
  %51 = call %struct.sctp_association* @__sctp_rcv_init_lookup(%struct.net* %47, %struct.sk_buff* %48, %union.sctp_addr* %49, %struct.sctp_transport** %50)
  store %struct.sctp_association* %51, %struct.sctp_association** %5, align 8
  br label %58

52:                                               ; preds = %40
  %53 = load %struct.net*, %struct.net** %6, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %55 = load %union.sctp_addr*, %union.sctp_addr** %8, align 8
  %56 = load %struct.sctp_transport**, %struct.sctp_transport*** %9, align 8
  %57 = call %struct.sctp_association* @__sctp_rcv_walk_lookup(%struct.net* %53, %struct.sk_buff* %54, %union.sctp_addr* %55, %struct.sctp_transport** %56)
  store %struct.sctp_association* %57, %struct.sctp_association** %5, align 8
  br label %58

58:                                               ; preds = %52, %46, %33, %18
  %59 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  ret %struct.sctp_association* %59
}

declare dso_local i64 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local i64 @skb_is_gso_sctp(%struct.sk_buff*) #1

declare dso_local i64 @SCTP_PAD4(i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local %struct.sctp_association* @__sctp_rcv_init_lookup(%struct.net*, %struct.sk_buff*, %union.sctp_addr*, %struct.sctp_transport**) #1

declare dso_local %struct.sctp_association* @__sctp_rcv_walk_lookup(%struct.net*, %struct.sk_buff*, %union.sctp_addr*, %struct.sctp_transport**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
