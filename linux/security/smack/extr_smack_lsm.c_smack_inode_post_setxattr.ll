; ModuleID = '/home/carl/AnghaBench/linux/security/smack/extr_smack_lsm.c_smack_inode_post_setxattr.c'
source_filename = "/home/carl/AnghaBench/linux/security/smack/extr_smack_lsm.c_smack_inode_post_setxattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.smack_known = type { i32 }
%struct.inode_smack = type { %struct.smack_known*, %struct.smack_known*, %struct.smack_known*, i32 }

@XATTR_NAME_SMACKTRANSMUTE = common dso_local global i32 0, align 4
@SMK_INODE_TRANSMUTE = common dso_local global i32 0, align 4
@XATTR_NAME_SMACK = common dso_local global i32 0, align 4
@XATTR_NAME_SMACKEXEC = common dso_local global i32 0, align 4
@XATTR_NAME_SMACKMMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dentry*, i8*, i8*, i64, i32)* @smack_inode_post_setxattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smack_inode_post_setxattr(%struct.dentry* %0, i8* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.smack_known*, align 8
  %12 = alloca %struct.inode_smack*, align 8
  store %struct.dentry* %0, %struct.dentry** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load %struct.dentry*, %struct.dentry** %6, align 8
  %14 = call i32 @d_backing_inode(%struct.dentry* %13)
  %15 = call %struct.inode_smack* @smack_inode(i32 %14)
  store %struct.inode_smack* %15, %struct.inode_smack** %12, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = load i32, i32* @XATTR_NAME_SMACKTRANSMUTE, align 4
  %18 = call i64 @strcmp(i8* %16, i32 %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %5
  %21 = load i32, i32* @SMK_INODE_TRANSMUTE, align 4
  %22 = load %struct.inode_smack*, %struct.inode_smack** %12, align 8
  %23 = getelementptr inbounds %struct.inode_smack, %struct.inode_smack* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 8
  br label %80

26:                                               ; preds = %5
  %27 = load i8*, i8** %7, align 8
  %28 = load i32, i32* @XATTR_NAME_SMACK, align 4
  %29 = call i64 @strcmp(i8* %27, i32 %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %26
  %32 = load i8*, i8** %8, align 8
  %33 = load i64, i64* %9, align 8
  %34 = call %struct.smack_known* @smk_import_entry(i8* %32, i64 %33)
  store %struct.smack_known* %34, %struct.smack_known** %11, align 8
  %35 = load %struct.smack_known*, %struct.smack_known** %11, align 8
  %36 = call i32 @IS_ERR(%struct.smack_known* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %31
  %39 = load %struct.smack_known*, %struct.smack_known** %11, align 8
  %40 = load %struct.inode_smack*, %struct.inode_smack** %12, align 8
  %41 = getelementptr inbounds %struct.inode_smack, %struct.inode_smack* %40, i32 0, i32 2
  store %struct.smack_known* %39, %struct.smack_known** %41, align 8
  br label %42

42:                                               ; preds = %38, %31
  br label %79

43:                                               ; preds = %26
  %44 = load i8*, i8** %7, align 8
  %45 = load i32, i32* @XATTR_NAME_SMACKEXEC, align 4
  %46 = call i64 @strcmp(i8* %44, i32 %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %43
  %49 = load i8*, i8** %8, align 8
  %50 = load i64, i64* %9, align 8
  %51 = call %struct.smack_known* @smk_import_entry(i8* %49, i64 %50)
  store %struct.smack_known* %51, %struct.smack_known** %11, align 8
  %52 = load %struct.smack_known*, %struct.smack_known** %11, align 8
  %53 = call i32 @IS_ERR(%struct.smack_known* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %48
  %56 = load %struct.smack_known*, %struct.smack_known** %11, align 8
  %57 = load %struct.inode_smack*, %struct.inode_smack** %12, align 8
  %58 = getelementptr inbounds %struct.inode_smack, %struct.inode_smack* %57, i32 0, i32 1
  store %struct.smack_known* %56, %struct.smack_known** %58, align 8
  br label %59

59:                                               ; preds = %55, %48
  br label %78

60:                                               ; preds = %43
  %61 = load i8*, i8** %7, align 8
  %62 = load i32, i32* @XATTR_NAME_SMACKMMAP, align 4
  %63 = call i64 @strcmp(i8* %61, i32 %62)
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %60
  %66 = load i8*, i8** %8, align 8
  %67 = load i64, i64* %9, align 8
  %68 = call %struct.smack_known* @smk_import_entry(i8* %66, i64 %67)
  store %struct.smack_known* %68, %struct.smack_known** %11, align 8
  %69 = load %struct.smack_known*, %struct.smack_known** %11, align 8
  %70 = call i32 @IS_ERR(%struct.smack_known* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %65
  %73 = load %struct.smack_known*, %struct.smack_known** %11, align 8
  %74 = load %struct.inode_smack*, %struct.inode_smack** %12, align 8
  %75 = getelementptr inbounds %struct.inode_smack, %struct.inode_smack* %74, i32 0, i32 0
  store %struct.smack_known* %73, %struct.smack_known** %75, align 8
  br label %76

76:                                               ; preds = %72, %65
  br label %77

77:                                               ; preds = %76, %60
  br label %78

78:                                               ; preds = %77, %59
  br label %79

79:                                               ; preds = %78, %42
  br label %80

80:                                               ; preds = %79, %20
  ret void
}

declare dso_local %struct.inode_smack* @smack_inode(i32) #1

declare dso_local i32 @d_backing_inode(%struct.dentry*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local %struct.smack_known* @smk_import_entry(i8*, i64) #1

declare dso_local i32 @IS_ERR(%struct.smack_known*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
