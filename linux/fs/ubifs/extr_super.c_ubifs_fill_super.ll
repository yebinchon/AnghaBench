; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_super.c_ubifs_fill_super.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_super.c_ubifs_fill_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i64, i32, i32, i32*, i32, i32, i32, %struct.ubifs_info* }
%struct.ubifs_info = type { i64, %struct.inode*, i32, %struct.TYPE_2__, %struct.super_block* }
%struct.inode = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@UBI_READWRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"ubifs_%d_%d\00", align 1
@UBIFS_SUPER_MAGIC = common dso_local global i32 0, align 4
@UBIFS_BLOCK_SIZE = common dso_local global i32 0, align 4
@UBIFS_BLOCK_SHIFT = common dso_local global i32 0, align 4
@MAX_LFS_FILESIZE = common dso_local global i64 0, align 8
@ubifs_super_operations = common dso_local global i32 0, align 4
@ubifs_crypt_operations = common dso_local global i32 0, align 4
@UBIFS_ROOT_INO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ubifs_xattr_handlers = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i8*, i32)* @ubifs_fill_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ubifs_fill_super(%struct.super_block* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ubifs_info*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.super_block*, %struct.super_block** %5, align 8
  %12 = getelementptr inbounds %struct.super_block, %struct.super_block* %11, i32 0, i32 7
  %13 = load %struct.ubifs_info*, %struct.ubifs_info** %12, align 8
  store %struct.ubifs_info* %13, %struct.ubifs_info** %8, align 8
  %14 = load %struct.super_block*, %struct.super_block** %5, align 8
  %15 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %16 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %15, i32 0, i32 4
  store %struct.super_block* %14, %struct.super_block** %16, align 8
  %17 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %18 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %22 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @UBI_READWRITE, align 4
  %26 = call %struct.inode* @ubi_open_volume(i32 %20, i32 %24, i32 %25)
  %27 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %28 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %27, i32 0, i32 1
  store %struct.inode* %26, %struct.inode** %28, align 8
  %29 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %30 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %29, i32 0, i32 1
  %31 = load %struct.inode*, %struct.inode** %30, align 8
  %32 = call i64 @IS_ERR(%struct.inode* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %3
  %35 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %36 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %35, i32 0, i32 1
  %37 = load %struct.inode*, %struct.inode** %36, align 8
  %38 = call i32 @PTR_ERR(%struct.inode* %37)
  store i32 %38, i32* %10, align 4
  br label %146

39:                                               ; preds = %3
  %40 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @ubifs_parse_options(%struct.ubifs_info* %40, i8* %41, i32 0)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %141

46:                                               ; preds = %39
  %47 = load %struct.super_block*, %struct.super_block** %5, align 8
  %48 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %49 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %53 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @super_setup_bdi_name(%struct.super_block* %47, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %55)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %46
  br label %141

60:                                               ; preds = %46
  %61 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %62 = load %struct.super_block*, %struct.super_block** %5, align 8
  %63 = getelementptr inbounds %struct.super_block, %struct.super_block* %62, i32 0, i32 7
  store %struct.ubifs_info* %61, %struct.ubifs_info** %63, align 8
  %64 = load i32, i32* @UBIFS_SUPER_MAGIC, align 4
  %65 = load %struct.super_block*, %struct.super_block** %5, align 8
  %66 = getelementptr inbounds %struct.super_block, %struct.super_block* %65, i32 0, i32 6
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* @UBIFS_BLOCK_SIZE, align 4
  %68 = load %struct.super_block*, %struct.super_block** %5, align 8
  %69 = getelementptr inbounds %struct.super_block, %struct.super_block* %68, i32 0, i32 5
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @UBIFS_BLOCK_SHIFT, align 4
  %71 = load %struct.super_block*, %struct.super_block** %5, align 8
  %72 = getelementptr inbounds %struct.super_block, %struct.super_block* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 8
  %73 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %74 = call i64 @key_max_inode_size(%struct.ubifs_info* %73)
  %75 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %76 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  %77 = load %struct.super_block*, %struct.super_block** %5, align 8
  %78 = getelementptr inbounds %struct.super_block, %struct.super_block* %77, i32 0, i32 0
  store i64 %74, i64* %78, align 8
  %79 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %80 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @MAX_LFS_FILESIZE, align 8
  %83 = icmp sgt i64 %81, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %60
  %85 = load i64, i64* @MAX_LFS_FILESIZE, align 8
  %86 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %87 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  %88 = load %struct.super_block*, %struct.super_block** %5, align 8
  %89 = getelementptr inbounds %struct.super_block, %struct.super_block* %88, i32 0, i32 0
  store i64 %85, i64* %89, align 8
  br label %90

90:                                               ; preds = %84, %60
  %91 = load %struct.super_block*, %struct.super_block** %5, align 8
  %92 = getelementptr inbounds %struct.super_block, %struct.super_block* %91, i32 0, i32 3
  store i32* @ubifs_super_operations, i32** %92, align 8
  %93 = load %struct.super_block*, %struct.super_block** %5, align 8
  %94 = call i32 @fscrypt_set_ops(%struct.super_block* %93, i32* @ubifs_crypt_operations)
  %95 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %96 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %95, i32 0, i32 2
  %97 = call i32 @mutex_lock(i32* %96)
  %98 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %99 = call i32 @mount_ubifs(%struct.ubifs_info* %98)
  store i32 %99, i32* %10, align 4
  %100 = load i32, i32* %10, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %90
  %103 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %104 = load i32, i32* %10, align 4
  %105 = icmp slt i32 %104, 0
  %106 = zext i1 %105 to i32
  %107 = call i32 @ubifs_assert(%struct.ubifs_info* %103, i32 %106)
  br label %137

108:                                              ; preds = %90
  %109 = load %struct.super_block*, %struct.super_block** %5, align 8
  %110 = load i32, i32* @UBIFS_ROOT_INO, align 4
  %111 = call %struct.inode* @ubifs_iget(%struct.super_block* %109, i32 %110)
  store %struct.inode* %111, %struct.inode** %9, align 8
  %112 = load %struct.inode*, %struct.inode** %9, align 8
  %113 = call i64 @IS_ERR(%struct.inode* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %108
  %116 = load %struct.inode*, %struct.inode** %9, align 8
  %117 = call i32 @PTR_ERR(%struct.inode* %116)
  store i32 %117, i32* %10, align 4
  br label %134

118:                                              ; preds = %108
  %119 = load %struct.inode*, %struct.inode** %9, align 8
  %120 = call i32 @d_make_root(%struct.inode* %119)
  %121 = load %struct.super_block*, %struct.super_block** %5, align 8
  %122 = getelementptr inbounds %struct.super_block, %struct.super_block* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 8
  %123 = load %struct.super_block*, %struct.super_block** %5, align 8
  %124 = getelementptr inbounds %struct.super_block, %struct.super_block* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %118
  %128 = load i32, i32* @ENOMEM, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %10, align 4
  br label %134

130:                                              ; preds = %118
  %131 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %132 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %131, i32 0, i32 2
  %133 = call i32 @mutex_unlock(i32* %132)
  store i32 0, i32* %4, align 4
  br label %148

134:                                              ; preds = %127, %115
  %135 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %136 = call i32 @ubifs_umount(%struct.ubifs_info* %135)
  br label %137

137:                                              ; preds = %134, %102
  %138 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %139 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %138, i32 0, i32 2
  %140 = call i32 @mutex_unlock(i32* %139)
  br label %141

141:                                              ; preds = %137, %59, %45
  %142 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %143 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %142, i32 0, i32 1
  %144 = load %struct.inode*, %struct.inode** %143, align 8
  %145 = call i32 @ubi_close_volume(%struct.inode* %144)
  br label %146

146:                                              ; preds = %141, %34
  %147 = load i32, i32* %10, align 4
  store i32 %147, i32* %4, align 4
  br label %148

148:                                              ; preds = %146, %130
  %149 = load i32, i32* %4, align 4
  ret i32 %149
}

declare dso_local %struct.inode* @ubi_open_volume(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @ubifs_parse_options(%struct.ubifs_info*, i8*, i32) #1

declare dso_local i32 @super_setup_bdi_name(%struct.super_block*, i8*, i32, i32) #1

declare dso_local i64 @key_max_inode_size(%struct.ubifs_info*) #1

declare dso_local i32 @fscrypt_set_ops(%struct.super_block*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mount_ubifs(%struct.ubifs_info*) #1

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local %struct.inode* @ubifs_iget(%struct.super_block*, i32) #1

declare dso_local i32 @d_make_root(%struct.inode*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ubifs_umount(%struct.ubifs_info*) #1

declare dso_local i32 @ubi_close_volume(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
