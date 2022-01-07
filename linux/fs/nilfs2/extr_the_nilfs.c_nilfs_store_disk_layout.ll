; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_the_nilfs.c_nilfs_store_disk_layout.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_the_nilfs.c_nilfs_store_disk_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.the_nilfs = type { i64, i64, i64, i64, i32, i64, i32, i32, i64 }
%struct.nilfs_super_block = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@NILFS_MIN_SUPP_REV = common dso_local global i64 0, align 8
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [109 x i8] c"unsupported revision (superblock rev.=%d.%d, current rev.=%d.%d). Please check the version of mkfs.nilfs(2).\00", align 1
@NILFS_CURRENT_REV = common dso_local global i32 0, align 4
@NILFS_MINOR_REV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@BLOCK_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"too large inode size: %d bytes\00", align 1
@NILFS_MIN_INODE_SIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"too small inode size: %d bytes\00", align 1
@NILFS_SEG_MIN_BLOCKS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"too short segment: %lu blocks\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"invalid reserved segments percentage: %lu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.the_nilfs*, %struct.nilfs_super_block*)* @nilfs_store_disk_layout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_store_disk_layout(%struct.the_nilfs* %0, %struct.nilfs_super_block* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.the_nilfs*, align 8
  %5 = alloca %struct.nilfs_super_block*, align 8
  store %struct.the_nilfs* %0, %struct.the_nilfs** %4, align 8
  store %struct.nilfs_super_block* %1, %struct.nilfs_super_block** %5, align 8
  %6 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %5, align 8
  %7 = getelementptr inbounds %struct.nilfs_super_block, %struct.nilfs_super_block* %6, i32 0, i32 9
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @le32_to_cpu(i32 %8)
  %10 = load i64, i64* @NILFS_MIN_SUPP_REV, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %30

12:                                               ; preds = %2
  %13 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %14 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @KERN_ERR, align 4
  %17 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %5, align 8
  %18 = getelementptr inbounds %struct.nilfs_super_block, %struct.nilfs_super_block* %17, i32 0, i32 9
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @le32_to_cpu(i32 %19)
  %21 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %5, align 8
  %22 = getelementptr inbounds %struct.nilfs_super_block, %struct.nilfs_super_block* %21, i32 0, i32 8
  %23 = load i32, i32* %22, align 4
  %24 = call i8* @le16_to_cpu(i32 %23)
  %25 = load i32, i32* @NILFS_CURRENT_REV, align 4
  %26 = load i32, i32* @NILFS_MINOR_REV, align 4
  %27 = call i32 (i32, i32, i8*, i64, ...) @nilfs_msg(i32 %15, i32 %16, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str, i64 0, i64 0), i64 %20, i8* %24, i32 %25, i32 %26)
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %167

30:                                               ; preds = %2
  %31 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %5, align 8
  %32 = getelementptr inbounds %struct.nilfs_super_block, %struct.nilfs_super_block* %31, i32 0, i32 7
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @le16_to_cpu(i32 %33)
  %35 = ptrtoint i8* %34 to i64
  %36 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %37 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %39 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @BLOCK_SIZE, align 8
  %42 = icmp sgt i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %30
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %167

46:                                               ; preds = %30
  %47 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %5, align 8
  %48 = getelementptr inbounds %struct.nilfs_super_block, %struct.nilfs_super_block* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @le16_to_cpu(i32 %49)
  %51 = ptrtoint i8* %50 to i64
  %52 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %53 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  %54 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %55 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %58 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp sgt i64 %56, %59
  br i1 %60, label %61, label %72

61:                                               ; preds = %46
  %62 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %63 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @KERN_ERR, align 4
  %66 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %67 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = call i32 (i32, i32, i8*, i64, ...) @nilfs_msg(i32 %64, i32 %65, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %68)
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %167

72:                                               ; preds = %46
  %73 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %74 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @NILFS_MIN_INODE_SIZE, align 8
  %77 = icmp slt i64 %75, %76
  br i1 %77, label %78, label %89

78:                                               ; preds = %72
  %79 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %80 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @KERN_ERR, align 4
  %83 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %84 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = call i32 (i32, i32, i8*, i64, ...) @nilfs_msg(i32 %81, i32 %82, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %85)
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %3, align 4
  br label %167

89:                                               ; preds = %72
  br label %90

90:                                               ; preds = %89
  %91 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %5, align 8
  %92 = getelementptr inbounds %struct.nilfs_super_block, %struct.nilfs_super_block* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @le32_to_cpu(i32 %93)
  %95 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %96 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %95, i32 0, i32 8
  store i64 %94, i64* %96, align 8
  %97 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %5, align 8
  %98 = getelementptr inbounds %struct.nilfs_super_block, %struct.nilfs_super_block* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @le32_to_cpu(i32 %99)
  %101 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %102 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %101, i32 0, i32 3
  store i64 %100, i64* %102, align 8
  %103 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %104 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @NILFS_SEG_MIN_BLOCKS, align 8
  %107 = icmp slt i64 %105, %106
  br i1 %107, label %108, label %119

108:                                              ; preds = %90
  %109 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %110 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %109, i32 0, i32 6
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @KERN_ERR, align 4
  %113 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %114 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = call i32 (i32, i32, i8*, i64, ...) @nilfs_msg(i32 %111, i32 %112, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i64 %115)
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %3, align 4
  br label %167

119:                                              ; preds = %90
  %120 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %5, align 8
  %121 = getelementptr inbounds %struct.nilfs_super_block, %struct.nilfs_super_block* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @le64_to_cpu(i32 %122)
  %124 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %125 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %124, i32 0, i32 7
  store i32 %123, i32* %125, align 4
  %126 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %5, align 8
  %127 = getelementptr inbounds %struct.nilfs_super_block, %struct.nilfs_super_block* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = call i64 @le32_to_cpu(i32 %128)
  %130 = trunc i64 %129 to i32
  %131 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %132 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %131, i32 0, i32 4
  store i32 %130, i32* %132, align 8
  %133 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %134 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 8
  %136 = icmp slt i32 %135, 1
  br i1 %136, label %142, label %137

137:                                              ; preds = %119
  %138 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %139 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = icmp sgt i32 %140, 99
  br i1 %141, label %142, label %154

142:                                              ; preds = %137, %119
  %143 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %144 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %143, i32 0, i32 6
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @KERN_ERR, align 4
  %147 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %148 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 8
  %150 = sext i32 %149 to i64
  %151 = call i32 (i32, i32, i8*, i64, ...) @nilfs_msg(i32 %145, i32 %146, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i64 %150)
  %152 = load i32, i32* @EINVAL, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %3, align 4
  br label %167

154:                                              ; preds = %137
  %155 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %156 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %5, align 8
  %157 = getelementptr inbounds %struct.nilfs_super_block, %struct.nilfs_super_block* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @le64_to_cpu(i32 %158)
  %160 = call i32 @nilfs_set_nsegments(%struct.the_nilfs* %155, i32 %159)
  %161 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %5, align 8
  %162 = getelementptr inbounds %struct.nilfs_super_block, %struct.nilfs_super_block* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i64 @le32_to_cpu(i32 %163)
  %165 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %166 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %165, i32 0, i32 5
  store i64 %164, i64* %166, align 8
  store i32 0, i32* %3, align 4
  br label %167

167:                                              ; preds = %154, %142, %108, %78, %61, %43, %12
  %168 = load i32, i32* %3, align 4
  ret i32 %168
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @nilfs_msg(i32, i32, i8*, i64, ...) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @nilfs_set_nsegments(%struct.the_nilfs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
