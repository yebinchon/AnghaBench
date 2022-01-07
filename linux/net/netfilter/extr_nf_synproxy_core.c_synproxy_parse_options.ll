; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_synproxy_core.c_synproxy_parse_options.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_synproxy_core.c_synproxy_parse_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tcphdr = type { i32 }
%struct.synproxy_options = type { i64, i8*, i8*, i32, i32 }

@TCPOLEN_MSS = common dso_local global i32 0, align 4
@NF_SYNPROXY_OPT_MSS = common dso_local global i64 0, align 8
@TCPOLEN_WINDOW = common dso_local global i32 0, align 4
@TCP_MAX_WSCALE = common dso_local global i32 0, align 4
@NF_SYNPROXY_OPT_WSCALE = common dso_local global i64 0, align 8
@TCPOLEN_TIMESTAMP = common dso_local global i32 0, align 4
@NF_SYNPROXY_OPT_TIMESTAMP = common dso_local global i64 0, align 8
@TCPOLEN_SACK_PERM = common dso_local global i32 0, align 4
@NF_SYNPROXY_OPT_SACK_PERM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @synproxy_parse_options(%struct.sk_buff* %0, i32 %1, %struct.tcphdr* %2, %struct.synproxy_options* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tcphdr*, align 8
  %9 = alloca %struct.synproxy_options*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [40 x i32], align 16
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.tcphdr* %2, %struct.tcphdr** %8, align 8
  store %struct.synproxy_options* %3, %struct.synproxy_options** %9, align 8
  %15 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %16 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = mul nsw i32 %17, 4
  %19 = sext i32 %18 to i64
  %20 = sub i64 %19, 4
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %10, align 4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = zext i32 %23 to i64
  %25 = add i64 %24, 4
  %26 = trunc i64 %25 to i32
  %27 = load i32, i32* %10, align 4
  %28 = getelementptr inbounds [40 x i32], [40 x i32]* %11, i64 0, i64 0
  %29 = call i32* @skb_header_pointer(%struct.sk_buff* %22, i32 %26, i32 %27, i32* %28)
  store i32* %29, i32** %12, align 8
  %30 = load i32*, i32** %12, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %144

33:                                               ; preds = %4
  %34 = load %struct.synproxy_options*, %struct.synproxy_options** %9, align 8
  %35 = getelementptr inbounds %struct.synproxy_options, %struct.synproxy_options* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  br label %36

36:                                               ; preds = %142, %45, %33
  %37 = load i32, i32* %10, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %143

39:                                               ; preds = %36
  %40 = load i32*, i32** %12, align 8
  %41 = getelementptr inbounds i32, i32* %40, i32 1
  store i32* %41, i32** %12, align 8
  %42 = load i32, i32* %40, align 4
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  switch i32 %43, label %48 [
    i32 133, label %44
    i32 131, label %45
  ]

44:                                               ; preds = %39
  store i32 1, i32* %5, align 4
  br label %144

45:                                               ; preds = %39
  %46 = load i32, i32* %10, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %10, align 4
  br label %36

48:                                               ; preds = %39
  %49 = load i32*, i32** %12, align 8
  %50 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %50, i32** %12, align 8
  %51 = load i32, i32* %49, align 4
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %14, align 4
  %53 = icmp slt i32 %52, 2
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  store i32 1, i32* %5, align 4
  br label %144

55:                                               ; preds = %48
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  store i32 1, i32* %5, align 4
  br label %144

60:                                               ; preds = %55
  %61 = load i32, i32* %13, align 4
  switch i32 %61, label %133 [
    i32 132, label %62
    i32 128, label %77
    i32 129, label %102
    i32 130, label %122
  ]

62:                                               ; preds = %60
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* @TCPOLEN_MSS, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %76

66:                                               ; preds = %62
  %67 = load i32*, i32** %12, align 8
  %68 = call i32 @get_unaligned_be16(i32* %67)
  %69 = load %struct.synproxy_options*, %struct.synproxy_options** %9, align 8
  %70 = getelementptr inbounds %struct.synproxy_options, %struct.synproxy_options* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 4
  %71 = load i64, i64* @NF_SYNPROXY_OPT_MSS, align 8
  %72 = load %struct.synproxy_options*, %struct.synproxy_options** %9, align 8
  %73 = getelementptr inbounds %struct.synproxy_options, %struct.synproxy_options* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = or i64 %74, %71
  store i64 %75, i64* %73, align 8
  br label %76

76:                                               ; preds = %66, %62
  br label %133

77:                                               ; preds = %60
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* @TCPOLEN_WINDOW, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %101

81:                                               ; preds = %77
  %82 = load i32*, i32** %12, align 8
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.synproxy_options*, %struct.synproxy_options** %9, align 8
  %85 = getelementptr inbounds %struct.synproxy_options, %struct.synproxy_options* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 8
  %86 = load %struct.synproxy_options*, %struct.synproxy_options** %9, align 8
  %87 = getelementptr inbounds %struct.synproxy_options, %struct.synproxy_options* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @TCP_MAX_WSCALE, align 4
  %90 = icmp sgt i32 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %81
  %92 = load i32, i32* @TCP_MAX_WSCALE, align 4
  %93 = load %struct.synproxy_options*, %struct.synproxy_options** %9, align 8
  %94 = getelementptr inbounds %struct.synproxy_options, %struct.synproxy_options* %93, i32 0, i32 3
  store i32 %92, i32* %94, align 8
  br label %95

95:                                               ; preds = %91, %81
  %96 = load i64, i64* @NF_SYNPROXY_OPT_WSCALE, align 8
  %97 = load %struct.synproxy_options*, %struct.synproxy_options** %9, align 8
  %98 = getelementptr inbounds %struct.synproxy_options, %struct.synproxy_options* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = or i64 %99, %96
  store i64 %100, i64* %98, align 8
  br label %101

101:                                              ; preds = %95, %77
  br label %133

102:                                              ; preds = %60
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* @TCPOLEN_TIMESTAMP, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %121

106:                                              ; preds = %102
  %107 = load i32*, i32** %12, align 8
  %108 = call i8* @get_unaligned_be32(i32* %107)
  %109 = load %struct.synproxy_options*, %struct.synproxy_options** %9, align 8
  %110 = getelementptr inbounds %struct.synproxy_options, %struct.synproxy_options* %109, i32 0, i32 2
  store i8* %108, i8** %110, align 8
  %111 = load i32*, i32** %12, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 4
  %113 = call i8* @get_unaligned_be32(i32* %112)
  %114 = load %struct.synproxy_options*, %struct.synproxy_options** %9, align 8
  %115 = getelementptr inbounds %struct.synproxy_options, %struct.synproxy_options* %114, i32 0, i32 1
  store i8* %113, i8** %115, align 8
  %116 = load i64, i64* @NF_SYNPROXY_OPT_TIMESTAMP, align 8
  %117 = load %struct.synproxy_options*, %struct.synproxy_options** %9, align 8
  %118 = getelementptr inbounds %struct.synproxy_options, %struct.synproxy_options* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = or i64 %119, %116
  store i64 %120, i64* %118, align 8
  br label %121

121:                                              ; preds = %106, %102
  br label %133

122:                                              ; preds = %60
  %123 = load i32, i32* %14, align 4
  %124 = load i32, i32* @TCPOLEN_SACK_PERM, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %132

126:                                              ; preds = %122
  %127 = load i64, i64* @NF_SYNPROXY_OPT_SACK_PERM, align 8
  %128 = load %struct.synproxy_options*, %struct.synproxy_options** %9, align 8
  %129 = getelementptr inbounds %struct.synproxy_options, %struct.synproxy_options* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = or i64 %130, %127
  store i64 %131, i64* %129, align 8
  br label %132

132:                                              ; preds = %126, %122
  br label %133

133:                                              ; preds = %60, %132, %121, %101, %76
  %134 = load i32, i32* %14, align 4
  %135 = sub nsw i32 %134, 2
  %136 = load i32*, i32** %12, align 8
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds i32, i32* %136, i64 %137
  store i32* %138, i32** %12, align 8
  %139 = load i32, i32* %14, align 4
  %140 = load i32, i32* %10, align 4
  %141 = sub nsw i32 %140, %139
  store i32 %141, i32* %10, align 4
  br label %142

142:                                              ; preds = %133
  br label %36

143:                                              ; preds = %36
  store i32 1, i32* %5, align 4
  br label %144

144:                                              ; preds = %143, %59, %54, %44, %32
  %145 = load i32, i32* %5, align 4
  ret i32 %145
}

declare dso_local i32* @skb_header_pointer(%struct.sk_buff*, i32, i32, i32*) #1

declare dso_local i32 @get_unaligned_be16(i32*) #1

declare dso_local i8* @get_unaligned_be32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
