; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_set_elem_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_set_elem_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_set = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.nft_set_ext_tmpl = type { i64 }
%struct.nft_set_ext = type { i32 }

@NFT_SET_EXT_DATA = common dso_local global i32 0, align 4
@NFT_SET_EXT_EXPIRATION = common dso_local global i32 0, align 4
@NFT_SET_EXT_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @nft_set_elem_init(%struct.nft_set* %0, %struct.nft_set_ext_tmpl* %1, i32* %2, i32* %3, i64 %4, i64 %5, i32 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca %struct.nft_set*, align 8
  %10 = alloca %struct.nft_set_ext_tmpl*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.nft_set_ext*, align 8
  %17 = alloca i8*, align 8
  store %struct.nft_set* %0, %struct.nft_set** %9, align 8
  store %struct.nft_set_ext_tmpl* %1, %struct.nft_set_ext_tmpl** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  %18 = load %struct.nft_set*, %struct.nft_set** %9, align 8
  %19 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.nft_set_ext_tmpl*, %struct.nft_set_ext_tmpl** %10, align 8
  %24 = getelementptr inbounds %struct.nft_set_ext_tmpl, %struct.nft_set_ext_tmpl* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %22, %25
  %27 = load i32, i32* %15, align 4
  %28 = call i8* @kzalloc(i64 %26, i32 %27)
  store i8* %28, i8** %17, align 8
  %29 = load i8*, i8** %17, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %7
  store i8* null, i8** %8, align 8
  br label %89

32:                                               ; preds = %7
  %33 = load %struct.nft_set*, %struct.nft_set** %9, align 8
  %34 = load i8*, i8** %17, align 8
  %35 = call %struct.nft_set_ext* @nft_set_elem_ext(%struct.nft_set* %33, i8* %34)
  store %struct.nft_set_ext* %35, %struct.nft_set_ext** %16, align 8
  %36 = load %struct.nft_set_ext*, %struct.nft_set_ext** %16, align 8
  %37 = load %struct.nft_set_ext_tmpl*, %struct.nft_set_ext_tmpl** %10, align 8
  %38 = call i32 @nft_set_ext_init(%struct.nft_set_ext* %36, %struct.nft_set_ext_tmpl* %37)
  %39 = load %struct.nft_set_ext*, %struct.nft_set_ext** %16, align 8
  %40 = call i32 @nft_set_ext_key(%struct.nft_set_ext* %39)
  %41 = load i32*, i32** %11, align 8
  %42 = load %struct.nft_set*, %struct.nft_set** %9, align 8
  %43 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @memcpy(i32 %40, i32* %41, i32 %44)
  %46 = load %struct.nft_set_ext*, %struct.nft_set_ext** %16, align 8
  %47 = load i32, i32* @NFT_SET_EXT_DATA, align 4
  %48 = call i64 @nft_set_ext_exists(%struct.nft_set_ext* %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %32
  %51 = load %struct.nft_set_ext*, %struct.nft_set_ext** %16, align 8
  %52 = call i32 @nft_set_ext_data(%struct.nft_set_ext* %51)
  %53 = load i32*, i32** %12, align 8
  %54 = load %struct.nft_set*, %struct.nft_set** %9, align 8
  %55 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @memcpy(i32 %52, i32* %53, i32 %56)
  br label %58

58:                                               ; preds = %50, %32
  %59 = load %struct.nft_set_ext*, %struct.nft_set_ext** %16, align 8
  %60 = load i32, i32* @NFT_SET_EXT_EXPIRATION, align 4
  %61 = call i64 @nft_set_ext_exists(%struct.nft_set_ext* %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %78

63:                                               ; preds = %58
  %64 = call i64 (...) @get_jiffies_64()
  %65 = load i64, i64* %14, align 8
  %66 = add nsw i64 %64, %65
  %67 = load %struct.nft_set_ext*, %struct.nft_set_ext** %16, align 8
  %68 = call i64* @nft_set_ext_expiration(%struct.nft_set_ext* %67)
  store i64 %66, i64* %68, align 8
  %69 = load i64, i64* %14, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %63
  %72 = load i64, i64* %13, align 8
  %73 = load %struct.nft_set_ext*, %struct.nft_set_ext** %16, align 8
  %74 = call i64* @nft_set_ext_expiration(%struct.nft_set_ext* %73)
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %75, %72
  store i64 %76, i64* %74, align 8
  br label %77

77:                                               ; preds = %71, %63
  br label %78

78:                                               ; preds = %77, %58
  %79 = load %struct.nft_set_ext*, %struct.nft_set_ext** %16, align 8
  %80 = load i32, i32* @NFT_SET_EXT_TIMEOUT, align 4
  %81 = call i64 @nft_set_ext_exists(%struct.nft_set_ext* %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load i64, i64* %13, align 8
  %85 = load %struct.nft_set_ext*, %struct.nft_set_ext** %16, align 8
  %86 = call i64* @nft_set_ext_timeout(%struct.nft_set_ext* %85)
  store i64 %84, i64* %86, align 8
  br label %87

87:                                               ; preds = %83, %78
  %88 = load i8*, i8** %17, align 8
  store i8* %88, i8** %8, align 8
  br label %89

89:                                               ; preds = %87, %31
  %90 = load i8*, i8** %8, align 8
  ret i8* %90
}

declare dso_local i8* @kzalloc(i64, i32) #1

declare dso_local %struct.nft_set_ext* @nft_set_elem_ext(%struct.nft_set*, i8*) #1

declare dso_local i32 @nft_set_ext_init(%struct.nft_set_ext*, %struct.nft_set_ext_tmpl*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @nft_set_ext_key(%struct.nft_set_ext*) #1

declare dso_local i64 @nft_set_ext_exists(%struct.nft_set_ext*, i32) #1

declare dso_local i32 @nft_set_ext_data(%struct.nft_set_ext*) #1

declare dso_local i64 @get_jiffies_64(...) #1

declare dso_local i64* @nft_set_ext_expiration(%struct.nft_set_ext*) #1

declare dso_local i64* @nft_set_ext_timeout(%struct.nft_set_ext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
