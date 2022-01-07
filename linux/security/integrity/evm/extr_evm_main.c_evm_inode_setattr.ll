; ModuleID = '/home/carl/AnghaBench/linux/security/integrity/evm/extr_evm_main.c_evm_inode_setattr.c'
source_filename = "/home/carl/AnghaBench/linux/security/integrity/evm/extr_evm_main.c_evm_inode_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.iattr = type { i32 }

@evm_initialized = common dso_local global i32 0, align 4
@EVM_ALLOW_METADATA_WRITES = common dso_local global i32 0, align 4
@ATTR_MODE = common dso_local global i32 0, align 4
@ATTR_UID = common dso_local global i32 0, align 4
@ATTR_GID = common dso_local global i32 0, align 4
@INTEGRITY_PASS = common dso_local global i32 0, align 4
@INTEGRITY_NOXATTRS = common dso_local global i32 0, align 4
@AUDIT_INTEGRITY_METADATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"appraise_metadata\00", align 1
@integrity_status_msg = common dso_local global i32* null, align 8
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evm_inode_setattr(%struct.dentry* %0, %struct.iattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.iattr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.iattr* %1, %struct.iattr** %5, align 8
  %8 = load %struct.iattr*, %struct.iattr** %5, align 8
  %9 = getelementptr inbounds %struct.iattr, %struct.iattr* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* @evm_initialized, align 4
  %12 = load i32, i32* @EVM_ALLOW_METADATA_WRITES, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %55

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @ATTR_MODE, align 4
  %19 = load i32, i32* @ATTR_UID, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @ATTR_GID, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %17, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %55

26:                                               ; preds = %16
  %27 = load %struct.dentry*, %struct.dentry** %4, align 8
  %28 = call i32 @evm_verify_current_integrity(%struct.dentry* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @INTEGRITY_PASS, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @INTEGRITY_NOXATTRS, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32, %26
  store i32 0, i32* %3, align 4
  br label %55

37:                                               ; preds = %32
  %38 = load i32, i32* @AUDIT_INTEGRITY_METADATA, align 4
  %39 = load %struct.dentry*, %struct.dentry** %4, align 8
  %40 = call i32 @d_backing_inode(%struct.dentry* %39)
  %41 = load %struct.dentry*, %struct.dentry** %4, align 8
  %42 = getelementptr inbounds %struct.dentry, %struct.dentry* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** @integrity_status_msg, align 8
  %46 = load i32, i32* %7, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @EPERM, align 4
  %51 = sub nsw i32 0, %50
  %52 = call i32 @integrity_audit_msg(i32 %38, i32 %40, i32 %44, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %51, i32 0)
  %53 = load i32, i32* @EPERM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %37, %36, %25, %15
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @evm_verify_current_integrity(%struct.dentry*) #1

declare dso_local i32 @integrity_audit_msg(i32, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @d_backing_inode(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
