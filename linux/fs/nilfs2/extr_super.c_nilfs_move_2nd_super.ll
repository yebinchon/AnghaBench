; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_super.c_nilfs_move_2nd_super.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_super.c_nilfs_move_2nd_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.the_nilfs* }
%struct.the_nilfs = type { i64, i32, i32, %struct.nilfs_super_block**, %struct.buffer_head**, i32 }
%struct.nilfs_super_block = type { i32 }
%struct.buffer_head = type { i64, i64 }

@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"unable to move secondary superblock to block %llu\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32)* @nilfs_move_2nd_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_move_2nd_super(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.the_nilfs*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.nilfs_super_block*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.super_block*, %struct.super_block** %3, align 8
  %14 = getelementptr inbounds %struct.super_block, %struct.super_block* %13, i32 0, i32 0
  %15 = load %struct.the_nilfs*, %struct.the_nilfs** %14, align 8
  store %struct.the_nilfs* %15, %struct.the_nilfs** %5, align 8
  store i32 0, i32* %12, align 4
  %16 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %17 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %16, i32 0, i32 4
  %18 = load %struct.buffer_head**, %struct.buffer_head*** %17, align 8
  %19 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %18, i64 1
  %20 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  %21 = icmp ne %struct.buffer_head* %20, null
  br i1 %21, label %22, label %43

22:                                               ; preds = %2
  %23 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %24 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %23, i32 0, i32 4
  %25 = load %struct.buffer_head**, %struct.buffer_head*** %24, align 8
  %26 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %25, i64 1
  %27 = load %struct.buffer_head*, %struct.buffer_head** %26, align 8
  %28 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %31 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %29, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %22
  store i32 1, i32* %11, align 4
  %35 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %36 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %35, i32 0, i32 4
  %37 = load %struct.buffer_head**, %struct.buffer_head*** %36, align 8
  %38 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %37, i64 1
  %39 = load %struct.buffer_head*, %struct.buffer_head** %38, align 8
  %40 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %8, align 4
  br label %66

43:                                               ; preds = %22, %2
  %44 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %45 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %44, i32 0, i32 4
  %46 = load %struct.buffer_head**, %struct.buffer_head*** %45, align 8
  %47 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %46, i64 0
  %48 = load %struct.buffer_head*, %struct.buffer_head** %47, align 8
  %49 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %52 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp sgt i64 %50, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %43
  store i32 0, i32* %11, align 4
  %56 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %57 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %56, i32 0, i32 4
  %58 = load %struct.buffer_head**, %struct.buffer_head*** %57, align 8
  %59 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %58, i64 0
  %60 = load %struct.buffer_head*, %struct.buffer_head** %59, align 8
  %61 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %8, align 4
  br label %65

64:                                               ; preds = %43
  store i32 -1, i32* %11, align 4
  store i32 0, i32* %8, align 4
  br label %65

65:                                               ; preds = %64, %55
  br label %66

66:                                               ; preds = %65, %34
  %67 = load i32, i32* %11, align 4
  %68 = icmp sge i32 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %66
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %72 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = shl i32 %70, %73
  %75 = load i32, i32* %4, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %69
  br label %182

78:                                               ; preds = %69, %66
  %79 = load i32, i32* %4, align 4
  %80 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %81 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = ashr i32 %79, %82
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %4, align 4
  %85 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %86 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = sub nsw i32 %87, 1
  %89 = and i32 %84, %88
  %90 = sext i32 %89 to i64
  store i64 %90, i64* %10, align 8
  %91 = load %struct.super_block*, %struct.super_block** %3, align 8
  %92 = load i32, i32* %9, align 4
  %93 = call %struct.buffer_head* @sb_getblk(%struct.super_block* %91, i32 %92)
  store %struct.buffer_head* %93, %struct.buffer_head** %6, align 8
  %94 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %95 = icmp ne %struct.buffer_head* %94, null
  br i1 %95, label %104, label %96

