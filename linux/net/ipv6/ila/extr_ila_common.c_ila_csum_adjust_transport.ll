; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/ila/extr_ila_common.c_ila_csum_adjust_transport.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/ila/extr_ila_common.c_ila_csum_adjust_transport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ila_params = type { i32 }
%struct.ipv6hdr = type { i32 }
%struct.tcphdr = type { i32 }
%struct.udphdr = type { i32 }
%struct.icmp6hdr = type { i32 }

@CHECKSUM_PARTIAL = common dso_local global i32 0, align 4
@CSUM_MANGLED_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.ila_params*)* @ila_csum_adjust_transport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ila_csum_adjust_transport(%struct.sk_buff* %0, %struct.ila_params* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.ila_params*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ipv6hdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tcphdr*, align 8
  %9 = alloca %struct.udphdr*, align 8
  %10 = alloca %struct.icmp6hdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.ila_params* %1, %struct.ila_params** %4, align 8
  store i64 4, i64* %5, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %12 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %11)
  store %struct.ipv6hdr* %12, %struct.ipv6hdr** %6, align 8
  %13 = load %struct.ipv6hdr*, %struct.ipv6hdr** %6, align 8
  %14 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %106 [
    i32 129, label %16
    i32 128, label %39
    i32 130, label %83
  ]

16:                                               ; preds = %2
  %17 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %18 = load i64, i64* %5, align 8
  %19 = add i64 %18, 4
  %20 = call i32 @pskb_may_pull(%struct.sk_buff* %17, i64 %19)
  %21 = call i32 @likely(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %16
  %24 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %25 = call i32 @skb_network_header(%struct.sk_buff* %24)
  %26 = sext i32 %25 to i64
  %27 = load i64, i64* %5, align 8
  %28 = add i64 %26, %27
  %29 = inttoptr i64 %28 to %struct.tcphdr*
  store %struct.tcphdr* %29, %struct.tcphdr** %8, align 8
  %30 = load %struct.ipv6hdr*, %struct.ipv6hdr** %6, align 8
  %31 = load %struct.ila_params*, %struct.ila_params** %4, align 8
  %32 = call i32 @get_csum_diff(%struct.ipv6hdr* %30, %struct.ila_params* %31)
  store i32 %32, i32* %7, align 4
  %33 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %34 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %33, i32 0, i32 0
  %35 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @inet_proto_csum_replace_by_diff(i32* %34, %struct.sk_buff* %35, i32 %36, i32 1)
  br label %38

38:                                               ; preds = %23, %16
  br label %106

39:                                               ; preds = %2
  %40 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %41 = load i64, i64* %5, align 8
  %42 = add i64 %41, 4
  %43 = call i32 @pskb_may_pull(%struct.sk_buff* %40, i64 %42)
  %44 = call i32 @likely(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %82

46:                                               ; preds = %39
  %47 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %48 = call i32 @skb_network_header(%struct.sk_buff* %47)
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* %5, align 8
  %51 = add i64 %49, %50
  %52 = inttoptr i64 %51 to %struct.udphdr*
  store %struct.udphdr* %52, %struct.udphdr** %9, align 8
  %53 = load %struct.udphdr*, %struct.udphdr** %9, align 8
  %54 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %46
  %58 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %59 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @CHECKSUM_PARTIAL, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %81

63:                                               ; preds = %57, %46
  %64 = load %struct.ipv6hdr*, %struct.ipv6hdr** %6, align 8
  %65 = load %struct.ila_params*, %struct.ila_params** %4, align 8
  %66 = call i32 @get_csum_diff(%struct.ipv6hdr* %64, %struct.ila_params* %65)
  store i32 %66, i32* %7, align 4
  %67 = load %struct.udphdr*, %struct.udphdr** %9, align 8
  %68 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %67, i32 0, i32 0
  %69 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @inet_proto_csum_replace_by_diff(i32* %68, %struct.sk_buff* %69, i32 %70, i32 1)
  %72 = load %struct.udphdr*, %struct.udphdr** %9, align 8
  %73 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %63
  %77 = load i32, i32* @CSUM_MANGLED_0, align 4
  %78 = load %struct.udphdr*, %struct.udphdr** %9, align 8
  %79 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  br label %80

80:                                               ; preds = %76, %63
  br label %81

81:                                               ; preds = %80, %57
  br label %82

82:                                               ; preds = %81, %39
  br label %106

83:                                               ; preds = %2
  %84 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %85 = load i64, i64* %5, align 8
  %86 = add i64 %85, 4
  %87 = call i32 @pskb_may_pull(%struct.sk_buff* %84, i64 %86)
  %88 = call i32 @likely(i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %105

90:                                               ; preds = %83
  %91 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %92 = call i32 @skb_network_header(%struct.sk_buff* %91)
  %93 = sext i32 %92 to i64
  %94 = load i64, i64* %5, align 8
  %95 = add i64 %93, %94
  %96 = inttoptr i64 %95 to %struct.icmp6hdr*
  store %struct.icmp6hdr* %96, %struct.icmp6hdr** %10, align 8
  %97 = load %struct.ipv6hdr*, %struct.ipv6hdr** %6, align 8
  %98 = load %struct.ila_params*, %struct.ila_params** %4, align 8
  %99 = call i32 @get_csum_diff(%struct.ipv6hdr* %97, %struct.ila_params* %98)
  store i32 %99, i32* %7, align 4
  %100 = load %struct.icmp6hdr*, %struct.icmp6hdr** %10, align 8
  %101 = getelementptr inbounds %struct.icmp6hdr, %struct.icmp6hdr* %100, i32 0, i32 0
  %102 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @inet_proto_csum_replace_by_diff(i32* %101, %struct.sk_buff* %102, i32 %103, i32 1)
  br label %105

105:                                              ; preds = %90, %83
  br label %106

106:                                              ; preds = %2, %105, %82, %38
  ret void
}

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @likely(i32) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32 @get_csum_diff(%struct.ipv6hdr*, %struct.ila_params*) #1

declare dso_local i32 @inet_proto_csum_replace_by_diff(i32*, %struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
