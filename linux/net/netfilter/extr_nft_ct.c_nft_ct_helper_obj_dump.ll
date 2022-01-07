; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_ct.c_nft_ct_helper_obj_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_ct.c_nft_ct_helper_obj_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nft_object = type { i32 }
%struct.nft_ct_helper_obj = type { i32, %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper* }
%struct.nf_conntrack_helper = type { i32 }

@NFPROTO_INET = common dso_local global i32 0, align 4
@NFPROTO_IPV6 = common dso_local global i32 0, align 4
@NFPROTO_IPV4 = common dso_local global i32 0, align 4
@NFTA_CT_HELPER_NAME = common dso_local global i32 0, align 4
@NFTA_CT_HELPER_L4PROTO = common dso_local global i32 0, align 4
@NFTA_CT_HELPER_L3PROTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nft_object*, i32)* @nft_ct_helper_obj_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_ct_helper_obj_dump(%struct.sk_buff* %0, %struct.nft_object* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nft_object*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nft_ct_helper_obj*, align 8
  %9 = alloca %struct.nf_conntrack_helper*, align 8
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nft_object* %1, %struct.nft_object** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.nft_object*, %struct.nft_object** %6, align 8
  %12 = call %struct.nft_ct_helper_obj* @nft_obj_data(%struct.nft_object* %11)
  store %struct.nft_ct_helper_obj* %12, %struct.nft_ct_helper_obj** %8, align 8
  %13 = load %struct.nft_ct_helper_obj*, %struct.nft_ct_helper_obj** %8, align 8
  %14 = getelementptr inbounds %struct.nft_ct_helper_obj, %struct.nft_ct_helper_obj* %13, i32 0, i32 1
  %15 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %14, align 8
  %16 = icmp ne %struct.nf_conntrack_helper* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %3
  %18 = load %struct.nft_ct_helper_obj*, %struct.nft_ct_helper_obj** %8, align 8
  %19 = getelementptr inbounds %struct.nft_ct_helper_obj, %struct.nft_ct_helper_obj* %18, i32 0, i32 2
  %20 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %19, align 8
  %21 = icmp ne %struct.nf_conntrack_helper* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load i32, i32* @NFPROTO_INET, align 4
  store i32 %23, i32* %10, align 4
  %24 = load %struct.nft_ct_helper_obj*, %struct.nft_ct_helper_obj** %8, align 8
  %25 = getelementptr inbounds %struct.nft_ct_helper_obj, %struct.nft_ct_helper_obj* %24, i32 0, i32 1
  %26 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %25, align 8
  store %struct.nf_conntrack_helper* %26, %struct.nf_conntrack_helper** %9, align 8
  br label %43

27:                                               ; preds = %17, %3
  %28 = load %struct.nft_ct_helper_obj*, %struct.nft_ct_helper_obj** %8, align 8
  %29 = getelementptr inbounds %struct.nft_ct_helper_obj, %struct.nft_ct_helper_obj* %28, i32 0, i32 2
  %30 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %29, align 8
  %31 = icmp ne %struct.nf_conntrack_helper* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load i32, i32* @NFPROTO_IPV6, align 4
  store i32 %33, i32* %10, align 4
  %34 = load %struct.nft_ct_helper_obj*, %struct.nft_ct_helper_obj** %8, align 8
  %35 = getelementptr inbounds %struct.nft_ct_helper_obj, %struct.nft_ct_helper_obj* %34, i32 0, i32 2
  %36 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %35, align 8
  store %struct.nf_conntrack_helper* %36, %struct.nf_conntrack_helper** %9, align 8
  br label %42

37:                                               ; preds = %27
  %38 = load i32, i32* @NFPROTO_IPV4, align 4
  store i32 %38, i32* %10, align 4
  %39 = load %struct.nft_ct_helper_obj*, %struct.nft_ct_helper_obj** %8, align 8
  %40 = getelementptr inbounds %struct.nft_ct_helper_obj, %struct.nft_ct_helper_obj* %39, i32 0, i32 1
  %41 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %40, align 8
  store %struct.nf_conntrack_helper* %41, %struct.nf_conntrack_helper** %9, align 8
  br label %42

42:                                               ; preds = %37, %32
  br label %43

43:                                               ; preds = %42, %22
  %44 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %45 = load i32, i32* @NFTA_CT_HELPER_NAME, align 4
  %46 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %9, align 8
  %47 = getelementptr inbounds %struct.nf_conntrack_helper, %struct.nf_conntrack_helper* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @nla_put_string(%struct.sk_buff* %44, i32 %45, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  store i32 -1, i32* %4, align 4
  br label %70

52:                                               ; preds = %43
  %53 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %54 = load i32, i32* @NFTA_CT_HELPER_L4PROTO, align 4
  %55 = load %struct.nft_ct_helper_obj*, %struct.nft_ct_helper_obj** %8, align 8
  %56 = getelementptr inbounds %struct.nft_ct_helper_obj, %struct.nft_ct_helper_obj* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @nla_put_u8(%struct.sk_buff* %53, i32 %54, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  store i32 -1, i32* %4, align 4
  br label %70

61:                                               ; preds = %52
  %62 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %63 = load i32, i32* @NFTA_CT_HELPER_L3PROTO, align 4
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @htons(i32 %64)
  %66 = call i64 @nla_put_be16(%struct.sk_buff* %62, i32 %63, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  store i32 -1, i32* %4, align 4
  br label %70

69:                                               ; preds = %61
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %69, %68, %60, %51
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local %struct.nft_ct_helper_obj* @nft_obj_data(%struct.nft_object*) #1

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_be16(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
