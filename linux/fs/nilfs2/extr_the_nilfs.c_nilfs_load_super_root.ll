; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_the_nilfs.c_nilfs_load_super_root.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_the_nilfs.c_nilfs_load_super_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.the_nilfs = type { i32, i32, i32, i32, i32, i32, %struct.nilfs_super_block** }
%struct.nilfs_super_block = type { i32, i32, i32 }
%struct.super_block = type { i32 }
%struct.buffer_head = type { i64 }
%struct.nilfs_super_root = type { i32 }
%struct.nilfs_inode = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.the_nilfs*, %struct.super_block*, i32)* @nilfs_load_super_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_load_super_root(%struct.the_nilfs* %0, %struct.super_block* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.the_nilfs*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.nilfs_super_root*, align 8
  %10 = alloca %struct.nilfs_super_block**, align 8
  %11 = alloca %struct.nilfs_inode*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.the_nilfs* %0, %struct.the_nilfs** %5, align 8
  store %struct.super_block* %1, %struct.super_block** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %18 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %17, i32 0, i32 6
  %19 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %18, align 8
  store %struct.nilfs_super_block** %19, %struct.nilfs_super_block*** %10, align 8
  %20 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @nilfs_read_super_root_block(%struct.the_nilfs* %20, i32 %21, %struct.buffer_head** %8, i32 1)
  store i32 %22, i32* %16, align 4
  %23 = load i32, i32* %16, align 4
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* %16, align 4
  store i32 %27, i32* %4, align 4
  br label %137

28:                                               ; preds = %3
  %29 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %30 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %29, i32 0, i32 5
  %31 = call i32 @down_read(i32* %30)
  %32 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %10, align 8
  %33 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %32, i64 0
  %34 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %33, align 8
  %35 = getelementptr inbounds %struct.nilfs_super_block, %struct.nilfs_super_block* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @le16_to_cpu(i32 %36)
  store i32 %37, i32* %12, align 4
  %38 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %10, align 8
  %39 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %38, i64 0
  %40 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %39, align 8
  %41 = getelementptr inbounds %struct.nilfs_super_block, %struct.nilfs_super_block* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @le16_to_cpu(i32 %42)
  store i32 %43, i32* %14, align 4
  %44 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %10, align 8
  %45 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %44, i64 0
  %46 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %45, align 8
  %47 = getelementptr inbounds %struct.nilfs_super_block, %struct.nilfs_super_block* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @le16_to_cpu(i32 %48)
  store i32 %49, i32* %13, align 4
  %50 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %51 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %50, i32 0, i32 5
  %52 = call i32 @up_read(i32* %51)
  %53 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %54 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %15, align 4
  %56 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %57 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to i8*
  %60 = load i32, i32* %15, align 4
  %61 = call i32 @NILFS_SR_DAT_OFFSET(i32 %60)
  %62 = sext i32 %61 to i64
  %63 = getelementptr i8, i8* %59, i64 %62
  %64 = bitcast i8* %63 to %struct.nilfs_inode*
  store %struct.nilfs_inode* %64, %struct.nilfs_inode** %11, align 8
  %65 = load %struct.super_block*, %struct.super_block** %6, align 8
  %66 = load i32, i32* %12, align 4
  %67 = load %struct.nilfs_inode*, %struct.nilfs_inode** %11, align 8
  %68 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %69 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %68, i32 0, i32 1
  %70 = call i32 @nilfs_dat_read(%struct.super_block* %65, i32 %66, %struct.nilfs_inode* %67, i32* %69)
  store i32 %70, i32* %16, align 4
  %71 = load i32, i32* %16, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %28
  br label %123

74:                                               ; preds = %28
  %75 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %76 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to i8*
  %79 = load i32, i32* %15, align 4
  %80 = call i32 @NILFS_SR_CPFILE_OFFSET(i32 %79)
  %81 = sext i32 %80 to i64
  %82 = getelementptr i8, i8* %78, i64 %81
  %83 = bitcast i8* %82 to %struct.nilfs_inode*
  store %struct.nilfs_inode* %83, %struct.nilfs_inode** %11, align 8
  %84 = load %struct.super_block*, %struct.super_block** %6, align 8
  %85 = load i32, i32* %14, align 4
  %86 = load %struct.nilfs_inode*, %struct.nilfs_inode** %11, align 8
  %87 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %88 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %87, i32 0, i32 2
  %89 = call i32 @nilfs_cpfile_read(%struct.super_block* %84, i32 %85, %struct.nilfs_inode* %86, i32* %88)
  store i32 %89, i32* %16, align 4
  %90 = load i32, i32* %16, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %74
  br label %132

93:                                               ; preds = %74
  %94 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %95 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = inttoptr i64 %96 to i8*
  %98 = load i32, i32* %15, align 4
  %99 = call i32 @NILFS_SR_SUFILE_OFFSET(i32 %98)
  %100 = sext i32 %99 to i64
  %101 = getelementptr i8, i8* %97, i64 %100
  %102 = bitcast i8* %101 to %struct.nilfs_inode*
  store %struct.nilfs_inode* %102, %struct.nilfs_inode** %11, align 8
  %103 = load %struct.super_block*, %struct.super_block** %6, align 8
  %104 = load i32, i32* %13, align 4
  %105 = load %struct.nilfs_inode*, %struct.nilfs_inode** %11, align 8
  %106 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %107 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %106, i32 0, i32 4
  %108 = call i32 @nilfs_sufile_read(%struct.super_block* %103, i32 %104, %struct.nilfs_inode* %105, i32* %107)
  store i32 %108, i32* %16, align 4
  %109 = load i32, i32* %16, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %93
  br label %127

112:                                              ; preds = %93
  %113 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %114 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = inttoptr i64 %115 to %struct.nilfs_super_root*
  store %struct.nilfs_super_root* %116, %struct.nilfs_super_root** %9, align 8
  %117 = load %struct.nilfs_super_root*, %struct.nilfs_super_root** %9, align 8
  %118 = getelementptr inbounds %struct.nilfs_super_root, %struct.nilfs_super_root* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @le64_to_cpu(i32 %119)
  %121 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %122 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %121, i32 0, i32 3
  store i32 %120, i32* %122, align 4
  br label %123

123:                                              ; preds = %132, %112, %73
  %124 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %125 = call i32 @brelse(%struct.buffer_head* %124)
  %126 = load i32, i32* %16, align 4
  store i32 %126, i32* %4, align 4
  br label %137

127:                                              ; preds = %111
  %128 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %129 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @iput(i32 %130)
  br label %132

132:                                              ; preds = %127, %92
  %133 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %134 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @iput(i32 %135)
  br label %123

137:                                              ; preds = %123, %26
  %138 = load i32, i32* %4, align 4
  ret i32 %138
}

declare dso_local i32 @nilfs_read_super_root_block(%struct.the_nilfs*, i32, %struct.buffer_head**, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @NILFS_SR_DAT_OFFSET(i32) #1

declare dso_local i32 @nilfs_dat_read(%struct.super_block*, i32, %struct.nilfs_inode*, i32*) #1

declare dso_local i32 @NILFS_SR_CPFILE_OFFSET(i32) #1

declare dso_local i32 @nilfs_cpfile_read(%struct.super_block*, i32, %struct.nilfs_inode*, i32*) #1

declare dso_local i32 @NILFS_SR_SUFILE_OFFSET(i32) #1

declare dso_local i32 @nilfs_sufile_read(%struct.super_block*, i32, %struct.nilfs_inode*, i32*) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @iput(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
