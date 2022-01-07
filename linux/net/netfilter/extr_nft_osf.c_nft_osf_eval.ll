; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_osf.c_nft_osf_eval.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_osf.c_nft_osf_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_expr = type { i32 }
%struct.nft_regs = type { %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i8* }
%struct.nft_pktinfo = type { %struct.sk_buff* }
%struct.sk_buff = type { i32 }
%struct.nft_osf = type { i64, i32, i32 }
%struct.tcphdr = type { i32 }
%struct.nf_osf_data = type { i8*, i8* }

@NFT_OSF_MAXGENRELEN = common dso_local global i32 0, align 4
@NFT_BREAK = common dso_local global i8* null, align 8
@nf_osf_fingers = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@NFT_OSF_F_VERSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nft_expr*, %struct.nft_regs*, %struct.nft_pktinfo*)* @nft_osf_eval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nft_osf_eval(%struct.nft_expr* %0, %struct.nft_regs* %1, %struct.nft_pktinfo* %2) #0 {
  %4 = alloca %struct.nft_expr*, align 8
  %5 = alloca %struct.nft_regs*, align 8
  %6 = alloca %struct.nft_pktinfo*, align 8
  %7 = alloca %struct.nft_osf*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.tcphdr*, align 8
  %13 = alloca %struct.nf_osf_data, align 8
  %14 = alloca %struct.tcphdr, align 4
  %15 = alloca i32, align 4
  store %struct.nft_expr* %0, %struct.nft_expr** %4, align 8
  store %struct.nft_regs* %1, %struct.nft_regs** %5, align 8
  store %struct.nft_pktinfo* %2, %struct.nft_pktinfo** %6, align 8
  %16 = load %struct.nft_expr*, %struct.nft_expr** %4, align 8
  %17 = call %struct.nft_osf* @nft_expr_priv(%struct.nft_expr* %16)
  store %struct.nft_osf* %17, %struct.nft_osf** %7, align 8
  %18 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %19 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.nft_osf*, %struct.nft_osf** %7, align 8
  %22 = getelementptr inbounds %struct.nft_osf, %struct.nft_osf* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  store i32* %24, i32** %8, align 8
  %25 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %26 = getelementptr inbounds %struct.nft_pktinfo, %struct.nft_pktinfo* %25, i32 0, i32 0
  %27 = load %struct.sk_buff*, %struct.sk_buff** %26, align 8
  store %struct.sk_buff* %27, %struct.sk_buff** %9, align 8
  %28 = load i32, i32* @NFT_OSF_MAXGENRELEN, align 4
  %29 = add nsw i32 %28, 1
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %10, align 8
  %32 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %11, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %35 = call i32 @ip_hdrlen(%struct.sk_buff* %34)
  %36 = call %struct.tcphdr* @skb_header_pointer(%struct.sk_buff* %33, i32 %35, i32 4, %struct.tcphdr* %14)
  store %struct.tcphdr* %36, %struct.tcphdr** %12, align 8
  %37 = load %struct.tcphdr*, %struct.tcphdr** %12, align 8
  %38 = icmp ne %struct.tcphdr* %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %3
  %40 = load i8*, i8** @NFT_BREAK, align 8
  %41 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %42 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i8* %40, i8** %43, align 8
  store i32 1, i32* %15, align 4
  br label %92

44:                                               ; preds = %3
  %45 = load %struct.tcphdr*, %struct.tcphdr** %12, align 8
  %46 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  %50 = load i8*, i8** @NFT_BREAK, align 8
  %51 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %52 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i8* %50, i8** %53, align 8
  store i32 1, i32* %15, align 4
  br label %92

54:                                               ; preds = %44
  %55 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %56 = load i32, i32* @nf_osf_fingers, align 4
  %57 = load %struct.nft_osf*, %struct.nft_osf** %7, align 8
  %58 = getelementptr inbounds %struct.nft_osf, %struct.nft_osf* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @nf_osf_find(%struct.sk_buff* %55, i32 %56, i32 %59, %struct.nf_osf_data* %13)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %54
  %63 = load i32*, i32** %8, align 8
  %64 = bitcast i32* %63 to i8*
  %65 = load i32, i32* @NFT_OSF_MAXGENRELEN, align 4
  %66 = call i32 @strncpy(i8* %64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %65)
  br label %91

67:                                               ; preds = %54
  %68 = load %struct.nft_osf*, %struct.nft_osf** %7, align 8
  %69 = getelementptr inbounds %struct.nft_osf, %struct.nft_osf* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @NFT_OSF_F_VERSION, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %67
  %75 = load i32, i32* @NFT_OSF_MAXGENRELEN, align 4
  %76 = getelementptr inbounds %struct.nf_osf_data, %struct.nf_osf_data* %13, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = getelementptr inbounds %struct.nf_osf_data, %struct.nf_osf_data* %13, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @snprintf(i8* %32, i32 %75, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %77, i8* %79)
  br label %86

81:                                               ; preds = %67
  %82 = getelementptr inbounds %struct.nf_osf_data, %struct.nf_osf_data* %13, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = load i32, i32* @NFT_OSF_MAXGENRELEN, align 4
  %85 = call i32 @strlcpy(i8* %32, i8* %83, i32 %84)
  br label %86

86:                                               ; preds = %81, %74
  %87 = load i32*, i32** %8, align 8
  %88 = bitcast i32* %87 to i8*
  %89 = load i32, i32* @NFT_OSF_MAXGENRELEN, align 4
  %90 = call i32 @strncpy(i8* %88, i8* %32, i32 %89)
  br label %91

91:                                               ; preds = %86, %62
  store i32 0, i32* %15, align 4
  br label %92

92:                                               ; preds = %91, %49, %39
  %93 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %93)
  %94 = load i32, i32* %15, align 4
  switch i32 %94, label %96 [
    i32 0, label %95
    i32 1, label %95
  ]

95:                                               ; preds = %92, %92
  ret void

96:                                               ; preds = %92
  unreachable
}

declare dso_local %struct.nft_osf* @nft_expr_priv(%struct.nft_expr*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.tcphdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.tcphdr*) #1

declare dso_local i32 @ip_hdrlen(%struct.sk_buff*) #1

declare dso_local i32 @nf_osf_find(%struct.sk_buff*, i32, i32, %struct.nf_osf_data*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
