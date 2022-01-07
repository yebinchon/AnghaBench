; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_tunnel.c_nft_tunnel_obj_vxlan_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_tunnel.c_nft_tunnel_obj_vxlan_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.nft_tunnel_opts = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@NFTA_TUNNEL_KEY_VXLAN_MAX = common dso_local global i32 0, align 4
@nft_tunnel_opts_vxlan_policy = common dso_local global i32 0, align 4
@NFTA_TUNNEL_KEY_VXLAN_GBP = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@TUNNEL_VXLAN_OPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr*, %struct.nft_tunnel_opts*)* @nft_tunnel_obj_vxlan_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_tunnel_obj_vxlan_init(%struct.nlattr* %0, %struct.nft_tunnel_opts* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nlattr*, align 8
  %5 = alloca %struct.nft_tunnel_opts*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nlattr* %0, %struct.nlattr** %4, align 8
  store %struct.nft_tunnel_opts* %1, %struct.nft_tunnel_opts** %5, align 8
  %10 = load i32, i32* @NFTA_TUNNEL_KEY_VXLAN_MAX, align 4
  %11 = add nsw i32 %10, 1
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca %struct.nlattr*, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load i32, i32* @NFTA_TUNNEL_KEY_VXLAN_MAX, align 4
  %16 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %17 = load i32, i32* @nft_tunnel_opts_vxlan_policy, align 4
  %18 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %14, i32 %15, %struct.nlattr* %16, i32 %17, i32* null)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %46

23:                                               ; preds = %2
  %24 = load i64, i64* @NFTA_TUNNEL_KEY_VXLAN_GBP, align 8
  %25 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %14, i64 %24
  %26 = load %struct.nlattr*, %struct.nlattr** %25, align 8
  %27 = icmp ne %struct.nlattr* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %46

31:                                               ; preds = %23
  %32 = load i64, i64* @NFTA_TUNNEL_KEY_VXLAN_GBP, align 8
  %33 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %14, i64 %32
  %34 = load %struct.nlattr*, %struct.nlattr** %33, align 8
  %35 = call i32 @nla_get_be32(%struct.nlattr* %34)
  %36 = call i32 @ntohl(i32 %35)
  %37 = load %struct.nft_tunnel_opts*, %struct.nft_tunnel_opts** %5, align 8
  %38 = getelementptr inbounds %struct.nft_tunnel_opts, %struct.nft_tunnel_opts* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i32 %36, i32* %40, align 4
  %41 = load %struct.nft_tunnel_opts*, %struct.nft_tunnel_opts** %5, align 8
  %42 = getelementptr inbounds %struct.nft_tunnel_opts, %struct.nft_tunnel_opts* %41, i32 0, i32 0
  store i32 4, i32* %42, align 4
  %43 = load i32, i32* @TUNNEL_VXLAN_OPT, align 4
  %44 = load %struct.nft_tunnel_opts*, %struct.nft_tunnel_opts** %5, align 8
  %45 = getelementptr inbounds %struct.nft_tunnel_opts, %struct.nft_tunnel_opts* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  store i32 0, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %46

46:                                               ; preds = %31, %28, %21
  %47 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %47)
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, i32*) #2

declare dso_local i32 @ntohl(i32) #2

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
