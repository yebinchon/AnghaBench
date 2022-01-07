; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_exthdr.c_nft_exthdr_dump_common.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_exthdr.c_nft_exthdr_dump_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nft_exthdr = type { i32, i32, i32, i32, i32 }

@NFTA_EXTHDR_TYPE = common dso_local global i32 0, align 4
@NFTA_EXTHDR_OFFSET = common dso_local global i32 0, align 4
@NFTA_EXTHDR_LEN = common dso_local global i32 0, align 4
@NFTA_EXTHDR_FLAGS = common dso_local global i32 0, align 4
@NFTA_EXTHDR_OP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nft_exthdr*)* @nft_exthdr_dump_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_exthdr_dump_common(%struct.sk_buff* %0, %struct.nft_exthdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nft_exthdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.nft_exthdr* %1, %struct.nft_exthdr** %5, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %7 = load i32, i32* @NFTA_EXTHDR_TYPE, align 4
  %8 = load %struct.nft_exthdr*, %struct.nft_exthdr** %5, align 8
  %9 = getelementptr inbounds %struct.nft_exthdr, %struct.nft_exthdr* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @nla_put_u8(%struct.sk_buff* %6, i32 %7, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %55

14:                                               ; preds = %2
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = load i32, i32* @NFTA_EXTHDR_OFFSET, align 4
  %17 = load %struct.nft_exthdr*, %struct.nft_exthdr** %5, align 8
  %18 = getelementptr inbounds %struct.nft_exthdr, %struct.nft_exthdr* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @htonl(i32 %19)
  %21 = call i64 @nla_put_be32(%struct.sk_buff* %15, i32 %16, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  br label %55

24:                                               ; preds = %14
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = load i32, i32* @NFTA_EXTHDR_LEN, align 4
  %27 = load %struct.nft_exthdr*, %struct.nft_exthdr** %5, align 8
  %28 = getelementptr inbounds %struct.nft_exthdr, %struct.nft_exthdr* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @htonl(i32 %29)
  %31 = call i64 @nla_put_be32(%struct.sk_buff* %25, i32 %26, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  br label %55

34:                                               ; preds = %24
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = load i32, i32* @NFTA_EXTHDR_FLAGS, align 4
  %37 = load %struct.nft_exthdr*, %struct.nft_exthdr** %5, align 8
  %38 = getelementptr inbounds %struct.nft_exthdr, %struct.nft_exthdr* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @htonl(i32 %39)
  %41 = call i64 @nla_put_be32(%struct.sk_buff* %35, i32 %36, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %55

44:                                               ; preds = %34
  %45 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %46 = load i32, i32* @NFTA_EXTHDR_OP, align 4
  %47 = load %struct.nft_exthdr*, %struct.nft_exthdr** %5, align 8
  %48 = getelementptr inbounds %struct.nft_exthdr, %struct.nft_exthdr* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @htonl(i32 %49)
  %51 = call i64 @nla_put_be32(%struct.sk_buff* %45, i32 %46, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  br label %55

54:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %56

55:                                               ; preds = %53, %43, %33, %23, %13
  store i32 -1, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %54
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_be32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
