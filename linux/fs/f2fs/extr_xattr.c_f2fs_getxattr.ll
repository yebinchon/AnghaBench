; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_xattr.c_f2fs_getxattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_xattr.c_f2fs_getxattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.page = type { i32 }
%struct.f2fs_xattr_entry = type { i8*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@F2FS_NAME_LEN = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f2fs_getxattr(%struct.inode* %0, i32 %1, i8* %2, i8* %3, i64 %4, %struct.page* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.page*, align 8
  %14 = alloca %struct.f2fs_xattr_entry*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  store %struct.inode* %0, %struct.inode** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store %struct.page* %5, %struct.page** %13, align 8
  store %struct.f2fs_xattr_entry* null, %struct.f2fs_xattr_entry** %14, align 8
  store i32 0, i32* %15, align 4
  store i8* null, i8** %18, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %6
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %7, align 4
  br label %106

26:                                               ; preds = %6
  %27 = load i8*, i8** %10, align 8
  %28 = call i32 @strlen(i8* %27)
  store i32 %28, i32* %17, align 4
  %29 = load i32, i32* %17, align 4
  %30 = load i32, i32* @F2FS_NAME_LEN, align 4
  %31 = icmp ugt i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* @ERANGE, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %7, align 4
  br label %106

35:                                               ; preds = %26
  %36 = load %struct.inode*, %struct.inode** %8, align 8
  %37 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %36)
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = call i32 @down_read(i32* %38)
  %40 = load %struct.inode*, %struct.inode** %8, align 8
  %41 = load %struct.page*, %struct.page** %13, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %17, align 4
  %44 = load i8*, i8** %10, align 8
  %45 = call i32 @lookup_all_xattrs(%struct.inode* %40, %struct.page* %41, i32 %42, i32 %43, i8* %44, %struct.f2fs_xattr_entry** %14, i8** %18, i32* %19)
  store i32 %45, i32* %15, align 4
  %46 = load %struct.inode*, %struct.inode** %8, align 8
  %47 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %46)
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = call i32 @up_read(i32* %48)
  %50 = load i32, i32* %15, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %35
  %53 = load i32, i32* %15, align 4
  store i32 %53, i32* %7, align 4
  br label %106

54:                                               ; preds = %35
  %55 = load %struct.f2fs_xattr_entry*, %struct.f2fs_xattr_entry** %14, align 8
  %56 = getelementptr inbounds %struct.f2fs_xattr_entry, %struct.f2fs_xattr_entry* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @le16_to_cpu(i32 %57)
  store i32 %58, i32* %16, align 4
  %59 = load i8*, i8** %11, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %69

61:                                               ; preds = %54
  %62 = load i32, i32* %16, align 4
  %63 = zext i32 %62 to i64
  %64 = load i64, i64* %12, align 8
  %65 = icmp ugt i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i32, i32* @ERANGE, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %15, align 4
  br label %102

69:                                               ; preds = %61, %54
  %70 = load i8*, i8** %11, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %100

72:                                               ; preds = %69
  %73 = load %struct.f2fs_xattr_entry*, %struct.f2fs_xattr_entry** %14, align 8
  %74 = getelementptr inbounds %struct.f2fs_xattr_entry, %struct.f2fs_xattr_entry* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = load %struct.f2fs_xattr_entry*, %struct.f2fs_xattr_entry** %14, align 8
  %77 = getelementptr inbounds %struct.f2fs_xattr_entry, %struct.f2fs_xattr_entry* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %75, i64 %79
  store i8* %80, i8** %20, align 8
  %81 = load i32, i32* %19, align 4
  %82 = sext i32 %81 to i64
  %83 = load i8*, i8** %20, align 8
  %84 = load i8*, i8** %18, align 8
  %85 = ptrtoint i8* %83 to i64
  %86 = ptrtoint i8* %84 to i64
  %87 = sub i64 %85, %86
  %88 = sub nsw i64 %82, %87
  %89 = load i32, i32* %16, align 4
  %90 = zext i32 %89 to i64
  %91 = icmp slt i64 %88, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %72
  %93 = load i32, i32* @ERANGE, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %15, align 4
  br label %102

95:                                               ; preds = %72
  %96 = load i8*, i8** %11, align 8
  %97 = load i8*, i8** %20, align 8
  %98 = load i32, i32* %16, align 4
  %99 = call i32 @memcpy(i8* %96, i8* %97, i32 %98)
  br label %100

100:                                              ; preds = %95, %69
  %101 = load i32, i32* %16, align 4
  store i32 %101, i32* %15, align 4
  br label %102

102:                                              ; preds = %100, %92, %66
  %103 = load i8*, i8** %18, align 8
  %104 = call i32 @kvfree(i8* %103)
  %105 = load i32, i32* %15, align 4
  store i32 %105, i32* %7, align 4
  br label %106

106:                                              ; preds = %102, %52, %32, %23
  %107 = load i32, i32* %7, align 4
  ret i32 %107
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.TYPE_2__* @F2FS_I(%struct.inode*) #1

declare dso_local i32 @lookup_all_xattrs(%struct.inode*, %struct.page*, i32, i32, i8*, %struct.f2fs_xattr_entry**, i8**, i32*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @kvfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
