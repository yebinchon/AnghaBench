; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_exthdr.c_nft_exthdr_tcp_eval.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_exthdr.c_nft_exthdr_tcp_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_expr = type { i32 }
%struct.nft_regs = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nft_pktinfo = type { i32 }
%struct.nft_exthdr = type { i64, i64, i32, i32, i32 }
%struct.tcphdr = type { i32 }

@MAX_TCP_OPTION_SPACE = common dso_local global i32 0, align 4
@NFT_EXTHDR_F_PRESENT = common dso_local global i32 0, align 4
@NFT_REG32_SIZE = common dso_local global i64 0, align 8
@NFT_BREAK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nft_expr*, %struct.nft_regs*, %struct.nft_pktinfo*)* @nft_exthdr_tcp_eval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nft_exthdr_tcp_eval(%struct.nft_expr* %0, %struct.nft_regs* %1, %struct.nft_pktinfo* %2) #0 {
  %4 = alloca %struct.nft_expr*, align 8
  %5 = alloca %struct.nft_regs*, align 8
  %6 = alloca %struct.nft_pktinfo*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.nft_exthdr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.tcphdr*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i32, align 4
  store %struct.nft_expr* %0, %struct.nft_expr** %4, align 8
  store %struct.nft_regs* %1, %struct.nft_regs** %5, align 8
  store %struct.nft_pktinfo* %2, %struct.nft_pktinfo** %6, align 8
  %18 = load i32, i32* @MAX_TCP_OPTION_SPACE, align 4
  %19 = sext i32 %18 to i64
  %20 = add i64 4, %19
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %7, align 8
  %22 = alloca i64, i64 %20, align 16
  store i64 %20, i64* %8, align 8
  %23 = load %struct.nft_expr*, %struct.nft_expr** %4, align 8
  %24 = call %struct.nft_exthdr* @nft_expr_priv(%struct.nft_expr* %23)
  store %struct.nft_exthdr* %24, %struct.nft_exthdr** %9, align 8
  %25 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %26 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.nft_exthdr*, %struct.nft_exthdr** %9, align 8
  %29 = getelementptr inbounds %struct.nft_exthdr, %struct.nft_exthdr* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  store i32* %31, i32** %14, align 8
  %32 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %33 = mul nuw i64 8, %20
  %34 = trunc i64 %33 to i32
  %35 = call %struct.tcphdr* @nft_tcp_header_pointer(%struct.nft_pktinfo* %32, i32 %34, i64* %22, i32* %12)
  store %struct.tcphdr* %35, %struct.tcphdr** %15, align 8
  %36 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %37 = icmp ne %struct.tcphdr* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %3
  br label %117

39:                                               ; preds = %3
  %40 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %41 = bitcast %struct.tcphdr* %40 to i64*
  store i64* %41, i64** %16, align 8
  store i32 4, i32* %10, align 4
  br label %42

42:                                               ; preds = %112, %39
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %12, align 4
  %45 = sub i32 %44, 1
  %46 = icmp ult i32 %43, %45
  br i1 %46, label %47, label %116

47:                                               ; preds = %42
  %48 = load i64*, i64** %16, align 8
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @optlen(i64* %48, i32 %49)
  store i32 %50, i32* %11, align 4
  %51 = load %struct.nft_exthdr*, %struct.nft_exthdr** %9, align 8
  %52 = getelementptr inbounds %struct.nft_exthdr, %struct.nft_exthdr* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64*, i64** %16, align 8
  %55 = load i32, i32* %10, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %53, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %47
  br label %112

61:                                               ; preds = %47
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %11, align 4
  %64 = add i32 %62, %63
  %65 = load i32, i32* %12, align 4
  %66 = icmp ugt i32 %64, %65
  br i1 %66, label %77, label %67

67:                                               ; preds = %61
  %68 = load %struct.nft_exthdr*, %struct.nft_exthdr** %9, align 8
  %69 = getelementptr inbounds %struct.nft_exthdr, %struct.nft_exthdr* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.nft_exthdr*, %struct.nft_exthdr** %9, align 8
  %72 = getelementptr inbounds %struct.nft_exthdr, %struct.nft_exthdr* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = add i32 %70, %73
  %75 = load i32, i32* %11, align 4
  %76 = icmp ugt i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %67, %61
  br label %117

78:                                               ; preds = %67
  %79 = load i32, i32* %10, align 4
  %80 = load %struct.nft_exthdr*, %struct.nft_exthdr** %9, align 8
  %81 = getelementptr inbounds %struct.nft_exthdr, %struct.nft_exthdr* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = add i32 %79, %82
  store i32 %83, i32* %13, align 4
  %84 = load %struct.nft_exthdr*, %struct.nft_exthdr** %9, align 8
  %85 = getelementptr inbounds %struct.nft_exthdr, %struct.nft_exthdr* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @NFT_EXTHDR_F_PRESENT, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %78
  %91 = load i32*, i32** %14, align 8
  store i32 1, i32* %91, align 4
  br label %111

92:                                               ; preds = %78
  %93 = load i32*, i32** %14, align 8
  %94 = load %struct.nft_exthdr*, %struct.nft_exthdr** %9, align 8
  %95 = getelementptr inbounds %struct.nft_exthdr, %struct.nft_exthdr* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = zext i32 %96 to i64
  %98 = load i64, i64* @NFT_REG32_SIZE, align 8
  %99 = udiv i64 %97, %98
  %100 = getelementptr inbounds i32, i32* %93, i64 %99
  store i32 0, i32* %100, align 4
  %101 = load i32*, i32** %14, align 8
  %102 = load i64*, i64** %16, align 8
  %103 = load i32, i32* %13, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds i64, i64* %102, i64 %104
  %106 = load %struct.nft_exthdr*, %struct.nft_exthdr** %9, align 8
  %107 = getelementptr inbounds %struct.nft_exthdr, %struct.nft_exthdr* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = zext i32 %108 to i64
  %110 = call i32 @memcpy(i32* %101, i64* %105, i64 %109)
  br label %111

111:                                              ; preds = %92, %90
  store i32 1, i32* %17, align 4
  br label %132

112:                                              ; preds = %60
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* %10, align 4
  %115 = add i32 %114, %113
  store i32 %115, i32* %10, align 4
  br label %42

116:                                              ; preds = %42
  br label %117

117:                                              ; preds = %116, %77, %38
  %118 = load %struct.nft_exthdr*, %struct.nft_exthdr** %9, align 8
  %119 = getelementptr inbounds %struct.nft_exthdr, %struct.nft_exthdr* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @NFT_EXTHDR_F_PRESENT, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %117
  %125 = load i32*, i32** %14, align 8
  store i32 0, i32* %125, align 4
  br label %131

126:                                              ; preds = %117
  %127 = load i32, i32* @NFT_BREAK, align 4
  %128 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %129 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  store i32 %127, i32* %130, align 8
  br label %131

131:                                              ; preds = %126, %124
  store i32 0, i32* %17, align 4
  br label %132

132:                                              ; preds = %131, %111
  %133 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %133)
  %134 = load i32, i32* %17, align 4
  switch i32 %134, label %136 [
    i32 0, label %135
    i32 1, label %135
  ]

135:                                              ; preds = %132, %132
  ret void

136:                                              ; preds = %132
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.nft_exthdr* @nft_expr_priv(%struct.nft_expr*) #2

declare dso_local %struct.tcphdr* @nft_tcp_header_pointer(%struct.nft_pktinfo*, i32, i64*, i32*) #2

declare dso_local i32 @optlen(i64*, i32) #2

declare dso_local i32 @memcpy(i32*, i64*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
