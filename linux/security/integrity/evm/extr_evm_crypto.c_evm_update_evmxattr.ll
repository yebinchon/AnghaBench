; ModuleID = '/home/carl/AnghaBench/linux/security/integrity/evm/extr_evm_crypto.c_evm_update_evmxattr.c'
source_filename = "/home/carl/AnghaBench/linux/security/integrity/evm/extr_evm_crypto.c_evm_update_evmxattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.inode = type { i32 }
%struct.evm_digest = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@HASH_ALGO_SHA1 = common dso_local global i32 0, align 4
@EVM_XATTR_HMAC = common dso_local global i32 0, align 4
@XATTR_NAME_EVM = common dso_local global i32 0, align 4
@SHA1_DIGEST_SIZE = common dso_local global i64 0, align 8
@ENODATA = common dso_local global i32 0, align 4
@IOP_XATTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evm_update_evmxattr(%struct.dentry* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.evm_digest, align 8
  %12 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.dentry*, %struct.dentry** %6, align 8
  %14 = call %struct.inode* @d_backing_inode(%struct.dentry* %13)
  store %struct.inode* %14, %struct.inode** %10, align 8
  store i32 0, i32* %12, align 4
  %15 = load %struct.dentry*, %struct.dentry** %6, align 8
  %16 = load %struct.inode*, %struct.inode** %10, align 8
  %17 = call i32 @evm_is_immutable(%struct.dentry* %15, %struct.inode* %16)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* %12, align 4
  store i32 %21, i32* %5, align 4
  br label %74

22:                                               ; preds = %4
  %23 = load i32, i32* %12, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, i32* @EPERM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %74

28:                                               ; preds = %22
  %29 = load i32, i32* @HASH_ALGO_SHA1, align 4
  %30 = getelementptr inbounds %struct.evm_digest, %struct.evm_digest* %11, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = load %struct.dentry*, %struct.dentry** %6, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = load i64, i64* %9, align 8
  %36 = call i32 @evm_calc_hmac(%struct.dentry* %32, i8* %33, i8* %34, i64 %35, %struct.evm_digest* %11)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %55

39:                                               ; preds = %28
  %40 = load i32, i32* @EVM_XATTR_HMAC, align 4
  %41 = getelementptr inbounds %struct.evm_digest, %struct.evm_digest* %11, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 %40, i32* %44, align 8
  %45 = load %struct.dentry*, %struct.dentry** %6, align 8
  %46 = load i32, i32* @XATTR_NAME_EVM, align 4
  %47 = getelementptr inbounds %struct.evm_digest, %struct.evm_digest* %11, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i64, i64* @SHA1_DIGEST_SIZE, align 8
  %53 = add nsw i64 %52, 1
  %54 = call i32 @__vfs_setxattr_noperm(%struct.dentry* %45, i32 %46, i32* %51, i64 %53, i32 0)
  store i32 %54, i32* %12, align 4
  br label %72

55:                                               ; preds = %28
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* @ENODATA, align 4
  %58 = sub nsw i32 0, %57
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %55
  %61 = load %struct.inode*, %struct.inode** %10, align 8
  %62 = getelementptr inbounds %struct.inode, %struct.inode* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @IOP_XATTR, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %60
  %68 = load %struct.dentry*, %struct.dentry** %6, align 8
  %69 = load i32, i32* @XATTR_NAME_EVM, align 4
  %70 = call i32 @__vfs_removexattr(%struct.dentry* %68, i32 %69)
  store i32 %70, i32* %12, align 4
  br label %71

71:                                               ; preds = %67, %60, %55
  br label %72

72:                                               ; preds = %71, %39
  %73 = load i32, i32* %12, align 4
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %72, %25, %20
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local %struct.inode* @d_backing_inode(%struct.dentry*) #1

declare dso_local i32 @evm_is_immutable(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @evm_calc_hmac(%struct.dentry*, i8*, i8*, i64, %struct.evm_digest*) #1

declare dso_local i32 @__vfs_setxattr_noperm(%struct.dentry*, i32, i32*, i64, i32) #1

declare dso_local i32 @__vfs_removexattr(%struct.dentry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
