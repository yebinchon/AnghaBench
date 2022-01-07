; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_migrate.c_ext4_ind_migrate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_migrate.c_ext4_ind_migrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_extent_header = type { i64, i64 }
%struct.ext4_super_block = type { i32 }
%struct.ext4_inode_info = type { i32, i32* }
%struct.ext4_extent = type { i64, i32 }
%struct.TYPE_2__ = type { %struct.ext4_super_block* }

@EXT4_INODE_EXTENTS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@DELALLOC = common dso_local global i32 0, align 4
@EXT4_HT_MIGRATE = common dso_local global i32 0, align 4
@EXT4_MAX_BLOCK_FILE_PHYS = common dso_local global i64 0, align 8
@EXT4_NDIR_BLOCKS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_ind_migrate(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.ext4_extent_header*, align 8
  %5 = alloca %struct.ext4_super_block*, align 8
  %6 = alloca %struct.ext4_inode_info*, align 8
  %7 = alloca %struct.ext4_extent*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  %15 = load %struct.inode*, %struct.inode** %3, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.TYPE_2__* @EXT4_SB(i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.ext4_super_block*, %struct.ext4_super_block** %19, align 8
  store %struct.ext4_super_block* %20, %struct.ext4_super_block** %5, align 8
  %21 = load %struct.inode*, %struct.inode** %3, align 8
  %22 = call %struct.ext4_inode_info* @EXT4_I(%struct.inode* %21)
  store %struct.ext4_inode_info* %22, %struct.ext4_inode_info** %6, align 8
  %23 = load %struct.inode*, %struct.inode** %3, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ext4_has_feature_extents(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %1
  %29 = load %struct.inode*, %struct.inode** %3, align 8
  %30 = load i32, i32* @EXT4_INODE_EXTENTS, align 4
  %31 = call i32 @ext4_test_inode_flag(%struct.inode* %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %28, %1
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %164

36:                                               ; preds = %28
  %37 = load %struct.inode*, %struct.inode** %3, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @ext4_has_feature_bigalloc(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32, i32* @EOPNOTSUPP, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %164

45:                                               ; preds = %36
  %46 = load %struct.inode*, %struct.inode** %3, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @DELALLOC, align 4
  %50 = call i64 @test_opt(i32 %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load %struct.inode*, %struct.inode** %3, align 8
  %54 = call i32 @ext4_alloc_da_blocks(%struct.inode* %53)
  br label %55

55:                                               ; preds = %52, %45
  %56 = load %struct.inode*, %struct.inode** %3, align 8
  %57 = load i32, i32* @EXT4_HT_MIGRATE, align 4
  %58 = call i32* @ext4_journal_start(%struct.inode* %56, i32 %57, i32 1)
  store i32* %58, i32** %13, align 8
  %59 = load i32*, i32** %13, align 8
  %60 = call i64 @IS_ERR(i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = load i32*, i32** %13, align 8
  %64 = call i32 @PTR_ERR(i32* %63)
  store i32 %64, i32* %2, align 4
  br label %164

65:                                               ; preds = %55
  %66 = load %struct.inode*, %struct.inode** %3, align 8
  %67 = call %struct.ext4_inode_info* @EXT4_I(%struct.inode* %66)
  %68 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %67, i32 0, i32 0
  %69 = call i32 @down_write(i32* %68)
  %70 = load %struct.inode*, %struct.inode** %3, align 8
  %71 = call i32 @ext4_ext_check_inode(%struct.inode* %70)
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %14, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %65
  br label %156

75:                                               ; preds = %65
  %76 = load %struct.inode*, %struct.inode** %3, align 8
  %77 = call %struct.ext4_extent_header* @ext_inode_hdr(%struct.inode* %76)
  store %struct.ext4_extent_header* %77, %struct.ext4_extent_header** %4, align 8
  %78 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %4, align 8
  %79 = call %struct.ext4_extent* @EXT_FIRST_EXTENT(%struct.ext4_extent_header* %78)
  store %struct.ext4_extent* %79, %struct.ext4_extent** %7, align 8
  %80 = load %struct.ext4_super_block*, %struct.ext4_super_block** %5, align 8
  %81 = call i64 @ext4_blocks_count(%struct.ext4_super_block* %80)
  %82 = load i64, i64* @EXT4_MAX_BLOCK_FILE_PHYS, align 8
  %83 = icmp sgt i64 %81, %82
  br i1 %83, label %95, label %84

84:                                               ; preds = %75
  %85 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %4, align 8
  %86 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %95, label %89

89:                                               ; preds = %84
  %90 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %4, align 8
  %91 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @le16_to_cpu(i64 %92)
  %94 = icmp sgt i32 %93, 1
  br i1 %94, label %95, label %98

95:                                               ; preds = %89, %84, %75
  %96 = load i32, i32* @EOPNOTSUPP, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %14, align 4
  br label %156

98:                                               ; preds = %89
  %99 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %4, align 8
  %100 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %12, align 4
  br label %126

104:                                              ; preds = %98
  %105 = load %struct.ext4_extent*, %struct.ext4_extent** %7, align 8
  %106 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @le16_to_cpu(i64 %107)
  store i32 %108, i32* %9, align 4
  %109 = load %struct.ext4_extent*, %struct.ext4_extent** %7, align 8
  %110 = call i32 @ext4_ext_pblock(%struct.ext4_extent* %109)
  store i32 %110, i32* %12, align 4
  %111 = load %struct.ext4_extent*, %struct.ext4_extent** %7, align 8
  %112 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @le32_to_cpu(i32 %113)
  store i32 %114, i32* %10, align 4
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* %9, align 4
  %117 = add i32 %115, %116
  %118 = sub i32 %117, 1
  store i32 %118, i32* %11, align 4
  %119 = load i32, i32* %11, align 4
  %120 = load i32, i32* @EXT4_NDIR_BLOCKS, align 4
  %121 = icmp uge i32 %119, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %104
  %123 = load i32, i32* @EOPNOTSUPP, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %14, align 4
  br label %156

125:                                              ; preds = %104
  br label %126

126:                                              ; preds = %125, %103
  %127 = load %struct.inode*, %struct.inode** %3, align 8
  %128 = load i32, i32* @EXT4_INODE_EXTENTS, align 4
  %129 = call i32 @ext4_clear_inode_flag(%struct.inode* %127, i32 %128)
  %130 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %6, align 8
  %131 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = call i32 @memset(i32* %132, i32 0, i32 8)
  %134 = load i32, i32* %10, align 4
  store i32 %134, i32* %8, align 4
  br label %135

135:                                              ; preds = %149, %126
  %136 = load i32, i32* %8, align 4
  %137 = load i32, i32* %11, align 4
  %138 = icmp ule i32 %136, %137
  br i1 %138, label %139, label %152

139:                                              ; preds = %135
  %140 = load i32, i32* %12, align 4
  %141 = add i32 %140, 1
  store i32 %141, i32* %12, align 4
  %142 = call i32 @cpu_to_le32(i32 %140)
  %143 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %6, align 8
  %144 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %8, align 4
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  store i32 %142, i32* %148, align 4
  br label %149

149:                                              ; preds = %139
  %150 = load i32, i32* %8, align 4
  %151 = add i32 %150, 1
  store i32 %151, i32* %8, align 4
  br label %135

152:                                              ; preds = %135
  %153 = load i32*, i32** %13, align 8
  %154 = load %struct.inode*, %struct.inode** %3, align 8
  %155 = call i32 @ext4_mark_inode_dirty(i32* %153, %struct.inode* %154)
  br label %156

156:                                              ; preds = %152, %122, %95, %74
  %157 = load i32*, i32** %13, align 8
  %158 = call i32 @ext4_journal_stop(i32* %157)
  %159 = load %struct.inode*, %struct.inode** %3, align 8
  %160 = call %struct.ext4_inode_info* @EXT4_I(%struct.inode* %159)
  %161 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %160, i32 0, i32 0
  %162 = call i32 @up_write(i32* %161)
  %163 = load i32, i32* %14, align 4
  store i32 %163, i32* %2, align 4
  br label %164

164:                                              ; preds = %156, %62, %42, %33
  %165 = load i32, i32* %2, align 4
  ret i32 %165
}

declare dso_local %struct.TYPE_2__* @EXT4_SB(i32) #1

declare dso_local %struct.ext4_inode_info* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @ext4_has_feature_extents(i32) #1

declare dso_local i32 @ext4_test_inode_flag(%struct.inode*, i32) #1

declare dso_local i64 @ext4_has_feature_bigalloc(i32) #1

declare dso_local i64 @test_opt(i32, i32) #1

declare dso_local i32 @ext4_alloc_da_blocks(%struct.inode*) #1

declare dso_local i32* @ext4_journal_start(%struct.inode*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @ext4_ext_check_inode(%struct.inode*) #1

declare dso_local %struct.ext4_extent_header* @ext_inode_hdr(%struct.inode*) #1

declare dso_local %struct.ext4_extent* @EXT_FIRST_EXTENT(%struct.ext4_extent_header*) #1

declare dso_local i64 @ext4_blocks_count(%struct.ext4_super_block*) #1

declare dso_local i32 @le16_to_cpu(i64) #1

declare dso_local i32 @ext4_ext_pblock(%struct.ext4_extent*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ext4_clear_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @ext4_mark_inode_dirty(i32*, %struct.inode*) #1

declare dso_local i32 @ext4_journal_stop(i32*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
