; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_flowtable_parse_hook.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_flowtable_parse_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_ctx = type { i32 }
%struct.nlattr = type { i32 }
%struct.nft_flowtable = type { i32, i32, i32, %struct.nf_hook_ops*, %struct.TYPE_4__ }
%struct.nf_hook_ops = type { i32, i32, %struct.net_device*, i32, %struct.TYPE_4__*, i32 }
%struct.net_device = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@NFT_FLOWTABLE_DEVICE_MAX = common dso_local global i32 0, align 4
@NFTA_FLOWTABLE_HOOK_MAX = common dso_local global i32 0, align 4
@nft_flowtable_hook_policy = common dso_local global i32 0, align 4
@NFTA_FLOWTABLE_HOOK_NUM = common dso_local global i64 0, align 8
@NFTA_FLOWTABLE_HOOK_PRIORITY = common dso_local global i64 0, align 8
@NFTA_FLOWTABLE_HOOK_DEVS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NF_NETDEV_INGRESS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NFPROTO_NETDEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nft_ctx*, %struct.nlattr*, %struct.nft_flowtable*)* @nf_tables_flowtable_parse_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_tables_flowtable_parse_hook(%struct.nft_ctx* %0, %struct.nlattr* %1, %struct.nft_flowtable* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nft_ctx*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca %struct.nft_flowtable*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.nf_hook_ops*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.nft_ctx* %0, %struct.nft_ctx** %5, align 8
  store %struct.nlattr* %1, %struct.nlattr** %6, align 8
  store %struct.nft_flowtable* %2, %struct.nft_flowtable** %7, align 8
  %18 = load i32, i32* @NFT_FLOWTABLE_DEVICE_MAX, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %8, align 8
  %21 = alloca %struct.net_device*, i64 %19, align 16
  store i64 %19, i64* %9, align 8
  %22 = load i32, i32* @NFTA_FLOWTABLE_HOOK_MAX, align 4
  %23 = add nsw i32 %22, 1
  %24 = zext i32 %23 to i64
  %25 = alloca %struct.nlattr*, i64 %24, align 16
  store i64 %24, i64* %10, align 8
  store i32 0, i32* %15, align 4
  %26 = load i32, i32* @NFTA_FLOWTABLE_HOOK_MAX, align 4
  %27 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %28 = load i32, i32* @nft_flowtable_hook_policy, align 4
  %29 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %25, i32 %26, %struct.nlattr* %27, i32 %28, i32* null)
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %14, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %3
  %33 = load i32, i32* %14, align 4
  store i32 %33, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %168

34:                                               ; preds = %3
  %35 = load i64, i64* @NFTA_FLOWTABLE_HOOK_NUM, align 8
  %36 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %35
  %37 = load %struct.nlattr*, %struct.nlattr** %36, align 8
  %38 = icmp ne %struct.nlattr* %37, null
  br i1 %38, label %39, label %49

39:                                               ; preds = %34
  %40 = load i64, i64* @NFTA_FLOWTABLE_HOOK_PRIORITY, align 8
  %41 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %40
  %42 = load %struct.nlattr*, %struct.nlattr** %41, align 8
  %43 = icmp ne %struct.nlattr* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load i64, i64* @NFTA_FLOWTABLE_HOOK_DEVS, align 8
  %46 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %45
  %47 = load %struct.nlattr*, %struct.nlattr** %46, align 8
  %48 = icmp ne %struct.nlattr* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %44, %39, %34
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %168

52:                                               ; preds = %44
  %53 = load i64, i64* @NFTA_FLOWTABLE_HOOK_NUM, align 8
  %54 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %53
  %55 = load %struct.nlattr*, %struct.nlattr** %54, align 8
  %56 = call i32 @nla_get_be32(%struct.nlattr* %55)
  %57 = call i32 @ntohl(i32 %56)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* @NF_NETDEV_INGRESS, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %52
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %168

