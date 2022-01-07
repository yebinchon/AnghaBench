; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_objref.c_nft_objref_map_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_objref.c_nft_objref_map_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_ctx = type { i32, i32 }
%struct.nft_expr = type { i32 }
%struct.nlattr = type { i32 }
%struct.nft_objref_map = type { %struct.nft_set*, %struct.TYPE_2__, i32 }
%struct.nft_set = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@NFTA_OBJREF_SET_NAME = common dso_local global i64 0, align 8
@NFTA_OBJREF_SET_ID = common dso_local global i64 0, align 8
@NFT_SET_OBJECT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NFTA_OBJREF_SET_SREG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nft_ctx*, %struct.nft_expr*, %struct.nlattr**)* @nft_objref_map_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_objref_map_init(%struct.nft_ctx* %0, %struct.nft_expr* %1, %struct.nlattr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nft_ctx*, align 8
  %6 = alloca %struct.nft_expr*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca %struct.nft_objref_map*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nft_set*, align 8
  %11 = alloca i32, align 4
  store %struct.nft_ctx* %0, %struct.nft_ctx** %5, align 8
  store %struct.nft_expr* %1, %struct.nft_expr** %6, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %7, align 8
  %12 = load %struct.nft_expr*, %struct.nft_expr** %6, align 8
  %13 = call %struct.nft_objref_map* @nft_expr_priv(%struct.nft_expr* %12)
  store %struct.nft_objref_map* %13, %struct.nft_objref_map** %8, align 8
  %14 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %15 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @nft_genmask_next(i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %19 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %22 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %25 = load i64, i64* @NFTA_OBJREF_SET_NAME, align 8
  %26 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %25
  %27 = load %struct.nlattr*, %struct.nlattr** %26, align 8
  %28 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %29 = load i64, i64* @NFTA_OBJREF_SET_ID, align 8
  %30 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %29
  %31 = load %struct.nlattr*, %struct.nlattr** %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call %struct.nft_set* @nft_set_lookup_global(i32 %20, i32 %23, %struct.nlattr* %27, %struct.nlattr* %31, i32 %32)
  store %struct.nft_set* %33, %struct.nft_set** %10, align 8
  %34 = load %struct.nft_set*, %struct.nft_set** %10, align 8
  %35 = call i64 @IS_ERR(%struct.nft_set* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %3
  %38 = load %struct.nft_set*, %struct.nft_set** %10, align 8
  %39 = call i32 @PTR_ERR(%struct.nft_set* %38)
  store i32 %39, i32* %4, align 4
  br label %91

40:                                               ; preds = %3
  %41 = load %struct.nft_set*, %struct.nft_set** %10, align 8
  %42 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @NFT_SET_OBJECT, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %40
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %91

50:                                               ; preds = %40
  %51 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %52 = load i64, i64* @NFTA_OBJREF_SET_SREG, align 8
  %53 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %51, i64 %52
  %54 = load %struct.nlattr*, %struct.nlattr** %53, align 8
  %55 = call i32 @nft_parse_register(%struct.nlattr* %54)
  %56 = load %struct.nft_objref_map*, %struct.nft_objref_map** %8, align 8
  %57 = getelementptr inbounds %struct.nft_objref_map, %struct.nft_objref_map* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  %58 = load %struct.nft_objref_map*, %struct.nft_objref_map** %8, align 8
  %59 = getelementptr inbounds %struct.nft_objref_map, %struct.nft_objref_map* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.nft_set*, %struct.nft_set** %10, align 8
  %62 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @nft_validate_register_load(i32 %60, i32 %63)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %50
  %68 = load i32, i32* %11, align 4
  store i32 %68, i32* %4, align 4
  br label %91

69:                                               ; preds = %50
  %70 = load %struct.nft_set*, %struct.nft_set** %10, align 8
  %71 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @NFT_SET_OBJECT, align 4
  %74 = and i32 %72, %73
  %75 = load %struct.nft_objref_map*, %struct.nft_objref_map** %8, align 8
  %76 = getelementptr inbounds %struct.nft_objref_map, %struct.nft_objref_map* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  store i32 %74, i32* %77, align 8
  %78 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %79 = load %struct.nft_set*, %struct.nft_set** %10, align 8
  %80 = load %struct.nft_objref_map*, %struct.nft_objref_map** %8, align 8
  %81 = getelementptr inbounds %struct.nft_objref_map, %struct.nft_objref_map* %80, i32 0, i32 1
  %82 = call i32 @nf_tables_bind_set(%struct.nft_ctx* %78, %struct.nft_set* %79, %struct.TYPE_2__* %81)
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %69
  %86 = load i32, i32* %11, align 4
  store i32 %86, i32* %4, align 4
  br label %91

87:                                               ; preds = %69
  %88 = load %struct.nft_set*, %struct.nft_set** %10, align 8
  %89 = load %struct.nft_objref_map*, %struct.nft_objref_map** %8, align 8
  %90 = getelementptr inbounds %struct.nft_objref_map, %struct.nft_objref_map* %89, i32 0, i32 0
  store %struct.nft_set* %88, %struct.nft_set** %90, align 8
  store i32 0, i32* %4, align 4
  br label %91

91:                                               ; preds = %87, %85, %67, %47, %37
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local %struct.nft_objref_map* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i32 @nft_genmask_next(i32) #1

declare dso_local %struct.nft_set* @nft_set_lookup_global(i32, i32, %struct.nlattr*, %struct.nlattr*, i32) #1

declare dso_local i64 @IS_ERR(%struct.nft_set*) #1

declare dso_local i32 @PTR_ERR(%struct.nft_set*) #1

declare dso_local i32 @nft_parse_register(%struct.nlattr*) #1

declare dso_local i32 @nft_validate_register_load(i32, i32) #1

declare dso_local i32 @nf_tables_bind_set(%struct.nft_ctx*, %struct.nft_set*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
