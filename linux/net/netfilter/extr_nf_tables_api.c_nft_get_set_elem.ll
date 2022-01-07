; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_get_set_elem.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_get_set_elem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_ctx = type { i32, i32, i32 }
%struct.nft_set = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8* (i32, %struct.nft_set*, %struct.nft_set_elem*, i32)* }
%struct.nft_set_elem = type { i8*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.nlattr = type { i32 }
%struct.nft_data_desc = type { i64, i64 }
%struct.sk_buff = type { i32 }

@NFTA_SET_ELEM_MAX = common dso_local global i32 0, align 4
@nft_set_elem_policy = common dso_local global i32 0, align 4
@NFTA_SET_ELEM_KEY = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NFTA_SET_ELEM_FLAGS = common dso_local global i64 0, align 8
@NFT_DATA_VALUE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@NLMSG_GOODSIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@NFT_MSG_NEWSETELEM = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nft_ctx*, %struct.nft_set*, %struct.nlattr*)* @nft_get_set_elem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_get_set_elem(%struct.nft_ctx* %0, %struct.nft_set* %1, %struct.nlattr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nft_ctx*, align 8
  %6 = alloca %struct.nft_set*, align 8
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.nft_data_desc, align 8
  %11 = alloca %struct.nft_set_elem, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.nft_ctx* %0, %struct.nft_ctx** %5, align 8
  store %struct.nft_set* %1, %struct.nft_set** %6, align 8
  store %struct.nlattr* %2, %struct.nlattr** %7, align 8
  %17 = load i32, i32* @NFTA_SET_ELEM_MAX, align 4
  %18 = add nsw i32 %17, 1
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %8, align 8
  %21 = alloca %struct.nlattr*, i64 %19, align 16
  store i64 %19, i64* %9, align 8
  store i32 0, i32* %13, align 4
  %22 = load i32, i32* @NFTA_SET_ELEM_MAX, align 4
  %23 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %24 = load i32, i32* @nft_set_elem_policy, align 4
  %25 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %21, i32 %22, %struct.nlattr* %23, i32 %24, i32* null)
  store i32 %25, i32* %15, align 4
  %26 = load i32, i32* %15, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* %15, align 4
  store i32 %29, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %149

30:                                               ; preds = %3
  %31 = load i64, i64* @NFTA_SET_ELEM_KEY, align 8
  %32 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %21, i64 %31
  %33 = load %struct.nlattr*, %struct.nlattr** %32, align 8
  %34 = icmp ne %struct.nlattr* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %149

38:                                               ; preds = %30
  %39 = load %struct.nft_set*, %struct.nft_set** %6, align 8
  %40 = load i64, i64* @NFTA_SET_ELEM_FLAGS, align 8
  %41 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %21, i64 %40
  %42 = load %struct.nlattr*, %struct.nlattr** %41, align 8
  %43 = call i32 @nft_setelem_parse_flags(%struct.nft_set* %39, %struct.nlattr* %42, i32* %13)
  store i32 %43, i32* %15, align 4
  %44 = load i32, i32* %15, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = load i32, i32* %15, align 4
  store i32 %47, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %149

48:                                               ; preds = %38
  %49 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %50 = getelementptr inbounds %struct.nft_set_elem, %struct.nft_set_elem* %11, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i64, i64* @NFTA_SET_ELEM_KEY, align 8
  %53 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %21, i64 %52
  %54 = load %struct.nlattr*, %struct.nlattr** %53, align 8
  %55 = call i32 @nft_data_init(%struct.nft_ctx* %49, i32* %51, i32 4, %struct.nft_data_desc* %10, %struct.nlattr* %54)
  store i32 %55, i32* %15, align 4
  %56 = load i32, i32* %15, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %48
  %59 = load i32, i32* %15, align 4
  store i32 %59, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %149

60:                                               ; preds = %48
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %15, align 4
  %63 = getelementptr inbounds %struct.nft_data_desc, %struct.nft_data_desc* %10, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @NFT_DATA_VALUE, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %74, label %67

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct.nft_data_desc, %struct.nft_data_desc* %10, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.nft_set*, %struct.nft_set** %6, align 8
  %71 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %69, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %67, %60
  %75 = load i32, i32* %15, align 4
  store i32 %75, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %149

