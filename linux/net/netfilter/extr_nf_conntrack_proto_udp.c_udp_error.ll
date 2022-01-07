; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_proto_udp.c_udp_error.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_proto_udp.c_udp_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_hook_state = type { i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.udphdr = type { i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"short packet\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"truncated/malformed packet\00", align 1
@NF_INET_PRE_ROUTING = common dso_local global i64 0, align 8
@IPPROTO_UDP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"bad checksum\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, %struct.nf_hook_state*)* @udp_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udp_error(%struct.sk_buff* %0, i32 %1, %struct.nf_hook_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nf_hook_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.udphdr*, align 8
  %10 = alloca %struct.udphdr, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nf_hook_state* %2, %struct.nf_hook_state** %7, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %6, align 4
  %15 = sub i32 %13, %14
  store i32 %15, i32* %8, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call %struct.udphdr* @skb_header_pointer(%struct.sk_buff* %16, i32 %17, i32 8, %struct.udphdr* %10)
  store %struct.udphdr* %18, %struct.udphdr** %9, align 8
  %19 = load %struct.udphdr*, %struct.udphdr** %9, align 8
  %20 = icmp ne %struct.udphdr* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %3
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = load %struct.nf_hook_state*, %struct.nf_hook_state** %7, align 8
  %24 = call i32 @udp_error_log(%struct.sk_buff* %22, %struct.nf_hook_state* %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %80

25:                                               ; preds = %3
  %26 = load %struct.udphdr*, %struct.udphdr** %9, align 8
  %27 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ntohs(i32 %28)
  %30 = load i32, i32* %8, align 4
  %31 = icmp ugt i32 %29, %30
  br i1 %31, label %39, label %32

32:                                               ; preds = %25
  %33 = load %struct.udphdr*, %struct.udphdr** %9, align 8
  %34 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ntohs(i32 %35)
  %37 = sext i32 %36 to i64
  %38 = icmp ult i64 %37, 8
  br i1 %38, label %39, label %43

39:                                               ; preds = %32, %25
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = load %struct.nf_hook_state*, %struct.nf_hook_state** %7, align 8
  %42 = call i32 @udp_error_log(%struct.sk_buff* %40, %struct.nf_hook_state* %41, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %80

43:                                               ; preds = %32
  %44 = load %struct.udphdr*, %struct.udphdr** %9, align 8
  %45 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %80

49:                                               ; preds = %43
  %50 = load %struct.nf_hook_state*, %struct.nf_hook_state** %7, align 8
  %51 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @NF_INET_PRE_ROUTING, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %79

55:                                               ; preds = %49
  %56 = load %struct.nf_hook_state*, %struct.nf_hook_state** %7, align 8
  %57 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %56, i32 0, i32 2
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %79

63:                                               ; preds = %55
  %64 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %65 = load %struct.nf_hook_state*, %struct.nf_hook_state** %7, align 8
  %66 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @IPPROTO_UDP, align 4
  %70 = load %struct.nf_hook_state*, %struct.nf_hook_state** %7, align 8
  %71 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @nf_checksum(%struct.sk_buff* %64, i64 %67, i32 %68, i32 %69, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %63
  %76 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %77 = load %struct.nf_hook_state*, %struct.nf_hook_state** %7, align 8
  %78 = call i32 @udp_error_log(%struct.sk_buff* %76, %struct.nf_hook_state* %77, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %80

79:                                               ; preds = %63, %55, %49
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %79, %75, %48, %39, %21
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local %struct.udphdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.udphdr*) #1

declare dso_local i32 @udp_error_log(%struct.sk_buff*, %struct.nf_hook_state*, i8*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i64 @nf_checksum(%struct.sk_buff*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
