; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_input.c___sctp_rcv_walk_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_input.c___sctp_rcv_walk_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { i32 }
%struct.net = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i64 }
%union.sctp_addr = type { i32 }
%struct.sctp_transport = type { i32 }
%struct.sctp_chunkhdr = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sctp_association* (%struct.net*, %struct.sk_buff*, %union.sctp_addr*, %struct.sctp_transport**)* @__sctp_rcv_walk_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sctp_association* @__sctp_rcv_walk_lookup(%struct.net* %0, %struct.sk_buff* %1, %union.sctp_addr* %2, %struct.sctp_transport** %3) #0 {
  %5 = alloca %struct.sctp_association*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %union.sctp_addr*, align 8
  %9 = alloca %struct.sctp_transport**, align 8
  %10 = alloca %struct.sctp_association*, align 8
  %11 = alloca %struct.sctp_chunkhdr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %union.sctp_addr* %2, %union.sctp_addr** %8, align 8
  store %struct.sctp_transport** %3, %struct.sctp_transport*** %9, align 8
  store %struct.sctp_association* null, %struct.sctp_association** %10, align 8
  store i32 0, i32* %12, align 4
  store i32 1, i32* %13, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.sctp_chunkhdr*
  store %struct.sctp_chunkhdr* %18, %struct.sctp_chunkhdr** %11, align 8
  br label %19

19:                                               ; preds = %86, %4
  %20 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %11, align 8
  %21 = getelementptr inbounds %struct.sctp_chunkhdr, %struct.sctp_chunkhdr* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ntohs(i32 %22)
  %24 = sext i32 %23 to i64
  %25 = icmp ult i64 %24, 8
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %91

27:                                               ; preds = %19
  %28 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %11, align 8
  %29 = bitcast %struct.sctp_chunkhdr* %28 to i32*
  %30 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %11, align 8
  %31 = getelementptr inbounds %struct.sctp_chunkhdr, %struct.sctp_chunkhdr* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ntohs(i32 %32)
  %34 = call i32 @SCTP_PAD4(i32 %33)
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %29, i64 %35
  store i32* %36, i32** %14, align 8
  %37 = load i32*, i32** %14, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %39 = call i32* @skb_tail_pointer(%struct.sk_buff* %38)
  %40 = icmp ugt i32* %37, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %27
  br label %91

42:                                               ; preds = %27
  %43 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %11, align 8
  %44 = getelementptr inbounds %struct.sctp_chunkhdr, %struct.sctp_chunkhdr* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %76 [
    i32 129, label %46
    i32 128, label %48
    i32 130, label %56
  ]

46:                                               ; preds = %42
  %47 = load i32, i32* %13, align 4
  store i32 %47, i32* %12, align 4
  br label %77

48:                                               ; preds = %42
  %49 = load i32, i32* %12, align 4
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i32, i32* %13, align 4
  %53 = icmp eq i32 %52, 2
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store %struct.sctp_association* null, %struct.sctp_association** %5, align 8
  br label %93

55:                                               ; preds = %51, %48
  br label %77

56:                                               ; preds = %42
  %57 = load i32, i32* %12, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %56
  %60 = load %struct.net*, %struct.net** %6, align 8
  %61 = getelementptr inbounds %struct.net, %struct.net* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %59, %56
  %66 = load %struct.net*, %struct.net** %6, align 8
  %67 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %11, align 8
  %68 = load %union.sctp_addr*, %union.sctp_addr** %8, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %70 = call %struct.TYPE_4__* @sctp_hdr(%struct.sk_buff* %69)
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.sctp_transport**, %struct.sctp_transport*** %9, align 8
  %74 = call %struct.sctp_association* @__sctp_rcv_asconf_lookup(%struct.net* %66, %struct.sctp_chunkhdr* %67, %union.sctp_addr* %68, i32 %72, %struct.sctp_transport** %73)
  store %struct.sctp_association* %74, %struct.sctp_association** %10, align 8
  br label %75

75:                                               ; preds = %65, %59
  br label %76

76:                                               ; preds = %42, %75
  br label %77

77:                                               ; preds = %76, %55, %46
  %78 = load %struct.sctp_association*, %struct.sctp_association** %10, align 8
  %79 = icmp ne %struct.sctp_association* %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  br label %91

81:                                               ; preds = %77
  %82 = load i32*, i32** %14, align 8
  %83 = bitcast i32* %82 to %struct.sctp_chunkhdr*
  store %struct.sctp_chunkhdr* %83, %struct.sctp_chunkhdr** %11, align 8
  %84 = load i32, i32* %13, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %13, align 4
  br label %86

86:                                               ; preds = %81
  %87 = load i32*, i32** %14, align 8
  %88 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %89 = call i32* @skb_tail_pointer(%struct.sk_buff* %88)
  %90 = icmp ult i32* %87, %89
  br i1 %90, label %19, label %91

91:                                               ; preds = %86, %80, %41, %26
  %92 = load %struct.sctp_association*, %struct.sctp_association** %10, align 8
  store %struct.sctp_association* %92, %struct.sctp_association** %5, align 8
  br label %93

93:                                               ; preds = %91, %54
  %94 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  ret %struct.sctp_association* %94
}

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @SCTP_PAD4(i32) #1

declare dso_local i32* @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local %struct.sctp_association* @__sctp_rcv_asconf_lookup(%struct.net*, %struct.sctp_chunkhdr*, %union.sctp_addr*, i32, %struct.sctp_transport**) #1

declare dso_local %struct.TYPE_4__* @sctp_hdr(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
