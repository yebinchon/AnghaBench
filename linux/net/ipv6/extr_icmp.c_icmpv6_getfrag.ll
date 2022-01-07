; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_icmp.c_icmpv6_getfrag.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_icmp.c_icmpv6_getfrag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.icmpv6_msg = type { i32, i64, %struct.sk_buff* }

@ICMPV6_INFOMSG_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32, i32, %struct.sk_buff*)* @icmpv6_getfrag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icmpv6_getfrag(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, %struct.sk_buff* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.icmpv6_msg*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.sk_buff* %5, %struct.sk_buff** %12, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to %struct.icmpv6_msg*
  store %struct.icmpv6_msg* %17, %struct.icmpv6_msg** %13, align 8
  %18 = load %struct.icmpv6_msg*, %struct.icmpv6_msg** %13, align 8
  %19 = getelementptr inbounds %struct.icmpv6_msg, %struct.icmpv6_msg* %18, i32 0, i32 2
  %20 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  store %struct.sk_buff* %20, %struct.sk_buff** %14, align 8
  store i32 0, i32* %15, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %22 = load %struct.icmpv6_msg*, %struct.icmpv6_msg** %13, align 8
  %23 = getelementptr inbounds %struct.icmpv6_msg, %struct.icmpv6_msg* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %24, %26
  %28 = load i8*, i8** %8, align 8
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %15, align 4
  %31 = call i32 @skb_copy_and_csum_bits(%struct.sk_buff* %21, i64 %27, i8* %28, i32 %29, i32 %30)
  store i32 %31, i32* %15, align 4
  %32 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %15, align 4
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @csum_block_add(i32 %34, i32 %35, i32 %36)
  %38 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.icmpv6_msg*, %struct.icmpv6_msg** %13, align 8
  %41 = getelementptr inbounds %struct.icmpv6_msg, %struct.icmpv6_msg* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @ICMPV6_INFOMSG_MASK, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %6
  %47 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %49 = call i32 @nf_ct_attach(%struct.sk_buff* %47, %struct.sk_buff* %48)
  br label %50

50:                                               ; preds = %46, %6
  ret i32 0
}

declare dso_local i32 @skb_copy_and_csum_bits(%struct.sk_buff*, i64, i8*, i32, i32) #1

declare dso_local i32 @csum_block_add(i32, i32, i32) #1

declare dso_local i32 @nf_ct_attach(%struct.sk_buff*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
