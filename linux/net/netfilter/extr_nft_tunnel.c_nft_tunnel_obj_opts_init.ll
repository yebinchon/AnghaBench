; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_tunnel.c_nft_tunnel_obj_opts_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_tunnel.c_nft_tunnel_obj_opts_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_ctx = type { i32 }
%struct.nlattr = type { i32 }
%struct.ip_tunnel_info = type { i32 }
%struct.nft_tunnel_opts = type { i32 }

@NFTA_TUNNEL_KEY_OPTS_MAX = common dso_local global i32 0, align 4
@nft_tunnel_opts_policy = common dso_local global i32 0, align 4
@NFTA_TUNNEL_KEY_OPTS_VXLAN = common dso_local global i64 0, align 8
@NFTA_TUNNEL_KEY_OPTS_ERSPAN = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nft_ctx*, %struct.nlattr*, %struct.ip_tunnel_info*, %struct.nft_tunnel_opts*)* @nft_tunnel_obj_opts_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_tunnel_obj_opts_init(%struct.nft_ctx* %0, %struct.nlattr* %1, %struct.ip_tunnel_info* %2, %struct.nft_tunnel_opts* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nft_ctx*, align 8
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca %struct.ip_tunnel_info*, align 8
  %9 = alloca %struct.nft_tunnel_opts*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nft_ctx* %0, %struct.nft_ctx** %6, align 8
  store %struct.nlattr* %1, %struct.nlattr** %7, align 8
  store %struct.ip_tunnel_info* %2, %struct.ip_tunnel_info** %8, align 8
  store %struct.nft_tunnel_opts* %3, %struct.nft_tunnel_opts** %9, align 8
  %14 = load i32, i32* @NFTA_TUNNEL_KEY_OPTS_MAX, align 4
  %15 = add nsw i32 %14, 1
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca %struct.nlattr*, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  %19 = load i32, i32* @NFTA_TUNNEL_KEY_OPTS_MAX, align 4
  %20 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %21 = load i32, i32* @nft_tunnel_opts_policy, align 4
  %22 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %18, i32 %19, %struct.nlattr* %20, i32 %21, i32* null)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* %12, align 4
  store i32 %26, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %55

27:                                               ; preds = %4
  %28 = load i64, i64* @NFTA_TUNNEL_KEY_OPTS_VXLAN, align 8
  %29 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %28
  %30 = load %struct.nlattr*, %struct.nlattr** %29, align 8
  %31 = icmp ne %struct.nlattr* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load i64, i64* @NFTA_TUNNEL_KEY_OPTS_VXLAN, align 8
  %34 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %33
  %35 = load %struct.nlattr*, %struct.nlattr** %34, align 8
  %36 = load %struct.nft_tunnel_opts*, %struct.nft_tunnel_opts** %9, align 8
  %37 = call i32 @nft_tunnel_obj_vxlan_init(%struct.nlattr* %35, %struct.nft_tunnel_opts* %36)
  store i32 %37, i32* %12, align 4
  br label %53

38:                                               ; preds = %27
  %39 = load i64, i64* @NFTA_TUNNEL_KEY_OPTS_ERSPAN, align 8
  %40 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %39
  %41 = load %struct.nlattr*, %struct.nlattr** %40, align 8
  %42 = icmp ne %struct.nlattr* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load i64, i64* @NFTA_TUNNEL_KEY_OPTS_ERSPAN, align 8
  %45 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %44
  %46 = load %struct.nlattr*, %struct.nlattr** %45, align 8
  %47 = load %struct.nft_tunnel_opts*, %struct.nft_tunnel_opts** %9, align 8
  %48 = call i32 @nft_tunnel_obj_erspan_init(%struct.nlattr* %46, %struct.nft_tunnel_opts* %47)
  store i32 %48, i32* %12, align 4
  br label %52

49:                                               ; preds = %38
  %50 = load i32, i32* @EOPNOTSUPP, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %55

52:                                               ; preds = %43
  br label %53

53:                                               ; preds = %52, %32
  %54 = load i32, i32* %12, align 4
  store i32 %54, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %55

55:                                               ; preds = %53, %49, %25
  %56 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %56)
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, i32*) #2

declare dso_local i32 @nft_tunnel_obj_vxlan_init(%struct.nlattr*, %struct.nft_tunnel_opts*) #2

declare dso_local i32 @nft_tunnel_obj_erspan_init(%struct.nlattr*, %struct.nft_tunnel_opts*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
