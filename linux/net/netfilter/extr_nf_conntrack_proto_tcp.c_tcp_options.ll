; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_proto_tcp.c_tcp_options.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_proto_tcp.c_tcp_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tcphdr = type { i32 }
%struct.ip_ct_tcp_state = type { i64, i64 }

@TCPOPT_SACK_PERM = common dso_local global i32 0, align 4
@TCPOLEN_SACK_PERM = common dso_local global i32 0, align 4
@IP_CT_TCP_FLAG_SACK_PERM = common dso_local global i64 0, align 8
@TCPOPT_WINDOW = common dso_local global i32 0, align 4
@TCPOLEN_WINDOW = common dso_local global i32 0, align 4
@TCP_MAX_WSCALE = common dso_local global i64 0, align 8
@IP_CT_TCP_FLAG_WINDOW_SCALE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, i32, %struct.tcphdr*, %struct.ip_ct_tcp_state*)* @tcp_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_options(%struct.sk_buff* %0, i32 %1, %struct.tcphdr* %2, %struct.ip_ct_tcp_state* %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tcphdr*, align 8
  %8 = alloca %struct.ip_ct_tcp_state*, align 8
  %9 = alloca [56 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.tcphdr* %2, %struct.tcphdr** %7, align 8
  store %struct.ip_ct_tcp_state* %3, %struct.ip_ct_tcp_state** %8, align 8
  %14 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %15 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = mul nsw i32 %16, 4
  %18 = sext i32 %17 to i64
  %19 = sub i64 %18, 4
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  br label %125

24:                                               ; preds = %4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = zext i32 %26 to i64
  %28 = add i64 %27, 4
  %29 = trunc i64 %28 to i32
  %30 = load i32, i32* %11, align 4
  %31 = getelementptr inbounds [56 x i8], [56 x i8]* %9, i64 0, i64 0
  %32 = call i8* @skb_header_pointer(%struct.sk_buff* %25, i32 %29, i32 %30, i8* %31)
  store i8* %32, i8** %10, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = icmp eq i8* %33, null
  %35 = zext i1 %34 to i32
  %36 = call i32 @BUG_ON(i32 %35)
  %37 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %8, align 8
  %38 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  %39 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %8, align 8
  %40 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %39, i32 0, i32 1
  store i64 0, i64* %40, align 8
  br label %41

41:                                               ; preds = %124, %51, %24
  %42 = load i32, i32* %11, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %125

44:                                               ; preds = %41
  %45 = load i8*, i8** %10, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %10, align 8
  %47 = load i8, i8* %45, align 1
  %48 = zext i8 %47 to i32
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  switch i32 %49, label %54 [
    i32 129, label %50
    i32 128, label %51
  ]

50:                                               ; preds = %44
  br label %125

51:                                               ; preds = %44
  %52 = load i32, i32* %11, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %11, align 4
  br label %41

54:                                               ; preds = %44
  %55 = load i32, i32* %11, align 4
  %56 = icmp slt i32 %55, 2
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  br label %125

58:                                               ; preds = %54
  %59 = load i8*, i8** %10, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %10, align 8
  %61 = load i8, i8* %59, align 1
  %62 = zext i8 %61 to i32
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %13, align 4
  %64 = icmp slt i32 %63, 2
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  br label %125

66:                                               ; preds = %58
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp sgt i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  br label %125

71:                                               ; preds = %66
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* @TCPOPT_SACK_PERM, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %85

75:                                               ; preds = %71
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* @TCPOLEN_SACK_PERM, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %75
  %80 = load i64, i64* @IP_CT_TCP_FLAG_SACK_PERM, align 8
  %81 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %8, align 8
  %82 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = or i64 %83, %80
  store i64 %84, i64* %82, align 8
  br label %115

85:                                               ; preds = %75, %71
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* @TCPOPT_WINDOW, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %114

89:                                               ; preds = %85
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* @TCPOLEN_WINDOW, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %114

93:                                               ; preds = %89
  %94 = load i8*, i8** %10, align 8
  %95 = bitcast i8* %94 to i64*
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %8, align 8
  %98 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %97, i32 0, i32 1
  store i64 %96, i64* %98, align 8
  %99 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %8, align 8
  %100 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @TCP_MAX_WSCALE, align 8
  %103 = icmp sgt i64 %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %93
  %105 = load i64, i64* @TCP_MAX_WSCALE, align 8
  %106 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %8, align 8
  %107 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %106, i32 0, i32 1
  store i64 %105, i64* %107, align 8
  br label %108

108:                                              ; preds = %104, %93
  %109 = load i64, i64* @IP_CT_TCP_FLAG_WINDOW_SCALE, align 8
  %110 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %8, align 8
  %111 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = or i64 %112, %109
  store i64 %113, i64* %111, align 8
  br label %114

114:                                              ; preds = %108, %89, %85
  br label %115

115:                                              ; preds = %114, %79
  %116 = load i32, i32* %13, align 4
  %117 = sub nsw i32 %116, 2
  %118 = load i8*, i8** %10, align 8
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds i8, i8* %118, i64 %119
  store i8* %120, i8** %10, align 8
  %121 = load i32, i32* %13, align 4
  %122 = load i32, i32* %11, align 4
  %123 = sub nsw i32 %122, %121
  store i32 %123, i32* %11, align 4
  br label %124

124:                                              ; preds = %115
  br label %41

125:                                              ; preds = %23, %50, %57, %65, %70, %41
  ret void
}

declare dso_local i8* @skb_header_pointer(%struct.sk_buff*, i32, i32, i8*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
