; ModuleID = '/home/carl/AnghaBench/linux/security/integrity/evm/extr_evm_main.c_evm_inode_setxattr.c'
source_filename = "/home/carl/AnghaBench/linux/security/integrity/evm/extr_evm_main.c_evm_inode_setxattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.evm_ima_xattr_data = type { i64 }

@evm_initialized = common dso_local global i32 0, align 4
@EVM_ALLOW_METADATA_WRITES = common dso_local global i32 0, align 4
@XATTR_NAME_EVM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EVM_IMA_XATTR_DIGSIG = common dso_local global i64 0, align 8
@EVM_XATTR_PORTABLE_DIGSIG = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evm_inode_setxattr(%struct.dentry* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.evm_ima_xattr_data*, align 8
  store %struct.dentry* %0, %struct.dentry** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = bitcast i8* %11 to %struct.evm_ima_xattr_data*
  store %struct.evm_ima_xattr_data* %12, %struct.evm_ima_xattr_data** %10, align 8
  %13 = load i32, i32* @evm_initialized, align 4
  %14 = load i32, i32* @EVM_ALLOW_METADATA_WRITES, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %51

18:                                               ; preds = %4
  %19 = load i8*, i8** %7, align 8
  %20 = load i32, i32* @XATTR_NAME_EVM, align 4
  %21 = call i64 @strcmp(i8* %19, i32 %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %45

23:                                               ; preds = %18
  %24 = load i64, i64* %9, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %51

29:                                               ; preds = %23
  %30 = load %struct.evm_ima_xattr_data*, %struct.evm_ima_xattr_data** %10, align 8
  %31 = getelementptr inbounds %struct.evm_ima_xattr_data, %struct.evm_ima_xattr_data* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @EVM_IMA_XATTR_DIGSIG, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %29
  %36 = load %struct.evm_ima_xattr_data*, %struct.evm_ima_xattr_data** %10, align 8
  %37 = getelementptr inbounds %struct.evm_ima_xattr_data, %struct.evm_ima_xattr_data* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @EVM_XATTR_PORTABLE_DIGSIG, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i32, i32* @EPERM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %51

44:                                               ; preds = %35, %29
  br label %45

45:                                               ; preds = %44, %18
  %46 = load %struct.dentry*, %struct.dentry** %6, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = load i64, i64* %9, align 8
  %50 = call i32 @evm_protect_xattr(%struct.dentry* %46, i8* %47, i8* %48, i64 %49)
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %45, %41, %26, %17
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @evm_protect_xattr(%struct.dentry*, i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
