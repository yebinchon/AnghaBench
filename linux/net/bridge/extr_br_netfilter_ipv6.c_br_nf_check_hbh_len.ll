; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_netfilter_ipv6.c_br_nf_check_hbh_len.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_netfilter_ipv6.c_br_nf_check_hbh_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i8*, i32 }
%struct.TYPE_2__ = type { i32 }

@IPV6_MAXPLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @br_nf_check_hbh_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @br_nf_check_hbh_len(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %11 = call %struct.TYPE_2__* @ipv6_hdr(%struct.sk_buff* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 1
  %13 = bitcast %struct.TYPE_2__* %12 to i8*
  store i8* %13, i8** %4, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %15 = call i8* @skb_network_header(%struct.sk_buff* %14)
  store i8* %15, i8** %6, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = ptrtoint i8* %16 to i64
  %19 = ptrtoint i8* %17 to i64
  %20 = sub i64 %18, %19
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %7, align 4
  %22 = load i8*, i8** %4, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = add nsw i32 %25, 1
  %27 = shl i32 %26, 3
  store i32 %27, i32* %8, align 4
  %28 = load i8*, i8** %4, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = ptrtoint i8* %31 to i64
  %36 = ptrtoint i8* %34 to i64
  %37 = sub i64 %35, %36
  %38 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %39 = call i32 @skb_headlen(%struct.sk_buff* %38)
  %40 = sext i32 %39 to i64
  %41 = icmp sgt i64 %37, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %1
  br label %141

43:                                               ; preds = %1
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 2
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %8, align 4
  %47 = sub nsw i32 %46, 2
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %129, %43
  %49 = load i32, i32* %8, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %136

51:                                               ; preds = %48
  %52 = load i8*, i8** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %52, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = add nsw i32 %58, 2
  store i32 %59, i32* %9, align 4
  %60 = load i8*, i8** %6, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  switch i32 %65, label %123 [
    i32 129, label %66
    i32 128, label %67
    i32 130, label %68
  ]

66:                                               ; preds = %51
  store i32 1, i32* %9, align 4
  br label %129

67:                                               ; preds = %51
  br label %129

68:                                               ; preds = %51
  %69 = load i8*, i8** %6, align 8
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %69, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = icmp ne i32 %75, 4
  br i1 %76, label %81, label %77

77:                                               ; preds = %68
  %78 = load i32, i32* %7, align 4
  %79 = and i32 %78, 3
  %80 = icmp ne i32 %79, 2
  br i1 %80, label %81, label %82

81:                                               ; preds = %77, %68
  br label %141

82:                                               ; preds = %77
  %83 = load i8*, i8** %6, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  %87 = getelementptr inbounds i8, i8* %86, i64 2
  %88 = bitcast i8* %87 to i32*
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @ntohl(i32 %89)
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @IPV6_MAXPLEN, align 4
  %93 = icmp sle i32 %91, %92
  br i1 %93, label %100, label %94

94:                                               ; preds = %82
  %95 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %96 = call %struct.TYPE_2__* @ipv6_hdr(%struct.sk_buff* %95)
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %94, %82
  br label %141

101:                                              ; preds = %94
  %102 = load i32, i32* %5, align 4
  %103 = sext i32 %102 to i64
  %104 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %105 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = sext i32 %106 to i64
  %108 = sub i64 %107, 4
  %109 = icmp ugt i64 %103, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %101
  br label %141

111:                                              ; preds = %101
  %112 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %113 = load i32, i32* %5, align 4
  %114 = sext i32 %113 to i64
  %115 = add i64 %114, 4
  %116 = trunc i64 %115 to i32
  %117 = call i32 @pskb_trim_rcsum(%struct.sk_buff* %112, i32 %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %111
  br label %141

120:                                              ; preds = %111
  %121 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %122 = call i8* @skb_network_header(%struct.sk_buff* %121)
  store i8* %122, i8** %6, align 8
  br label %129

123:                                              ; preds = %51
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* %8, align 4
  %126 = icmp sgt i32 %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %123
  br label %141

128:                                              ; preds = %123
  br label %129

129:                                              ; preds = %128, %120, %67, %66
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* %7, align 4
  %132 = add nsw i32 %131, %130
  store i32 %132, i32* %7, align 4
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* %8, align 4
  %135 = sub nsw i32 %134, %133
  store i32 %135, i32* %8, align 4
  br label %48

136:                                              ; preds = %48
  %137 = load i32, i32* %8, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %136
  store i32 0, i32* %2, align 4
  br label %142

140:                                              ; preds = %136
  br label %141

141:                                              ; preds = %140, %127, %119, %110, %100, %81, %42
  store i32 -1, i32* %2, align 4
  br label %142

142:                                              ; preds = %141, %139
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

declare dso_local %struct.TYPE_2__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i8* @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @pskb_trim_rcsum(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
