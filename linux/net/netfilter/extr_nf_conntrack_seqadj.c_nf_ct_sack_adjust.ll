; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_seqadj.c_nf_ct_sack_adjust.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_seqadj.c_nf_ct_sack_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i8* }
%struct.nf_conn = type { i32 }
%struct.tcphdr = type { i32 }
%struct.nf_conn_seqadj = type { i32* }

@TCPOPT_SACK = common dso_local global i8 0, align 1
@TCPOLEN_SACK_PERBLOCK = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, %struct.nf_conn*, i32)* @nf_ct_sack_adjust to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_ct_sack_adjust(%struct.sk_buff* %0, i32 %1, %struct.nf_conn* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nf_conn*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.tcphdr*, align 8
  %11 = alloca %struct.nf_conn_seqadj*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.nf_conn* %2, %struct.nf_conn** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr i8, i8* %18, i64 %20
  %22 = bitcast i8* %21 to %struct.tcphdr*
  store %struct.tcphdr* %22, %struct.tcphdr** %10, align 8
  %23 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %24 = call %struct.nf_conn_seqadj* @nfct_seqadj(%struct.nf_conn* %23)
  store %struct.nf_conn_seqadj* %24, %struct.nf_conn_seqadj** %11, align 8
  %25 = load i32, i32* %7, align 4
  %26 = zext i32 %25 to i64
  %27 = add i64 %26, 4
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %31 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 %32, 4
  %34 = add i32 %29, %33
  store i32 %34, i32* %14, align 4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %36 = load i32, i32* %14, align 4
  %37 = call i64 @skb_ensure_writable(%struct.sk_buff* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %147

40:                                               ; preds = %4
  %41 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr i8, i8* %43, i64 %45
  %47 = bitcast i8* %46 to %struct.tcphdr*
  store %struct.tcphdr* %47, %struct.tcphdr** %10, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @CTINFO2DIR(i32 %48)
  store i32 %49, i32* %12, align 4
  br label %50

50:                                               ; preds = %145, %66, %40
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %14, align 4
  %53 = icmp ult i32 %51, %52
  br i1 %53, label %54, label %146

54:                                               ; preds = %50
  %55 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = load i32, i32* %13, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  store i8* %60, i8** %15, align 8
  %61 = load i8*, i8** %15, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  switch i32 %64, label %69 [
    i32 129, label %65
    i32 128, label %66
  ]

65:                                               ; preds = %54
  store i32 1, i32* %5, align 4
  br label %147

66:                                               ; preds = %54
  %67 = load i32, i32* %13, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %13, align 4
  br label %50

69:                                               ; preds = %54
  %70 = load i32, i32* %13, align 4
  %71 = add i32 %70, 1
  %72 = load i32, i32* %14, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %89, label %74

74:                                               ; preds = %69
  %75 = load i32, i32* %13, align 4
  %76 = load i8*, i8** %15, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 1
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = add i32 %75, %79
  %81 = load i32, i32* %14, align 4
  %82 = icmp ugt i32 %80, %81
  br i1 %82, label %89, label %83

83:                                               ; preds = %74
  %84 = load i8*, i8** %15, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 1
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = icmp slt i32 %87, 2
  br i1 %88, label %89, label %90

89:                                               ; preds = %83, %74, %69
  store i32 0, i32* %5, align 4
  br label %147

90:                                               ; preds = %83
  %91 = load i8*, i8** %15, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 0
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i32
  %95 = load i8, i8* @TCPOPT_SACK, align 1
  %96 = zext i8 %95 to i32
  %97 = icmp eq i32 %94, %96
  br i1 %97, label %98, label %138

98:                                               ; preds = %90
  %99 = load i8*, i8** %15, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 1
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = load i8, i8* @TCPOLEN_SACK_PERBLOCK, align 1
  %104 = zext i8 %103 to i32
  %105 = add nsw i32 2, %104
  %106 = icmp sge i32 %102, %105
  br i1 %106, label %107, label %138

107:                                              ; preds = %98
  %108 = load i8*, i8** %15, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 1
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  %112 = sub nsw i32 %111, 2
  %113 = load i8, i8* @TCPOLEN_SACK_PERBLOCK, align 1
  %114 = zext i8 %113 to i32
  %115 = srem i32 %112, %114
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %138

117:                                              ; preds = %107
  %118 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %119 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %120 = load i32, i32* %13, align 4
  %121 = add i32 %120, 2
  %122 = load i32, i32* %13, align 4
  %123 = load i8*, i8** %15, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 1
  %125 = load i8, i8* %124, align 1
  %126 = zext i8 %125 to i32
  %127 = add i32 %122, %126
  %128 = load %struct.nf_conn_seqadj*, %struct.nf_conn_seqadj** %11, align 8
  %129 = getelementptr inbounds %struct.nf_conn_seqadj, %struct.nf_conn_seqadj* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %12, align 4
  %132 = icmp ne i32 %131, 0
  %133 = xor i1 %132, true
  %134 = zext i1 %133 to i32
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %130, i64 %135
  %137 = call i32 @nf_ct_sack_block_adjust(%struct.sk_buff* %118, %struct.tcphdr* %119, i32 %121, i32 %127, i32* %136)
  br label %138

138:                                              ; preds = %117, %107, %98, %90
  %139 = load i8*, i8** %15, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 1
  %141 = load i8, i8* %140, align 1
  %142 = zext i8 %141 to i32
  %143 = load i32, i32* %13, align 4
  %144 = add i32 %143, %142
  store i32 %144, i32* %13, align 4
  br label %145

145:                                              ; preds = %138
  br label %50

146:                                              ; preds = %50
  store i32 1, i32* %5, align 4
  br label %147

147:                                              ; preds = %146, %89, %65, %39
  %148 = load i32, i32* %5, align 4
  ret i32 %148
}

declare dso_local %struct.nf_conn_seqadj* @nfct_seqadj(%struct.nf_conn*) #1

declare dso_local i64 @skb_ensure_writable(%struct.sk_buff*, i32) #1

declare dso_local i32 @CTINFO2DIR(i32) #1

declare dso_local i32 @nf_ct_sack_block_adjust(%struct.sk_buff*, %struct.tcphdr*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
