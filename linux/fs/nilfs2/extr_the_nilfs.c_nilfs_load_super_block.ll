; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_the_nilfs.c_nilfs_load_super_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_the_nilfs.c_nilfs_load_super_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.the_nilfs = type { i64, i64, i64, %struct.TYPE_4__*, %struct.buffer_head**, %struct.nilfs_super_block** }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.buffer_head = type { i32 }
%struct.super_block = type { i32 }
%struct.nilfs_super_block = type { i32, i32, i32 }

@NILFS_SB_OFFSET_BYTES = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"unable to read superblock\00", align 1
@EIO = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"unable to read primary superblock (blocksize = %d)\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"unable to read secondary superblock (blocksize = %d)\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"couldn't find nilfs on the device\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [67 x i8] c"broken superblock, retrying with spare superblock (blocksize = %d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.the_nilfs*, %struct.super_block*, i32, %struct.nilfs_super_block**)* @nilfs_load_super_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_load_super_block(%struct.the_nilfs* %0, %struct.super_block* %1, i32 %2, %struct.nilfs_super_block** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.the_nilfs*, align 8
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nilfs_super_block**, align 8
  %10 = alloca %struct.nilfs_super_block**, align 8
  %11 = alloca %struct.buffer_head**, align 8
  %12 = alloca i32, align 4
  %13 = alloca [2 x i32], align 4
  %14 = alloca i32, align 4
  store %struct.the_nilfs* %0, %struct.the_nilfs** %6, align 8
  store %struct.super_block* %1, %struct.super_block** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.nilfs_super_block** %3, %struct.nilfs_super_block*** %9, align 8
  %15 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %16 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %15, i32 0, i32 5
  %17 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %16, align 8
  store %struct.nilfs_super_block** %17, %struct.nilfs_super_block*** %10, align 8
  %18 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %19 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %18, i32 0, i32 4
  %20 = load %struct.buffer_head**, %struct.buffer_head*** %19, align 8
  store %struct.buffer_head** %20, %struct.buffer_head*** %11, align 8
  %21 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %22 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %21, i32 0, i32 3
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @NILFS_SB2_OFFSET_BYTES(i32 %27)
  store i32 %28, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %29 = load %struct.super_block*, %struct.super_block** %7, align 8
  %30 = load i32, i32* @NILFS_SB_OFFSET_BYTES, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  %33 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %32, i64 0
  %34 = call %struct.nilfs_super_block* @nilfs_read_super_block(%struct.super_block* %29, i32 %30, i32 %31, %struct.buffer_head** %33)
  %35 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %10, align 8
  %36 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %35, i64 0
  store %struct.nilfs_super_block* %34, %struct.nilfs_super_block** %36, align 8
  %37 = load %struct.super_block*, %struct.super_block** %7, align 8
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  %41 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %40, i64 1
  %42 = call %struct.nilfs_super_block* @nilfs_read_super_block(%struct.super_block* %37, i32 %38, i32 %39, %struct.buffer_head** %41)
  %43 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %10, align 8
  %44 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %43, i64 1
  store %struct.nilfs_super_block* %42, %struct.nilfs_super_block** %44, align 8
  %45 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %10, align 8
  %46 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %45, i64 0
  %47 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %46, align 8
  %48 = icmp ne %struct.nilfs_super_block* %47, null
  br i1 %48, label %65, label %49

49:                                               ; preds = %4
  %50 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %10, align 8
  %51 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %50, i64 1
  %52 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %51, align 8
  %53 = icmp ne %struct.nilfs_super_block* %52, null
  br i1 %53, label %60, label %54

54:                                               ; preds = %49
  %55 = load %struct.super_block*, %struct.super_block** %7, align 8
  %56 = load i32, i32* @KERN_ERR, align 4
  %57 = call i32 (%struct.super_block*, i32, i8*, ...) @nilfs_msg(%struct.super_block* %55, i32 %56, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %58 = load i32, i32* @EIO, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  br label %202

60:                                               ; preds = %49
  %61 = load %struct.super_block*, %struct.super_block** %7, align 8
  %62 = load i32, i32* @KERN_WARNING, align 4
  %63 = load i32, i32* %8, align 4
  %64 = call i32 (%struct.super_block*, i32, i8*, ...) @nilfs_msg(%struct.super_block* %61, i32 %62, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  br label %76

65:                                               ; preds = %4
  %66 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %10, align 8
  %67 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %66, i64 1
  %68 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %67, align 8
  %69 = icmp ne %struct.nilfs_super_block* %68, null
  br i1 %69, label %75, label %70

70:                                               ; preds = %65
  %71 = load %struct.super_block*, %struct.super_block** %7, align 8
  %72 = load i32, i32* @KERN_WARNING, align 4
  %73 = load i32, i32* %8, align 4
  %74 = call i32 (%struct.super_block*, i32, i8*, ...) @nilfs_msg(%struct.super_block* %71, i32 %72, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %70, %65
  br label %76

76:                                               ; preds = %75, %60
  %77 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %10, align 8
  %78 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %77, i64 0
  %79 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %78, align 8
  %80 = call i32 @nilfs_valid_sb(%struct.nilfs_super_block* %79)
  %81 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  store i32 %80, i32* %81, align 4
  %82 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %10, align 8
  %83 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %82, i64 1
  %84 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %83, align 8
  %85 = call i32 @nilfs_valid_sb(%struct.nilfs_super_block* %84)
  %86 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  store i32 %85, i32* %86, align 4
  %87 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %110

90:                                               ; preds = %76
  %91 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %108

94:                                               ; preds = %90
  %95 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %10, align 8
  %96 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %95, i64 1
  %97 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %96, align 8
  %98 = getelementptr inbounds %struct.nilfs_super_block, %struct.nilfs_super_block* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @le64_to_cpu(i32 %99)
  %101 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %10, align 8
  %102 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %101, i64 0
  %103 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %102, align 8
  %104 = getelementptr inbounds %struct.nilfs_super_block, %struct.nilfs_super_block* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = call i64 @le64_to_cpu(i32 %105)
  %107 = icmp sgt i64 %100, %106
  br label %108

108:                                              ; preds = %94, %90
  %109 = phi i1 [ true, %90 ], [ %107, %94 ]
  br label %110

110:                                              ; preds = %108, %76
  %111 = phi i1 [ false, %76 ], [ %109, %108 ]
  %112 = zext i1 %111 to i32
  store i32 %112, i32* %14, align 4
  %113 = load i32, i32* %14, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %137

118:                                              ; preds = %110
  %119 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %10, align 8
  %120 = load i32, i32* %14, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %119, i64 %121
  %123 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %122, align 8
  %124 = load i32, i32* %12, align 4
  %125 = call i64 @nilfs_sb2_bad_offset(%struct.nilfs_super_block* %123, i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %137

127:                                              ; preds = %118
  %128 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  %129 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %128, i64 1
  %130 = load %struct.buffer_head*, %struct.buffer_head** %129, align 8
  %131 = call i32 @brelse(%struct.buffer_head* %130)
  %132 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  %133 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %132, i64 1
  store %struct.buffer_head* null, %struct.buffer_head** %133, align 8
  %134 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %10, align 8
  %135 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %134, i64 1
  store %struct.nilfs_super_block* null, %struct.nilfs_super_block** %135, align 8
  %136 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  store i32 0, i32* %136, align 4
  store i32 0, i32* %14, align 4
  br label %137

137:                                              ; preds = %127, %118, %110
  %138 = load i32, i32* %14, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %151, label %143

143:                                              ; preds = %137
  %144 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %145 = call i32 @nilfs_release_super_block(%struct.the_nilfs* %144)
  %146 = load %struct.super_block*, %struct.super_block** %7, align 8
  %147 = load i32, i32* @KERN_ERR, align 4
  %148 = call i32 (%struct.super_block*, i32, i8*, ...) @nilfs_msg(%struct.super_block* %146, i32 %147, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %149 = load i32, i32* @EINVAL, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %5, align 4
  br label %202

151:                                              ; preds = %137
  %152 = load i32, i32* %14, align 4
  %153 = icmp ne i32 %152, 0
  %154 = xor i1 %153, true
  %155 = zext i1 %154 to i32
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %165, label %160

160:                                              ; preds = %151
  %161 = load %struct.super_block*, %struct.super_block** %7, align 8
  %162 = load i32, i32* @KERN_WARNING, align 4
  %163 = load i32, i32* %8, align 4
  %164 = call i32 (%struct.super_block*, i32, i8*, ...) @nilfs_msg(%struct.super_block* %161, i32 %162, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i64 0, i64 0), i32 %163)
  br label %165

165:                                              ; preds = %160, %151
  %166 = load i32, i32* %14, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %165
  %169 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %170 = call i32 @nilfs_swap_super_block(%struct.the_nilfs* %169)
  br label %171

171:                                              ; preds = %168, %165
  %172 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %173 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %172, i32 0, i32 2
  store i64 0, i64* %173, align 8
  %174 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %10, align 8
  %175 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %174, i64 0
  %176 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %175, align 8
  %177 = getelementptr inbounds %struct.nilfs_super_block, %struct.nilfs_super_block* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = call i64 @le64_to_cpu(i32 %178)
  %180 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %181 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %180, i32 0, i32 1
  store i64 %179, i64* %181, align 8
  %182 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %10, align 8
  %183 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* %14, align 4
  %186 = icmp ne i32 %185, 0
  %187 = xor i1 %186, true
  %188 = zext i1 %187 to i32
  %189 = and i32 %184, %188
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %182, i64 %190
  %192 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %191, align 8
  %193 = getelementptr inbounds %struct.nilfs_super_block, %struct.nilfs_super_block* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = call i64 @le64_to_cpu(i32 %194)
  %196 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %197 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %196, i32 0, i32 0
  store i64 %195, i64* %197, align 8
  %198 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %10, align 8
  %199 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %198, i64 0
  %200 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %199, align 8
  %201 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %9, align 8
  store %struct.nilfs_super_block* %200, %struct.nilfs_super_block** %201, align 8
  store i32 0, i32* %5, align 4
  br label %202

202:                                              ; preds = %171, %143, %54
  %203 = load i32, i32* %5, align 4
  ret i32 %203
}

declare dso_local i32 @NILFS_SB2_OFFSET_BYTES(i32) #1

declare dso_local %struct.nilfs_super_block* @nilfs_read_super_block(%struct.super_block*, i32, i32, %struct.buffer_head**) #1

declare dso_local i32 @nilfs_msg(%struct.super_block*, i32, i8*, ...) #1

declare dso_local i32 @nilfs_valid_sb(%struct.nilfs_super_block*) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i64 @nilfs_sb2_bad_offset(%struct.nilfs_super_block*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @nilfs_release_super_block(%struct.the_nilfs*) #1

declare dso_local i32 @nilfs_swap_super_block(%struct.the_nilfs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
