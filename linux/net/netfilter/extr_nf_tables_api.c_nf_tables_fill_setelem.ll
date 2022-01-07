; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_fill_setelem.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_fill_setelem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nft_set = type { i64, i32, i32 }
%struct.nft_set_elem = type { i32 }
%struct.nft_set_ext = type { i32 }
%struct.nlattr = type { i32 }
%struct.nft_userdata = type { i32, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@NFTA_LIST_ELEM = common dso_local global i32 0, align 4
@NFTA_SET_ELEM_KEY = common dso_local global i32 0, align 4
@NFT_DATA_VALUE = common dso_local global i64 0, align 8
@NFT_SET_EXT_DATA = common dso_local global i32 0, align 4
@NFTA_SET_ELEM_DATA = common dso_local global i32 0, align 4
@NFT_DATA_VERDICT = common dso_local global i64 0, align 8
@NFT_SET_EXT_EXPR = common dso_local global i32 0, align 4
@NFTA_SET_ELEM_EXPR = common dso_local global i32 0, align 4
@NFT_SET_EXT_OBJREF = common dso_local global i32 0, align 4
@NFTA_SET_ELEM_OBJREF = common dso_local global i32 0, align 4
@NFT_SET_EXT_FLAGS = common dso_local global i32 0, align 4
@NFTA_SET_ELEM_FLAGS = common dso_local global i32 0, align 4
@NFT_SET_EXT_TIMEOUT = common dso_local global i32 0, align 4
@NFTA_SET_ELEM_TIMEOUT = common dso_local global i32 0, align 4
@NFTA_SET_ELEM_PAD = common dso_local global i32 0, align 4
@NFT_SET_EXT_EXPIRATION = common dso_local global i32 0, align 4
@NFTA_SET_ELEM_EXPIRATION = common dso_local global i32 0, align 4
@NFT_SET_EXT_USERDATA = common dso_local global i32 0, align 4
@NFTA_SET_ELEM_USERDATA = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nft_set*, %struct.nft_set_elem*)* @nf_tables_fill_setelem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_tables_fill_setelem(%struct.sk_buff* %0, %struct.nft_set* %1, %struct.nft_set_elem* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nft_set*, align 8
  %7 = alloca %struct.nft_set_elem*, align 8
  %8 = alloca %struct.nft_set_ext*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.nlattr*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.nft_userdata*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nft_set* %1, %struct.nft_set** %6, align 8
  store %struct.nft_set_elem* %2, %struct.nft_set_elem** %7, align 8
  %14 = load %struct.nft_set*, %struct.nft_set** %6, align 8
  %15 = load %struct.nft_set_elem*, %struct.nft_set_elem** %7, align 8
  %16 = getelementptr inbounds %struct.nft_set_elem, %struct.nft_set_elem* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.nft_set_ext* @nft_set_elem_ext(%struct.nft_set* %14, i32 %17)
  store %struct.nft_set_ext* %18, %struct.nft_set_ext** %8, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = call i8* @skb_tail_pointer(%struct.sk_buff* %19)
  store i8* %20, i8** %9, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = load i32, i32* @NFTA_LIST_ELEM, align 4
  %23 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %21, i32 %22)
  store %struct.nlattr* %23, %struct.nlattr** %10, align 8
  %24 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %25 = icmp eq %struct.nlattr* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  br label %181

27:                                               ; preds = %3
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = load i32, i32* @NFTA_SET_ELEM_KEY, align 4
  %30 = load %struct.nft_set_ext*, %struct.nft_set_ext** %8, align 8
  %31 = call i32 @nft_set_ext_key(%struct.nft_set_ext* %30)
  %32 = load i64, i64* @NFT_DATA_VALUE, align 8
  %33 = load %struct.nft_set*, %struct.nft_set** %6, align 8
  %34 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @nft_data_dump(%struct.sk_buff* %28, i32 %29, i32 %31, i64 %32, i32 %35)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %27
  br label %181

