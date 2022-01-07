; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_inline.c_f2fs_add_inline_entries.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_inline.c_f2fs_add_inline_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.f2fs_dentry_ptr = type { i64, i32*, %struct.f2fs_dir_entry*, i32 }
%struct.f2fs_dir_entry = type { i32, i32 }
%struct.qstr = type { i32, i32 }

@S_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i8*)* @f2fs_add_inline_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f2fs_add_inline_entries(%struct.inode* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.f2fs_dentry_ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.f2fs_dir_entry*, align 8
  %10 = alloca %struct.qstr, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 0, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.inode*, %struct.inode** %4, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @make_dentry_ptr_inline(%struct.inode* %13, %struct.f2fs_dentry_ptr* %6, i8* %14)
  br label %16

16:                                               ; preds = %73, %43, %27, %2
  %17 = load i64, i64* %7, align 8
  %18 = getelementptr inbounds %struct.f2fs_dentry_ptr, %struct.f2fs_dentry_ptr* %6, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %17, %19
  br i1 %20, label %21, label %81

21:                                               ; preds = %16
  %22 = load i64, i64* %7, align 8
  %23 = getelementptr inbounds %struct.f2fs_dentry_ptr, %struct.f2fs_dentry_ptr* %6, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @test_bit_le(i64 %22, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load i64, i64* %7, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %7, align 8
  br label %16

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.f2fs_dentry_ptr, %struct.f2fs_dentry_ptr* %6, i32 0, i32 2
  %32 = load %struct.f2fs_dir_entry*, %struct.f2fs_dir_entry** %31, align 8
  %33 = load i64, i64* %7, align 8
  %34 = getelementptr inbounds %struct.f2fs_dir_entry, %struct.f2fs_dir_entry* %32, i64 %33
  store %struct.f2fs_dir_entry* %34, %struct.f2fs_dir_entry** %9, align 8
  %35 = load %struct.f2fs_dir_entry*, %struct.f2fs_dir_entry** %9, align 8
  %36 = getelementptr inbounds %struct.f2fs_dir_entry, %struct.f2fs_dir_entry* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %30
  %44 = load i64, i64* %7, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %7, align 8
  br label %16

46:                                               ; preds = %30
  %47 = getelementptr inbounds %struct.f2fs_dentry_ptr, %struct.f2fs_dentry_ptr* %6, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* %7, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.qstr, %struct.qstr* %10, i32 0, i32 1
  store i32 %51, i32* %52, align 4
  %53 = load %struct.f2fs_dir_entry*, %struct.f2fs_dir_entry** %9, align 8
  %54 = getelementptr inbounds %struct.f2fs_dir_entry, %struct.f2fs_dir_entry* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @le16_to_cpu(i32 %55)
  %57 = getelementptr inbounds %struct.qstr, %struct.qstr* %10, i32 0, i32 0
  store i32 %56, i32* %57, align 4
  %58 = load %struct.f2fs_dir_entry*, %struct.f2fs_dir_entry** %9, align 8
  %59 = getelementptr inbounds %struct.f2fs_dir_entry, %struct.f2fs_dir_entry* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @le32_to_cpu(i32 %60)
  store i32 %61, i32* %11, align 4
  %62 = load %struct.f2fs_dir_entry*, %struct.f2fs_dir_entry** %9, align 8
  %63 = call i32 @f2fs_get_de_type(%struct.f2fs_dir_entry* %62)
  %64 = load i32, i32* @S_SHIFT, align 4
  %65 = shl i32 %63, %64
  store i32 %65, i32* %12, align 4
  %66 = load %struct.inode*, %struct.inode** %4, align 8
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %12, align 4
  %69 = call i32 @f2fs_add_regular_entry(%struct.inode* %66, %struct.qstr* %10, i32* null, i32* null, i32 %67, i32 %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %46
  br label %82

73:                                               ; preds = %46
  %74 = load %struct.f2fs_dir_entry*, %struct.f2fs_dir_entry** %9, align 8
  %75 = getelementptr inbounds %struct.f2fs_dir_entry, %struct.f2fs_dir_entry* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @le16_to_cpu(i32 %76)
  %78 = call i64 @GET_DENTRY_SLOTS(i32 %77)
  %79 = load i64, i64* %7, align 8
  %80 = add i64 %79, %78
  store i64 %80, i64* %7, align 8
  br label %16

81:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %91

82:                                               ; preds = %72
  %83 = load %struct.inode*, %struct.inode** %4, align 8
  %84 = getelementptr inbounds %struct.inode, %struct.inode* %83, i32 0, i32 0
  %85 = call i32 @truncate_inode_pages(i32* %84, i32 0)
  %86 = load %struct.inode*, %struct.inode** %4, align 8
  %87 = call i32 @f2fs_truncate_blocks(%struct.inode* %86, i32 0, i32 0)
  %88 = load %struct.inode*, %struct.inode** %4, align 8
  %89 = call i32 @f2fs_remove_dirty_inode(%struct.inode* %88)
  %90 = load i32, i32* %8, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %82, %81
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @make_dentry_ptr_inline(%struct.inode*, %struct.f2fs_dentry_ptr*, i8*) #1

declare dso_local i32 @test_bit_le(i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @f2fs_get_de_type(%struct.f2fs_dir_entry*) #1

declare dso_local i32 @f2fs_add_regular_entry(%struct.inode*, %struct.qstr*, i32*, i32*, i32, i32) #1

declare dso_local i64 @GET_DENTRY_SLOTS(i32) #1

declare dso_local i32 @truncate_inode_pages(i32*, i32) #1

declare dso_local i32 @f2fs_truncate_blocks(%struct.inode*, i32, i32) #1

declare dso_local i32 @f2fs_remove_dirty_inode(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
