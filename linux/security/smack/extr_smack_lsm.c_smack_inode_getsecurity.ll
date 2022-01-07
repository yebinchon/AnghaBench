; ModuleID = '/home/carl/AnghaBench/linux/security/smack/extr_smack_lsm.c_smack_inode_getsecurity.c'
source_filename = "/home/carl/AnghaBench/linux/security/smack/extr_smack_lsm.c_smack_inode_getsecurity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i64 }
%struct.socket_smack = type { %struct.smack_known*, %struct.smack_known* }
%struct.smack_known = type { i32 }
%struct.socket = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.socket_smack* }

@XATTR_SMACK_SUFFIX = common dso_local global i32 0, align 4
@SOCKFS_MAGIC = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@XATTR_SMACK_IPIN = common dso_local global i32 0, align 4
@XATTR_SMACK_IPOUT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i8*, i8**, i32)* @smack_inode_getsecurity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smack_inode_getsecurity(%struct.inode* %0, i8* %1, i8** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.socket_smack*, align 8
  %11 = alloca %struct.socket*, align 8
  %12 = alloca %struct.super_block*, align 8
  %13 = alloca %struct.inode*, align 8
  %14 = alloca %struct.smack_known*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.inode*, %struct.inode** %6, align 8
  store %struct.inode* %15, %struct.inode** %13, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = load i32, i32* @XATTR_SMACK_SUFFIX, align 4
  %18 = call i64 @strcmp(i8* %16, i32 %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load %struct.inode*, %struct.inode** %6, align 8
  %22 = call %struct.smack_known* @smk_of_inode(%struct.inode* %21)
  store %struct.smack_known* %22, %struct.smack_known** %14, align 8
  br label %76

23:                                               ; preds = %4
  %24 = load %struct.inode*, %struct.inode** %13, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 0
  %26 = load %struct.super_block*, %struct.super_block** %25, align 8
  store %struct.super_block* %26, %struct.super_block** %12, align 8
  %27 = load %struct.super_block*, %struct.super_block** %12, align 8
  %28 = getelementptr inbounds %struct.super_block, %struct.super_block* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SOCKFS_MAGIC, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %23
  %33 = load i32, i32* @EOPNOTSUPP, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %98

35:                                               ; preds = %23
  %36 = load %struct.inode*, %struct.inode** %13, align 8
  %37 = call %struct.socket* @SOCKET_I(%struct.inode* %36)
  store %struct.socket* %37, %struct.socket** %11, align 8
  %38 = load %struct.socket*, %struct.socket** %11, align 8
  %39 = icmp eq %struct.socket* %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = load %struct.socket*, %struct.socket** %11, align 8
  %42 = getelementptr inbounds %struct.socket, %struct.socket* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = icmp eq %struct.TYPE_2__* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %40, %35
  %46 = load i32, i32* @EOPNOTSUPP, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %98

48:                                               ; preds = %40
  %49 = load %struct.socket*, %struct.socket** %11, align 8
  %50 = getelementptr inbounds %struct.socket, %struct.socket* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load %struct.socket_smack*, %struct.socket_smack** %52, align 8
  store %struct.socket_smack* %53, %struct.socket_smack** %10, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = load i32, i32* @XATTR_SMACK_IPIN, align 4
  %56 = call i64 @strcmp(i8* %54, i32 %55)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %48
  %59 = load %struct.socket_smack*, %struct.socket_smack** %10, align 8
  %60 = getelementptr inbounds %struct.socket_smack, %struct.socket_smack* %59, i32 0, i32 1
  %61 = load %struct.smack_known*, %struct.smack_known** %60, align 8
  store %struct.smack_known* %61, %struct.smack_known** %14, align 8
  br label %75

62:                                               ; preds = %48
  %63 = load i8*, i8** %7, align 8
  %64 = load i32, i32* @XATTR_SMACK_IPOUT, align 4
  %65 = call i64 @strcmp(i8* %63, i32 %64)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load %struct.socket_smack*, %struct.socket_smack** %10, align 8
  %69 = getelementptr inbounds %struct.socket_smack, %struct.socket_smack* %68, i32 0, i32 0
  %70 = load %struct.smack_known*, %struct.smack_known** %69, align 8
  store %struct.smack_known* %70, %struct.smack_known** %14, align 8
  br label %74

71:                                               ; preds = %62
  %72 = load i32, i32* @EOPNOTSUPP, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %5, align 4
  br label %98

74:                                               ; preds = %67
  br label %75

75:                                               ; preds = %74, %58
  br label %76

76:                                               ; preds = %75, %20
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %93

79:                                               ; preds = %76
  %80 = load %struct.smack_known*, %struct.smack_known** %14, align 8
  %81 = getelementptr inbounds %struct.smack_known, %struct.smack_known* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @GFP_KERNEL, align 4
  %84 = call i8* @kstrdup(i32 %82, i32 %83)
  %85 = load i8**, i8*** %8, align 8
  store i8* %84, i8** %85, align 8
  %86 = load i8**, i8*** %8, align 8
  %87 = load i8*, i8** %86, align 8
  %88 = icmp eq i8* %87, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %79
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %5, align 4
  br label %98

92:                                               ; preds = %79
  br label %93

93:                                               ; preds = %92, %76
  %94 = load %struct.smack_known*, %struct.smack_known** %14, align 8
  %95 = getelementptr inbounds %struct.smack_known, %struct.smack_known* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @strlen(i32 %96)
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %93, %89, %71, %45, %32
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local %struct.smack_known* @smk_of_inode(%struct.inode*) #1

declare dso_local %struct.socket* @SOCKET_I(%struct.inode*) #1

declare dso_local i8* @kstrdup(i32, i32) #1

declare dso_local i32 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
