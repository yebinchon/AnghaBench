; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_socklib.c_csum_partial_copy_to_xdr.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_socklib.c_csum_partial_copy_to_xdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_buf = type { i32 }
%struct.sk_buff = type { i64, i64, i32, i32, i32, i32 }
%struct.xdr_skb_reader = type { i64, i64, i32, %struct.sk_buff* }

@xdr_skb_read_and_csum_bits = common dso_local global i32 0, align 4
@CHECKSUM_COMPLETE = common dso_local global i64 0, align 8
@xdr_skb_read_bits = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @csum_partial_copy_to_xdr(%struct.xdr_buf* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xdr_buf*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.xdr_skb_reader, align 8
  %7 = alloca i32, align 4
  store %struct.xdr_buf* %0, %struct.xdr_buf** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %9 = getelementptr inbounds %struct.xdr_skb_reader, %struct.xdr_skb_reader* %6, i32 0, i32 3
  store %struct.sk_buff* %8, %struct.sk_buff** %9, align 8
  %10 = getelementptr inbounds %struct.xdr_skb_reader, %struct.xdr_skb_reader* %6, i32 0, i32 0
  store i64 0, i64* %10, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.xdr_skb_reader, %struct.xdr_skb_reader* %6, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = sub nsw i64 %13, %15
  %17 = getelementptr inbounds %struct.xdr_skb_reader, %struct.xdr_skb_reader* %6, i32 0, i32 1
  store i64 %16, i64* %17, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = call i64 @skb_csum_unnecessary(%struct.sk_buff* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %95

22:                                               ; preds = %2
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.xdr_skb_reader, %struct.xdr_skb_reader* %6, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @csum_partial(i32 %25, i64 %27, i32 %30)
  %32 = getelementptr inbounds %struct.xdr_skb_reader, %struct.xdr_skb_reader* %6, i32 0, i32 2
  store i32 %31, i32* %32, align 8
  %33 = load %struct.xdr_buf*, %struct.xdr_buf** %4, align 8
  %34 = load i32, i32* @xdr_skb_read_and_csum_bits, align 4
  %35 = call i64 @xdr_partial_copy_from_skb(%struct.xdr_buf* %33, i32 0, %struct.xdr_skb_reader* %6, i32 %34)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %22
  store i32 -1, i32* %3, align 4
  br label %107

38:                                               ; preds = %22
  %39 = getelementptr inbounds %struct.xdr_skb_reader, %struct.xdr_skb_reader* %6, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %40, %43
  br i1 %44, label %45, label %63

45:                                               ; preds = %38
  %46 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %47 = getelementptr inbounds %struct.xdr_skb_reader, %struct.xdr_skb_reader* %6, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %50 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.xdr_skb_reader, %struct.xdr_skb_reader* %6, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = sub nsw i64 %51, %53
  %55 = call i32 @skb_checksum(%struct.sk_buff* %46, i64 %48, i64 %54, i32 0)
  store i32 %55, i32* %7, align 4
  %56 = getelementptr inbounds %struct.xdr_skb_reader, %struct.xdr_skb_reader* %6, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = getelementptr inbounds %struct.xdr_skb_reader, %struct.xdr_skb_reader* %6, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @csum_block_add(i32 %57, i32 %58, i64 %60)
  %62 = getelementptr inbounds %struct.xdr_skb_reader, %struct.xdr_skb_reader* %6, i32 0, i32 2
  store i32 %61, i32* %62, align 8
  br label %63

63:                                               ; preds = %45, %38
  %64 = getelementptr inbounds %struct.xdr_skb_reader, %struct.xdr_skb_reader* %6, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  store i32 -1, i32* %3, align 4
  br label %107

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.xdr_skb_reader, %struct.xdr_skb_reader* %6, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i64 @csum_fold(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  store i32 -1, i32* %3, align 4
  br label %107

74:                                               ; preds = %68
  %75 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %76 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @CHECKSUM_COMPLETE, align 8
  %79 = icmp eq i64 %77, %78
  %80 = zext i1 %79 to i32
  %81 = call i64 @unlikely(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %74
  %84 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %85 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %94, label %88

88:                                               ; preds = %83
  %89 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %90 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %93 = call i32 @netdev_rx_csum_fault(i32 %91, %struct.sk_buff* %92)
  br label %94

94:                                               ; preds = %88, %83, %74
  store i32 0, i32* %3, align 4
  br label %107

95:                                               ; preds = %21
  %96 = load %struct.xdr_buf*, %struct.xdr_buf** %4, align 8
  %97 = load i32, i32* @xdr_skb_read_bits, align 4
  %98 = call i64 @xdr_partial_copy_from_skb(%struct.xdr_buf* %96, i32 0, %struct.xdr_skb_reader* %6, i32 %97)
  %99 = icmp slt i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  store i32 -1, i32* %3, align 4
  br label %107

101:                                              ; preds = %95
  %102 = getelementptr inbounds %struct.xdr_skb_reader, %struct.xdr_skb_reader* %6, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  store i32 -1, i32* %3, align 4
  br label %107

106:                                              ; preds = %101
  store i32 0, i32* %3, align 4
  br label %107

107:                                              ; preds = %106, %105, %100, %94, %73, %67, %37
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i64 @skb_csum_unnecessary(%struct.sk_buff*) #1

declare dso_local i32 @csum_partial(i32, i64, i32) #1

declare dso_local i64 @xdr_partial_copy_from_skb(%struct.xdr_buf*, i32, %struct.xdr_skb_reader*, i32) #1

declare dso_local i32 @skb_checksum(%struct.sk_buff*, i64, i64, i32) #1

declare dso_local i32 @csum_block_add(i32, i32, i64) #1

declare dso_local i64 @csum_fold(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netdev_rx_csum_fault(i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
