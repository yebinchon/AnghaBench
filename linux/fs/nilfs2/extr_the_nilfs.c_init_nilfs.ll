; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_the_nilfs.c_init_nilfs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_the_nilfs.c_init_nilfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.the_nilfs = type { i32, i32, i32, i32, i32 }
%struct.super_block = type { i32, i32, i32, i32 }
%struct.nilfs_super_block = type { i32, i32 }

@NILFS_MIN_BLOCK_SIZE = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"unable to set blocksize\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@BLOCK_SIZE = common dso_local global i32 0, align 4
@NILFS_MAX_BLOCK_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"couldn't mount because of unsupported filesystem blocksize %d\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"blocksize %d too small for device (sector-size = %d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_nilfs(%struct.the_nilfs* %0, %struct.super_block* %1, i8* %2) #0 {
  %4 = alloca %struct.the_nilfs*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.nilfs_super_block*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.the_nilfs* %0, %struct.the_nilfs** %4, align 8
  store %struct.super_block* %1, %struct.super_block** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %12 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %11, i32 0, i32 1
  %13 = call i32 @down_write(i32* %12)
  %14 = load %struct.super_block*, %struct.super_block** %5, align 8
  %15 = load i32, i32* @NILFS_MIN_BLOCK_SIZE, align 4
  %16 = call i32 @sb_min_blocksize(%struct.super_block* %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %3
  %20 = load %struct.super_block*, %struct.super_block** %5, align 8
  %21 = load i32, i32* @KERN_ERR, align 4
  %22 = call i32 (%struct.super_block*, i32, i8*, ...) @nilfs_msg(%struct.super_block* %20, i32 %21, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %9, align 4
  br label %151

25:                                               ; preds = %3
  %26 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %27 = load %struct.super_block*, %struct.super_block** %5, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @nilfs_load_super_block(%struct.the_nilfs* %26, %struct.super_block* %27, i32 %28, %struct.nilfs_super_block** %7)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %151

33:                                               ; preds = %25
  %34 = load %struct.super_block*, %struct.super_block** %5, align 8
  %35 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %7, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 @nilfs_store_magic_and_option(%struct.super_block* %34, %struct.nilfs_super_block* %35, i8* %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %156

41:                                               ; preds = %33
  %42 = load %struct.super_block*, %struct.super_block** %5, align 8
  %43 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %7, align 8
  %44 = call i32 @nilfs_check_feature_compatibility(%struct.super_block* %42, %struct.nilfs_super_block* %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %156

48:                                               ; preds = %41
  %49 = load i32, i32* @BLOCK_SIZE, align 4
  %50 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %7, align 8
  %51 = getelementptr inbounds %struct.nilfs_super_block, %struct.nilfs_super_block* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @le32_to_cpu(i32 %52)
  %54 = shl i32 %49, %53
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @NILFS_MIN_BLOCK_SIZE, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %48
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @NILFS_MAX_BLOCK_SIZE, align 4
  %61 = icmp sgt i32 %59, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %58, %48
  %63 = load %struct.super_block*, %struct.super_block** %5, align 8
  %64 = load i32, i32* @KERN_ERR, align 4
  %65 = load i32, i32* %8, align 4
  %66 = call i32 (%struct.super_block*, i32, i8*, ...) @nilfs_msg(%struct.super_block* %63, i32 %64, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %9, align 4
  br label %156

69:                                               ; preds = %58
  %70 = load %struct.super_block*, %struct.super_block** %5, align 8
  %71 = getelementptr inbounds %struct.super_block, %struct.super_block* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %105

75:                                               ; preds = %69
  %76 = load %struct.super_block*, %struct.super_block** %5, align 8
  %77 = getelementptr inbounds %struct.super_block, %struct.super_block* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @bdev_logical_block_size(i32 %78)
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %91

83:                                               ; preds = %75
  %84 = load %struct.super_block*, %struct.super_block** %5, align 8
  %85 = load i32, i32* @KERN_ERR, align 4
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %10, align 4
  %88 = call i32 (%struct.super_block*, i32, i8*, ...) @nilfs_msg(%struct.super_block* %84, i32 %85, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %86, i32 %87)
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %9, align 4
  br label %156

91:                                               ; preds = %75
  %92 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %93 = call i32 @nilfs_release_super_block(%struct.the_nilfs* %92)
  %94 = load %struct.super_block*, %struct.super_block** %5, align 8
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @sb_set_blocksize(%struct.super_block* %94, i32 %95)
  %97 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %98 = load %struct.super_block*, %struct.super_block** %5, align 8
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @nilfs_load_super_block(%struct.the_nilfs* %97, %struct.super_block* %98, i32 %99, %struct.nilfs_super_block** %7)
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* %9, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %91
  br label %151

104:                                              ; preds = %91
  br label %105

105:                                              ; preds = %104, %69
  %106 = load %struct.super_block*, %struct.super_block** %5, align 8
  %107 = getelementptr inbounds %struct.super_block, %struct.super_block* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %110 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %109, i32 0, i32 4
  store i32 %108, i32* %110, align 4
  %111 = load i32, i32* %8, align 4
  %112 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %113 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 4
  %114 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %115 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %114, i32 0, i32 3
  %116 = call i32 @get_random_bytes(i32* %115, i32 4)
  %117 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %118 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %7, align 8
  %119 = call i32 @nilfs_store_disk_layout(%struct.the_nilfs* %117, %struct.nilfs_super_block* %118)
  store i32 %119, i32* %9, align 4
  %120 = load i32, i32* %9, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %105
  br label %156

123:                                              ; preds = %105
  %124 = load %struct.super_block*, %struct.super_block** %5, align 8
  %125 = getelementptr inbounds %struct.super_block, %struct.super_block* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @nilfs_max_size(i32 %126)
  %128 = load %struct.super_block*, %struct.super_block** %5, align 8
  %129 = getelementptr inbounds %struct.super_block, %struct.super_block* %128, i32 0, i32 2
  store i32 %127, i32* %129, align 4
  %130 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %7, align 8
  %131 = getelementptr inbounds %struct.nilfs_super_block, %struct.nilfs_super_block* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @le16_to_cpu(i32 %132)
  %134 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %135 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %134, i32 0, i32 2
  store i32 %133, i32* %135, align 4
  %136 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %137 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %7, align 8
  %138 = call i32 @nilfs_store_log_cursor(%struct.the_nilfs* %136, %struct.nilfs_super_block* %137)
  store i32 %138, i32* %9, align 4
  %139 = load i32, i32* %9, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %123
  br label %156

142:                                              ; preds = %123
  %143 = load %struct.super_block*, %struct.super_block** %5, align 8
  %144 = call i32 @nilfs_sysfs_create_device_group(%struct.super_block* %143)
  store i32 %144, i32* %9, align 4
  %145 = load i32, i32* %9, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %142
  br label %156

148:                                              ; preds = %142
  %149 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %150 = call i32 @set_nilfs_init(%struct.the_nilfs* %149)
  store i32 0, i32* %9, align 4
  br label %151

151:                                              ; preds = %156, %148, %103, %32, %19
  %152 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %153 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %152, i32 0, i32 1
  %154 = call i32 @up_write(i32* %153)
  %155 = load i32, i32* %9, align 4
  ret i32 %155

156:                                              ; preds = %147, %141, %122, %83, %62, %47, %40
  %157 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %158 = call i32 @nilfs_release_super_block(%struct.the_nilfs* %157)
  br label %151
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @sb_min_blocksize(%struct.super_block*, i32) #1

declare dso_local i32 @nilfs_msg(%struct.super_block*, i32, i8*, ...) #1

declare dso_local i32 @nilfs_load_super_block(%struct.the_nilfs*, %struct.super_block*, i32, %struct.nilfs_super_block**) #1

declare dso_local i32 @nilfs_store_magic_and_option(%struct.super_block*, %struct.nilfs_super_block*, i8*) #1

declare dso_local i32 @nilfs_check_feature_compatibility(%struct.super_block*, %struct.nilfs_super_block*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @bdev_logical_block_size(i32) #1

declare dso_local i32 @nilfs_release_super_block(%struct.the_nilfs*) #1

declare dso_local i32 @sb_set_blocksize(%struct.super_block*, i32) #1

declare dso_local i32 @get_random_bytes(i32*, i32) #1

declare dso_local i32 @nilfs_store_disk_layout(%struct.the_nilfs*, %struct.nilfs_super_block*) #1

declare dso_local i32 @nilfs_max_size(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @nilfs_store_log_cursor(%struct.the_nilfs*, %struct.nilfs_super_block*) #1

declare dso_local i32 @nilfs_sysfs_create_device_group(%struct.super_block*) #1

declare dso_local i32 @set_nilfs_init(%struct.the_nilfs*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