76:                                               ; preds = %67
  %77 = load %struct.nft_set*, %struct.nft_set** %6, align 8
  %78 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %77, i32 0, i32 1
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i8* (i32, %struct.nft_set*, %struct.nft_set_elem*, i32)*, i8* (i32, %struct.nft_set*, %struct.nft_set_elem*, i32)** %80, align 8
  %82 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %83 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.nft_set*, %struct.nft_set** %6, align 8
  %86 = load i32, i32* %13, align 4
  %87 = call i8* %81(i32 %84, %struct.nft_set* %85, %struct.nft_set_elem* %11, i32 %86)
  store i8* %87, i8** %14, align 8
  %88 = load i8*, i8** %14, align 8
  %89 = call i64 @IS_ERR(i8* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %76
  %92 = load i8*, i8** %14, align 8
  %93 = call i32 @PTR_ERR(i8* %92)
  store i32 %93, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %149

94:                                               ; preds = %76
  %95 = load i8*, i8** %14, align 8
  %96 = getelementptr inbounds %struct.nft_set_elem, %struct.nft_set_elem* %11, i32 0, i32 0
  store i8* %95, i8** %96, align 8
  %97 = load i32, i32* @ENOMEM, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %15, align 4
  %99 = load i32, i32* @NLMSG_GOODSIZE, align 4
  %100 = load i32, i32* @GFP_ATOMIC, align 4
  %101 = call %struct.sk_buff* @nlmsg_new(i32 %99, i32 %100)
  store %struct.sk_buff* %101, %struct.sk_buff** %12, align 8
  %102 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %103 = icmp eq %struct.sk_buff* %102, null
  br i1 %103, label %104, label %105

104:                                              ; preds = %94
  br label %137

105:                                              ; preds = %94
  %106 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %107 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %108 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %109 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %112 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @NFT_MSG_NEWSETELEM, align 4
  %115 = load %struct.nft_set*, %struct.nft_set** %6, align 8
  %116 = call i32 @nf_tables_fill_setelem_info(%struct.sk_buff* %106, %struct.nft_ctx* %107, i32 %110, i32 %113, i32 %114, i32 0, %struct.nft_set* %115, %struct.nft_set_elem* %11)
  store i32 %116, i32* %15, align 4
  %117 = load i32, i32* %15, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %105
  br label %134

120:                                              ; preds = %105
  %121 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %122 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %123 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %126 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @MSG_DONTWAIT, align 4
  %129 = call i32 @nfnetlink_unicast(%struct.sk_buff* %121, i32 %124, i32 %127, i32 %128)
  store i32 %129, i32* %15, align 4
  %130 = load i32, i32* %15, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %120
  br label %137

133:                                              ; preds = %120
  store i32 0, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %149

134:                                              ; preds = %119
  %135 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %136 = call i32 @kfree_skb(%struct.sk_buff* %135)
  br label %137

137:                                              ; preds = %134, %132, %104
  %138 = load i32, i32* %15, align 4
  %139 = load i32, i32* @EAGAIN, align 4
  %140 = sub nsw i32 0, %139
  %141 = icmp eq i32 %138, %140
  br i1 %141, label %142, label %145

142:                                              ; preds = %137
  %143 = load i32, i32* @ENOBUFS, align 4
  %144 = sub nsw i32 0, %143
  br label %147

145:                                              ; preds = %137
  %146 = load i32, i32* %15, align 4
  br label %147

147:                                              ; preds = %145, %142
  %148 = phi i32 [ %144, %142 ], [ %146, %145 ]
  store i32 %148, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %149

149:                                              ; preds = %147, %133, %91, %74, %58, %46, %35, %28
  %150 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %150)
  %151 = load i32, i32* %4, align 4
  ret i32 %151
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, i32*) #2

declare dso_local i32 @nft_setelem_parse_flags(%struct.nft_set*, %struct.nlattr*, i32*) #2

declare dso_local i32 @nft_data_init(%struct.nft_ctx*, i32*, i32, %struct.nft_data_desc*, %struct.nlattr*) #2

declare dso_local i64 @IS_ERR(i8*) #2

declare dso_local i32 @PTR_ERR(i8*) #2

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #2

declare dso_local i32 @nf_tables_fill_setelem_info(%struct.sk_buff*, %struct.nft_ctx*, i32, i32, i32, i32, %struct.nft_set*, %struct.nft_set_elem*) #2

declare dso_local i32 @nfnetlink_unicast(%struct.sk_buff*, i32, i32, i32) #2

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
