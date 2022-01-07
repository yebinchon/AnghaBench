; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_proto_tcp.c_tcp_sack.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_proto_tcp.c_tcp_sack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tcphdr = type { i32 }

@TCPOLEN_TSTAMP_ALIGNED = common dso_local global i32 0, align 4
@TCPOPT_TIMESTAMP = common dso_local global i32 0, align 4
@TCPOLEN_TIMESTAMP = common dso_local global i32 0, align 4
@TCPOPT_SACK = common dso_local global i32 0, align 4
@TCPOLEN_SACK_BASE = common dso_local global i32 0, align 4
@TCPOLEN_SACK_PERBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, i32, %struct.tcphdr*, i32*)* @tcp_sack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_sack(%struct.sk_buff* %0, i32 %1, %struct.tcphdr* %2, i32* %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tcphdr*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [56 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.tcphdr* %2, %struct.tcphdr** %7, align 8
  store i32* %3, i32** %8, align 8
  %16 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %17 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = mul nsw i32 %18, 4
  %20 = sext i32 %19 to i64
  %21 = sub i64 %20, 4
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %4
  br label %141

26:                                               ; preds = %4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = zext i32 %28 to i64
  %30 = add i64 %29, 4
  %31 = trunc i64 %30 to i32
  %32 = load i32, i32* %11, align 4
  %33 = getelementptr inbounds [56 x i8], [56 x i8]* %9, i64 0, i64 0
  %34 = call i8* @skb_header_pointer(%struct.sk_buff* %27, i32 %31, i32 %32, i8* %33)
  store i8* %34, i8** %10, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = icmp eq i8* %35, null
  %37 = zext i1 %36 to i32
  %38 = call i32 @BUG_ON(i32 %37)
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @TCPOLEN_TSTAMP_ALIGNED, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %26
  %43 = load i8*, i8** %10, align 8
  %44 = bitcast i8* %43 to i64*
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* @TCPOPT_TIMESTAMP, align 4
  %47 = shl i32 %46, 8
  %48 = or i32 -2139095040, %47
  %49 = load i32, i32* @TCPOLEN_TIMESTAMP, align 4
  %50 = or i32 %48, %49
  %51 = call i64 @htonl(i32 %50)
  %52 = icmp eq i64 %45, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %42
  br label %141

54:                                               ; preds = %42, %26
  br label %55

55:                                               ; preds = %140, %65, %54
  %56 = load i32, i32* %11, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %141

58:                                               ; preds = %55
  %59 = load i8*, i8** %10, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %10, align 8
  %61 = load i8, i8* %59, align 1
  %62 = zext i8 %61 to i32
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %13, align 4
  switch i32 %63, label %68 [
    i32 129, label %64
    i32 128, label %65
  ]

64:                                               ; preds = %58
  br label %141

65:                                               ; preds = %58
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %11, align 4
  br label %55

68:                                               ; preds = %58
  %69 = load i32, i32* %11, align 4
  %70 = icmp slt i32 %69, 2
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  br label %141

72:                                               ; preds = %68
  %73 = load i8*, i8** %10, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %10, align 8
  %75 = load i8, i8* %73, align 1
  %76 = zext i8 %75 to i32
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* %14, align 4
  %78 = icmp slt i32 %77, 2
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  br label %141

80:                                               ; preds = %72
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp sgt i32 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  br label %141

85:                                               ; preds = %80
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* @TCPOPT_SACK, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %131

89:                                               ; preds = %85
  %90 = load i32, i32* %14, align 4
  %91 = load i32, i32* @TCPOLEN_SACK_BASE, align 4
  %92 = load i32, i32* @TCPOLEN_SACK_PERBLOCK, align 4
  %93 = add nsw i32 %91, %92
  %94 = icmp sge i32 %90, %93
  br i1 %94, label %95, label %131

95:                                               ; preds = %89
  %96 = load i32, i32* %14, align 4
  %97 = load i32, i32* @TCPOLEN_SACK_BASE, align 4
  %98 = sub nsw i32 %96, %97
  %99 = load i32, i32* @TCPOLEN_SACK_PERBLOCK, align 4
  %100 = srem i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %131, label %102

102:                                              ; preds = %95
  store i32 0, i32* %15, align 4
  br label %103

103:                                              ; preds = %126, %102
  %104 = load i32, i32* %15, align 4
  %105 = load i32, i32* %14, align 4
  %106 = load i32, i32* @TCPOLEN_SACK_BASE, align 4
  %107 = sub nsw i32 %105, %106
  %108 = icmp slt i32 %104, %107
  br i1 %108, label %109, label %130

109:                                              ; preds = %103
  %110 = load i8*, i8** %10, align 8
  %111 = load i32, i32* %15, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %110, i64 %112
  %114 = bitcast i8* %113 to i64*
  %115 = getelementptr inbounds i64, i64* %114, i64 1
  %116 = call i32 @get_unaligned_be32(i64* %115)
  store i32 %116, i32* %12, align 4
  %117 = load i32, i32* %12, align 4
  %118 = load i32*, i32** %8, align 8
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @after(i32 %117, i32 %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %109
  %123 = load i32, i32* %12, align 4
  %124 = load i32*, i32** %8, align 8
  store i32 %123, i32* %124, align 4
  br label %125

125:                                              ; preds = %122, %109
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* @TCPOLEN_SACK_PERBLOCK, align 4
  %128 = load i32, i32* %15, align 4
  %129 = add nsw i32 %128, %127
  store i32 %129, i32* %15, align 4
  br label %103

130:                                              ; preds = %103
  br label %141

131:                                              ; preds = %95, %89, %85
  %132 = load i32, i32* %14, align 4
  %133 = sub nsw i32 %132, 2
  %134 = load i8*, i8** %10, align 8
  %135 = sext i32 %133 to i64
  %136 = getelementptr inbounds i8, i8* %134, i64 %135
  store i8* %136, i8** %10, align 8
  %137 = load i32, i32* %14, align 4
  %138 = load i32, i32* %11, align 4
  %139 = sub nsw i32 %138, %137
  store i32 %139, i32* %11, align 4
  br label %140

140:                                              ; preds = %131
  br label %55

141:                                              ; preds = %25, %53, %64, %71, %79, %84, %130, %55
  ret void
}

declare dso_local i8* @skb_header_pointer(%struct.sk_buff*, i32, i32, i8*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @htonl(i32) #1

declare dso_local i32 @get_unaligned_be32(i64*) #1

declare dso_local i32 @after(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
