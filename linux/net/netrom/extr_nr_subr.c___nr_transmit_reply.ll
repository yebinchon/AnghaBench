; ModuleID = '/home/carl/AnghaBench/linux/net/netrom/extr_nr_subr.c___nr_transmit_reply.c'
source_filename = "/home/carl/AnghaBench/linux/net/netrom/extr_nr_subr.c___nr_transmit_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32* }

@NR_NETWORK_LEN = common dso_local global i32 0, align 4
@NR_TRANSPORT_LEN = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@AX25_ADDR_LEN = common dso_local global i32 0, align 4
@AX25_CBIT = common dso_local global i8 0, align 1
@AX25_EBIT = common dso_local global i8 0, align 1
@AX25_SSSID_SPARE = common dso_local global i8 0, align 1
@sysctl_netrom_network_ttl_initialiser = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__nr_transmit_reply(%struct.sk_buff* %0, i32 %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8 %2, i8* %6, align 1
  %10 = load i32, i32* @NR_NETWORK_LEN, align 4
  %11 = load i32, i32* @NR_TRANSPORT_LEN, align 4
  %12 = add nsw i32 %10, %11
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @GFP_ATOMIC, align 4
  %16 = call %struct.sk_buff* @alloc_skb(i32 %14, i32 %15)
  store %struct.sk_buff* %16, %struct.sk_buff** %7, align 8
  %17 = icmp eq %struct.sk_buff* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %154

19:                                               ; preds = %3
  %20 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %21 = call i32 @skb_reserve(%struct.sk_buff* %20, i32 0)
  %22 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %23 = load i32, i32* @NR_NETWORK_LEN, align 4
  %24 = load i32, i32* @NR_TRANSPORT_LEN, align 4
  %25 = add nsw i32 %23, %24
  %26 = call i8* @skb_put(%struct.sk_buff* %22, i32 %25)
  store i8* %26, i8** %8, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load i32, i32* @AX25_ADDR_LEN, align 4
  %30 = call i32 @skb_copy_from_linear_data_offset(%struct.sk_buff* %27, i32 7, i8* %28, i32 %29)
  %31 = load i8, i8* @AX25_CBIT, align 1
  %32 = zext i8 %31 to i32
  %33 = xor i32 %32, -1
  %34 = load i8*, i8** %8, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 6
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = and i32 %37, %33
  %39 = trunc i32 %38 to i8
  store i8 %39, i8* %35, align 1
  %40 = load i8, i8* @AX25_EBIT, align 1
  %41 = zext i8 %40 to i32
  %42 = xor i32 %41, -1
  %43 = load i8*, i8** %8, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 6
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = and i32 %46, %42
  %48 = trunc i32 %47 to i8
  store i8 %48, i8* %44, align 1
  %49 = load i8, i8* @AX25_SSSID_SPARE, align 1
  %50 = zext i8 %49 to i32
  %51 = load i8*, i8** %8, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 6
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = or i32 %54, %50
  %56 = trunc i32 %55 to i8
  store i8 %56, i8* %52, align 1
  %57 = load i32, i32* @AX25_ADDR_LEN, align 4
  %58 = load i8*, i8** %8, align 8
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  store i8* %60, i8** %8, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = load i32, i32* @AX25_ADDR_LEN, align 4
  %64 = call i32 @skb_copy_from_linear_data(%struct.sk_buff* %61, i8* %62, i32 %63)
  %65 = load i8, i8* @AX25_CBIT, align 1
  %66 = zext i8 %65 to i32
  %67 = xor i32 %66, -1
  %68 = load i8*, i8** %8, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 6
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = and i32 %71, %67
  %73 = trunc i32 %72 to i8
  store i8 %73, i8* %69, align 1
  %74 = load i8, i8* @AX25_EBIT, align 1
  %75 = zext i8 %74 to i32
  %76 = load i8*, i8** %8, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 6
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = or i32 %79, %75
  %81 = trunc i32 %80 to i8
  store i8 %81, i8* %77, align 1
  %82 = load i8, i8* @AX25_SSSID_SPARE, align 1
  %83 = zext i8 %82 to i32
  %84 = load i8*, i8** %8, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 6
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = or i32 %87, %83
  %89 = trunc i32 %88 to i8
  store i8 %89, i8* %85, align 1
  %90 = load i32, i32* @AX25_ADDR_LEN, align 4
  %91 = load i8*, i8** %8, align 8
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i8, i8* %91, i64 %92
  store i8* %93, i8** %8, align 8
  %94 = load i32, i32* @sysctl_netrom_network_ttl_initialiser, align 4
  %95 = trunc i32 %94 to i8
  %96 = load i8*, i8** %8, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %8, align 8
  store i8 %95, i8* %96, align 1
  %98 = load i32, i32* %5, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %121

100:                                              ; preds = %19
  %101 = load i8*, i8** %8, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %8, align 8
  store i8 0, i8* %101, align 1
  %103 = load i8*, i8** %8, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %8, align 8
  store i8 0, i8* %103, align 1
  %105 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %106 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 15
  %109 = load i32, i32* %108, align 4
  %110 = trunc i32 %109 to i8
  %111 = load i8*, i8** %8, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %8, align 8
  store i8 %110, i8* %111, align 1
  %113 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %114 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 16
  %117 = load i32, i32* %116, align 4
  %118 = trunc i32 %117 to i8
  %119 = load i8*, i8** %8, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %120, i8** %8, align 8
  store i8 %118, i8* %119, align 1
  br label %142

121:                                              ; preds = %19
  %122 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %123 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 15
  %126 = load i32, i32* %125, align 4
  %127 = trunc i32 %126 to i8
  %128 = load i8*, i8** %8, align 8
  %129 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %129, i8** %8, align 8
  store i8 %127, i8* %128, align 1
  %130 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %131 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 16
  %134 = load i32, i32* %133, align 4
  %135 = trunc i32 %134 to i8
  %136 = load i8*, i8** %8, align 8
  %137 = getelementptr inbounds i8, i8* %136, i32 1
  store i8* %137, i8** %8, align 8
  store i8 %135, i8* %136, align 1
  %138 = load i8*, i8** %8, align 8
  %139 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %139, i8** %8, align 8
  store i8 0, i8* %138, align 1
  %140 = load i8*, i8** %8, align 8
  %141 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %141, i8** %8, align 8
  store i8 0, i8* %140, align 1
  br label %142

142:                                              ; preds = %121, %100
  %143 = load i8, i8* %6, align 1
  %144 = load i8*, i8** %8, align 8
  %145 = getelementptr inbounds i8, i8* %144, i32 1
  store i8* %145, i8** %8, align 8
  store i8 %143, i8* %144, align 1
  %146 = load i8*, i8** %8, align 8
  %147 = getelementptr inbounds i8, i8* %146, i32 1
  store i8* %147, i8** %8, align 8
  store i8 0, i8* %146, align 1
  %148 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %149 = call i32 @nr_route_frame(%struct.sk_buff* %148, i32* null)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %154, label %151

151:                                              ; preds = %142
  %152 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %153 = call i32 @kfree_skb(%struct.sk_buff* %152)
  br label %154

154:                                              ; preds = %18, %151, %142
  ret void
}

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i8* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_copy_from_linear_data_offset(%struct.sk_buff*, i32, i8*, i32) #1

declare dso_local i32 @skb_copy_from_linear_data(%struct.sk_buff*, i8*, i32) #1

declare dso_local i32 @nr_route_frame(%struct.sk_buff*, i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
