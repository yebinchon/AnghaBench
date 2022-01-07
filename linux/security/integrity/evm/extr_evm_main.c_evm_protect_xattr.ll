; ModuleID = '/home/carl/AnghaBench/linux/security/integrity/evm/extr_evm_main.c_evm_protect_xattr.c'
source_filename = "/home/carl/AnghaBench/linux/security/integrity/evm/extr_evm_main.c_evm_protect_xattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.integrity_iint_cache = type { i32 }

@XATTR_NAME_EVM = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@INTEGRITY_PASS = common dso_local global i32 0, align 4
@INTEGRITY_NOXATTRS = common dso_local global i32 0, align 4
@IMA_NEW_FILE = common dso_local global i32 0, align 4
@TMPFS_MAGIC = common dso_local global i64 0, align 8
@SYSFS_MAGIC = common dso_local global i64 0, align 8
@AUDIT_INTEGRITY_METADATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"update_metadata\00", align 1
@integrity_status_msg = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"appraise_metadata\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, i8*, i8*, i64)* @evm_protect_xattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evm_protect_xattr(%struct.dentry* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.integrity_iint_cache*, align 8
  store %struct.dentry* %0, %struct.dentry** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = load i32, i32* @XATTR_NAME_EVM, align 4
  %14 = call i64 @strcmp(i8* %12, i32 %13)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %4
  %17 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %18 = call i32 @capable(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* @EPERM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %131

23:                                               ; preds = %16
  br label %46

24:                                               ; preds = %4
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @evm_protected_xattr(i8* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %45, label %28

28:                                               ; preds = %24
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @posix_xattr_acl(i8* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %131

33:                                               ; preds = %28
  %34 = load %struct.dentry*, %struct.dentry** %6, align 8
  %35 = call i32 @evm_verify_current_integrity(%struct.dentry* %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @INTEGRITY_PASS, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @INTEGRITY_NOXATTRS, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39, %33
  store i32 0, i32* %5, align 4
  br label %131

44:                                               ; preds = %39
  br label %101

45:                                               ; preds = %24
  br label %46

46:                                               ; preds = %45, %23
  %47 = load %struct.dentry*, %struct.dentry** %6, align 8
  %48 = call i32 @evm_verify_current_integrity(%struct.dentry* %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @INTEGRITY_NOXATTRS, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %100

52:                                               ; preds = %46
  %53 = load %struct.dentry*, %struct.dentry** %6, align 8
  %54 = call i32 @d_backing_inode(%struct.dentry* %53)
  %55 = call %struct.integrity_iint_cache* @integrity_iint_find(i32 %54)
  store %struct.integrity_iint_cache* %55, %struct.integrity_iint_cache** %11, align 8
  %56 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %11, align 8
  %57 = icmp ne %struct.integrity_iint_cache* %56, null
  br i1 %57, label %58, label %66

58:                                               ; preds = %52
  %59 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %11, align 8
  %60 = getelementptr inbounds %struct.integrity_iint_cache, %struct.integrity_iint_cache* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @IMA_NEW_FILE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  store i32 0, i32* %5, align 4
  br label %131

66:                                               ; preds = %58, %52
  %67 = load %struct.dentry*, %struct.dentry** %6, align 8
  %68 = getelementptr inbounds %struct.dentry, %struct.dentry* %67, i32 0, i32 2
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @TMPFS_MAGIC, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %82, label %74

74:                                               ; preds = %66
  %75 = load %struct.dentry*, %struct.dentry** %6, align 8
  %76 = getelementptr inbounds %struct.dentry, %struct.dentry* %75, i32 0, i32 2
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @SYSFS_MAGIC, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %74, %66
  store i32 0, i32* %5, align 4
  br label %131

83:                                               ; preds = %74
  %84 = load i32, i32* @AUDIT_INTEGRITY_METADATA, align 4
  %85 = load %struct.dentry*, %struct.dentry** %6, align 8
  %86 = getelementptr inbounds %struct.dentry, %struct.dentry* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.dentry*, %struct.dentry** %6, align 8
  %89 = getelementptr inbounds %struct.dentry, %struct.dentry* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32*, i32** @integrity_status_msg, align 8
  %93 = load i32, i32* %10, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @EPERM, align 4
  %98 = sub nsw i32 0, %97
  %99 = call i32 @integrity_audit_msg(i32 %84, i32 %87, i32 %91, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %96, i32 %98, i32 0)
  br label %100

100:                                              ; preds = %83, %46
  br label %101

101:                                              ; preds = %100, %44
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* @INTEGRITY_PASS, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %121

105:                                              ; preds = %101
  %106 = load i32, i32* @AUDIT_INTEGRITY_METADATA, align 4
  %107 = load %struct.dentry*, %struct.dentry** %6, align 8
  %108 = call i32 @d_backing_inode(%struct.dentry* %107)
  %109 = load %struct.dentry*, %struct.dentry** %6, align 8
  %110 = getelementptr inbounds %struct.dentry, %struct.dentry* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32*, i32** @integrity_status_msg, align 8
  %114 = load i32, i32* %10, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @EPERM, align 4
  %119 = sub nsw i32 0, %118
  %120 = call i32 @integrity_audit_msg(i32 %106, i32 %108, i32 %112, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %117, i32 %119, i32 0)
  br label %121

121:                                              ; preds = %105, %101
  %122 = load i32, i32* %10, align 4
  %123 = load i32, i32* @INTEGRITY_PASS, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %121
  br label %129

126:                                              ; preds = %121
  %127 = load i32, i32* @EPERM, align 4
  %128 = sub nsw i32 0, %127
  br label %129

129:                                              ; preds = %126, %125
  %130 = phi i32 [ 0, %125 ], [ %128, %126 ]
  store i32 %130, i32* %5, align 4
  br label %131

131:                                              ; preds = %129, %82, %65, %43, %32, %20
  %132 = load i32, i32* %5, align 4
  ret i32 %132
}

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @evm_protected_xattr(i8*) #1

declare dso_local i32 @posix_xattr_acl(i8*) #1

declare dso_local i32 @evm_verify_current_integrity(%struct.dentry*) #1

declare dso_local %struct.integrity_iint_cache* @integrity_iint_find(i32) #1

declare dso_local i32 @d_backing_inode(%struct.dentry*) #1

declare dso_local i32 @integrity_audit_msg(i32, i32, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
