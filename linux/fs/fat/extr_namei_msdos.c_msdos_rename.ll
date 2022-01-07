; ModuleID = '/home/carl/AnghaBench/linux/fs/fat/extr_namei_msdos.c_msdos_rename.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fat/extr_namei_msdos.c_msdos_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.dentry = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@MSDOS_NAME = common dso_local global i32 0, align 4
@RENAME_NOREPLACE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)* @msdos_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msdos_rename(%struct.inode* %0, %struct.dentry* %1, %struct.inode* %2, %struct.dentry* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.super_block*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.dentry* %1, %struct.dentry** %8, align 8
  store %struct.inode* %2, %struct.inode** %9, align 8
  store %struct.dentry* %3, %struct.dentry** %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load %struct.inode*, %struct.inode** %7, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = load %struct.super_block*, %struct.super_block** %20, align 8
  store %struct.super_block* %21, %struct.super_block** %12, align 8
  %22 = load i32, i32* @MSDOS_NAME, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %13, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %14, align 8
  %26 = load i32, i32* @MSDOS_NAME, align 4
  %27 = zext i32 %26 to i64
  %28 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %15, align 8
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @RENAME_NOREPLACE, align 4
  %31 = xor i32 %30, -1
  %32 = and i32 %29, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %5
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %114

37:                                               ; preds = %5
  %38 = load %struct.super_block*, %struct.super_block** %12, align 8
  %39 = call %struct.TYPE_4__* @MSDOS_SB(%struct.super_block* %38)
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = call i32 @mutex_lock(i32* %40)
  %42 = load %struct.dentry*, %struct.dentry** %8, align 8
  %43 = getelementptr inbounds %struct.dentry, %struct.dentry* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load %struct.dentry*, %struct.dentry** %8, align 8
  %47 = getelementptr inbounds %struct.dentry, %struct.dentry* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.inode*, %struct.inode** %7, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 0
  %52 = load %struct.super_block*, %struct.super_block** %51, align 8
  %53 = call %struct.TYPE_4__* @MSDOS_SB(%struct.super_block* %52)
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = call i32 @msdos_format_name(i8* %45, i32 %49, i8* %25, i32* %54)
  store i32 %55, i32* %16, align 4
  %56 = load i32, i32* %16, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %37
  br label %100

59:                                               ; preds = %37
  %60 = load %struct.dentry*, %struct.dentry** %10, align 8
  %61 = getelementptr inbounds %struct.dentry, %struct.dentry* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.dentry*, %struct.dentry** %10, align 8
  %65 = getelementptr inbounds %struct.dentry, %struct.dentry* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.inode*, %struct.inode** %9, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 0
  %70 = load %struct.super_block*, %struct.super_block** %69, align 8
  %71 = call %struct.TYPE_4__* @MSDOS_SB(%struct.super_block* %70)
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = call i32 @msdos_format_name(i8* %63, i32 %67, i8* %28, i32* %72)
  store i32 %73, i32* %16, align 4
  %74 = load i32, i32* %16, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %59
  br label %100

77:                                               ; preds = %59
  %78 = load %struct.dentry*, %struct.dentry** %10, align 8
  %79 = getelementptr inbounds %struct.dentry, %struct.dentry* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 0
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 46
  br i1 %85, label %86, label %91

86:                                               ; preds = %77
  %87 = getelementptr inbounds i8, i8* %28, i64 0
  %88 = load i8, i8* %87, align 16
  %89 = zext i8 %88 to i32
  %90 = icmp ne i32 %89, 46
  br label %91

91:                                               ; preds = %86, %77
  %92 = phi i1 [ false, %77 ], [ %90, %86 ]
  %93 = zext i1 %92 to i32
  store i32 %93, i32* %17, align 4
  %94 = load %struct.inode*, %struct.inode** %7, align 8
  %95 = load %struct.dentry*, %struct.dentry** %8, align 8
  %96 = load %struct.inode*, %struct.inode** %9, align 8
  %97 = load %struct.dentry*, %struct.dentry** %10, align 8
  %98 = load i32, i32* %17, align 4
  %99 = call i32 @do_msdos_rename(%struct.inode* %94, i8* %25, %struct.dentry* %95, %struct.inode* %96, i8* %28, %struct.dentry* %97, i32 %98)
  store i32 %99, i32* %16, align 4
  br label %100

100:                                              ; preds = %91, %76, %58
  %101 = load %struct.super_block*, %struct.super_block** %12, align 8
  %102 = call %struct.TYPE_4__* @MSDOS_SB(%struct.super_block* %101)
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = call i32 @mutex_unlock(i32* %103)
  %105 = load i32, i32* %16, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %112, label %107

107:                                              ; preds = %100
  %108 = load %struct.super_block*, %struct.super_block** %12, align 8
  %109 = load %struct.inode*, %struct.inode** %7, align 8
  %110 = load %struct.inode*, %struct.inode** %9, align 8
  %111 = call i32 @fat_flush_inodes(%struct.super_block* %108, %struct.inode* %109, %struct.inode* %110)
  store i32 %111, i32* %16, align 4
  br label %112

112:                                              ; preds = %107, %100
  %113 = load i32, i32* %16, align 4
  store i32 %113, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %114

114:                                              ; preds = %112, %34
  %115 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %115)
  %116 = load i32, i32* %6, align 4
  ret i32 %116
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local %struct.TYPE_4__* @MSDOS_SB(%struct.super_block*) #2

declare dso_local i32 @msdos_format_name(i8*, i32, i8*, i32*) #2

declare dso_local i32 @do_msdos_rename(%struct.inode*, i8*, %struct.dentry*, %struct.inode*, i8*, %struct.dentry*, i32) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i32 @fat_flush_inodes(%struct.super_block*, %struct.inode*, %struct.inode*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
