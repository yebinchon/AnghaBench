; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_lookup.c_nft_lookup_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_lookup.c_nft_lookup_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_ctx = type { i32, i32 }
%struct.nft_expr = type { i32 }
%struct.nlattr = type { i32 }
%struct.nft_lookup = type { i32, %struct.nft_set*, %struct.TYPE_2__, i8*, i8* }
%struct.nft_set = type { i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@NFTA_LOOKUP_SET = common dso_local global i64 0, align 8
@NFTA_LOOKUP_SREG = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NFTA_LOOKUP_SET_ID = common dso_local global i64 0, align 8
@NFTA_LOOKUP_FLAGS = common dso_local global i64 0, align 8
@NFT_LOOKUP_F_INV = common dso_local global i32 0, align 4
@NFT_SET_MAP = common dso_local global i32 0, align 4
@NFTA_LOOKUP_DREG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nft_ctx*, %struct.nft_expr*, %struct.nlattr**)* @nft_lookup_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_lookup_init(%struct.nft_ctx* %0, %struct.nft_expr* %1, %struct.nlattr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nft_ctx*, align 8
  %6 = alloca %struct.nft_expr*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca %struct.nft_lookup*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nft_set*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nft_ctx* %0, %struct.nft_ctx** %5, align 8
  store %struct.nft_expr* %1, %struct.nft_expr** %6, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %7, align 8
  %13 = load %struct.nft_expr*, %struct.nft_expr** %6, align 8
  %14 = call %struct.nft_lookup* @nft_expr_priv(%struct.nft_expr* %13)
  store %struct.nft_lookup* %14, %struct.nft_lookup** %8, align 8
  %15 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %16 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @nft_genmask_next(i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %20 = load i64, i64* @NFTA_LOOKUP_SET, align 8
  %21 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %19, i64 %20
  %22 = load %struct.nlattr*, %struct.nlattr** %21, align 8
  %23 = icmp eq %struct.nlattr* %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %3
  %25 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %26 = load i64, i64* @NFTA_LOOKUP_SREG, align 8
  %27 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %26
  %28 = load %struct.nlattr*, %struct.nlattr** %27, align 8
  %29 = icmp eq %struct.nlattr* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %24, %3
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %196

33:                                               ; preds = %24
  %34 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %35 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %38 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %41 = load i64, i64* @NFTA_LOOKUP_SET, align 8
  %42 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %40, i64 %41
  %43 = load %struct.nlattr*, %struct.nlattr** %42, align 8
  %44 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %45 = load i64, i64* @NFTA_LOOKUP_SET_ID, align 8
  %46 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %44, i64 %45
  %47 = load %struct.nlattr*, %struct.nlattr** %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call %struct.nft_set* @nft_set_lookup_global(i32 %36, i32 %39, %struct.nlattr* %43, %struct.nlattr* %47, i32 %48)
  store %struct.nft_set* %49, %struct.nft_set** %10, align 8
  %50 = load %struct.nft_set*, %struct.nft_set** %10, align 8
  %51 = call i64 @IS_ERR(%struct.nft_set* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %33
  %54 = load %struct.nft_set*, %struct.nft_set** %10, align 8
  %55 = call i32 @PTR_ERR(%struct.nft_set* %54)
  store i32 %55, i32* %4, align 4
  br label %196

56:                                               ; preds = %33
  %57 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %58 = load i64, i64* @NFTA_LOOKUP_SREG, align 8
  %59 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %57, i64 %58
  %60 = load %struct.nlattr*, %struct.nlattr** %59, align 8
  %61 = call i8* @nft_parse_register(%struct.nlattr* %60)
  %62 = load %struct.nft_lookup*, %struct.nft_lookup** %8, align 8
  %63 = getelementptr inbounds %struct.nft_lookup, %struct.nft_lookup* %62, i32 0, i32 4
  store i8* %61, i8** %63, align 8
  %64 = load %struct.nft_lookup*, %struct.nft_lookup** %8, align 8
  %65 = getelementptr inbounds %struct.nft_lookup, %struct.nft_lookup* %64, i32 0, i32 4
  %66 = load i8*, i8** %65, align 8
  %67 = load %struct.nft_set*, %struct.nft_set** %10, align 8
  %68 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @nft_validate_register_load(i8* %66, i32 %69)
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %12, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %56
  %74 = load i32, i32* %12, align 4
  store i32 %74, i32* %4, align 4
  br label %196

75:                                               ; preds = %56
  %76 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %77 = load i64, i64* @NFTA_LOOKUP_FLAGS, align 8
  %78 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %76, i64 %77
  %79 = load %struct.nlattr*, %struct.nlattr** %78, align 8
  %80 = icmp ne %struct.nlattr* %79, null
  br i1 %80, label %81, label %115

81:                                               ; preds = %75
  %82 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %83 = load i64, i64* @NFTA_LOOKUP_FLAGS, align 8
  %84 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %82, i64 %83
  %85 = load %struct.nlattr*, %struct.nlattr** %84, align 8
  %86 = call i32 @nla_get_be32(%struct.nlattr* %85)
  %87 = call i32 @ntohl(i32 %86)
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* @NFT_LOOKUP_F_INV, align 4
  %90 = xor i32 %89, -1
  %91 = and i32 %88, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %81
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %4, align 4
  br label %196

96:                                               ; preds = %81
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* @NFT_LOOKUP_F_INV, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %114

101:                                              ; preds = %96
  %102 = load %struct.nft_set*, %struct.nft_set** %10, align 8
  %103 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @NFT_SET_MAP, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %101
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %4, align 4
  br label %196

111:                                              ; preds = %101
  %112 = load %struct.nft_lookup*, %struct.nft_lookup** %8, align 8
  %113 = getelementptr inbounds %struct.nft_lookup, %struct.nft_lookup* %112, i32 0, i32 0
  store i32 1, i32* %113, align 8
  br label %114

114:                                              ; preds = %111, %96
  br label %115

115:                                              ; preds = %114, %75
  %116 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %117 = load i64, i64* @NFTA_LOOKUP_DREG, align 8
  %118 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %116, i64 %117
  %119 = load %struct.nlattr*, %struct.nlattr** %118, align 8
  %120 = icmp ne %struct.nlattr* %119, null
  br i1 %120, label %121, label %163

121:                                              ; preds = %115
  %122 = load %struct.nft_lookup*, %struct.nft_lookup** %8, align 8
  %123 = getelementptr inbounds %struct.nft_lookup, %struct.nft_lookup* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %121
  %127 = load i32, i32* @EINVAL, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %4, align 4
  br label %196

129:                                              ; preds = %121
  %130 = load %struct.nft_set*, %struct.nft_set** %10, align 8
  %131 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @NFT_SET_MAP, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %129
  %137 = load i32, i32* @EINVAL, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %4, align 4
  br label %196

139:                                              ; preds = %129
  %140 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %141 = load i64, i64* @NFTA_LOOKUP_DREG, align 8
  %142 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %140, i64 %141
  %143 = load %struct.nlattr*, %struct.nlattr** %142, align 8
  %144 = call i8* @nft_parse_register(%struct.nlattr* %143)
  %145 = load %struct.nft_lookup*, %struct.nft_lookup** %8, align 8
  %146 = getelementptr inbounds %struct.nft_lookup, %struct.nft_lookup* %145, i32 0, i32 3
  store i8* %144, i8** %146, align 8
  %147 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %148 = load %struct.nft_lookup*, %struct.nft_lookup** %8, align 8
  %149 = getelementptr inbounds %struct.nft_lookup, %struct.nft_lookup* %148, i32 0, i32 3
  %150 = load i8*, i8** %149, align 8
  %151 = load %struct.nft_set*, %struct.nft_set** %10, align 8
  %152 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.nft_set*, %struct.nft_set** %10, align 8
  %155 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @nft_validate_register_store(%struct.nft_ctx* %147, i8* %150, i32* null, i32 %153, i32 %156)
  store i32 %157, i32* %12, align 4
  %158 = load i32, i32* %12, align 4
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %139
  %161 = load i32, i32* %12, align 4
  store i32 %161, i32* %4, align 4
  br label %196

162:                                              ; preds = %139
  br label %174

163:                                              ; preds = %115
  %164 = load %struct.nft_set*, %struct.nft_set** %10, align 8
  %165 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @NFT_SET_MAP, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %163
  %171 = load i32, i32* @EINVAL, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %4, align 4
  br label %196

173:                                              ; preds = %163
  br label %174

174:                                              ; preds = %173, %162
  %175 = load %struct.nft_set*, %struct.nft_set** %10, align 8
  %176 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @NFT_SET_MAP, align 4
  %179 = and i32 %177, %178
  %180 = load %struct.nft_lookup*, %struct.nft_lookup** %8, align 8
  %181 = getelementptr inbounds %struct.nft_lookup, %struct.nft_lookup* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 0
  store i32 %179, i32* %182, align 8
  %183 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %184 = load %struct.nft_set*, %struct.nft_set** %10, align 8
  %185 = load %struct.nft_lookup*, %struct.nft_lookup** %8, align 8
  %186 = getelementptr inbounds %struct.nft_lookup, %struct.nft_lookup* %185, i32 0, i32 2
  %187 = call i32 @nf_tables_bind_set(%struct.nft_ctx* %183, %struct.nft_set* %184, %struct.TYPE_2__* %186)
  store i32 %187, i32* %12, align 4
  %188 = load i32, i32* %12, align 4
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %174
  %191 = load i32, i32* %12, align 4
  store i32 %191, i32* %4, align 4
  br label %196

192:                                              ; preds = %174
  %193 = load %struct.nft_set*, %struct.nft_set** %10, align 8
  %194 = load %struct.nft_lookup*, %struct.nft_lookup** %8, align 8
  %195 = getelementptr inbounds %struct.nft_lookup, %struct.nft_lookup* %194, i32 0, i32 1
  store %struct.nft_set* %193, %struct.nft_set** %195, align 8
  store i32 0, i32* %4, align 4
  br label %196

196:                                              ; preds = %192, %190, %170, %160, %136, %126, %108, %93, %73, %53, %30
  %197 = load i32, i32* %4, align 4
  ret i32 %197
}

declare dso_local %struct.nft_lookup* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i32 @nft_genmask_next(i32) #1

declare dso_local %struct.nft_set* @nft_set_lookup_global(i32, i32, %struct.nlattr*, %struct.nlattr*, i32) #1

declare dso_local i64 @IS_ERR(%struct.nft_set*) #1

declare dso_local i32 @PTR_ERR(%struct.nft_set*) #1

declare dso_local i8* @nft_parse_register(%struct.nlattr*) #1

declare dso_local i32 @nft_validate_register_load(i8*, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @nla_get_be32(%struct.nlattr*) #1

declare dso_local i32 @nft_validate_register_store(%struct.nft_ctx*, i8*, i32*, i32, i32) #1

declare dso_local i32 @nf_tables_bind_set(%struct.nft_ctx*, %struct.nft_set*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
