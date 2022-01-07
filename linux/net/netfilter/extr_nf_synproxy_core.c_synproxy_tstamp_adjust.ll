; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_synproxy_core.c_synproxy_tstamp_adjust.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_synproxy_core.c_synproxy_tstamp_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i8* }
%struct.tcphdr = type { i32, i32 }
%struct.nf_conn = type { i32 }
%struct.nf_conn_synproxy = type { i64 }

@TCPOPT_TIMESTAMP = common dso_local global i8 0, align 1
@TCPOLEN_TIMESTAMP = common dso_local global i8 0, align 1
@IP_CT_DIR_REPLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, %struct.tcphdr*, %struct.nf_conn*, i32, %struct.nf_conn_synproxy*)* @synproxy_tstamp_adjust to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @synproxy_tstamp_adjust(%struct.sk_buff* %0, i32 %1, %struct.tcphdr* %2, %struct.nf_conn* %3, i32 %4, %struct.nf_conn_synproxy* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.tcphdr*, align 8
  %11 = alloca %struct.nf_conn*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nf_conn_synproxy*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.tcphdr* %2, %struct.tcphdr** %10, align 8
  store %struct.nf_conn* %3, %struct.nf_conn** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.nf_conn_synproxy* %5, %struct.nf_conn_synproxy** %13, align 8
  %19 = load %struct.nf_conn_synproxy*, %struct.nf_conn_synproxy** %13, align 8
  %20 = getelementptr inbounds %struct.nf_conn_synproxy, %struct.nf_conn_synproxy* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %6
  store i32 1, i32* %7, align 4
  br label %149

24:                                               ; preds = %6
  %25 = load i32, i32* %9, align 4
  %26 = zext i32 %25 to i64
  %27 = add i64 %26, 8
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %31 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 %32, 4
  %34 = add i32 %29, %33
  store i32 %34, i32* %15, align 4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %36 = load i32, i32* %15, align 4
  %37 = call i64 @skb_ensure_writable(%struct.sk_buff* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %24
  store i32 0, i32* %7, align 4
  br label %149

40:                                               ; preds = %24
  br label %41

41:                                               ; preds = %147, %57, %40
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* %15, align 4
  %44 = icmp ult i32 %42, %43
  br i1 %44, label %45, label %148

45:                                               ; preds = %41
  %46 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = load i32, i32* %14, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  store i8* %51, i8** %18, align 8
  %52 = load i8*, i8** %18, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 0
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  switch i32 %55, label %60 [
    i32 129, label %56
    i32 128, label %57
  ]

56:                                               ; preds = %45
  store i32 1, i32* %7, align 4
  br label %149

57:                                               ; preds = %45
  %58 = load i32, i32* %14, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %14, align 4
  br label %41

60:                                               ; preds = %45
  %61 = load i32, i32* %14, align 4
  %62 = add i32 %61, 1
  %63 = load i32, i32* %15, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %80, label %65

65:                                               ; preds = %60
  %66 = load i32, i32* %14, align 4
  %67 = load i8*, i8** %18, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 1
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = add i32 %66, %70
  %72 = load i32, i32* %15, align 4
  %73 = icmp ugt i32 %71, %72
  br i1 %73, label %80, label %74

74:                                               ; preds = %65
  %75 = load i8*, i8** %18, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 1
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = icmp slt i32 %78, 2
  br i1 %79, label %80, label %81

80:                                               ; preds = %74, %65, %60
  store i32 0, i32* %7, align 4
  br label %149

81:                                               ; preds = %74
  %82 = load i8*, i8** %18, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 0
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = load i8, i8* @TCPOPT_TIMESTAMP, align 1
  %87 = zext i8 %86 to i32
  %88 = icmp eq i32 %85, %87
  br i1 %88, label %89, label %140

89:                                               ; preds = %81
  %90 = load i8*, i8** %18, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 1
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = load i8, i8* @TCPOLEN_TIMESTAMP, align 1
  %95 = zext i8 %94 to i32
  %96 = icmp eq i32 %93, %95
  br i1 %96, label %97, label %140

97:                                               ; preds = %89
  %98 = load i32, i32* %12, align 4
  %99 = call i32 @CTINFO2DIR(i32 %98)
  %100 = load i32, i32* @IP_CT_DIR_REPLY, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %117

102:                                              ; preds = %97
  %103 = load i8*, i8** %18, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 2
  %105 = bitcast i8* %104 to i32*
  store i32* %105, i32** %16, align 8
  %106 = load i32*, i32** %16, align 8
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %17, align 4
  %108 = load i32*, i32** %16, align 8
  %109 = load i32, i32* %108, align 4
  %110 = call i64 @ntohl(i32 %109)
  %111 = load %struct.nf_conn_synproxy*, %struct.nf_conn_synproxy** %13, align 8
  %112 = getelementptr inbounds %struct.nf_conn_synproxy, %struct.nf_conn_synproxy* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = sub nsw i64 %110, %113
  %115 = call i32 @htonl(i64 %114)
  %116 = load i32*, i32** %16, align 8
  store i32 %115, i32* %116, align 4
  br label %132

117:                                              ; preds = %97
  %118 = load i8*, i8** %18, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 6
  %120 = bitcast i8* %119 to i32*
  store i32* %120, i32** %16, align 8
  %121 = load i32*, i32** %16, align 8
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %17, align 4
  %123 = load i32*, i32** %16, align 8
  %124 = load i32, i32* %123, align 4
  %125 = call i64 @ntohl(i32 %124)
  %126 = load %struct.nf_conn_synproxy*, %struct.nf_conn_synproxy** %13, align 8
  %127 = getelementptr inbounds %struct.nf_conn_synproxy, %struct.nf_conn_synproxy* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = add nsw i64 %125, %128
  %130 = call i32 @htonl(i64 %129)
  %131 = load i32*, i32** %16, align 8
  store i32 %130, i32* %131, align 4
  br label %132

132:                                              ; preds = %117, %102
  %133 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %134 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %133, i32 0, i32 1
  %135 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %136 = load i32, i32* %17, align 4
  %137 = load i32*, i32** %16, align 8
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @inet_proto_csum_replace4(i32* %134, %struct.sk_buff* %135, i32 %136, i32 %138, i32 0)
  store i32 1, i32* %7, align 4
  br label %149

140:                                              ; preds = %89, %81
  %141 = load i8*, i8** %18, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 1
  %143 = load i8, i8* %142, align 1
  %144 = zext i8 %143 to i32
  %145 = load i32, i32* %14, align 4
  %146 = add i32 %145, %144
  store i32 %146, i32* %14, align 4
  br label %147

147:                                              ; preds = %140
  br label %41

148:                                              ; preds = %41
  store i32 1, i32* %7, align 4
  br label %149

149:                                              ; preds = %148, %132, %80, %56, %39, %23
  %150 = load i32, i32* %7, align 4
  ret i32 %150
}

declare dso_local i64 @skb_ensure_writable(%struct.sk_buff*, i32) #1

declare dso_local i32 @CTINFO2DIR(i32) #1

declare dso_local i32 @htonl(i64) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @inet_proto_csum_replace4(i32*, %struct.sk_buff*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
