; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_tag_edsa.c_edsa_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_tag_edsa.c_edsa_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32*, i64, i32, i32, i32 }
%struct.net_device = type { i32 }
%struct.packet_type = type { i32 }

@EDSA_HLEN = common dso_local global i32* null, align 8
@ETH_P_8021Q = common dso_local global i32 0, align 4
@DSA_HLEN = common dso_local global i32* null, align 8
@CHECKSUM_COMPLETE = common dso_local global i64 0, align 8
@ETH_HLEN = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.sk_buff*, %struct.net_device*, %struct.packet_type*)* @edsa_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @edsa_rcv(%struct.sk_buff* %0, %struct.net_device* %1, %struct.packet_type* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.packet_type*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [4 x i32], align 16
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.packet_type* %2, %struct.packet_type** %7, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = load i32*, i32** @EDSA_HLEN, align 8
  %15 = call i32 @pskb_may_pull(%struct.sk_buff* %13, i32* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %177

22:                                               ; preds = %3
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 2
  store i32* %26, i32** %8, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 192
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %22
  %33 = load i32*, i32** %8, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 192
  %37 = icmp ne i32 %36, 192
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %177

39:                                               ; preds = %32, %22
  %40 = load i32*, i32** %8, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, 31
  store i32 %43, i32* %9, align 4
  %44 = load i32*, i32** %8, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = ashr i32 %46, 3
  %48 = and i32 %47, 31
  store i32 %48, i32* %10, align 4
  %49 = load %struct.net_device*, %struct.net_device** %6, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @dsa_master_find_slave(%struct.net_device* %49, i32 %50, i32 %51)
  %53 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %39
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %177

60:                                               ; preds = %39
  %61 = load i32*, i32** %8, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, 32
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %146

66:                                               ; preds = %60
  %67 = load i32, i32* @ETH_P_8021Q, align 4
  %68 = ashr i32 %67, 8
  %69 = and i32 %68, 255
  %70 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  store i32 %69, i32* %70, align 16
  %71 = load i32, i32* @ETH_P_8021Q, align 4
  %72 = and i32 %71, 255
  %73 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 1
  store i32 %72, i32* %73, align 4
  %74 = load i32*, i32** %8, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 2
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, -17
  %78 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 2
  store i32 %77, i32* %78, align 8
  %79 = load i32*, i32** %8, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 3
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 3
  store i32 %81, i32* %82, align 4
  %83 = load i32*, i32** %8, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, 1
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %66
  %89 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 2
  %90 = load i32, i32* %89, align 8
  %91 = or i32 %90, 16
  store i32 %91, i32* %89, align 8
  br label %92

92:                                               ; preds = %88, %66
  %93 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %94 = load i32*, i32** @DSA_HLEN, align 8
  %95 = call i32 @skb_pull_rcsum(%struct.sk_buff* %93, i32* %94)
  %96 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %97 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @CHECKSUM_COMPLETE, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %118

101:                                              ; preds = %92
  %102 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %103 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %12, align 4
  %105 = load i32, i32* %12, align 4
  %106 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %107 = getelementptr inbounds i32, i32* %106, i64 2
  %108 = call i32 @csum_partial(i32* %107, i32 2, i32 0)
  %109 = call i32 @csum_add(i32 %105, i32 %108)
  store i32 %109, i32* %12, align 4
  %110 = load i32, i32* %12, align 4
  %111 = load i32*, i32** %8, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 2
  %113 = call i32 @csum_partial(i32* %112, i32 2, i32 0)
  %114 = call i32 @csum_sub(i32 %110, i32 %113)
  store i32 %114, i32* %12, align 4
  %115 = load i32, i32* %12, align 4
  %116 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %117 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %116, i32 0, i32 3
  store i32 %115, i32* %117, align 4
  br label %118

118:                                              ; preds = %101, %92
  %119 = load i32*, i32** %8, align 8
  %120 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %121 = load i32*, i32** @DSA_HLEN, align 8
  %122 = call i32 @memcpy(i32* %119, i32* %120, i32* %121)
  %123 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %124 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* @ETH_HLEN, align 4
  %127 = sext i32 %126 to i64
  %128 = sub i64 0, %127
  %129 = getelementptr inbounds i32, i32* %125, i64 %128
  %130 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %131 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* @ETH_HLEN, align 4
  %134 = sext i32 %133 to i64
  %135 = sub i64 0, %134
  %136 = getelementptr inbounds i32, i32* %132, i64 %135
  %137 = load i32*, i32** @DSA_HLEN, align 8
  %138 = ptrtoint i32* %136 to i64
  %139 = ptrtoint i32* %137 to i64
  %140 = sub i64 %138, %139
  %141 = sdiv exact i64 %140, 4
  %142 = inttoptr i64 %141 to i32*
  %143 = load i32, i32* @ETH_ALEN, align 4
  %144 = mul nsw i32 2, %143
  %145 = call i32 @memmove(i32* %129, i32* %142, i32 %144)
  br label %173

146:                                              ; preds = %60
  %147 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %148 = load i32*, i32** @EDSA_HLEN, align 8
  %149 = call i32 @skb_pull_rcsum(%struct.sk_buff* %147, i32* %148)
  %150 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %151 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* @ETH_HLEN, align 4
  %154 = sext i32 %153 to i64
  %155 = sub i64 0, %154
  %156 = getelementptr inbounds i32, i32* %152, i64 %155
  %157 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %158 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* @ETH_HLEN, align 4
  %161 = sext i32 %160 to i64
  %162 = sub i64 0, %161
  %163 = getelementptr inbounds i32, i32* %159, i64 %162
  %164 = load i32*, i32** @EDSA_HLEN, align 8
  %165 = ptrtoint i32* %163 to i64
  %166 = ptrtoint i32* %164 to i64
  %167 = sub i64 %165, %166
  %168 = sdiv exact i64 %167, 4
  %169 = inttoptr i64 %168 to i32*
  %170 = load i32, i32* @ETH_ALEN, align 4
  %171 = mul nsw i32 2, %170
  %172 = call i32 @memmove(i32* %156, i32* %169, i32 %171)
  br label %173

173:                                              ; preds = %146, %118
  %174 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %175 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %174, i32 0, i32 2
  store i32 1, i32* %175, align 8
  %176 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* %176, %struct.sk_buff** %4, align 8
  br label %177

177:                                              ; preds = %173, %59, %38, %21
  %178 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %178
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32*) #1

declare dso_local i32 @dsa_master_find_slave(%struct.net_device*, i32, i32) #1

declare dso_local i32 @skb_pull_rcsum(%struct.sk_buff*, i32*) #1

declare dso_local i32 @csum_add(i32, i32) #1

declare dso_local i32 @csum_partial(i32*, i32, i32) #1

declare dso_local i32 @csum_sub(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32*) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
