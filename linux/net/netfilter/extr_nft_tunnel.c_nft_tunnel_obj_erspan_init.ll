; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_tunnel.c_nft_tunnel_obj_erspan_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_tunnel.c_nft_tunnel_obj_erspan_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.nft_tunnel_opts = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }

@NFTA_TUNNEL_KEY_ERSPAN_MAX = common dso_local global i32 0, align 4
@nft_tunnel_opts_erspan_policy = common dso_local global i32 0, align 4
@NFTA_TUNNEL_KEY_ERSPAN_VERSION = common dso_local global i64 0, align 8
@NFTA_TUNNEL_KEY_ERSPAN_V1_INDEX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NFTA_TUNNEL_KEY_ERSPAN_V2_DIR = common dso_local global i64 0, align 8
@NFTA_TUNNEL_KEY_ERSPAN_V2_HWID = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@TUNNEL_ERSPAN_OPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr*, %struct.nft_tunnel_opts*)* @nft_tunnel_obj_erspan_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_tunnel_obj_erspan_init(%struct.nlattr* %0, %struct.nft_tunnel_opts* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nlattr*, align 8
  %5 = alloca %struct.nft_tunnel_opts*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nlattr* %0, %struct.nlattr** %4, align 8
  store %struct.nft_tunnel_opts* %1, %struct.nft_tunnel_opts** %5, align 8
  %13 = load i32, i32* @NFTA_TUNNEL_KEY_ERSPAN_MAX, align 4
  %14 = add nsw i32 %13, 1
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %6, align 8
  %17 = alloca %struct.nlattr*, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  %18 = load i32, i32* @NFTA_TUNNEL_KEY_ERSPAN_MAX, align 4
  %19 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %20 = load i32, i32* @nft_tunnel_opts_erspan_policy, align 4
  %21 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %17, i32 %18, %struct.nlattr* %19, i32 %20, i32* null)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %101

26:                                               ; preds = %2
  %27 = load i64, i64* @NFTA_TUNNEL_KEY_ERSPAN_VERSION, align 8
  %28 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %17, i64 %27
  %29 = load %struct.nlattr*, %struct.nlattr** %28, align 8
  %30 = call i32 @nla_get_be32(%struct.nlattr* %29)
  %31 = call i32 @ntohl(i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  switch i32 %32, label %87 [
    i32 129, label %33
    i32 128, label %51
  ]

33:                                               ; preds = %26
  %34 = load i64, i64* @NFTA_TUNNEL_KEY_ERSPAN_V1_INDEX, align 8
  %35 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %17, i64 %34
  %36 = load %struct.nlattr*, %struct.nlattr** %35, align 8
  %37 = icmp ne %struct.nlattr* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %101

41:                                               ; preds = %33
  %42 = load i64, i64* @NFTA_TUNNEL_KEY_ERSPAN_V1_INDEX, align 8
  %43 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %17, i64 %42
  %44 = load %struct.nlattr*, %struct.nlattr** %43, align 8
  %45 = call i32 @nla_get_be32(%struct.nlattr* %44)
  %46 = load %struct.nft_tunnel_opts*, %struct.nft_tunnel_opts** %5, align 8
  %47 = getelementptr inbounds %struct.nft_tunnel_opts, %struct.nft_tunnel_opts* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  store i32 %45, i32* %50, align 4
  br label %90

51:                                               ; preds = %26
  %52 = load i64, i64* @NFTA_TUNNEL_KEY_ERSPAN_V2_DIR, align 8
  %53 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %17, i64 %52
  %54 = load %struct.nlattr*, %struct.nlattr** %53, align 8
  %55 = icmp ne %struct.nlattr* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load i64, i64* @NFTA_TUNNEL_KEY_ERSPAN_V2_HWID, align 8
  %58 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %17, i64 %57
  %59 = load %struct.nlattr*, %struct.nlattr** %58, align 8
  %60 = icmp ne %struct.nlattr* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %56, %51
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %101

64:                                               ; preds = %56
  %65 = load i64, i64* @NFTA_TUNNEL_KEY_ERSPAN_V2_HWID, align 8
  %66 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %17, i64 %65
  %67 = load %struct.nlattr*, %struct.nlattr** %66, align 8
  %68 = call i32 @nla_get_u8(%struct.nlattr* %67)
  store i32 %68, i32* %8, align 4
  %69 = load i64, i64* @NFTA_TUNNEL_KEY_ERSPAN_V2_DIR, align 8
  %70 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %17, i64 %69
  %71 = load %struct.nlattr*, %struct.nlattr** %70, align 8
  %72 = call i32 @nla_get_u8(%struct.nlattr* %71)
  store i32 %72, i32* %9, align 4
  %73 = load %struct.nft_tunnel_opts*, %struct.nft_tunnel_opts** %5, align 8
  %74 = getelementptr inbounds %struct.nft_tunnel_opts, %struct.nft_tunnel_opts* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @set_hwid(%struct.TYPE_8__* %77, i32 %78)
  %80 = load i32, i32* %9, align 4
  %81 = load %struct.nft_tunnel_opts*, %struct.nft_tunnel_opts** %5, align 8
  %82 = getelementptr inbounds %struct.nft_tunnel_opts, %struct.nft_tunnel_opts* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  store i32 %80, i32* %86, align 4
  br label %90

87:                                               ; preds = %26
  %88 = load i32, i32* @EOPNOTSUPP, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %101

90:                                               ; preds = %64, %41
  %91 = load i32, i32* %11, align 4
  %92 = load %struct.nft_tunnel_opts*, %struct.nft_tunnel_opts** %5, align 8
  %93 = getelementptr inbounds %struct.nft_tunnel_opts, %struct.nft_tunnel_opts* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  store i32 %91, i32* %95, align 4
  %96 = load %struct.nft_tunnel_opts*, %struct.nft_tunnel_opts** %5, align 8
  %97 = getelementptr inbounds %struct.nft_tunnel_opts, %struct.nft_tunnel_opts* %96, i32 0, i32 0
  store i32 4, i32* %97, align 4
  %98 = load i32, i32* @TUNNEL_ERSPAN_OPT, align 4
  %99 = load %struct.nft_tunnel_opts*, %struct.nft_tunnel_opts** %5, align 8
  %100 = getelementptr inbounds %struct.nft_tunnel_opts, %struct.nft_tunnel_opts* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %101

101:                                              ; preds = %90, %87, %61, %38, %24
  %102 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %102)
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, i32*) #2

declare dso_local i32 @ntohl(i32) #2

declare dso_local i32 @nla_get_be32(%struct.nlattr*) #2

declare dso_local i32 @nla_get_u8(%struct.nlattr*) #2

declare dso_local i32 @set_hwid(%struct.TYPE_8__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
