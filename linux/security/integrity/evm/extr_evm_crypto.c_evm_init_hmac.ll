; ModuleID = '/home/carl/AnghaBench/linux/security/integrity/evm/extr_evm_crypto.c_evm_init_hmac.c'
source_filename = "/home/carl/AnghaBench/linux/security/integrity/evm/extr_evm_crypto.c_evm_init_hmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.xattr = type { i32, i32 }
%struct.shash_desc = type { i32 }

@EVM_XATTR_HMAC = common dso_local global i32 0, align 4
@HASH_ALGO_SHA1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"init_desc failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evm_init_hmac(%struct.inode* %0, %struct.xattr* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.xattr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.shash_desc*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.xattr* %1, %struct.xattr** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i32, i32* @EVM_XATTR_HMAC, align 4
  %10 = load i32, i32* @HASH_ALGO_SHA1, align 4
  %11 = call %struct.shash_desc* @init_desc(i32 %9, i32 %10)
  store %struct.shash_desc* %11, %struct.shash_desc** %8, align 8
  %12 = load %struct.shash_desc*, %struct.shash_desc** %8, align 8
  %13 = call i64 @IS_ERR(%struct.shash_desc* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = call i32 @pr_info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.shash_desc*, %struct.shash_desc** %8, align 8
  %18 = call i32 @PTR_ERR(%struct.shash_desc* %17)
  store i32 %18, i32* %4, align 4
  br label %35

19:                                               ; preds = %3
  %20 = load %struct.shash_desc*, %struct.shash_desc** %8, align 8
  %21 = load %struct.xattr*, %struct.xattr** %6, align 8
  %22 = getelementptr inbounds %struct.xattr, %struct.xattr* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.xattr*, %struct.xattr** %6, align 8
  %25 = getelementptr inbounds %struct.xattr, %struct.xattr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @crypto_shash_update(%struct.shash_desc* %20, i32 %23, i32 %26)
  %28 = load %struct.shash_desc*, %struct.shash_desc** %8, align 8
  %29 = load %struct.inode*, %struct.inode** %5, align 8
  %30 = load i32, i32* @EVM_XATTR_HMAC, align 4
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @hmac_add_misc(%struct.shash_desc* %28, %struct.inode* %29, i32 %30, i8* %31)
  %33 = load %struct.shash_desc*, %struct.shash_desc** %8, align 8
  %34 = call i32 @kfree(%struct.shash_desc* %33)
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %19, %15
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local %struct.shash_desc* @init_desc(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.shash_desc*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @PTR_ERR(%struct.shash_desc*) #1

declare dso_local i32 @crypto_shash_update(%struct.shash_desc*, i32, i32) #1

declare dso_local i32 @hmac_add_misc(%struct.shash_desc*, %struct.inode*, i32, i8*) #1

declare dso_local i32 @kfree(%struct.shash_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
