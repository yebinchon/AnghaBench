; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_mballoc.c_ext4_mb_add_groupinfo.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_mballoc.c_ext4_mb_add_groupinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i32 }
%struct.ext4_group_desc = type { i32 }
%struct.ext4_sb_info = type { %struct.ext4_group_info*** }
%struct.ext4_group_info = type { i32, i32*, i32, i32, i32, i32, i32 }
%struct.kmem_cache = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"can't allocate mem for a buddy group\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"can't allocate buddy mem\00", align 1
@EXT4_GROUP_INFO_NEED_INIT_BIT = common dso_local global i32 0, align 4
@EXT4_BG_BLOCK_UNINIT = common dso_local global i32 0, align 4
@RB_ROOT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_mb_add_groupinfo(%struct.super_block* %0, i64 %1, %struct.ext4_group_desc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ext4_group_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ext4_sb_info*, align 8
  %11 = alloca %struct.ext4_group_info**, align 8
  %12 = alloca %struct.kmem_cache*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.ext4_group_desc* %2, %struct.ext4_group_desc** %7, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.super_block*, %struct.super_block** %5, align 8
  %14 = call %struct.ext4_sb_info* @EXT4_SB(%struct.super_block* %13)
  store %struct.ext4_sb_info* %14, %struct.ext4_sb_info** %10, align 8
  %15 = load %struct.super_block*, %struct.super_block** %5, align 8
  %16 = getelementptr inbounds %struct.super_block, %struct.super_block* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.kmem_cache* @get_groupinfo_cache(i32 %17)
  store %struct.kmem_cache* %18, %struct.kmem_cache** %12, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load %struct.super_block*, %struct.super_block** %5, align 8
  %21 = call i64 @EXT4_DESC_PER_BLOCK(%struct.super_block* %20)
  %22 = urem i64 %19, %21
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %49

24:                                               ; preds = %3
  %25 = load %struct.super_block*, %struct.super_block** %5, align 8
  %26 = call i64 @EXT4_DESC_PER_BLOCK_BITS(%struct.super_block* %25)
  %27 = shl i64 8, %26
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @GFP_NOFS, align 4
  %31 = call i8* @kmalloc(i32 %29, i32 %30)
  %32 = bitcast i8* %31 to %struct.ext4_group_info**
  store %struct.ext4_group_info** %32, %struct.ext4_group_info*** %11, align 8
  %33 = load %struct.ext4_group_info**, %struct.ext4_group_info*** %11, align 8
  %34 = icmp eq %struct.ext4_group_info** %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %24
  %36 = load %struct.super_block*, %struct.super_block** %5, align 8
  %37 = load i32, i32* @KERN_ERR, align 4
  %38 = call i32 @ext4_msg(%struct.super_block* %36, i32 %37, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %177

39:                                               ; preds = %24
  %40 = load %struct.ext4_group_info**, %struct.ext4_group_info*** %11, align 8
  %41 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %10, align 8
  %42 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %41, i32 0, i32 0
  %43 = load %struct.ext4_group_info***, %struct.ext4_group_info**** %42, align 8
  %44 = load i64, i64* %6, align 8
  %45 = load %struct.super_block*, %struct.super_block** %5, align 8
  %46 = call i64 @EXT4_DESC_PER_BLOCK_BITS(%struct.super_block* %45)
  %47 = lshr i64 %44, %46
  %48 = getelementptr inbounds %struct.ext4_group_info**, %struct.ext4_group_info*** %43, i64 %47
  store %struct.ext4_group_info** %40, %struct.ext4_group_info*** %48, align 8
  br label %49

49:                                               ; preds = %39, %3
  %50 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %10, align 8
  %51 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %50, i32 0, i32 0
  %52 = load %struct.ext4_group_info***, %struct.ext4_group_info**** %51, align 8
  %53 = load i64, i64* %6, align 8
  %54 = load %struct.super_block*, %struct.super_block** %5, align 8
  %55 = call i64 @EXT4_DESC_PER_BLOCK_BITS(%struct.super_block* %54)
  %56 = lshr i64 %53, %55
  %57 = getelementptr inbounds %struct.ext4_group_info**, %struct.ext4_group_info*** %52, i64 %56
  %58 = load %struct.ext4_group_info**, %struct.ext4_group_info*** %57, align 8
  store %struct.ext4_group_info** %58, %struct.ext4_group_info*** %11, align 8
  %59 = load i64, i64* %6, align 8
  %60 = load %struct.super_block*, %struct.super_block** %5, align 8
  %61 = call i64 @EXT4_DESC_PER_BLOCK(%struct.super_block* %60)
  %62 = sub i64 %61, 1
  %63 = and i64 %59, %62
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %8, align 4
  %65 = load %struct.kmem_cache*, %struct.kmem_cache** %12, align 8
  %66 = load i32, i32* @GFP_NOFS, align 4
  %67 = call %struct.ext4_group_info* @kmem_cache_zalloc(%struct.kmem_cache* %65, i32 %66)
  %68 = load %struct.ext4_group_info**, %struct.ext4_group_info*** %11, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.ext4_group_info*, %struct.ext4_group_info** %68, i64 %70
  store %struct.ext4_group_info* %67, %struct.ext4_group_info** %71, align 8
  %72 = load %struct.ext4_group_info**, %struct.ext4_group_info*** %11, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.ext4_group_info*, %struct.ext4_group_info** %72, i64 %74
  %76 = load %struct.ext4_group_info*, %struct.ext4_group_info** %75, align 8
  %77 = icmp eq %struct.ext4_group_info* %76, null
  br i1 %77, label %78, label %82

78:                                               ; preds = %49
  %79 = load %struct.super_block*, %struct.super_block** %5, align 8
  %80 = load i32, i32* @KERN_ERR, align 4
  %81 = call i32 @ext4_msg(%struct.super_block* %79, i32 %80, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %151

82:                                               ; preds = %49
  %83 = load i32, i32* @EXT4_GROUP_INFO_NEED_INIT_BIT, align 4
  %84 = load %struct.ext4_group_info**, %struct.ext4_group_info*** %11, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.ext4_group_info*, %struct.ext4_group_info** %84, i64 %86
  %88 = load %struct.ext4_group_info*, %struct.ext4_group_info** %87, align 8
  %89 = getelementptr inbounds %struct.ext4_group_info, %struct.ext4_group_info* %88, i32 0, i32 6
  %90 = call i32 @set_bit(i32 %83, i32* %89)
  %91 = load %struct.super_block*, %struct.super_block** %5, align 8
  %92 = call i64 @ext4_has_group_desc_csum(%struct.super_block* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %113

94:                                               ; preds = %82
  %95 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %7, align 8
  %96 = getelementptr inbounds %struct.ext4_group_desc, %struct.ext4_group_desc* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @EXT4_BG_BLOCK_UNINIT, align 4
  %99 = call i32 @cpu_to_le16(i32 %98)
  %100 = and i32 %97, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %113

102:                                              ; preds = %94
  %103 = load %struct.super_block*, %struct.super_block** %5, align 8
  %104 = load i64, i64* %6, align 8
  %105 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %7, align 8
  %106 = call i32 @ext4_free_clusters_after_init(%struct.super_block* %103, i64 %104, %struct.ext4_group_desc* %105)
  %107 = load %struct.ext4_group_info**, %struct.ext4_group_info*** %11, align 8
  %108 = load i32, i32* %8, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.ext4_group_info*, %struct.ext4_group_info** %107, i64 %109
  %111 = load %struct.ext4_group_info*, %struct.ext4_group_info** %110, align 8
  %112 = getelementptr inbounds %struct.ext4_group_info, %struct.ext4_group_info* %111, i32 0, i32 5
  store i32 %106, i32* %112, align 4
  br label %123

113:                                              ; preds = %94, %82
  %114 = load %struct.super_block*, %struct.super_block** %5, align 8
  %115 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %7, align 8
  %116 = call i32 @ext4_free_group_clusters(%struct.super_block* %114, %struct.ext4_group_desc* %115)
  %117 = load %struct.ext4_group_info**, %struct.ext4_group_info*** %11, align 8
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.ext4_group_info*, %struct.ext4_group_info** %117, i64 %119
  %121 = load %struct.ext4_group_info*, %struct.ext4_group_info** %120, align 8
  %122 = getelementptr inbounds %struct.ext4_group_info, %struct.ext4_group_info* %121, i32 0, i32 5
  store i32 %116, i32* %122, align 4
  br label %123

123:                                              ; preds = %113, %102
  %124 = load %struct.ext4_group_info**, %struct.ext4_group_info*** %11, align 8
  %125 = load i32, i32* %8, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.ext4_group_info*, %struct.ext4_group_info** %124, i64 %126
  %128 = load %struct.ext4_group_info*, %struct.ext4_group_info** %127, align 8
  %129 = getelementptr inbounds %struct.ext4_group_info, %struct.ext4_group_info* %128, i32 0, i32 4
  %130 = call i32 @INIT_LIST_HEAD(i32* %129)
  %131 = load %struct.ext4_group_info**, %struct.ext4_group_info*** %11, align 8
  %132 = load i32, i32* %8, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.ext4_group_info*, %struct.ext4_group_info** %131, i64 %133
  %135 = load %struct.ext4_group_info*, %struct.ext4_group_info** %134, align 8
  %136 = getelementptr inbounds %struct.ext4_group_info, %struct.ext4_group_info* %135, i32 0, i32 3
  %137 = call i32 @init_rwsem(i32* %136)
  %138 = load i32, i32* @RB_ROOT, align 4
  %139 = load %struct.ext4_group_info**, %struct.ext4_group_info*** %11, align 8
  %140 = load i32, i32* %8, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.ext4_group_info*, %struct.ext4_group_info** %139, i64 %141
  %143 = load %struct.ext4_group_info*, %struct.ext4_group_info** %142, align 8
  %144 = getelementptr inbounds %struct.ext4_group_info, %struct.ext4_group_info* %143, i32 0, i32 2
  store i32 %138, i32* %144, align 8
  %145 = load %struct.ext4_group_info**, %struct.ext4_group_info*** %11, align 8
  %146 = load i32, i32* %8, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.ext4_group_info*, %struct.ext4_group_info** %145, i64 %147
  %149 = load %struct.ext4_group_info*, %struct.ext4_group_info** %148, align 8
  %150 = getelementptr inbounds %struct.ext4_group_info, %struct.ext4_group_info* %149, i32 0, i32 0
  store i32 -1, i32* %150, align 8
  store i32 0, i32* %4, align 4
  br label %180

151:                                              ; preds = %78
  %152 = load i64, i64* %6, align 8
  %153 = load %struct.super_block*, %struct.super_block** %5, align 8
  %154 = call i64 @EXT4_DESC_PER_BLOCK(%struct.super_block* %153)
  %155 = urem i64 %152, %154
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %157, label %176

157:                                              ; preds = %151
  %158 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %10, align 8
  %159 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %158, i32 0, i32 0
  %160 = load %struct.ext4_group_info***, %struct.ext4_group_info**** %159, align 8
  %161 = load i64, i64* %6, align 8
  %162 = load %struct.super_block*, %struct.super_block** %5, align 8
  %163 = call i64 @EXT4_DESC_PER_BLOCK_BITS(%struct.super_block* %162)
  %164 = lshr i64 %161, %163
  %165 = getelementptr inbounds %struct.ext4_group_info**, %struct.ext4_group_info*** %160, i64 %164
  %166 = load %struct.ext4_group_info**, %struct.ext4_group_info*** %165, align 8
  %167 = call i32 @kfree(%struct.ext4_group_info** %166)
  %168 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %10, align 8
  %169 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %168, i32 0, i32 0
  %170 = load %struct.ext4_group_info***, %struct.ext4_group_info**** %169, align 8
  %171 = load i64, i64* %6, align 8
  %172 = load %struct.super_block*, %struct.super_block** %5, align 8
  %173 = call i64 @EXT4_DESC_PER_BLOCK_BITS(%struct.super_block* %172)
  %174 = lshr i64 %171, %173
  %175 = getelementptr inbounds %struct.ext4_group_info**, %struct.ext4_group_info*** %170, i64 %174
  store %struct.ext4_group_info** null, %struct.ext4_group_info*** %175, align 8
  br label %176

176:                                              ; preds = %157, %151
  br label %177

177:                                              ; preds = %176, %35
  %178 = load i32, i32* @ENOMEM, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %4, align 4
  br label %180

180:                                              ; preds = %177, %123
  %181 = load i32, i32* %4, align 4
  ret i32 %181
}

declare dso_local %struct.ext4_sb_info* @EXT4_SB(%struct.super_block*) #1

declare dso_local %struct.kmem_cache* @get_groupinfo_cache(i32) #1

declare dso_local i64 @EXT4_DESC_PER_BLOCK(%struct.super_block*) #1

declare dso_local i64 @EXT4_DESC_PER_BLOCK_BITS(%struct.super_block*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @ext4_msg(%struct.super_block*, i32, i8*) #1

declare dso_local %struct.ext4_group_info* @kmem_cache_zalloc(%struct.kmem_cache*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @ext4_has_group_desc_csum(%struct.super_block*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @ext4_free_clusters_after_init(%struct.super_block*, i64, %struct.ext4_group_desc*) #1

declare dso_local i32 @ext4_free_group_clusters(%struct.super_block*, %struct.ext4_group_desc*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_rwsem(i32*) #1

declare dso_local i32 @kfree(%struct.ext4_group_info**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
