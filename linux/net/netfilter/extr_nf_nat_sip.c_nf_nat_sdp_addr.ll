; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_sip.c_nf_nat_sdp_addr.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_sip.c_nf_nat_sdp_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%union.nf_inet_addr = type { i32 }
%struct.nf_conn = type { i32 }

@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, i32, i8**, i32*, i32, i32, i32, %union.nf_inet_addr*)* @nf_nat_sdp_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_nat_sdp_addr(%struct.sk_buff* %0, i32 %1, i32 %2, i8** %3, i32* %4, i32 %5, i32 %6, i32 %7, %union.nf_inet_addr* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %union.nf_inet_addr*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.nf_conn*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i8** %3, i8*** %14, align 8
  store i32* %4, i32** %15, align 8
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store %union.nf_inet_addr* %8, %union.nf_inet_addr** %19, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %27 = call %struct.nf_conn* @nf_ct_get(%struct.sk_buff* %26, i32* %20)
  store %struct.nf_conn* %27, %struct.nf_conn** %21, align 8
  %28 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %22, align 8
  %31 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %23, align 8
  %32 = load %struct.nf_conn*, %struct.nf_conn** %21, align 8
  %33 = load %union.nf_inet_addr*, %union.nf_inet_addr** %19, align 8
  %34 = call i32 @sip_sprintf_addr(%struct.nf_conn* %32, i8* %31, %union.nf_inet_addr* %33, i32 0)
  store i32 %34, i32* %24, align 4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %13, align 4
  %38 = load i8**, i8*** %14, align 8
  %39 = load i32*, i32** %15, align 8
  %40 = load i32, i32* %16, align 4
  %41 = load i32, i32* %17, align 4
  %42 = load i32, i32* %18, align 4
  %43 = load i32, i32* %24, align 4
  %44 = call i64 @mangle_sdp_packet(%struct.sk_buff* %35, i32 %36, i32 %37, i8** %38, i32* %39, i32 %40, i32 %41, i32 %42, i8* %31, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %9
  store i32 0, i32* %10, align 4
  store i32 1, i32* %25, align 4
  br label %54

47:                                               ; preds = %9
  %48 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %13, align 4
  %51 = load i8**, i8*** %14, align 8
  %52 = load i32*, i32** %15, align 8
  %53 = call i32 @mangle_content_len(%struct.sk_buff* %48, i32 %49, i32 %50, i8** %51, i32* %52)
  store i32 %53, i32* %10, align 4
  store i32 1, i32* %25, align 4
  br label %54

54:                                               ; preds = %47, %46
  %55 = load i8*, i8** %22, align 8
  call void @llvm.stackrestore(i8* %55)
  %56 = load i32, i32* %10, align 4
  ret i32 %56
}

declare dso_local %struct.nf_conn* @nf_ct_get(%struct.sk_buff*, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @sip_sprintf_addr(%struct.nf_conn*, i8*, %union.nf_inet_addr*, i32) #1

declare dso_local i64 @mangle_sdp_packet(%struct.sk_buff*, i32, i32, i8**, i32*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @mangle_content_len(%struct.sk_buff*, i32, i32, i8**, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
