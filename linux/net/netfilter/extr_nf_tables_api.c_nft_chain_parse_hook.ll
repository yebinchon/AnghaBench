; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_chain_parse_hook.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_chain_parse_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_chain_type = type { i32, i64, i32 }
%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nlattr = type { i32 }
%struct.nft_chain_hook = type { i32, i64, %struct.net_device*, %struct.nft_chain_type* }
%struct.net_device = type { i32 }

@NFTA_HOOK_MAX = common dso_local global i32 0, align 4
@NFTA_CHAIN_HOOK = common dso_local global i64 0, align 8
@nft_hook_policy = common dso_local global i32 0, align 4
@NFTA_HOOK_HOOKNUM = common dso_local global i64 0, align 8
@NFTA_HOOK_PRIORITY = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@chain_type = common dso_local global %struct.nft_chain_type*** null, align 8
@NFT_CHAIN_T_DEFAULT = common dso_local global i64 0, align 8
@NFTA_CHAIN_TYPE = common dso_local global i64 0, align 8
@NF_MAX_HOOKS = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NFT_CHAIN_T_NAT = common dso_local global i64 0, align 8
@NF_IP_PRI_CONNTRACK = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@NFPROTO_NETDEV = common dso_local global i64 0, align 8
@IFNAMSIZ = common dso_local global i32 0, align 4
@NFTA_HOOK_DEV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.nlattr**, %struct.nft_chain_hook*, i64, i32)* @nft_chain_parse_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_chain_parse_hook(%struct.net* %0, %struct.nlattr** %1, %struct.nft_chain_hook* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.nlattr**, align 8
  %9 = alloca %struct.nft_chain_hook*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.nft_chain_type*, align 8
  %15 = alloca %struct.net_device*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  store %struct.net* %0, %struct.net** %7, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %8, align 8
  store %struct.nft_chain_hook* %2, %struct.nft_chain_hook** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %20 = load i32, i32* @NFTA_HOOK_MAX, align 4
  %21 = add nsw i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %12, align 8
  %24 = alloca %struct.nlattr*, i64 %22, align 16
  store i64 %22, i64* %13, align 8
  %25 = load %struct.net*, %struct.net** %7, align 8
  %26 = getelementptr inbounds %struct.net, %struct.net* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @lockdep_assert_held(i32* %27)
  %29 = call i32 (...) @lockdep_nfnl_nft_mutex_not_held()
  %30 = load i32, i32* @NFTA_HOOK_MAX, align 4
  %31 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %32 = load i64, i64* @NFTA_CHAIN_HOOK, align 8
  %33 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %31, i64 %32
  %34 = load %struct.nlattr*, %struct.nlattr** %33, align 8
  %35 = load i32, i32* @nft_hook_policy, align 4
  %36 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %24, i32 %30, %struct.nlattr* %34, i32 %35, i32* null)
  store i32 %36, i32* %16, align 4
  %37 = load i32, i32* %16, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %5
  %40 = load i32, i32* %16, align 4
  store i32 %40, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %206

41:                                               ; preds = %5
  %42 = load i64, i64* @NFTA_HOOK_HOOKNUM, align 8
  %43 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %42
  %44 = load %struct.nlattr*, %struct.nlattr** %43, align 8
  %45 = icmp eq %struct.nlattr* %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = load i64, i64* @NFTA_HOOK_PRIORITY, align 8
  %48 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %47
  %49 = load %struct.nlattr*, %struct.nlattr** %48, align 8
  %50 = icmp eq %struct.nlattr* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %46, %41
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %206

54:                                               ; preds = %46
  %55 = load i64, i64* @NFTA_HOOK_HOOKNUM, align 8
  %56 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %55
  %57 = load %struct.nlattr*, %struct.nlattr** %56, align 8
  %58 = call i32 @nla_get_be32(%struct.nlattr* %57)
  %59 = call i8* @ntohl(i32 %58)
  %60 = ptrtoint i8* %59 to i32
  %61 = load %struct.nft_chain_hook*, %struct.nft_chain_hook** %9, align 8
  %62 = getelementptr inbounds %struct.nft_chain_hook, %struct.nft_chain_hook* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load i64, i64* @NFTA_HOOK_PRIORITY, align 8
  %64 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %63
  %65 = load %struct.nlattr*, %struct.nlattr** %64, align 8
  %66 = call i32 @nla_get_be32(%struct.nlattr* %65)
  %67 = call i8* @ntohl(i32 %66)
  %68 = ptrtoint i8* %67 to i64
  %69 = load %struct.nft_chain_hook*, %struct.nft_chain_hook** %9, align 8
  %70 = getelementptr inbounds %struct.nft_chain_hook, %struct.nft_chain_hook* %69, i32 0, i32 1
  store i64 %68, i64* %70, align 8
  %71 = load %struct.nft_chain_type***, %struct.nft_chain_type**** @chain_type, align 8
  %72 = load i64, i64* %10, align 8
  %73 = getelementptr inbounds %struct.nft_chain_type**, %struct.nft_chain_type*** %71, i64 %72
  %74 = load %struct.nft_chain_type**, %struct.nft_chain_type*** %73, align 8
  %75 = load i64, i64* @NFT_CHAIN_T_DEFAULT, align 8
  %76 = getelementptr inbounds %struct.nft_chain_type*, %struct.nft_chain_type** %74, i64 %75
  %77 = load %struct.nft_chain_type*, %struct.nft_chain_type** %76, align 8
  store %struct.nft_chain_type* %77, %struct.nft_chain_type** %14, align 8
  %78 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %79 = load i64, i64* @NFTA_CHAIN_TYPE, align 8
  %80 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %78, i64 %79
  %81 = load %struct.nlattr*, %struct.nlattr** %80, align 8
  %82 = icmp ne %struct.nlattr* %81, null
  br i1 %82, label %83, label %99

