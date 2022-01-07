; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_set_hash.c_nft_rhash_update.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_set_hash.c_nft_rhash_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_set = type { i32 }
%struct.nft_expr = type { i32 }
%struct.nft_regs = type { i32 }
%struct.nft_set_ext = type { i32 }
%struct.nft_rhash = type { i32 }
%struct.nft_rhash_elem = type { %struct.nft_set_ext, i32 }
%struct.nft_rhash_cmp_arg = type { i32*, %struct.nft_set*, i32 }

@NFT_GENMASK_ANY = common dso_local global i32 0, align 4
@nft_rhash_params = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nft_set*, i32*, i8* (%struct.nft_set*, %struct.nft_expr*, %struct.nft_regs*)*, %struct.nft_expr*, %struct.nft_regs*, %struct.nft_set_ext**)* @nft_rhash_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_rhash_update(%struct.nft_set* %0, i32* %1, i8* (%struct.nft_set*, %struct.nft_expr*, %struct.nft_regs*)* %2, %struct.nft_expr* %3, %struct.nft_regs* %4, %struct.nft_set_ext** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nft_set*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8* (%struct.nft_set*, %struct.nft_expr*, %struct.nft_regs*)*, align 8
  %11 = alloca %struct.nft_expr*, align 8
  %12 = alloca %struct.nft_regs*, align 8
  %13 = alloca %struct.nft_set_ext**, align 8
  %14 = alloca %struct.nft_rhash*, align 8
  %15 = alloca %struct.nft_rhash_elem*, align 8
  %16 = alloca %struct.nft_rhash_elem*, align 8
  %17 = alloca %struct.nft_rhash_cmp_arg, align 8
  store %struct.nft_set* %0, %struct.nft_set** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8* (%struct.nft_set*, %struct.nft_expr*, %struct.nft_regs*)* %2, i8* (%struct.nft_set*, %struct.nft_expr*, %struct.nft_regs*)** %10, align 8
  store %struct.nft_expr* %3, %struct.nft_expr** %11, align 8
  store %struct.nft_regs* %4, %struct.nft_regs** %12, align 8
  store %struct.nft_set_ext** %5, %struct.nft_set_ext*** %13, align 8
  %18 = load %struct.nft_set*, %struct.nft_set** %8, align 8
  %19 = call %struct.nft_rhash* @nft_set_priv(%struct.nft_set* %18)
  store %struct.nft_rhash* %19, %struct.nft_rhash** %14, align 8
  %20 = getelementptr inbounds %struct.nft_rhash_cmp_arg, %struct.nft_rhash_cmp_arg* %17, i32 0, i32 0
  %21 = load i32*, i32** %9, align 8
  store i32* %21, i32** %20, align 8
  %22 = getelementptr inbounds %struct.nft_rhash_cmp_arg, %struct.nft_rhash_cmp_arg* %17, i32 0, i32 1
  %23 = load %struct.nft_set*, %struct.nft_set** %8, align 8
  store %struct.nft_set* %23, %struct.nft_set** %22, align 8
  %24 = getelementptr inbounds %struct.nft_rhash_cmp_arg, %struct.nft_rhash_cmp_arg* %17, i32 0, i32 2
  %25 = load i32, i32* @NFT_GENMASK_ANY, align 4
  store i32 %25, i32* %24, align 8
  %26 = load %struct.nft_rhash*, %struct.nft_rhash** %14, align 8
  %27 = getelementptr inbounds %struct.nft_rhash, %struct.nft_rhash* %26, i32 0, i32 0
  %28 = load i32, i32* @nft_rhash_params, align 4
  %29 = call %struct.nft_rhash_elem* @rhashtable_lookup(i32* %27, %struct.nft_rhash_cmp_arg* %17, i32 %28)
  store %struct.nft_rhash_elem* %29, %struct.nft_rhash_elem** %15, align 8
  %30 = load %struct.nft_rhash_elem*, %struct.nft_rhash_elem** %15, align 8
  %31 = icmp ne %struct.nft_rhash_elem* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %6
  br label %63

33:                                               ; preds = %6
  %34 = load i8* (%struct.nft_set*, %struct.nft_expr*, %struct.nft_regs*)*, i8* (%struct.nft_set*, %struct.nft_expr*, %struct.nft_regs*)** %10, align 8
  %35 = load %struct.nft_set*, %struct.nft_set** %8, align 8
  %36 = load %struct.nft_expr*, %struct.nft_expr** %11, align 8
  %37 = load %struct.nft_regs*, %struct.nft_regs** %12, align 8
  %38 = call i8* %34(%struct.nft_set* %35, %struct.nft_expr* %36, %struct.nft_regs* %37)
  %39 = bitcast i8* %38 to %struct.nft_rhash_elem*
  store %struct.nft_rhash_elem* %39, %struct.nft_rhash_elem** %15, align 8
  %40 = load %struct.nft_rhash_elem*, %struct.nft_rhash_elem** %15, align 8
  %41 = icmp eq %struct.nft_rhash_elem* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %71

43:                                               ; preds = %33
  %44 = load %struct.nft_rhash*, %struct.nft_rhash** %14, align 8
  %45 = getelementptr inbounds %struct.nft_rhash, %struct.nft_rhash* %44, i32 0, i32 0
  %46 = load %struct.nft_rhash_elem*, %struct.nft_rhash_elem** %15, align 8
  %47 = getelementptr inbounds %struct.nft_rhash_elem, %struct.nft_rhash_elem* %46, i32 0, i32 1
  %48 = load i32, i32* @nft_rhash_params, align 4
  %49 = call %struct.nft_rhash_elem* @rhashtable_lookup_get_insert_key(i32* %45, %struct.nft_rhash_cmp_arg* %17, i32* %47, i32 %48)
  store %struct.nft_rhash_elem* %49, %struct.nft_rhash_elem** %16, align 8
  %50 = load %struct.nft_rhash_elem*, %struct.nft_rhash_elem** %16, align 8
  %51 = call i64 @IS_ERR(%struct.nft_rhash_elem* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  br label %67

54:                                               ; preds = %43
  %55 = load %struct.nft_rhash_elem*, %struct.nft_rhash_elem** %16, align 8
  %56 = icmp ne %struct.nft_rhash_elem* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load %struct.nft_set*, %struct.nft_set** %8, align 8
  %59 = load %struct.nft_rhash_elem*, %struct.nft_rhash_elem** %15, align 8
  %60 = call i32 @nft_set_elem_destroy(%struct.nft_set* %58, %struct.nft_rhash_elem* %59, i32 1)
  %61 = load %struct.nft_rhash_elem*, %struct.nft_rhash_elem** %16, align 8
  store %struct.nft_rhash_elem* %61, %struct.nft_rhash_elem** %15, align 8
  br label %62

62:                                               ; preds = %57, %54
  br label %63

63:                                               ; preds = %62, %32
  %64 = load %struct.nft_rhash_elem*, %struct.nft_rhash_elem** %15, align 8
  %65 = getelementptr inbounds %struct.nft_rhash_elem, %struct.nft_rhash_elem* %64, i32 0, i32 0
  %66 = load %struct.nft_set_ext**, %struct.nft_set_ext*** %13, align 8
  store %struct.nft_set_ext* %65, %struct.nft_set_ext** %66, align 8
  store i32 1, i32* %7, align 4
  br label %72

67:                                               ; preds = %53
  %68 = load %struct.nft_set*, %struct.nft_set** %8, align 8
  %69 = load %struct.nft_rhash_elem*, %struct.nft_rhash_elem** %15, align 8
  %70 = call i32 @nft_set_elem_destroy(%struct.nft_set* %68, %struct.nft_rhash_elem* %69, i32 1)
  br label %71

71:                                               ; preds = %67, %42
  store i32 0, i32* %7, align 4
  br label %72

72:                                               ; preds = %71, %63
  %73 = load i32, i32* %7, align 4
  ret i32 %73
}

declare dso_local %struct.nft_rhash* @nft_set_priv(%struct.nft_set*) #1

declare dso_local %struct.nft_rhash_elem* @rhashtable_lookup(i32*, %struct.nft_rhash_cmp_arg*, i32) #1

declare dso_local %struct.nft_rhash_elem* @rhashtable_lookup_get_insert_key(i32*, %struct.nft_rhash_cmp_arg*, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.nft_rhash_elem*) #1

declare dso_local i32 @nft_set_elem_destroy(%struct.nft_set*, %struct.nft_rhash_elem*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
