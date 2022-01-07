; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_recovery.c_recover_quota_data.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_recovery.c_recover_quota_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.page = type { i32 }
%struct.f2fs_inode = type { i32, i32 }
%struct.iattr = type { i32, i32, i32 }

@ATTR_UID = common dso_local global i32 0, align 4
@ATTR_GID = common dso_local global i32 0, align 4
@SBI_QUOTA_NEED_REPAIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.page*)* @recover_quota_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recover_quota_data(%struct.inode* %0, %struct.page* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.f2fs_inode*, align 8
  %7 = alloca %struct.iattr, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  %11 = load %struct.page*, %struct.page** %5, align 8
  %12 = call %struct.f2fs_inode* @F2FS_INODE(%struct.page* %11)
  store %struct.f2fs_inode* %12, %struct.f2fs_inode** %6, align 8
  %13 = load %struct.f2fs_inode*, %struct.f2fs_inode** %6, align 8
  %14 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i8* @le32_to_cpu(i32 %15)
  store i8* %16, i8** %8, align 8
  %17 = load %struct.f2fs_inode*, %struct.f2fs_inode** %6, align 8
  %18 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @le32_to_cpu(i32 %19)
  store i8* %20, i8** %9, align 8
  %21 = call i32 @memset(%struct.iattr* %7, i32 0, i32 12)
  %22 = load %struct.inode*, %struct.inode** %4, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i8*, i8** %8, align 8
  %28 = call i32 @make_kuid(i32 %26, i8* %27)
  %29 = getelementptr inbounds %struct.iattr, %struct.iattr* %7, i32 0, i32 2
  store i32 %28, i32* %29, align 4
  %30 = load %struct.inode*, %struct.inode** %4, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %9, align 8
  %36 = call i32 @make_kgid(i32 %34, i8* %35)
  %37 = getelementptr inbounds %struct.iattr, %struct.iattr* %7, i32 0, i32 1
  store i32 %36, i32* %37, align 4
  %38 = getelementptr inbounds %struct.iattr, %struct.iattr* %7, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.inode*, %struct.inode** %4, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @uid_eq(i32 %39, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %2
  %46 = load i32, i32* @ATTR_UID, align 4
  %47 = getelementptr inbounds %struct.iattr, %struct.iattr* %7, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %46
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %45, %2
  %51 = getelementptr inbounds %struct.iattr, %struct.iattr* %7, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.inode*, %struct.inode** %4, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @gid_eq(i32 %52, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %50
  %59 = load i32, i32* @ATTR_GID, align 4
  %60 = getelementptr inbounds %struct.iattr, %struct.iattr* %7, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %59
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %58, %50
  %64 = getelementptr inbounds %struct.iattr, %struct.iattr* %7, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %63
  store i32 0, i32* %3, align 4
  br label %80

68:                                               ; preds = %63
  %69 = load %struct.inode*, %struct.inode** %4, align 8
  %70 = call i32 @dquot_transfer(%struct.inode* %69, %struct.iattr* %7)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load %struct.inode*, %struct.inode** %4, align 8
  %75 = call i32 @F2FS_I_SB(%struct.inode* %74)
  %76 = load i32, i32* @SBI_QUOTA_NEED_REPAIR, align 4
  %77 = call i32 @set_sbi_flag(i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %73, %68
  %79 = load i32, i32* %10, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %78, %67
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local %struct.f2fs_inode* @F2FS_INODE(%struct.page*) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @memset(%struct.iattr*, i32, i32) #1

declare dso_local i32 @make_kuid(i32, i8*) #1

declare dso_local i32 @make_kgid(i32, i8*) #1

declare dso_local i32 @uid_eq(i32, i32) #1

declare dso_local i32 @gid_eq(i32, i32) #1

declare dso_local i32 @dquot_transfer(%struct.inode*, %struct.iattr*) #1

declare dso_local i32 @set_sbi_flag(i32, i32) #1

declare dso_local i32 @F2FS_I_SB(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
