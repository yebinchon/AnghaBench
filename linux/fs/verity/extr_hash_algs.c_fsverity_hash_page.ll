; ModuleID = '/home/carl/AnghaBench/linux/fs/verity/extr_hash_algs.c_fsverity_hash_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/verity/extr_hash_algs.c_fsverity_hash_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.merkle_tree_params = type { i64, i64 }
%struct.inode = type { i32 }
%struct.ahash_request = type { i32 }
%struct.page = type { i32 }
%struct.scatterlist = type { i32 }

@wait = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MAY_BACKLOG = common dso_local global i32 0, align 4
@crypto_req_done = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Error %d importing hash state\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Error %d computing page hash\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fsverity_hash_page(%struct.merkle_tree_params* %0, %struct.inode* %1, %struct.ahash_request* %2, %struct.page* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.merkle_tree_params*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.ahash_request*, align 8
  %10 = alloca %struct.page*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.scatterlist, align 4
  %13 = alloca i32, align 4
  store %struct.merkle_tree_params* %0, %struct.merkle_tree_params** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store %struct.ahash_request* %2, %struct.ahash_request** %9, align 8
  store %struct.page* %3, %struct.page** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load i32, i32* @wait, align 4
  %15 = call i32 @DECLARE_CRYPTO_WAIT(i32 %14)
  %16 = load %struct.merkle_tree_params*, %struct.merkle_tree_params** %7, align 8
  %17 = getelementptr inbounds %struct.merkle_tree_params, %struct.merkle_tree_params* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PAGE_SIZE, align 8
  %20 = icmp ne i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i64 @WARN_ON(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %5
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %76

27:                                               ; preds = %5
  %28 = call i32 @sg_init_table(%struct.scatterlist* %12, i32 1)
  %29 = load %struct.page*, %struct.page** %10, align 8
  %30 = load i64, i64* @PAGE_SIZE, align 8
  %31 = call i32 @sg_set_page(%struct.scatterlist* %12, %struct.page* %29, i64 %30, i32 0)
  %32 = load %struct.ahash_request*, %struct.ahash_request** %9, align 8
  %33 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %34 = load i32, i32* @CRYPTO_TFM_REQ_MAY_BACKLOG, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @crypto_req_done, align 4
  %37 = call i32 @ahash_request_set_callback(%struct.ahash_request* %32, i32 %35, i32 %36, i32* @wait)
  %38 = load %struct.ahash_request*, %struct.ahash_request** %9, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = load i64, i64* @PAGE_SIZE, align 8
  %41 = call i32 @ahash_request_set_crypt(%struct.ahash_request* %38, %struct.scatterlist* %12, i32* %39, i64 %40)
  %42 = load %struct.merkle_tree_params*, %struct.merkle_tree_params** %7, align 8
  %43 = getelementptr inbounds %struct.merkle_tree_params, %struct.merkle_tree_params* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %27
  %47 = load %struct.ahash_request*, %struct.ahash_request** %9, align 8
  %48 = load %struct.merkle_tree_params*, %struct.merkle_tree_params** %7, align 8
  %49 = getelementptr inbounds %struct.merkle_tree_params, %struct.merkle_tree_params* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @crypto_ahash_import(%struct.ahash_request* %47, i64 %50)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %46
  %55 = load %struct.inode*, %struct.inode** %8, align 8
  %56 = load i32, i32* %13, align 4
  %57 = call i32 @fsverity_err(%struct.inode* %55, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %13, align 4
  store i32 %58, i32* %6, align 4
  br label %76

59:                                               ; preds = %46
  %60 = load %struct.ahash_request*, %struct.ahash_request** %9, align 8
  %61 = call i32 @crypto_ahash_finup(%struct.ahash_request* %60)
  store i32 %61, i32* %13, align 4
  br label %65

62:                                               ; preds = %27
  %63 = load %struct.ahash_request*, %struct.ahash_request** %9, align 8
  %64 = call i32 @crypto_ahash_digest(%struct.ahash_request* %63)
  store i32 %64, i32* %13, align 4
  br label %65

65:                                               ; preds = %62, %59
  %66 = load i32, i32* %13, align 4
  %67 = call i32 @crypto_wait_req(i32 %66, i32* @wait)
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load %struct.inode*, %struct.inode** %8, align 8
  %72 = load i32, i32* %13, align 4
  %73 = call i32 @fsverity_err(%struct.inode* %71, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %70, %65
  %75 = load i32, i32* %13, align 4
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %74, %54, %24
  %77 = load i32, i32* %6, align 4
  ret i32 %77
}

declare dso_local i32 @DECLARE_CRYPTO_WAIT(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local i32 @sg_set_page(%struct.scatterlist*, %struct.page*, i64, i32) #1

declare dso_local i32 @ahash_request_set_callback(%struct.ahash_request*, i32, i32, i32*) #1

declare dso_local i32 @ahash_request_set_crypt(%struct.ahash_request*, %struct.scatterlist*, i32*, i64) #1

declare dso_local i32 @crypto_ahash_import(%struct.ahash_request*, i64) #1

declare dso_local i32 @fsverity_err(%struct.inode*, i8*, i32) #1

declare dso_local i32 @crypto_ahash_finup(%struct.ahash_request*) #1

declare dso_local i32 @crypto_ahash_digest(%struct.ahash_request*) #1

declare dso_local i32 @crypto_wait_req(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
