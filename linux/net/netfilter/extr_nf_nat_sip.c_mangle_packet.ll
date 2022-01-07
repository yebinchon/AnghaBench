; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_sip.c_mangle_packet.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_sip.c_mangle_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i8* }
%struct.nf_conn = type { i32 }
%struct.tcphdr = type { i32 }

@IPPROTO_TCP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, i32, i8**, i32*, i32, i32, i8*, i32)* @mangle_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mangle_packet(%struct.sk_buff* %0, i32 %1, i32 %2, i8** %3, i32* %4, i32 %5, i32 %6, i8* %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.nf_conn*, align 8
  %22 = alloca %struct.tcphdr*, align 8
  %23 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i8** %3, i8*** %14, align 8
  store i32* %4, i32** %15, align 8
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i8* %7, i8** %18, align 8
  store i32 %8, i32* %19, align 4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %25 = call %struct.nf_conn* @nf_ct_get(%struct.sk_buff* %24, i32* %20)
  store %struct.nf_conn* %25, %struct.nf_conn** %21, align 8
  %26 = load %struct.nf_conn*, %struct.nf_conn** %21, align 8
  %27 = call i64 @nf_ct_protonum(%struct.nf_conn* %26)
  %28 = load i64, i64* @IPPROTO_TCP, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %61

30:                                               ; preds = %9
  %31 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = load i32, i32* %12, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = bitcast i8* %36 to %struct.tcphdr*
  store %struct.tcphdr* %37, %struct.tcphdr** %22, align 8
  %38 = load i32, i32* %12, align 4
  %39 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %40 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = mul nsw i32 %41, 4
  %43 = add i32 %38, %42
  store i32 %43, i32* %23, align 4
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %23, align 4
  %46 = sub i32 %44, %45
  %47 = load i32, i32* %16, align 4
  %48 = add i32 %47, %46
  store i32 %48, i32* %16, align 4
  %49 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %50 = load %struct.nf_conn*, %struct.nf_conn** %21, align 8
  %51 = load i32, i32* %20, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %16, align 4
  %54 = load i32, i32* %17, align 4
  %55 = load i8*, i8** %18, align 8
  %56 = load i32, i32* %19, align 4
  %57 = call i32 @__nf_nat_mangle_tcp_packet(%struct.sk_buff* %49, %struct.nf_conn* %50, i32 %51, i32 %52, i32 %53, i32 %54, i8* %55, i32 %56, i32 0)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %30
  store i32 0, i32* %10, align 4
  br label %97

60:                                               ; preds = %30
  br label %83

61:                                               ; preds = %9
  %62 = load i32, i32* %12, align 4
  %63 = zext i32 %62 to i64
  %64 = add i64 %63, 4
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %23, align 4
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* %23, align 4
  %68 = sub i32 %66, %67
  %69 = load i32, i32* %16, align 4
  %70 = add i32 %69, %68
  store i32 %70, i32* %16, align 4
  %71 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %72 = load %struct.nf_conn*, %struct.nf_conn** %21, align 8
  %73 = load i32, i32* %20, align 4
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %16, align 4
  %76 = load i32, i32* %17, align 4
  %77 = load i8*, i8** %18, align 8
  %78 = load i32, i32* %19, align 4
  %79 = call i32 @nf_nat_mangle_udp_packet(%struct.sk_buff* %71, %struct.nf_conn* %72, i32 %73, i32 %74, i32 %75, i32 %76, i8* %77, i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %61
  store i32 0, i32* %10, align 4
  br label %97

82:                                               ; preds = %61
  br label %83

83:                                               ; preds = %82, %60
  %84 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %85 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = load i32, i32* %13, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  %90 = load i8**, i8*** %14, align 8
  store i8* %89, i8** %90, align 8
  %91 = load i32, i32* %19, align 4
  %92 = load i32, i32* %17, align 4
  %93 = sub i32 %91, %92
  %94 = load i32*, i32** %15, align 8
  %95 = load i32, i32* %94, align 4
  %96 = add i32 %95, %93
  store i32 %96, i32* %94, align 4
  store i32 1, i32* %10, align 4
  br label %97

97:                                               ; preds = %83, %81, %59
  %98 = load i32, i32* %10, align 4
  ret i32 %98
}

declare dso_local %struct.nf_conn* @nf_ct_get(%struct.sk_buff*, i32*) #1

declare dso_local i64 @nf_ct_protonum(%struct.nf_conn*) #1

declare dso_local i32 @__nf_nat_mangle_tcp_packet(%struct.sk_buff*, %struct.nf_conn*, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @nf_nat_mangle_udp_packet(%struct.sk_buff*, %struct.nf_conn*, i32, i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
