; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_dir.c_find_in_level.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_dir.c_find_in_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_dir_entry = type { i32 }
%struct.inode = type { i32 }
%struct.fscrypt_name = type { i32 }
%struct.page = type { i32 }
%struct.qstr = type { i32 }
%struct.TYPE_2__ = type { i64, i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.f2fs_dir_entry* (%struct.inode*, i32, %struct.fscrypt_name*, %struct.page**)* @find_in_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.f2fs_dir_entry* @find_in_level(%struct.inode* %0, i32 %1, %struct.fscrypt_name* %2, %struct.page** %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fscrypt_name*, align 8
  %8 = alloca %struct.page**, align 8
  %9 = alloca %struct.qstr, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.page*, align 8
  %16 = alloca %struct.f2fs_dir_entry*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.fscrypt_name* %2, %struct.fscrypt_name** %7, align 8
  store %struct.page** %3, %struct.page*** %8, align 8
  %20 = load %struct.fscrypt_name*, %struct.fscrypt_name** %7, align 8
  %21 = getelementptr inbounds %struct.fscrypt_name, %struct.fscrypt_name* %20, i32 0, i32 0
  %22 = call i32 @FSTR_TO_QSTR(i32* %21)
  %23 = getelementptr inbounds %struct.qstr, %struct.qstr* %9, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = getelementptr inbounds %struct.qstr, %struct.qstr* %9, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @GET_DENTRY_SLOTS(i32 %25)
  store i32 %26, i32* %10, align 4
  store %struct.f2fs_dir_entry* null, %struct.f2fs_dir_entry** %16, align 8
  store i32 0, i32* %17, align 4
  %27 = load %struct.inode*, %struct.inode** %5, align 8
  %28 = load %struct.fscrypt_name*, %struct.fscrypt_name** %7, align 8
  %29 = call i64 @f2fs_dentry_hash(%struct.inode* %27, %struct.qstr* %9, %struct.fscrypt_name* %28)
  store i64 %29, i64* %19, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.inode*, %struct.inode** %5, align 8
  %32 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %31)
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @dir_buckets(i32 %30, i32 %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @bucket_blocks(i32 %36)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.inode*, %struct.inode** %5, align 8
  %40 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %39)
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* %19, align 8
  %44 = call i32 @le32_to_cpu(i64 %43)
  %45 = load i32, i32* %11, align 4
  %46 = urem i32 %44, %45
  %47 = call i32 @dir_block_index(i32 %38, i32 %42, i32 %46)
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* %12, align 4
  %50 = add i32 %48, %49
  store i32 %50, i32* %14, align 4
  br label %51

51:                                               ; preds = %90, %4
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %14, align 4
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %55, label %93

55:                                               ; preds = %51
  %56 = load %struct.inode*, %struct.inode** %5, align 8
  %57 = load i32, i32* %13, align 4
  %58 = call %struct.page* @f2fs_find_data_page(%struct.inode* %56, i32 %57)
  store %struct.page* %58, %struct.page** %15, align 8
  %59 = load %struct.page*, %struct.page** %15, align 8
  %60 = call i64 @IS_ERR(%struct.page* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %55
  %63 = load %struct.page*, %struct.page** %15, align 8
  %64 = call i32 @PTR_ERR(%struct.page* %63)
  %65 = load i32, i32* @ENOENT, align 4
  %66 = sub nsw i32 0, %65
  %67 = icmp eq i32 %64, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  store i32 1, i32* %17, align 4
  br label %90

69:                                               ; preds = %62
  %70 = load %struct.page*, %struct.page** %15, align 8
  %71 = load %struct.page**, %struct.page*** %8, align 8
  store %struct.page* %70, %struct.page** %71, align 8
  br label %93

72:                                               ; preds = %55
  %73 = load %struct.inode*, %struct.inode** %5, align 8
  %74 = load %struct.page*, %struct.page** %15, align 8
  %75 = load %struct.fscrypt_name*, %struct.fscrypt_name** %7, align 8
  %76 = load i64, i64* %19, align 8
  %77 = load %struct.page**, %struct.page*** %8, align 8
  %78 = call %struct.f2fs_dir_entry* @find_in_block(%struct.inode* %73, %struct.page* %74, %struct.fscrypt_name* %75, i64 %76, i32* %18, %struct.page** %77)
  store %struct.f2fs_dir_entry* %78, %struct.f2fs_dir_entry** %16, align 8
  %79 = load %struct.f2fs_dir_entry*, %struct.f2fs_dir_entry** %16, align 8
  %80 = icmp ne %struct.f2fs_dir_entry* %79, null
  br i1 %80, label %81, label %82

81:                                               ; preds = %72
  br label %93

82:                                               ; preds = %72
  %83 = load i32, i32* %18, align 4
  %84 = load i32, i32* %10, align 4
  %85 = icmp sge i32 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  store i32 1, i32* %17, align 4
  br label %87

87:                                               ; preds = %86, %82
  %88 = load %struct.page*, %struct.page** %15, align 8
  %89 = call i32 @f2fs_put_page(%struct.page* %88, i32 0)
  br label %90

90:                                               ; preds = %87, %68
  %91 = load i32, i32* %13, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %13, align 4
  br label %51

93:                                               ; preds = %81, %69, %51
  %94 = load %struct.f2fs_dir_entry*, %struct.f2fs_dir_entry** %16, align 8
  %95 = icmp ne %struct.f2fs_dir_entry* %94, null
  br i1 %95, label %115, label %96

96:                                               ; preds = %93
  %97 = load i32, i32* %17, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %115

99:                                               ; preds = %96
  %100 = load %struct.inode*, %struct.inode** %5, align 8
  %101 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %100)
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* %19, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %115

106:                                              ; preds = %99
  %107 = load i64, i64* %19, align 8
  %108 = load %struct.inode*, %struct.inode** %5, align 8
  %109 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %108)
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  store i64 %107, i64* %110, align 8
  %111 = load i32, i32* %6, align 4
  %112 = load %struct.inode*, %struct.inode** %5, align 8
  %113 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %112)
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 1
  store i32 %111, i32* %114, align 8
  br label %115

115:                                              ; preds = %106, %99, %96, %93
  %116 = load %struct.f2fs_dir_entry*, %struct.f2fs_dir_entry** %16, align 8
  ret %struct.f2fs_dir_entry* %116
}

declare dso_local i32 @FSTR_TO_QSTR(i32*) #1

declare dso_local i32 @GET_DENTRY_SLOTS(i32) #1

declare dso_local i64 @f2fs_dentry_hash(%struct.inode*, %struct.qstr*, %struct.fscrypt_name*) #1

declare dso_local i32 @dir_buckets(i32, i32) #1

declare dso_local %struct.TYPE_2__* @F2FS_I(%struct.inode*) #1

declare dso_local i32 @bucket_blocks(i32) #1

declare dso_local i32 @dir_block_index(i32, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local %struct.page* @f2fs_find_data_page(%struct.inode*, i32) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @PTR_ERR(%struct.page*) #1

declare dso_local %struct.f2fs_dir_entry* @find_in_block(%struct.inode*, %struct.page*, %struct.fscrypt_name*, i64, i32*, %struct.page**) #1

declare dso_local i32 @f2fs_put_page(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
