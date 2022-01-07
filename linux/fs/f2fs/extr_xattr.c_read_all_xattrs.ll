; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_xattr.c_read_all_xattrs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_xattr.c_read_all_xattrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.page = type { i32 }
%struct.f2fs_xattr_header = type { i8*, i8* }
%struct.TYPE_2__ = type { i64 }

@VALID_XATTR_BLOCK_SIZE = common dso_local global i32 0, align 4
@XATTR_PADDING_SIZE = common dso_local global i64 0, align 8
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@F2FS_XATTR_MAGIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.page*, i8**)* @read_all_xattrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_all_xattrs(%struct.inode* %0, %struct.page* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.f2fs_xattr_header*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.page* %1, %struct.page** %6, align 8
  store i8** %2, i8*** %7, align 8
  %14 = load %struct.inode*, %struct.inode** %5, align 8
  %15 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %9, align 8
  %18 = load i32, i32* @VALID_XATTR_BLOCK_SIZE, align 4
  store i32 %18, i32* %10, align 4
  %19 = load %struct.inode*, %struct.inode** %5, align 8
  %20 = call i32 @inline_xattr_size(%struct.inode* %19)
  store i32 %20, i32* %11, align 4
  %21 = load %struct.inode*, %struct.inode** %5, align 8
  %22 = call i32 @F2FS_I_SB(%struct.inode* %21)
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %10, align 4
  %25 = add i32 %23, %24
  %26 = zext i32 %25 to i64
  %27 = load i64, i64* @XATTR_PADDING_SIZE, align 8
  %28 = add nsw i64 %26, %27
  %29 = load i32, i32* @GFP_NOFS, align 4
  %30 = call i8* @f2fs_kzalloc(i32 %22, i64 %28, i32 %29)
  store i8* %30, i8** %12, align 8
  %31 = load i8*, i8** %12, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %3
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %84

36:                                               ; preds = %3
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %36
  %40 = load %struct.inode*, %struct.inode** %5, align 8
  %41 = load %struct.page*, %struct.page** %6, align 8
  %42 = load i8*, i8** %12, align 8
  %43 = call i32 @read_inline_xattr(%struct.inode* %40, %struct.page* %41, i8* %42)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %80

47:                                               ; preds = %39
  br label %48

48:                                               ; preds = %47, %36
  %49 = load i64, i64* %9, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = load %struct.inode*, %struct.inode** %5, align 8
  %53 = load i8*, i8** %12, align 8
  %54 = call i32 @read_xattr_block(%struct.inode* %52, i8* %53)
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %80

58:                                               ; preds = %51
  br label %59

59:                                               ; preds = %58, %48
  %60 = load i8*, i8** %12, align 8
  %61 = call %struct.f2fs_xattr_header* @XATTR_HDR(i8* %60)
  store %struct.f2fs_xattr_header* %61, %struct.f2fs_xattr_header** %8, align 8
  %62 = load %struct.f2fs_xattr_header*, %struct.f2fs_xattr_header** %8, align 8
  %63 = getelementptr inbounds %struct.f2fs_xattr_header, %struct.f2fs_xattr_header* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = call i64 @le32_to_cpu(i8* %64)
  %66 = load i64, i64* @F2FS_XATTR_MAGIC, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %59
  %69 = load i64, i64* @F2FS_XATTR_MAGIC, align 8
  %70 = trunc i64 %69 to i32
  %71 = call i8* @cpu_to_le32(i32 %70)
  %72 = load %struct.f2fs_xattr_header*, %struct.f2fs_xattr_header** %8, align 8
  %73 = getelementptr inbounds %struct.f2fs_xattr_header, %struct.f2fs_xattr_header* %72, i32 0, i32 1
  store i8* %71, i8** %73, align 8
  %74 = call i8* @cpu_to_le32(i32 1)
  %75 = load %struct.f2fs_xattr_header*, %struct.f2fs_xattr_header** %8, align 8
  %76 = getelementptr inbounds %struct.f2fs_xattr_header, %struct.f2fs_xattr_header* %75, i32 0, i32 0
  store i8* %74, i8** %76, align 8
  br label %77

77:                                               ; preds = %68, %59
  %78 = load i8*, i8** %12, align 8
  %79 = load i8**, i8*** %7, align 8
  store i8* %78, i8** %79, align 8
  store i32 0, i32* %4, align 4
  br label %84

80:                                               ; preds = %57, %46
  %81 = load i8*, i8** %12, align 8
  %82 = call i32 @kvfree(i8* %81)
  %83 = load i32, i32* %13, align 4
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %80, %77, %33
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local %struct.TYPE_2__* @F2FS_I(%struct.inode*) #1

declare dso_local i32 @inline_xattr_size(%struct.inode*) #1

declare dso_local i8* @f2fs_kzalloc(i32, i64, i32) #1

declare dso_local i32 @F2FS_I_SB(%struct.inode*) #1

declare dso_local i32 @read_inline_xattr(%struct.inode*, %struct.page*, i8*) #1

declare dso_local i32 @read_xattr_block(%struct.inode*, i8*) #1

declare dso_local %struct.f2fs_xattr_header* @XATTR_HDR(i8*) #1

declare dso_local i64 @le32_to_cpu(i8*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @kvfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
