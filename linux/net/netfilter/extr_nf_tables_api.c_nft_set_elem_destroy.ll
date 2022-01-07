; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_set_elem_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_set_elem_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_set = type { i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.nft_set_ext = type { i32 }
%struct.nft_ctx = type { i32, i32 }
%struct.nft_expr = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32 (%struct.nft_ctx*, %struct.nft_expr*)* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@NFT_DATA_VALUE = common dso_local global i32 0, align 4
@NFT_SET_EXT_DATA = common dso_local global i32 0, align 4
@NFT_SET_EXT_EXPR = common dso_local global i32 0, align 4
@NFT_SET_EXT_OBJREF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nft_set_elem_destroy(%struct.nft_set* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.nft_set*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nft_set_ext*, align 8
  %8 = alloca %struct.nft_ctx, align 4
  %9 = alloca %struct.nft_expr*, align 8
  store %struct.nft_set* %0, %struct.nft_set** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.nft_set*, %struct.nft_set** %4, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call %struct.nft_set_ext* @nft_set_elem_ext(%struct.nft_set* %10, i8* %11)
  store %struct.nft_set_ext* %12, %struct.nft_set_ext** %7, align 8
  %13 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %8, i32 0, i32 0
  %14 = load %struct.nft_set*, %struct.nft_set** %4, align 8
  %15 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %14, i32 0, i32 1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %13, align 4
  %19 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %8, i32 0, i32 1
  %20 = load %struct.nft_set*, %struct.nft_set** %4, align 8
  %21 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %20, i32 0, i32 2
  %22 = call i32 @read_pnet(i32* %21)
  store i32 %22, i32* %19, align 4
  %23 = load %struct.nft_set_ext*, %struct.nft_set_ext** %7, align 8
  %24 = call i32 @nft_set_ext_key(%struct.nft_set_ext* %23)
  %25 = load i32, i32* @NFT_DATA_VALUE, align 4
  %26 = call i32 @nft_data_release(i32 %24, i32 %25)
  %27 = load %struct.nft_set_ext*, %struct.nft_set_ext** %7, align 8
  %28 = load i32, i32* @NFT_SET_EXT_DATA, align 4
  %29 = call i64 @nft_set_ext_exists(%struct.nft_set_ext* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %3
  %32 = load %struct.nft_set_ext*, %struct.nft_set_ext** %7, align 8
  %33 = call i32 @nft_set_ext_data(%struct.nft_set_ext* %32)
  %34 = load %struct.nft_set*, %struct.nft_set** %4, align 8
  %35 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @nft_data_release(i32 %33, i32 %36)
  br label %38

38:                                               ; preds = %31, %3
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %75

41:                                               ; preds = %38
  %42 = load %struct.nft_set_ext*, %struct.nft_set_ext** %7, align 8
  %43 = load i32, i32* @NFT_SET_EXT_EXPR, align 4
  %44 = call i64 @nft_set_ext_exists(%struct.nft_set_ext* %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %75

46:                                               ; preds = %41
  %47 = load %struct.nft_set_ext*, %struct.nft_set_ext** %7, align 8
  %48 = call %struct.nft_expr* @nft_set_ext_expr(%struct.nft_set_ext* %47)
  store %struct.nft_expr* %48, %struct.nft_expr** %9, align 8
  %49 = load %struct.nft_expr*, %struct.nft_expr** %9, align 8
  %50 = getelementptr inbounds %struct.nft_expr, %struct.nft_expr* %49, i32 0, i32 0
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = load i32 (%struct.nft_ctx*, %struct.nft_expr*)*, i32 (%struct.nft_ctx*, %struct.nft_expr*)** %52, align 8
  %54 = icmp ne i32 (%struct.nft_ctx*, %struct.nft_expr*)* %53, null
  br i1 %54, label %55, label %71

55:                                               ; preds = %46
  %56 = load %struct.nft_expr*, %struct.nft_expr** %9, align 8
  %57 = getelementptr inbounds %struct.nft_expr, %struct.nft_expr* %56, i32 0, i32 0
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load i32 (%struct.nft_ctx*, %struct.nft_expr*)*, i32 (%struct.nft_ctx*, %struct.nft_expr*)** %59, align 8
  %61 = load %struct.nft_expr*, %struct.nft_expr** %9, align 8
  %62 = call i32 %60(%struct.nft_ctx* %8, %struct.nft_expr* %61)
  %63 = load %struct.nft_expr*, %struct.nft_expr** %9, align 8
  %64 = getelementptr inbounds %struct.nft_expr, %struct.nft_expr* %63, i32 0, i32 0
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @module_put(i32 %69)
  br label %74

71:                                               ; preds = %46
  %72 = load %struct.nft_expr*, %struct.nft_expr** %9, align 8
  %73 = call i32 @nf_tables_expr_destroy(%struct.nft_ctx* %8, %struct.nft_expr* %72)
  br label %74

74:                                               ; preds = %71, %55
  br label %75

75:                                               ; preds = %74, %41, %38
  %76 = load %struct.nft_set_ext*, %struct.nft_set_ext** %7, align 8
  %77 = load i32, i32* @NFT_SET_EXT_OBJREF, align 4
  %78 = call i64 @nft_set_ext_exists(%struct.nft_set_ext* %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %75
  %81 = load %struct.nft_set_ext*, %struct.nft_set_ext** %7, align 8
  %82 = call %struct.TYPE_8__** @nft_set_ext_obj(%struct.nft_set_ext* %81)
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %80, %75
  %88 = load i8*, i8** %5, align 8
  %89 = call i32 @kfree(i8* %88)
  ret void
}

declare dso_local %struct.nft_set_ext* @nft_set_elem_ext(%struct.nft_set*, i8*) #1

declare dso_local i32 @read_pnet(i32*) #1

declare dso_local i32 @nft_data_release(i32, i32) #1

declare dso_local i32 @nft_set_ext_key(%struct.nft_set_ext*) #1

declare dso_local i64 @nft_set_ext_exists(%struct.nft_set_ext*, i32) #1

declare dso_local i32 @nft_set_ext_data(%struct.nft_set_ext*) #1

declare dso_local %struct.nft_expr* @nft_set_ext_expr(%struct.nft_set_ext*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @nf_tables_expr_destroy(%struct.nft_ctx*, %struct.nft_expr*) #1

declare dso_local %struct.TYPE_8__** @nft_set_ext_obj(%struct.nft_set_ext*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
