; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_file.c_ubifs_setattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_file.c_ubifs_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.iattr = type { i32, i64 }
%struct.inode = type { i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ubifs_info* }
%struct.ubifs_info = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"ino %lu, mode %#x, ia_valid %#x\00", align 1
@ATTR_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_setattr(%struct.dentry* %0, %struct.iattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.iattr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.ubifs_info*, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.iattr* %1, %struct.iattr** %5, align 8
  %9 = load %struct.dentry*, %struct.dentry** %4, align 8
  %10 = call %struct.inode* @d_inode(%struct.dentry* %9)
  store %struct.inode* %10, %struct.inode** %7, align 8
  %11 = load %struct.inode*, %struct.inode** %7, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 3
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.ubifs_info*, %struct.ubifs_info** %14, align 8
  store %struct.ubifs_info* %15, %struct.ubifs_info** %8, align 8
  %16 = load %struct.inode*, %struct.inode** %7, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.inode*, %struct.inode** %7, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.iattr*, %struct.iattr** %5, align 8
  %23 = getelementptr inbounds %struct.iattr, %struct.iattr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @dbg_gen(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %21, i32 %24)
  %26 = load %struct.dentry*, %struct.dentry** %4, align 8
  %27 = load %struct.iattr*, %struct.iattr** %5, align 8
  %28 = call i32 @setattr_prepare(%struct.dentry* %26, %struct.iattr* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %76

33:                                               ; preds = %2
  %34 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %35 = load %struct.inode*, %struct.inode** %7, align 8
  %36 = call i32 @dbg_check_synced_i_size(%struct.ubifs_info* %34, %struct.inode* %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %3, align 4
  br label %76

41:                                               ; preds = %33
  %42 = load %struct.dentry*, %struct.dentry** %4, align 8
  %43 = load %struct.iattr*, %struct.iattr** %5, align 8
  %44 = call i32 @fscrypt_prepare_setattr(%struct.dentry* %42, %struct.iattr* %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %3, align 4
  br label %76

49:                                               ; preds = %41
  %50 = load %struct.iattr*, %struct.iattr** %5, align 8
  %51 = getelementptr inbounds %struct.iattr, %struct.iattr* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @ATTR_SIZE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %49
  %57 = load %struct.iattr*, %struct.iattr** %5, align 8
  %58 = getelementptr inbounds %struct.iattr, %struct.iattr* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.inode*, %struct.inode** %7, align 8
  %61 = getelementptr inbounds %struct.inode, %struct.inode* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp slt i64 %59, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %56
  %65 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %66 = load %struct.inode*, %struct.inode** %7, align 8
  %67 = load %struct.iattr*, %struct.iattr** %5, align 8
  %68 = call i32 @do_truncation(%struct.ubifs_info* %65, %struct.inode* %66, %struct.iattr* %67)
  store i32 %68, i32* %6, align 4
  br label %74

69:                                               ; preds = %56, %49
  %70 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %71 = load %struct.inode*, %struct.inode** %7, align 8
  %72 = load %struct.iattr*, %struct.iattr** %5, align 8
  %73 = call i32 @do_setattr(%struct.ubifs_info* %70, %struct.inode* %71, %struct.iattr* %72)
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %69, %64
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %74, %47, %39, %31
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @dbg_gen(i8*, i32, i32, i32) #1

declare dso_local i32 @setattr_prepare(%struct.dentry*, %struct.iattr*) #1

declare dso_local i32 @dbg_check_synced_i_size(%struct.ubifs_info*, %struct.inode*) #1

declare dso_local i32 @fscrypt_prepare_setattr(%struct.dentry*, %struct.iattr*) #1

declare dso_local i32 @do_truncation(%struct.ubifs_info*, %struct.inode*, %struct.iattr*) #1

declare dso_local i32 @do_setattr(%struct.ubifs_info*, %struct.inode*, %struct.iattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