39:                                               ; preds = %27
  %40 = load %struct.nft_set_ext*, %struct.nft_set_ext** %8, align 8
  %41 = load i32, i32* @NFT_SET_EXT_DATA, align 4
  %42 = call i64 @nft_set_ext_exists(%struct.nft_set_ext* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %66

44:                                               ; preds = %39
  %45 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %46 = load i32, i32* @NFTA_SET_ELEM_DATA, align 4
  %47 = load %struct.nft_set_ext*, %struct.nft_set_ext** %8, align 8
  %48 = call i32 @nft_set_ext_data(%struct.nft_set_ext* %47)
  %49 = load %struct.nft_set*, %struct.nft_set** %6, align 8
  %50 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @NFT_DATA_VERDICT, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %44
  %55 = load i64, i64* @NFT_DATA_VERDICT, align 8
  br label %58

56:                                               ; preds = %44
  %57 = load i64, i64* @NFT_DATA_VALUE, align 8
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i64 [ %55, %54 ], [ %57, %56 ]
  %60 = load %struct.nft_set*, %struct.nft_set** %6, align 8
  %61 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @nft_data_dump(%struct.sk_buff* %45, i32 %46, i32 %48, i64 %59, i32 %62)
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  br label %181

66:                                               ; preds = %58, %39
  %67 = load %struct.nft_set_ext*, %struct.nft_set_ext** %8, align 8
  %68 = load i32, i32* @NFT_SET_EXT_EXPR, align 4
  %69 = call i64 @nft_set_ext_exists(%struct.nft_set_ext* %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %66
  %72 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %73 = load i32, i32* @NFTA_SET_ELEM_EXPR, align 4
  %74 = load %struct.nft_set_ext*, %struct.nft_set_ext** %8, align 8
  %75 = call i32 @nft_set_ext_expr(%struct.nft_set_ext* %74)
  %76 = call i64 @nft_expr_dump(%struct.sk_buff* %72, i32 %73, i32 %75)
  %77 = icmp slt i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  br label %181

79:                                               ; preds = %71, %66
  %80 = load %struct.nft_set_ext*, %struct.nft_set_ext** %8, align 8
  %81 = load i32, i32* @NFT_SET_EXT_OBJREF, align 4
  %82 = call i64 @nft_set_ext_exists(%struct.nft_set_ext* %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %96

84:                                               ; preds = %79
  %85 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %86 = load i32, i32* @NFTA_SET_ELEM_OBJREF, align 4
  %87 = load %struct.nft_set_ext*, %struct.nft_set_ext** %8, align 8
  %88 = call %struct.TYPE_4__** @nft_set_ext_obj(%struct.nft_set_ext* %87)
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @nla_put_string(%struct.sk_buff* %85, i32 %86, i32 %92)
  %94 = icmp slt i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %84
  br label %181

96:                                               ; preds = %84, %79
  %97 = load %struct.nft_set_ext*, %struct.nft_set_ext** %8, align 8
  %98 = load i32, i32* @NFT_SET_EXT_FLAGS, align 4
  %99 = call i64 @nft_set_ext_exists(%struct.nft_set_ext* %97, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %111

101:                                              ; preds = %96
  %102 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %103 = load i32, i32* @NFTA_SET_ELEM_FLAGS, align 4
  %104 = load %struct.nft_set_ext*, %struct.nft_set_ext** %8, align 8
  %105 = call i32* @nft_set_ext_flags(%struct.nft_set_ext* %104)
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @htonl(i32 %106)
  %108 = call i64 @nla_put_be32(%struct.sk_buff* %102, i32 %103, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %101
  br label %181

111:                                              ; preds = %101, %96
  %112 = load %struct.nft_set_ext*, %struct.nft_set_ext** %8, align 8
  %113 = load i32, i32* @NFT_SET_EXT_TIMEOUT, align 4
  %114 = call i64 @nft_set_ext_exists(%struct.nft_set_ext* %112, i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %127

116:                                              ; preds = %111
  %117 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %118 = load i32, i32* @NFTA_SET_ELEM_TIMEOUT, align 4
  %119 = load %struct.nft_set_ext*, %struct.nft_set_ext** %8, align 8
  %120 = call i64* @nft_set_ext_timeout(%struct.nft_set_ext* %119)
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @nf_jiffies64_to_msecs(i64 %121)
  %123 = load i32, i32* @NFTA_SET_ELEM_PAD, align 4
  %124 = call i64 @nla_put_be64(%struct.sk_buff* %117, i32 %118, i32 %122, i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %116
  br label %181

127:                                              ; preds = %116, %111
  %128 = load %struct.nft_set_ext*, %struct.nft_set_ext** %8, align 8
  %129 = load i32, i32* @NFT_SET_EXT_EXPIRATION, align 4
  %130 = call i64 @nft_set_ext_exists(%struct.nft_set_ext* %128, i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %156

132:                                              ; preds = %127
  %133 = call i64 (...) @get_jiffies_64()
  store i64 %133, i64* %12, align 8
  %134 = load %struct.nft_set_ext*, %struct.nft_set_ext** %8, align 8
  %135 = call i64* @nft_set_ext_expiration(%struct.nft_set_ext* %134)
  %136 = load i64, i64* %135, align 8
  store i64 %136, i64* %11, align 8
  %137 = load i64, i64* %12, align 8
  %138 = load i64, i64* %11, align 8
  %139 = call i64 @time_before64(i64 %137, i64 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %132
  %142 = load i64, i64* %12, align 8
  %143 = load i64, i64* %11, align 8
  %144 = sub nsw i64 %143, %142
  store i64 %144, i64* %11, align 8
  br label %146

145:                                              ; preds = %132
  store i64 0, i64* %11, align 8
  br label %146

146:                                              ; preds = %145, %141
  %147 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %148 = load i32, i32* @NFTA_SET_ELEM_EXPIRATION, align 4
  %149 = load i64, i64* %11, align 8
  %150 = call i32 @nf_jiffies64_to_msecs(i64 %149)
  %151 = load i32, i32* @NFTA_SET_ELEM_PAD, align 4
  %152 = call i64 @nla_put_be64(%struct.sk_buff* %147, i32 %148, i32 %150, i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %146
  br label %181

155:                                              ; preds = %146
  br label %156

156:                                              ; preds = %155, %127
  %157 = load %struct.nft_set_ext*, %struct.nft_set_ext** %8, align 8
  %158 = load i32, i32* @NFT_SET_EXT_USERDATA, align 4
  %159 = call i64 @nft_set_ext_exists(%struct.nft_set_ext* %157, i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %177

161:                                              ; preds = %156
  %162 = load %struct.nft_set_ext*, %struct.nft_set_ext** %8, align 8
  %163 = call %struct.nft_userdata* @nft_set_ext_userdata(%struct.nft_set_ext* %162)
  store %struct.nft_userdata* %163, %struct.nft_userdata** %13, align 8
  %164 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %165 = load i32, i32* @NFTA_SET_ELEM_USERDATA, align 4
  %166 = load %struct.nft_userdata*, %struct.nft_userdata** %13, align 8
  %167 = getelementptr inbounds %struct.nft_userdata, %struct.nft_userdata* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = add nsw i64 %168, 1
  %170 = load %struct.nft_userdata*, %struct.nft_userdata** %13, align 8
  %171 = getelementptr inbounds %struct.nft_userdata, %struct.nft_userdata* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = call i64 @nla_put(%struct.sk_buff* %164, i32 %165, i64 %169, i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %161
  br label %181

176:                                              ; preds = %161
  br label %177

177:                                              ; preds = %176, %156
  %178 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %179 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %180 = call i32 @nla_nest_end(%struct.sk_buff* %178, %struct.nlattr* %179)
  store i32 0, i32* %4, align 4
  br label %187

181:                                              ; preds = %175, %154, %126, %110, %95, %78, %65, %38, %26
  %182 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %183 = load i8*, i8** %9, align 8
  %184 = call i32 @nlmsg_trim(%struct.sk_buff* %182, i8* %183)
  %185 = load i32, i32* @EMSGSIZE, align 4
  %186 = sub nsw i32 0, %185
  store i32 %186, i32* %4, align 4
  br label %187

187:                                              ; preds = %181, %177
  %188 = load i32, i32* %4, align 4
  ret i32 %188
}

declare dso_local %struct.nft_set_ext* @nft_set_elem_ext(%struct.nft_set*, i32) #1

declare dso_local i8* @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nft_data_dump(%struct.sk_buff*, i32, i32, i64, i32) #1

declare dso_local i32 @nft_set_ext_key(%struct.nft_set_ext*) #1

declare dso_local i64 @nft_set_ext_exists(%struct.nft_set_ext*, i32) #1

declare dso_local i32 @nft_set_ext_data(%struct.nft_set_ext*) #1

declare dso_local i64 @nft_expr_dump(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nft_set_ext_expr(%struct.nft_set_ext*) #1

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i32) #1

declare dso_local %struct.TYPE_4__** @nft_set_ext_obj(%struct.nft_set_ext*) #1

declare dso_local i64 @nla_put_be32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32* @nft_set_ext_flags(%struct.nft_set_ext*) #1

declare dso_local i64 @nla_put_be64(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @nf_jiffies64_to_msecs(i64) #1

declare dso_local i64* @nft_set_ext_timeout(%struct.nft_set_ext*) #1

declare dso_local i64 @get_jiffies_64(...) #1

declare dso_local i64* @nft_set_ext_expiration(%struct.nft_set_ext*) #1

declare dso_local i64 @time_before64(i64, i64) #1

declare dso_local %struct.nft_userdata* @nft_set_ext_userdata(%struct.nft_set_ext*) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i64, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nlmsg_trim(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