64:                                               ; preds = %52
  %65 = load i64, i64* @NFTA_FLOWTABLE_HOOK_PRIORITY, align 8
  %66 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %65
  %67 = load %struct.nlattr*, %struct.nlattr** %66, align 8
  %68 = call i32 @nla_get_be32(%struct.nlattr* %67)
  %69 = call i32 @ntohl(i32 %68)
  store i32 %69, i32* %13, align 4
  %70 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %71 = load i64, i64* @NFTA_FLOWTABLE_HOOK_DEVS, align 8
  %72 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %71
  %73 = load %struct.nlattr*, %struct.nlattr** %72, align 8
  %74 = call i32 @nf_tables_parse_devices(%struct.nft_ctx* %70, %struct.nlattr* %73, %struct.net_device** %21, i32* %15)
  store i32 %74, i32* %14, align 4
  %75 = load i32, i32* %14, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %64
  %78 = load i32, i32* %14, align 4
  store i32 %78, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %168

79:                                               ; preds = %64
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* @GFP_KERNEL, align 4
  %82 = call %struct.nf_hook_ops* @kcalloc(i32 %80, i32 40, i32 %81)
  store %struct.nf_hook_ops* %82, %struct.nf_hook_ops** %11, align 8
  %83 = load %struct.nf_hook_ops*, %struct.nf_hook_ops** %11, align 8
  %84 = icmp ne %struct.nf_hook_ops* %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %79
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %168

88:                                               ; preds = %79
  %89 = load i32, i32* %12, align 4
  %90 = load %struct.nft_flowtable*, %struct.nft_flowtable** %7, align 8
  %91 = getelementptr inbounds %struct.nft_flowtable, %struct.nft_flowtable* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load i32, i32* %13, align 4
  %93 = load %struct.nft_flowtable*, %struct.nft_flowtable** %7, align 8
  %94 = getelementptr inbounds %struct.nft_flowtable, %struct.nft_flowtable* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load %struct.nf_hook_ops*, %struct.nf_hook_ops** %11, align 8
  %96 = load %struct.nft_flowtable*, %struct.nft_flowtable** %7, align 8
  %97 = getelementptr inbounds %struct.nft_flowtable, %struct.nft_flowtable* %96, i32 0, i32 3
  store %struct.nf_hook_ops* %95, %struct.nf_hook_ops** %97, align 8
  %98 = load i32, i32* %15, align 4
  %99 = load %struct.nft_flowtable*, %struct.nft_flowtable** %7, align 8
  %100 = getelementptr inbounds %struct.nft_flowtable, %struct.nft_flowtable* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 8
  store i32 0, i32* %16, align 4
  br label %101

101:                                              ; preds = %163, %88
  %102 = load i32, i32* %16, align 4
  %103 = load i32, i32* %15, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %166