96:                                               ; preds = %78
  %97 = load %struct.super_block*, %struct.super_block** %3, align 8
  %98 = load i32, i32* @KERN_WARNING, align 4
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = call i32 @nilfs_msg(%struct.super_block* %97, i32 %98, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %100)
  %102 = load i32, i32* @EIO, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %12, align 4
  br label %182

104:                                              ; preds = %78
  %105 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %106 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = inttoptr i64 %107 to i8*
  %109 = load i64, i64* %10, align 8
  %110 = getelementptr i8, i8* %108, i64 %109
  %111 = bitcast i8* %110 to %struct.nilfs_super_block*
  store %struct.nilfs_super_block* %111, %struct.nilfs_super_block** %7, align 8
  %112 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %7, align 8
  %113 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %114 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @memset(%struct.nilfs_super_block* %112, i32 0, i32 %115)
  %117 = load i32, i32* %11, align 4
  %118 = icmp sge i32 %117, 0
  br i1 %118, label %119, label %154

119:                                              ; preds = %104
  %120 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %7, align 8
  %121 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %122 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %121, i32 0, i32 3
  %123 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %122, align 8
  %124 = load i32, i32* %11, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %123, i64 %125
  %127 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %126, align 8
  %128 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %129 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @memcpy(%struct.nilfs_super_block* %120, %struct.nilfs_super_block* %127, i32 %130)
  %132 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %133 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %132, i32 0, i32 4
  %134 = load %struct.buffer_head**, %struct.buffer_head*** %133, align 8
  %135 = load i32, i32* %11, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %134, i64 %136
  %138 = load %struct.buffer_head*, %struct.buffer_head** %137, align 8
  %139 = call i32 @brelse(%struct.buffer_head* %138)
  %140 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %141 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %142 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %141, i32 0, i32 4
  %143 = load %struct.buffer_head**, %struct.buffer_head*** %142, align 8
  %144 = load i32, i32* %11, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %143, i64 %145
  store %struct.buffer_head* %140, %struct.buffer_head** %146, align 8
  %147 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %7, align 8
  %148 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %149 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %148, i32 0, i32 3
  %150 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %149, align 8
  %151 = load i32, i32* %11, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %150, i64 %152
  store %struct.nilfs_super_block* %147, %struct.nilfs_super_block** %153, align 8
  br label %181

154:                                              ; preds = %104
  %155 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %156 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %155, i32 0, i32 4
  %157 = load %struct.buffer_head**, %struct.buffer_head*** %156, align 8
  %158 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %157, i64 0
  %159 = load %struct.buffer_head*, %struct.buffer_head** %158, align 8
  %160 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %163 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = icmp slt i64 %161, %164
  br i1 %165, label %166, label %177

166:                                              ; preds = %154
  %167 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %168 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %169 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %168, i32 0, i32 4
  %170 = load %struct.buffer_head**, %struct.buffer_head*** %169, align 8
  %171 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %170, i64 1
  store %struct.buffer_head* %167, %struct.buffer_head** %171, align 8
  %172 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %7, align 8
  %173 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %174 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %173, i32 0, i32 3
  %175 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %174, align 8
  %176 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %175, i64 1
  store %struct.nilfs_super_block* %172, %struct.nilfs_super_block** %176, align 8
  br label %180

177:                                              ; preds = %154
  %178 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %179 = call i32 @brelse(%struct.buffer_head* %178)
  br label %180

180:                                              ; preds = %177, %166
  br label %181

181:                                              ; preds = %180, %119
  br label %182

182:                                              ; preds = %181, %96, %77
  %183 = load i32, i32* %12, align 4
  ret i32 %183
}

declare dso_local %struct.buffer_head* @sb_getblk(%struct.super_block*, i32) #1

declare dso_local i32 @nilfs_msg(%struct.super_block*, i32, i8*, i64) #1

declare dso_local i32 @memset(%struct.nilfs_super_block*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.nilfs_super_block*, %struct.nilfs_super_block*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
