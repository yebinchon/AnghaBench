; ModuleID = '/home/carl/AnghaBench/linux/net/6lowpan/extr_iphc.c_lowpan_iphc_tf_decompress.c'
source_filename = "/home/carl/AnghaBench/linux/net/6lowpan/extr_iphc.c_lowpan_iphc_tf_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ipv6hdr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.ipv6hdr*, i32)* @lowpan_iphc_tf_decompress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lowpan_iphc_tf_decompress(%struct.sk_buff* %0, %struct.ipv6hdr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ipv6hdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [4 x i32], align 16
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.ipv6hdr* %1, %struct.ipv6hdr** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  switch i32 %9, label %59 [
    i32 131, label %10
    i32 130, label %28
    i32 129, label %43
    i32 128, label %58
  ]

10:                                               ; preds = %3
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %13 = call i32 @lowpan_fetch_skb(%struct.sk_buff* %11, i32* %12, i32 4)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %64

18:                                               ; preds = %10
  %19 = load %struct.ipv6hdr*, %struct.ipv6hdr** %6, align 8
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %21 = call i32 @lowpan_iphc_tf_set_ecn(%struct.ipv6hdr* %19, i32* %20)
  %22 = load %struct.ipv6hdr*, %struct.ipv6hdr** %6, align 8
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %24 = call i32 @lowpan_iphc_tf_set_dscp(%struct.ipv6hdr* %22, i32* %23)
  %25 = load %struct.ipv6hdr*, %struct.ipv6hdr** %6, align 8
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  %27 = call i32 @lowpan_iphc_tf_set_lbl(%struct.ipv6hdr* %25, i32* %26)
  br label %63

28:                                               ; preds = %3
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %31 = call i32 @lowpan_fetch_skb(%struct.sk_buff* %29, i32* %30, i32 3)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %64

36:                                               ; preds = %28
  %37 = load %struct.ipv6hdr*, %struct.ipv6hdr** %6, align 8
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %39 = call i32 @lowpan_iphc_tf_set_ecn(%struct.ipv6hdr* %37, i32* %38)
  %40 = load %struct.ipv6hdr*, %struct.ipv6hdr** %6, align 8
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %42 = call i32 @lowpan_iphc_tf_set_lbl(%struct.ipv6hdr* %40, i32* %41)
  br label %63

43:                                               ; preds = %3
  %44 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %45 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %46 = call i32 @lowpan_fetch_skb(%struct.sk_buff* %44, i32* %45, i32 1)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %64

51:                                               ; preds = %43
  %52 = load %struct.ipv6hdr*, %struct.ipv6hdr** %6, align 8
  %53 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %54 = call i32 @lowpan_iphc_tf_set_ecn(%struct.ipv6hdr* %52, i32* %53)
  %55 = load %struct.ipv6hdr*, %struct.ipv6hdr** %6, align 8
  %56 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %57 = call i32 @lowpan_iphc_tf_set_dscp(%struct.ipv6hdr* %55, i32* %56)
  br label %63

58:                                               ; preds = %3
  br label %63

59:                                               ; preds = %3
  %60 = call i32 @WARN_ON_ONCE(i32 1)
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %64

63:                                               ; preds = %58, %51, %36, %18
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %59, %48, %33, %15
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @lowpan_fetch_skb(%struct.sk_buff*, i32*, i32) #1

declare dso_local i32 @lowpan_iphc_tf_set_ecn(%struct.ipv6hdr*, i32*) #1

declare dso_local i32 @lowpan_iphc_tf_set_dscp(%struct.ipv6hdr*, i32*) #1

declare dso_local i32 @lowpan_iphc_tf_set_lbl(%struct.ipv6hdr*, i32*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