83:                                               ; preds = %54
  %84 = load %struct.net*, %struct.net** %7, align 8
  %85 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %86 = load i64, i64* @NFTA_CHAIN_TYPE, align 8
  %87 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %85, i64 %86
  %88 = load %struct.nlattr*, %struct.nlattr** %87, align 8
  %89 = load i64, i64* %10, align 8
  %90 = load i32, i32* %11, align 4
  %91 = call %struct.nft_chain_type* @nf_tables_chain_type_lookup(%struct.net* %84, %struct.nlattr* %88, i64 %89, i32 %90)
  store %struct.nft_chain_type* %91, %struct.nft_chain_type** %14, align 8
  %92 = load %struct.nft_chain_type*, %struct.nft_chain_type** %14, align 8
  %93 = call i64 @IS_ERR(%struct.nft_chain_type* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %83
  %96 = load %struct.nft_chain_type*, %struct.nft_chain_type** %14, align 8
  %97 = call i32 @PTR_ERR(%struct.nft_chain_type* %96)
  store i32 %97, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %206

98:                                               ; preds = %83
  br label %99

99:                                               ; preds = %98, %54
  %100 = load %struct.nft_chain_hook*, %struct.nft_chain_hook** %9, align 8
  %101 = getelementptr inbounds %struct.nft_chain_hook, %struct.nft_chain_hook* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @NF_MAX_HOOKS, align 4
  %104 = icmp sgt i32 %102, %103
  br i1 %104, label %115, label %105

105:                                              ; preds = %99
  %106 = load %struct.nft_chain_type*, %struct.nft_chain_type** %14, align 8
  %107 = getelementptr inbounds %struct.nft_chain_type, %struct.nft_chain_type* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.nft_chain_hook*, %struct.nft_chain_hook** %9, align 8
  %110 = getelementptr inbounds %struct.nft_chain_hook, %struct.nft_chain_hook* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = shl i32 1, %111
  %113 = and i32 %108, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %105, %99
  %116 = load i32, i32* @EOPNOTSUPP, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %206

118:                                              ; preds = %105
  %119 = load %struct.nft_chain_type*, %struct.nft_chain_type** %14, align 8
  %120 = getelementptr inbounds %struct.nft_chain_type, %struct.nft_chain_type* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @NFT_CHAIN_T_NAT, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %133

124:                                              ; preds = %118
  %125 = load %struct.nft_chain_hook*, %struct.nft_chain_hook** %9, align 8
  %126 = getelementptr inbounds %struct.nft_chain_hook, %struct.nft_chain_hook* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @NF_IP_PRI_CONNTRACK, align 8
  %129 = icmp sle i64 %127, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %124
  %131 = load i32, i32* @EOPNOTSUPP, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %206

133:                                              ; preds = %124, %118
  %134 = load %struct.nft_chain_type*, %struct.nft_chain_type** %14, align 8
  %135 = getelementptr inbounds %struct.nft_chain_type, %struct.nft_chain_type* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @try_module_get(i32 %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %142, label %139

139:                                              ; preds = %133
  %140 = load i32, i32* @ENOENT, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %206

142:                                              ; preds = %133
  %143 = load %struct.nft_chain_type*, %struct.nft_chain_type** %14, align 8
  %144 = load %struct.nft_chain_hook*, %struct.nft_chain_hook** %9, align 8
  %145 = getelementptr inbounds %struct.nft_chain_hook, %struct.nft_chain_hook* %144, i32 0, i32 3
  store %struct.nft_chain_type* %143, %struct.nft_chain_type** %145, align 8
  %146 = load %struct.nft_chain_hook*, %struct.nft_chain_hook** %9, align 8
  %147 = getelementptr inbounds %struct.nft_chain_hook, %struct.nft_chain_hook* %146, i32 0, i32 2
  store %struct.net_device* null, %struct.net_device** %147, align 8
  %148 = load i64, i64* %10, align 8
  %149 = load i64, i64* @NFPROTO_NETDEV, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %192

151:                                              ; preds = %142
  %152 = load i32, i32* @IFNAMSIZ, align 4
  %153 = zext i32 %152 to i64
  %154 = call i8* @llvm.stacksave()
  store i8* %154, i8** %18, align 8
  %155 = alloca i8, i64 %153, align 16
  store i64 %153, i64* %19, align 8
  %156 = load i64, i64* @NFTA_HOOK_DEV, align 8
  %157 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %156
  %158 = load %struct.nlattr*, %struct.nlattr** %157, align 8
  %159 = icmp ne %struct.nlattr* %158, null
  br i1 %159, label %167, label %160

160:                                              ; preds = %151
  %161 = load %struct.nft_chain_type*, %struct.nft_chain_type** %14, align 8
  %162 = getelementptr inbounds %struct.nft_chain_type, %struct.nft_chain_type* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @module_put(i32 %163)
  %165 = load i32, i32* @EOPNOTSUPP, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %188

167:                                              ; preds = %151
  %168 = load i64, i64* @NFTA_HOOK_DEV, align 8
  %169 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %168
  %170 = load %struct.nlattr*, %struct.nlattr** %169, align 8
  %171 = load i32, i32* @IFNAMSIZ, align 4
  %172 = call i32 @nla_strlcpy(i8* %155, %struct.nlattr* %170, i32 %171)
  %173 = load %struct.net*, %struct.net** %7, align 8
  %174 = call %struct.net_device* @__dev_get_by_name(%struct.net* %173, i8* %155)
  store %struct.net_device* %174, %struct.net_device** %15, align 8
  %175 = load %struct.net_device*, %struct.net_device** %15, align 8
  %176 = icmp ne %struct.net_device* %175, null
  br i1 %176, label %184, label %177

177:                                              ; preds = %167
  %178 = load %struct.nft_chain_type*, %struct.nft_chain_type** %14, align 8
  %179 = getelementptr inbounds %struct.nft_chain_type, %struct.nft_chain_type* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @module_put(i32 %180)
  %182 = load i32, i32* @ENOENT, align 4
  %183 = sub nsw i32 0, %182
  store i32 %183, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %188

184:                                              ; preds = %167
  %185 = load %struct.net_device*, %struct.net_device** %15, align 8
  %186 = load %struct.nft_chain_hook*, %struct.nft_chain_hook** %9, align 8
  %187 = getelementptr inbounds %struct.nft_chain_hook, %struct.nft_chain_hook* %186, i32 0, i32 2
  store %struct.net_device* %185, %struct.net_device** %187, align 8
  store i32 0, i32* %17, align 4
  br label %188

188:                                              ; preds = %184, %177, %160
  %189 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %189)
  %190 = load i32, i32* %17, align 4
  switch i32 %190, label %206 [
    i32 0, label %191
  ]

191:                                              ; preds = %188
  br label %205

192:                                              ; preds = %142
  %193 = load i64, i64* @NFTA_HOOK_DEV, align 8
  %194 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %193
  %195 = load %struct.nlattr*, %struct.nlattr** %194, align 8
  %196 = icmp ne %struct.nlattr* %195, null
  br i1 %196, label %197, label %204

197:                                              ; preds = %192
  %198 = load %struct.nft_chain_type*, %struct.nft_chain_type** %14, align 8
  %199 = getelementptr inbounds %struct.nft_chain_type, %struct.nft_chain_type* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = call i32 @module_put(i32 %200)
  %202 = load i32, i32* @EOPNOTSUPP, align 4
  %203 = sub nsw i32 0, %202
  store i32 %203, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %206

204:                                              ; preds = %192
  br label %205

205:                                              ; preds = %204, %191
  store i32 0, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %206

206:                                              ; preds = %205, %197, %188, %139, %130, %115, %95, %51, %39
  %207 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %207)
  %208 = load i32, i32* %6, align 4
  ret i32 %208
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @lockdep_assert_held(i32*) #2

declare dso_local i32 @lockdep_nfnl_nft_mutex_not_held(...) #2

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, i32*) #2

declare dso_local i8* @ntohl(i32) #2

declare dso_local i32 @nla_get_be32(%struct.nlattr*) #2

declare dso_local %struct.nft_chain_type* @nf_tables_chain_type_lookup(%struct.net*, %struct.nlattr*, i64, i32) #2

declare dso_local i64 @IS_ERR(%struct.nft_chain_type*) #2

declare dso_local i32 @PTR_ERR(%struct.nft_chain_type*) #2

declare dso_local i32 @try_module_get(i32) #2

declare dso_local i32 @module_put(i32) #2

declare dso_local i32 @nla_strlcpy(i8*, %struct.nlattr*, i32) #2

declare dso_local %struct.net_device* @__dev_get_by_name(%struct.net*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
