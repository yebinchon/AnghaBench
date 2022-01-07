; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_dir.c_nfs_symlink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_dir.c_nfs_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.dentry = type { i32 }
%struct.page = type { i32 }
%struct.iattr = type { i32, i32 }
%struct.TYPE_6__ = type { i32 (%struct.inode*, %struct.dentry*, %struct.page*, i32, %struct.iattr*)* }
%struct.TYPE_5__ = type { i32 }

@VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"NFS: symlink(%s/%lu, %pd, %s)\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4
@S_IFLNK = common dso_local global i32 0, align 4
@S_IRWXUGO = common dso_local global i32 0, align 4
@ATTR_MODE = common dso_local global i32 0, align 4
@GFP_USER = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"NFS: symlink(%s/%lu, %pd, %s) error %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_symlink(%struct.inode* %0, %struct.dentry* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.iattr, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = call i32 @strlen(i8* %13)
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* @VFS, align 4
  %16 = load %struct.inode*, %struct.inode** %5, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.inode*, %struct.inode** %5, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.dentry*, %struct.dentry** %6, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 (i32, i8*, i32, i32, %struct.dentry*, i8*, ...) @dfprintk(i32 %15, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %23, %struct.dentry* %24, i8* %25)
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @PAGE_SIZE, align 4
  %29 = icmp ugt i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %3
  %31 = load i32, i32* @ENAMETOOLONG, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %124

33:                                               ; preds = %3
  %34 = load i32, i32* @S_IFLNK, align 4
  %35 = load i32, i32* @S_IRWXUGO, align 4
  %36 = or i32 %34, %35
  %37 = getelementptr inbounds %struct.iattr, %struct.iattr* %10, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* @ATTR_MODE, align 4
  %39 = getelementptr inbounds %struct.iattr, %struct.iattr* %10, i32 0, i32 1
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* @GFP_USER, align 4
  %41 = call %struct.page* @alloc_page(i32 %40)
  store %struct.page* %41, %struct.page** %8, align 8
  %42 = load %struct.page*, %struct.page** %8, align 8
  %43 = icmp ne %struct.page* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %33
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %124

47:                                               ; preds = %33
  %48 = load %struct.page*, %struct.page** %8, align 8
  %49 = call i8* @page_address(%struct.page* %48)
  store i8* %49, i8** %9, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @memcpy(i8* %50, i8* %51, i32 %52)
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @PAGE_SIZE, align 4
  %56 = icmp ult i32 %54, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %47
  %58 = load i8*, i8** %9, align 8
  %59 = load i32, i32* %11, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = load i32, i32* @PAGE_SIZE, align 4
  %63 = load i32, i32* %11, align 4
  %64 = sub i32 %62, %63
  %65 = call i32 @memset(i8* %61, i32 0, i32 %64)
  br label %66

66:                                               ; preds = %57, %47
  %67 = load %struct.inode*, %struct.inode** %5, align 8
  %68 = load %struct.dentry*, %struct.dentry** %6, align 8
  %69 = call i32 @trace_nfs_symlink_enter(%struct.inode* %67, %struct.dentry* %68)
  %70 = load %struct.inode*, %struct.inode** %5, align 8
  %71 = call %struct.TYPE_6__* @NFS_PROTO(%struct.inode* %70)
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32 (%struct.inode*, %struct.dentry*, %struct.page*, i32, %struct.iattr*)*, i32 (%struct.inode*, %struct.dentry*, %struct.page*, i32, %struct.iattr*)** %72, align 8
  %74 = load %struct.inode*, %struct.inode** %5, align 8
  %75 = load %struct.dentry*, %struct.dentry** %6, align 8
  %76 = load %struct.page*, %struct.page** %8, align 8
  %77 = load i32, i32* %11, align 4
  %78 = call i32 %73(%struct.inode* %74, %struct.dentry* %75, %struct.page* %76, i32 %77, %struct.iattr* %10)
  store i32 %78, i32* %12, align 4
  %79 = load %struct.inode*, %struct.inode** %5, align 8
  %80 = load %struct.dentry*, %struct.dentry** %6, align 8
  %81 = load i32, i32* %12, align 4
  %82 = call i32 @trace_nfs_symlink_exit(%struct.inode* %79, %struct.dentry* %80, i32 %81)
  %83 = load i32, i32* %12, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %104

85:                                               ; preds = %66
  %86 = load i32, i32* @VFS, align 4
  %87 = load %struct.inode*, %struct.inode** %5, align 8
  %88 = getelementptr inbounds %struct.inode, %struct.inode* %87, i32 0, i32 1
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.inode*, %struct.inode** %5, align 8
  %93 = getelementptr inbounds %struct.inode, %struct.inode* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.dentry*, %struct.dentry** %6, align 8
  %96 = load i8*, i8** %7, align 8
  %97 = load i32, i32* %12, align 4
  %98 = call i32 (i32, i8*, i32, i32, %struct.dentry*, i8*, ...) @dfprintk(i32 %86, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %91, i32 %94, %struct.dentry* %95, i8* %96, i32 %97)
  %99 = load %struct.dentry*, %struct.dentry** %6, align 8
  %100 = call i32 @d_drop(%struct.dentry* %99)
  %101 = load %struct.page*, %struct.page** %8, align 8
  %102 = call i32 @__free_page(%struct.page* %101)
  %103 = load i32, i32* %12, align 4
  store i32 %103, i32* %4, align 4
  br label %124

104:                                              ; preds = %66
  %105 = load %struct.page*, %struct.page** %8, align 8
  %106 = load %struct.dentry*, %struct.dentry** %6, align 8
  %107 = call %struct.TYPE_5__* @d_inode(%struct.dentry* %106)
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @GFP_KERNEL, align 4
  %111 = call i32 @add_to_page_cache_lru(%struct.page* %105, i32 %109, i32 0, i32 %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %120, label %113

113:                                              ; preds = %104
  %114 = load %struct.page*, %struct.page** %8, align 8
  %115 = call i32 @SetPageUptodate(%struct.page* %114)
  %116 = load %struct.page*, %struct.page** %8, align 8
  %117 = call i32 @unlock_page(%struct.page* %116)
  %118 = load %struct.page*, %struct.page** %8, align 8
  %119 = call i32 @put_page(%struct.page* %118)
  br label %123

120:                                              ; preds = %104
  %121 = load %struct.page*, %struct.page** %8, align 8
  %122 = call i32 @__free_page(%struct.page* %121)
  br label %123

123:                                              ; preds = %120, %113
  store i32 0, i32* %4, align 4
  br label %124

124:                                              ; preds = %123, %85, %44, %30
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @dfprintk(i32, i8*, i32, i32, %struct.dentry*, i8*, ...) #1

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @trace_nfs_symlink_enter(%struct.inode*, %struct.dentry*) #1

declare dso_local %struct.TYPE_6__* @NFS_PROTO(%struct.inode*) #1

declare dso_local i32 @trace_nfs_symlink_exit(%struct.inode*, %struct.dentry*, i32) #1

declare dso_local i32 @d_drop(%struct.dentry*) #1

declare dso_local i32 @__free_page(%struct.page*) #1

declare dso_local i32 @add_to_page_cache_lru(%struct.page*, i32, i32, i32) #1

declare dso_local %struct.TYPE_5__* @d_inode(%struct.dentry*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
