; ModuleID = '/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_appraise.c_ima_inode_setxattr.c'
source_filename = "/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_appraise.c_ima_inode_setxattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.evm_ima_xattr_data = type { i64 }

@IMA_XATTR_LAST = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EVM_IMA_XATTR_DIGSIG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ima_inode_setxattr(%struct.dentry* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.evm_ima_xattr_data*, align 8
  %11 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = bitcast i8* %12 to %struct.evm_ima_xattr_data*
  store %struct.evm_ima_xattr_data* %13, %struct.evm_ima_xattr_data** %10, align 8
  %14 = load %struct.dentry*, %struct.dentry** %6, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = load i64, i64* %9, align 8
  %18 = call i32 @ima_protect_xattr(%struct.dentry* %14, i8* %15, i8* %16, i64 %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %43

21:                                               ; preds = %4
  %22 = load i64, i64* %9, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load %struct.evm_ima_xattr_data*, %struct.evm_ima_xattr_data** %10, align 8
  %26 = getelementptr inbounds %struct.evm_ima_xattr_data, %struct.evm_ima_xattr_data* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @IMA_XATTR_LAST, align 8
  %29 = icmp sge i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24, %21
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %45

33:                                               ; preds = %24
  %34 = load %struct.dentry*, %struct.dentry** %6, align 8
  %35 = call i32 @d_backing_inode(%struct.dentry* %34)
  %36 = load %struct.evm_ima_xattr_data*, %struct.evm_ima_xattr_data** %10, align 8
  %37 = getelementptr inbounds %struct.evm_ima_xattr_data, %struct.evm_ima_xattr_data* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @EVM_IMA_XATTR_DIGSIG, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @ima_reset_appraise_flags(i32 %35, i32 %41)
  store i32 0, i32* %11, align 4
  br label %43

43:                                               ; preds = %33, %4
  %44 = load i32, i32* %11, align 4
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %43, %30
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @ima_protect_xattr(%struct.dentry*, i8*, i8*, i64) #1

declare dso_local i32 @ima_reset_appraise_flags(i32, i32) #1

declare dso_local i32 @d_backing_inode(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
