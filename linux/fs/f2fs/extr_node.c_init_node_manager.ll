; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_init_node_manager.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_init_node_manager.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.f2fs_super_block = type { i32, i32, i32 }
%struct.f2fs_nm_info = type { i32, i32, i32, i32, i32, i8*, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64* }

@NAT_ENTRY_PER_BLOCK = common dso_local global i32 0, align 4
@F2FS_RESERVED_NODE_NUM = common dso_local global i32 0, align 4
@FREE_NID = common dso_local global i64 0, align 8
@PREALLOC_NID = common dso_local global i64 0, align 8
@DEF_RAM_THRESHOLD = common dso_local global i32 0, align 4
@DEF_RA_NID_PAGES = common dso_local global i32 0, align 4
@DEF_DIRTY_NAT_RATIO_THRESHOLD = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@NAT_BITMAP = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f2fs_sb_info*)* @init_node_manager to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_node_manager(%struct.f2fs_sb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.f2fs_sb_info*, align 8
  %4 = alloca %struct.f2fs_super_block*, align 8
  %5 = alloca %struct.f2fs_nm_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %3, align 8
  %9 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %10 = call %struct.f2fs_super_block* @F2FS_RAW_SUPER(%struct.f2fs_sb_info* %9)
  store %struct.f2fs_super_block* %10, %struct.f2fs_super_block** %4, align 8
  %11 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %12 = call %struct.f2fs_nm_info* @NM_I(%struct.f2fs_sb_info* %11)
  store %struct.f2fs_nm_info* %12, %struct.f2fs_nm_info** %5, align 8
  %13 = load %struct.f2fs_super_block*, %struct.f2fs_super_block** %4, align 8
  %14 = getelementptr inbounds %struct.f2fs_super_block, %struct.f2fs_super_block* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @le32_to_cpu(i32 %15)
  %17 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %5, align 8
  %18 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.f2fs_super_block*, %struct.f2fs_super_block** %4, align 8
  %20 = getelementptr inbounds %struct.f2fs_super_block, %struct.f2fs_super_block* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @le32_to_cpu(i32 %21)
  %23 = lshr i32 %22, 1
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.f2fs_super_block*, %struct.f2fs_super_block** %4, align 8
  %26 = getelementptr inbounds %struct.f2fs_super_block, %struct.f2fs_super_block* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @le32_to_cpu(i32 %27)
  %29 = shl i32 %24, %28
  %30 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %5, align 8
  %31 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @NAT_ENTRY_PER_BLOCK, align 4
  %33 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %5, align 8
  %34 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = mul i32 %32, %35
  %37 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %5, align 8
  %38 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %5, align 8
  %40 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %43 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sub nsw i32 %41, %44
  %46 = load i32, i32* @F2FS_RESERVED_NODE_NUM, align 4
  %47 = sub nsw i32 %45, %46
  %48 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %5, align 8
  %49 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 4
  %50 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %5, align 8
  %51 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %50, i32 0, i32 21
  %52 = load i64*, i64** %51, align 8
  %53 = load i64, i64* @FREE_NID, align 8
  %54 = getelementptr inbounds i64, i64* %52, i64 %53
  store i64 0, i64* %54, align 8
  %55 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %5, align 8
  %56 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %55, i32 0, i32 21
  %57 = load i64*, i64** %56, align 8
  %58 = load i64, i64* @PREALLOC_NID, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  store i64 0, i64* %59, align 8
  %60 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %5, align 8
  %61 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %60, i32 0, i32 20
  store i64 0, i64* %61, align 8
  %62 = load i32, i32* @DEF_RAM_THRESHOLD, align 4
  %63 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %5, align 8
  %64 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %63, i32 0, i32 19
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @DEF_RA_NID_PAGES, align 4
  %66 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %5, align 8
  %67 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %66, i32 0, i32 18
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* @DEF_DIRTY_NAT_RATIO_THRESHOLD, align 4
  %69 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %5, align 8
  %70 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %69, i32 0, i32 17
  store i32 %68, i32* %70, align 4
  %71 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %5, align 8
  %72 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %71, i32 0, i32 16
  %73 = load i32, i32* @GFP_ATOMIC, align 4
  %74 = call i32 @INIT_RADIX_TREE(i32* %72, i32 %73)
  %75 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %5, align 8
  %76 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %75, i32 0, i32 15
  %77 = call i32 @INIT_LIST_HEAD(i32* %76)
  %78 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %5, align 8
  %79 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %78, i32 0, i32 14
  %80 = load i32, i32* @GFP_NOIO, align 4
  %81 = call i32 @INIT_RADIX_TREE(i32* %79, i32 %80)
  %82 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %5, align 8
  %83 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %82, i32 0, i32 13
  %84 = load i32, i32* @GFP_NOIO, align 4
  %85 = call i32 @INIT_RADIX_TREE(i32* %83, i32 %84)
  %86 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %5, align 8
  %87 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %86, i32 0, i32 12
  %88 = call i32 @INIT_LIST_HEAD(i32* %87)
  %89 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %5, align 8
  %90 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %89, i32 0, i32 11
  %91 = call i32 @spin_lock_init(i32* %90)
  %92 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %5, align 8
  %93 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %92, i32 0, i32 10
  %94 = call i32 @mutex_init(i32* %93)
  %95 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %5, align 8
  %96 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %95, i32 0, i32 9
  %97 = call i32 @spin_lock_init(i32* %96)
  %98 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %5, align 8
  %99 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %98, i32 0, i32 8
  %100 = call i32 @init_rwsem(i32* %99)
  %101 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %102 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %101, i32 0, i32 1
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @le32_to_cpu(i32 %105)
  %107 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %5, align 8
  %108 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %107, i32 0, i32 4
  store i32 %106, i32* %108, align 8
  %109 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %110 = load i32, i32* @NAT_BITMAP, align 4
  %111 = call i32 @__bitmap_size(%struct.f2fs_sb_info* %109, i32 %110)
  %112 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %5, align 8
  %113 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %112, i32 0, i32 6
  store i32 %111, i32* %113, align 8
  %114 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %115 = load i32, i32* @NAT_BITMAP, align 4
  %116 = call i8* @__bitmap_ptr(%struct.f2fs_sb_info* %114, i32 %115)
  store i8* %116, i8** %6, align 8
  %117 = load i8*, i8** %6, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %122, label %119

119:                                              ; preds = %1
  %120 = load i32, i32* @EFAULT, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %2, align 4
  br label %146

122:                                              ; preds = %1
  %123 = load i8*, i8** %6, align 8
  %124 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %5, align 8
  %125 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %124, i32 0, i32 6
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @GFP_KERNEL, align 4
  %128 = call i8* @kmemdup(i8* %123, i32 %126, i32 %127)
  %129 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %5, align 8
  %130 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %129, i32 0, i32 7
  store i8* %128, i8** %130, align 8
  %131 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %5, align 8
  %132 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %131, i32 0, i32 7
  %133 = load i8*, i8** %132, align 8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %138, label %135

135:                                              ; preds = %122
  %136 = load i32, i32* @ENOMEM, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %2, align 4
  br label %146

138:                                              ; preds = %122
  %139 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %140 = call i32 @__get_nat_bitmaps(%struct.f2fs_sb_info* %139)
  store i32 %140, i32* %8, align 4
  %141 = load i32, i32* %8, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %138
  %144 = load i32, i32* %8, align 4
  store i32 %144, i32* %2, align 4
  br label %146

145:                                              ; preds = %138
  store i32 0, i32* %2, align 4
  br label %146

146:                                              ; preds = %145, %143, %135, %119
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

declare dso_local %struct.f2fs_super_block* @F2FS_RAW_SUPER(%struct.f2fs_sb_info*) #1

declare dso_local %struct.f2fs_nm_info* @NM_I(%struct.f2fs_sb_info*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @INIT_RADIX_TREE(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_rwsem(i32*) #1

declare dso_local i32 @__bitmap_size(%struct.f2fs_sb_info*, i32) #1

declare dso_local i8* @__bitmap_ptr(%struct.f2fs_sb_info*, i32) #1

declare dso_local i8* @kmemdup(i8*, i32, i32) #1

declare dso_local i32 @__get_nat_bitmaps(%struct.f2fs_sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
