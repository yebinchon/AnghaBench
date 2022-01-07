; ModuleID = '/home/carl/AnghaBench/linux/fs/verity/extr_hash_algs.c_fsverity_get_hash_alg.c'
source_filename = "/home/carl/AnghaBench/linux/fs/verity/extr_hash_algs.c_fsverity_get_hash_alg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsverity_hash_alg = type { i32, i64, i64, i32 }
%struct.inode = type { i32 }
%struct.crypto_ahash = type { i32 }

@fsverity_hash_algs = common dso_local global %struct.fsverity_hash_alg* null, align 8
@.str = private unnamed_addr constant [34 x i8] c"Unknown hash algorithm number: %u\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Missing crypto API support for hash algorithm \22%s\22\00", align 1
@ENOPKG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"Error allocating hash algorithm \22%s\22: %ld\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"%s using implementation \22%s\22\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fsverity_hash_alg* @fsverity_get_hash_alg(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.fsverity_hash_alg*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fsverity_hash_alg*, align 8
  %7 = alloca %struct.crypto_ahash*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.fsverity_hash_alg*, %struct.fsverity_hash_alg** @fsverity_hash_algs, align 8
  %11 = call i32 @ARRAY_SIZE(%struct.fsverity_hash_alg* %10)
  %12 = icmp uge i32 %9, %11
  br i1 %12, label %21, label %13

13:                                               ; preds = %2
  %14 = load %struct.fsverity_hash_alg*, %struct.fsverity_hash_alg** @fsverity_hash_algs, align 8
  %15 = load i32, i32* %5, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.fsverity_hash_alg, %struct.fsverity_hash_alg* %14, i64 %16
  %18 = getelementptr inbounds %struct.fsverity_hash_alg, %struct.fsverity_hash_alg* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %13, %2
  %22 = load %struct.inode*, %struct.inode** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @fsverity_warn(%struct.inode* %22, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  %27 = call %struct.fsverity_hash_alg* @ERR_PTR(i32 %26)
  store %struct.fsverity_hash_alg* %27, %struct.fsverity_hash_alg** %3, align 8
  br label %123

28:                                               ; preds = %13
  %29 = load %struct.fsverity_hash_alg*, %struct.fsverity_hash_alg** @fsverity_hash_algs, align 8
  %30 = load i32, i32* %5, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.fsverity_hash_alg, %struct.fsverity_hash_alg* %29, i64 %31
  store %struct.fsverity_hash_alg* %32, %struct.fsverity_hash_alg** %6, align 8
  %33 = load %struct.fsverity_hash_alg*, %struct.fsverity_hash_alg** %6, align 8
  %34 = getelementptr inbounds %struct.fsverity_hash_alg, %struct.fsverity_hash_alg* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = call %struct.crypto_ahash* @READ_ONCE(i32 %35)
  store %struct.crypto_ahash* %36, %struct.crypto_ahash** %7, align 8
  %37 = load %struct.crypto_ahash*, %struct.crypto_ahash** %7, align 8
  %38 = icmp ne %struct.crypto_ahash* %37, null
  %39 = zext i1 %38 to i32
  %40 = call i64 @likely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %28
  %43 = load %struct.fsverity_hash_alg*, %struct.fsverity_hash_alg** %6, align 8
  store %struct.fsverity_hash_alg* %43, %struct.fsverity_hash_alg** %3, align 8
  br label %123

44:                                               ; preds = %28
  %45 = load %struct.fsverity_hash_alg*, %struct.fsverity_hash_alg** %6, align 8
  %46 = getelementptr inbounds %struct.fsverity_hash_alg, %struct.fsverity_hash_alg* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call %struct.crypto_ahash* @crypto_alloc_ahash(i32 %47, i32 0, i32 0)
  store %struct.crypto_ahash* %48, %struct.crypto_ahash** %7, align 8
  %49 = load %struct.crypto_ahash*, %struct.crypto_ahash** %7, align 8
  %50 = call i64 @IS_ERR(%struct.crypto_ahash* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %77

52:                                               ; preds = %44
  %53 = load %struct.crypto_ahash*, %struct.crypto_ahash** %7, align 8
  %54 = call i32 @PTR_ERR(%struct.crypto_ahash* %53)
  %55 = load i32, i32* @ENOENT, align 4
  %56 = sub nsw i32 0, %55
  %57 = icmp eq i32 %54, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %52
  %59 = load %struct.inode*, %struct.inode** %4, align 8
  %60 = load %struct.fsverity_hash_alg*, %struct.fsverity_hash_alg** %6, align 8
  %61 = getelementptr inbounds %struct.fsverity_hash_alg, %struct.fsverity_hash_alg* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @fsverity_warn(%struct.inode* %59, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @ENOPKG, align 4
  %65 = sub nsw i32 0, %64
  %66 = call %struct.fsverity_hash_alg* @ERR_PTR(i32 %65)
  store %struct.fsverity_hash_alg* %66, %struct.fsverity_hash_alg** %3, align 8
  br label %123

67:                                               ; preds = %52
  %68 = load %struct.inode*, %struct.inode** %4, align 8
  %69 = load %struct.fsverity_hash_alg*, %struct.fsverity_hash_alg** %6, align 8
  %70 = getelementptr inbounds %struct.fsverity_hash_alg, %struct.fsverity_hash_alg* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.crypto_ahash*, %struct.crypto_ahash** %7, align 8
  %73 = call i32 @PTR_ERR(%struct.crypto_ahash* %72)
  %74 = call i32 @fsverity_err(%struct.inode* %68, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %71, i32 %73)
  %75 = load %struct.crypto_ahash*, %struct.crypto_ahash** %7, align 8
  %76 = call %struct.fsverity_hash_alg* @ERR_CAST(%struct.crypto_ahash* %75)
  store %struct.fsverity_hash_alg* %76, %struct.fsverity_hash_alg** %3, align 8
  br label %123

77:                                               ; preds = %44
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %8, align 4
  %80 = load %struct.fsverity_hash_alg*, %struct.fsverity_hash_alg** %6, align 8
  %81 = getelementptr inbounds %struct.fsverity_hash_alg, %struct.fsverity_hash_alg* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.crypto_ahash*, %struct.crypto_ahash** %7, align 8
  %84 = call i64 @crypto_ahash_digestsize(%struct.crypto_ahash* %83)
  %85 = icmp ne i64 %82, %84
  %86 = zext i1 %85 to i32
  %87 = call i64 @WARN_ON(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %77
  br label %118

90:                                               ; preds = %77
  %91 = load %struct.fsverity_hash_alg*, %struct.fsverity_hash_alg** %6, align 8
  %92 = getelementptr inbounds %struct.fsverity_hash_alg, %struct.fsverity_hash_alg* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.crypto_ahash*, %struct.crypto_ahash** %7, align 8
  %95 = call i64 @crypto_ahash_blocksize(%struct.crypto_ahash* %94)
  %96 = icmp ne i64 %93, %95
  %97 = zext i1 %96 to i32
  %98 = call i64 @WARN_ON(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %90
  br label %118

101:                                              ; preds = %90
  %102 = load %struct.fsverity_hash_alg*, %struct.fsverity_hash_alg** %6, align 8
  %103 = getelementptr inbounds %struct.fsverity_hash_alg, %struct.fsverity_hash_alg* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.crypto_ahash*, %struct.crypto_ahash** %7, align 8
  %106 = call i32 @crypto_ahash_driver_name(%struct.crypto_ahash* %105)
  %107 = call i32 @pr_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %104, i32 %106)
  %108 = load %struct.fsverity_hash_alg*, %struct.fsverity_hash_alg** %6, align 8
  %109 = getelementptr inbounds %struct.fsverity_hash_alg, %struct.fsverity_hash_alg* %108, i32 0, i32 3
  %110 = load %struct.crypto_ahash*, %struct.crypto_ahash** %7, align 8
  %111 = call i32* @cmpxchg(i32* %109, i32* null, %struct.crypto_ahash* %110)
  %112 = icmp ne i32* %111, null
  br i1 %112, label %113, label %116

113:                                              ; preds = %101
  %114 = load %struct.crypto_ahash*, %struct.crypto_ahash** %7, align 8
  %115 = call i32 @crypto_free_ahash(%struct.crypto_ahash* %114)
  br label %116

116:                                              ; preds = %113, %101
  %117 = load %struct.fsverity_hash_alg*, %struct.fsverity_hash_alg** %6, align 8
  store %struct.fsverity_hash_alg* %117, %struct.fsverity_hash_alg** %3, align 8
  br label %123

118:                                              ; preds = %100, %89
  %119 = load %struct.crypto_ahash*, %struct.crypto_ahash** %7, align 8
  %120 = call i32 @crypto_free_ahash(%struct.crypto_ahash* %119)
  %121 = load i32, i32* %8, align 4
  %122 = call %struct.fsverity_hash_alg* @ERR_PTR(i32 %121)
  store %struct.fsverity_hash_alg* %122, %struct.fsverity_hash_alg** %3, align 8
  br label %123

123:                                              ; preds = %118, %116, %67, %58, %42, %21
  %124 = load %struct.fsverity_hash_alg*, %struct.fsverity_hash_alg** %3, align 8
  ret %struct.fsverity_hash_alg* %124
}

declare dso_local i32 @ARRAY_SIZE(%struct.fsverity_hash_alg*) #1

declare dso_local i32 @fsverity_warn(%struct.inode*, i8*, i32) #1

declare dso_local %struct.fsverity_hash_alg* @ERR_PTR(i32) #1

declare dso_local %struct.crypto_ahash* @READ_ONCE(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local %struct.crypto_ahash* @crypto_alloc_ahash(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.crypto_ahash*) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_ahash*) #1

declare dso_local i32 @fsverity_err(%struct.inode*, i8*, i32, i32) #1

declare dso_local %struct.fsverity_hash_alg* @ERR_CAST(%struct.crypto_ahash*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @crypto_ahash_digestsize(%struct.crypto_ahash*) #1

declare dso_local i64 @crypto_ahash_blocksize(%struct.crypto_ahash*) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

declare dso_local i32 @crypto_ahash_driver_name(%struct.crypto_ahash*) #1

declare dso_local i32* @cmpxchg(i32*, i32*, %struct.crypto_ahash*) #1

declare dso_local i32 @crypto_free_ahash(%struct.crypto_ahash*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