105:                                              ; preds = %101
  %106 = load i32, i32* @NFPROTO_NETDEV, align 4
  %107 = load %struct.nft_flowtable*, %struct.nft_flowtable** %7, align 8
  %108 = getelementptr inbounds %struct.nft_flowtable, %struct.nft_flowtable* %107, i32 0, i32 3
  %109 = load %struct.nf_hook_ops*, %struct.nf_hook_ops** %108, align 8
  %110 = load i32, i32* %16, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.nf_hook_ops, %struct.nf_hook_ops* %109, i64 %111
  %113 = getelementptr inbounds %struct.nf_hook_ops, %struct.nf_hook_ops* %112, i32 0, i32 5
  store i32 %106, i32* %113, align 8
  %114 = load i32, i32* %12, align 4
  %115 = load %struct.nft_flowtable*, %struct.nft_flowtable** %7, align 8
  %116 = getelementptr inbounds %struct.nft_flowtable, %struct.nft_flowtable* %115, i32 0, i32 3
  %117 = load %struct.nf_hook_ops*, %struct.nf_hook_ops** %116, align 8
  %118 = load i32, i32* %16, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.nf_hook_ops, %struct.nf_hook_ops* %117, i64 %119
  %121 = getelementptr inbounds %struct.nf_hook_ops, %struct.nf_hook_ops* %120, i32 0, i32 0
  store i32 %114, i32* %121, align 8
  %122 = load i32, i32* %13, align 4
  %123 = load %struct.nft_flowtable*, %struct.nft_flowtable** %7, align 8
  %124 = getelementptr inbounds %struct.nft_flowtable, %struct.nft_flowtable* %123, i32 0, i32 3
  %125 = load %struct.nf_hook_ops*, %struct.nf_hook_ops** %124, align 8
  %126 = load i32, i32* %16, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.nf_hook_ops, %struct.nf_hook_ops* %125, i64 %127
  %129 = getelementptr inbounds %struct.nf_hook_ops, %struct.nf_hook_ops* %128, i32 0, i32 1
  store i32 %122, i32* %129, align 4
  %130 = load %struct.nft_flowtable*, %struct.nft_flowtable** %7, align 8
  %131 = getelementptr inbounds %struct.nft_flowtable, %struct.nft_flowtable* %130, i32 0, i32 4
  %132 = load %struct.nft_flowtable*, %struct.nft_flowtable** %7, align 8
  %133 = getelementptr inbounds %struct.nft_flowtable, %struct.nft_flowtable* %132, i32 0, i32 3
  %134 = load %struct.nf_hook_ops*, %struct.nf_hook_ops** %133, align 8
  %135 = load i32, i32* %16, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.nf_hook_ops, %struct.nf_hook_ops* %134, i64 %136
  %138 = getelementptr inbounds %struct.nf_hook_ops, %struct.nf_hook_ops* %137, i32 0, i32 4
  store %struct.TYPE_4__* %131, %struct.TYPE_4__** %138, align 8
  %139 = load %struct.nft_flowtable*, %struct.nft_flowtable** %7, align 8
  %140 = getelementptr inbounds %struct.nft_flowtable, %struct.nft_flowtable* %139, i32 0, i32 4
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.nft_flowtable*, %struct.nft_flowtable** %7, align 8
  %146 = getelementptr inbounds %struct.nft_flowtable, %struct.nft_flowtable* %145, i32 0, i32 3
  %147 = load %struct.nf_hook_ops*, %struct.nf_hook_ops** %146, align 8
  %148 = load i32, i32* %16, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.nf_hook_ops, %struct.nf_hook_ops* %147, i64 %149
  %151 = getelementptr inbounds %struct.nf_hook_ops, %struct.nf_hook_ops* %150, i32 0, i32 3
  store i32 %144, i32* %151, align 8
  %152 = load i32, i32* %16, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.net_device*, %struct.net_device** %21, i64 %153
  %155 = load %struct.net_device*, %struct.net_device** %154, align 8
  %156 = load %struct.nft_flowtable*, %struct.nft_flowtable** %7, align 8
  %157 = getelementptr inbounds %struct.nft_flowtable, %struct.nft_flowtable* %156, i32 0, i32 3
  %158 = load %struct.nf_hook_ops*, %struct.nf_hook_ops** %157, align 8
  %159 = load i32, i32* %16, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.nf_hook_ops, %struct.nf_hook_ops* %158, i64 %160
  %162 = getelementptr inbounds %struct.nf_hook_ops, %struct.nf_hook_ops* %161, i32 0, i32 2
  store %struct.net_device* %155, %struct.net_device** %162, align 8
  br label %163

163:                                              ; preds = %105
  %164 = load i32, i32* %16, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %16, align 4
  br label %101

166:                                              ; preds = %101
  %167 = load i32, i32* %14, align 4
  store i32 %167, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %168

168:                                              ; preds = %166, %85, %77, %61, %49, %32
  %169 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %169)
  %170 = load i32, i32* %4, align 4
  ret i32 %170
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, i32*) #2

declare dso_local i32 @ntohl(i32) #2

declare dso_local i32 @nla_get_be32(%struct.nlattr*) #2

declare dso_local i32 @nf_tables_parse_devices(%struct.nft_ctx*, %struct.nlattr*, %struct.net_device**, i32*) #2

declare dso_local %struct.nf_hook_ops* @kcalloc(i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
