; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_ct.c_nft_ct_expect_obj_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_ct.c_nft_ct_expect_obj_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nft_object = type { i32 }
%struct.nft_ct_expect_obj = type { i32, i32, i32, i32, i32 }

@NFTA_CT_EXPECT_L3PROTO = common dso_local global i32 0, align 4
@NFTA_CT_EXPECT_L4PROTO = common dso_local global i32 0, align 4
@NFTA_CT_EXPECT_DPORT = common dso_local global i32 0, align 4
@NFTA_CT_EXPECT_TIMEOUT = common dso_local global i32 0, align 4
@NFTA_CT_EXPECT_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nft_object*, i32)* @nft_ct_expect_obj_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_ct_expect_obj_dump(%struct.sk_buff* %0, %struct.nft_object* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nft_object*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nft_ct_expect_obj*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nft_object* %1, %struct.nft_object** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.nft_object*, %struct.nft_object** %6, align 8
  %10 = call %struct.nft_ct_expect_obj* @nft_obj_data(%struct.nft_object* %9)
  store %struct.nft_ct_expect_obj* %10, %struct.nft_ct_expect_obj** %8, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = load i32, i32* @NFTA_CT_EXPECT_L3PROTO, align 4
  %13 = load %struct.nft_ct_expect_obj*, %struct.nft_ct_expect_obj** %8, align 8
  %14 = getelementptr inbounds %struct.nft_ct_expect_obj, %struct.nft_ct_expect_obj* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @htons(i32 %15)
  %17 = call i64 @nla_put_be16(%struct.sk_buff* %11, i32 %12, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %51, label %19

19:                                               ; preds = %3
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = load i32, i32* @NFTA_CT_EXPECT_L4PROTO, align 4
  %22 = load %struct.nft_ct_expect_obj*, %struct.nft_ct_expect_obj** %8, align 8
  %23 = getelementptr inbounds %struct.nft_ct_expect_obj, %struct.nft_ct_expect_obj* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @nla_put_u8(%struct.sk_buff* %20, i32 %21, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %51, label %27

27:                                               ; preds = %19
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = load i32, i32* @NFTA_CT_EXPECT_DPORT, align 4
  %30 = load %struct.nft_ct_expect_obj*, %struct.nft_ct_expect_obj** %8, align 8
  %31 = getelementptr inbounds %struct.nft_ct_expect_obj, %struct.nft_ct_expect_obj* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @nla_put_be16(%struct.sk_buff* %28, i32 %29, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %51, label %35

35:                                               ; preds = %27
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = load i32, i32* @NFTA_CT_EXPECT_TIMEOUT, align 4
  %38 = load %struct.nft_ct_expect_obj*, %struct.nft_ct_expect_obj** %8, align 8
  %39 = getelementptr inbounds %struct.nft_ct_expect_obj, %struct.nft_ct_expect_obj* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @nla_put_u32(%struct.sk_buff* %36, i32 %37, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %35
  %44 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %45 = load i32, i32* @NFTA_CT_EXPECT_SIZE, align 4
  %46 = load %struct.nft_ct_expect_obj*, %struct.nft_ct_expect_obj** %8, align 8
  %47 = getelementptr inbounds %struct.nft_ct_expect_obj, %struct.nft_ct_expect_obj* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @nla_put_u8(%struct.sk_buff* %44, i32 %45, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43, %35, %27, %19, %3
  store i32 -1, i32* %4, align 4
  br label %53

52:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %52, %51
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local %struct.nft_ct_expect_obj* @nft_obj_data(%struct.nft_object*) #1

declare dso_local i64 @nla_put_be16(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
