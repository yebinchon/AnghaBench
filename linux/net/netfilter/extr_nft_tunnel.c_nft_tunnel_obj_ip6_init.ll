; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_tunnel.c_nft_tunnel_obj_ip6_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_tunnel.c_nft_tunnel_obj_ip6_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_ctx = type { i32 }
%struct.nlattr = type { i32 }
%struct.ip_tunnel_info = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@NFTA_TUNNEL_KEY_IP6_MAX = common dso_local global i32 0, align 4
@nft_tunnel_ip6_policy = common dso_local global i32 0, align 4
@NFTA_TUNNEL_KEY_IP6_DST = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NFTA_TUNNEL_KEY_IP6_SRC = common dso_local global i64 0, align 8
@NFTA_TUNNEL_KEY_IP6_FLOWLABEL = common dso_local global i64 0, align 8
@IP_TUNNEL_INFO_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nft_ctx*, %struct.nlattr*, %struct.ip_tunnel_info*)* @nft_tunnel_obj_ip6_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_tunnel_obj_ip6_init(%struct.nft_ctx* %0, %struct.nlattr* %1, %struct.ip_tunnel_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nft_ctx*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca %struct.ip_tunnel_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nft_ctx* %0, %struct.nft_ctx** %5, align 8
  store %struct.nlattr* %1, %struct.nlattr** %6, align 8
  store %struct.ip_tunnel_info* %2, %struct.ip_tunnel_info** %7, align 8
  %12 = load i32, i32* @NFTA_TUNNEL_KEY_IP6_MAX, align 4
  %13 = add nsw i32 %12, 1
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca %struct.nlattr*, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load i32, i32* @NFTA_TUNNEL_KEY_IP6_MAX, align 4
  %18 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %19 = load i32, i32* @nft_tunnel_ip6_policy, align 4
  %20 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %16, i32 %17, %struct.nlattr* %18, i32 %19, i32* null)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %84

25:                                               ; preds = %3
  %26 = load i64, i64* @NFTA_TUNNEL_KEY_IP6_DST, align 8
  %27 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %16, i64 %26
  %28 = load %struct.nlattr*, %struct.nlattr** %27, align 8
  %29 = icmp ne %struct.nlattr* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %84

33:                                               ; preds = %25
  %34 = load i64, i64* @NFTA_TUNNEL_KEY_IP6_SRC, align 8
  %35 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %16, i64 %34
  %36 = load %struct.nlattr*, %struct.nlattr** %35, align 8
  %37 = icmp ne %struct.nlattr* %36, null
  br i1 %37, label %38, label %49

38:                                               ; preds = %33
  %39 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %7, align 8
  %40 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i64, i64* @NFTA_TUNNEL_KEY_IP6_SRC, align 8
  %45 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %16, i64 %44
  %46 = load %struct.nlattr*, %struct.nlattr** %45, align 8
  %47 = call i32 @nla_data(%struct.nlattr* %46)
  %48 = call i32 @memcpy(i32* %43, i32 %47, i32 4)
  br label %49

49:                                               ; preds = %38, %33
  %50 = load i64, i64* @NFTA_TUNNEL_KEY_IP6_DST, align 8
  %51 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %16, i64 %50
  %52 = load %struct.nlattr*, %struct.nlattr** %51, align 8
  %53 = icmp ne %struct.nlattr* %52, null
  br i1 %53, label %54, label %65

54:                                               ; preds = %49
  %55 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %7, align 8
  %56 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i64, i64* @NFTA_TUNNEL_KEY_IP6_DST, align 8
  %61 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %16, i64 %60
  %62 = load %struct.nlattr*, %struct.nlattr** %61, align 8
  %63 = call i32 @nla_data(%struct.nlattr* %62)
  %64 = call i32 @memcpy(i32* %59, i32 %63, i32 4)
  br label %65

65:                                               ; preds = %54, %49
  %66 = load i64, i64* @NFTA_TUNNEL_KEY_IP6_FLOWLABEL, align 8
  %67 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %16, i64 %66
  %68 = load %struct.nlattr*, %struct.nlattr** %67, align 8
  %69 = icmp ne %struct.nlattr* %68, null
  br i1 %69, label %70, label %78

70:                                               ; preds = %65
  %71 = load i64, i64* @NFTA_TUNNEL_KEY_IP6_FLOWLABEL, align 8
  %72 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %16, i64 %71
  %73 = load %struct.nlattr*, %struct.nlattr** %72, align 8
  %74 = call i32 @nla_get_be32(%struct.nlattr* %73)
  %75 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %7, align 8
  %76 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  store i32 %74, i32* %77, align 4
  br label %78

78:                                               ; preds = %70, %65
  %79 = load i32, i32* @IP_TUNNEL_INFO_IPV6, align 4
  %80 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %7, align 8
  %81 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 4
  store i32 0, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %84

84:                                               ; preds = %78, %30, %23
  %85 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %85)
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, i32*) #2

declare dso_local i32 @memcpy(i32*, i32, i32) #2

declare dso_local i32 @nla_data(%struct.nlattr*) #2

declare dso_local i32 @nla_get_be32(%struct.nlattr*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
