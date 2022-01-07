; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_super.c_nilfs_resize_fs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_super.c_nilfs_resize_fs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.TYPE_2__*, %struct.the_nilfs* }
%struct.TYPE_2__ = type { i32 }
%struct.the_nilfs = type { i64, i64, i32, i32, i32, i32, i32 }
%struct.nilfs_super_block = type { i8*, i8*, i32 }

@ERANGE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@NILFS_RESIZE_FS = common dso_local global i32 0, align 4
@NILFS_SB_COMMIT_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_resize_fs(%struct.super_block* %0, i64 %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.the_nilfs*, align 8
  %6 = alloca %struct.nilfs_super_block**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load %struct.super_block*, %struct.super_block** %3, align 8
  %12 = getelementptr inbounds %struct.super_block, %struct.super_block* %11, i32 0, i32 1
  %13 = load %struct.the_nilfs*, %struct.the_nilfs** %12, align 8
  store %struct.the_nilfs* %13, %struct.the_nilfs** %5, align 8
  %14 = load i32, i32* @ERANGE, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %10, align 4
  %16 = load %struct.super_block*, %struct.super_block** %3, align 8
  %17 = getelementptr inbounds %struct.super_block, %struct.super_block* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @i_size_read(i32 %20)
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* %7, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %140

26:                                               ; preds = %2
  %27 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %28 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %27, i32 0, i32 5
  %29 = call i32 @down_write(i32* %28)
  %30 = load i64, i64* %4, align 8
  %31 = call i64 @NILFS_SB2_OFFSET_BYTES(i64 %30)
  store i64 %31, i64* %9, align 8
  %32 = load i64, i64* %9, align 8
  %33 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %34 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = ashr i64 %32, %35
  store i64 %36, i64* %8, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %39 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @do_div(i64 %37, i32 %40)
  %42 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %43 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i64, i64* %8, align 8
  %46 = call i32 @nilfs_sufile_resize(i32 %44, i64 %45)
  store i32 %46, i32* %10, align 4
  %47 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %48 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %47, i32 0, i32 5
  %49 = call i32 @up_write(i32* %48)
  %50 = load i32, i32* %10, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %26
  br label %140

53:                                               ; preds = %26
  %54 = load %struct.super_block*, %struct.super_block** %3, align 8
  %55 = call i32 @nilfs_construct_segment(%struct.super_block* %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %140

59:                                               ; preds = %53
  %60 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %61 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %60, i32 0, i32 3
  %62 = call i32 @down_write(i32* %61)
  %63 = load %struct.super_block*, %struct.super_block** %3, align 8
  %64 = load i64, i64* %9, align 8
  %65 = call i32 @nilfs_move_2nd_super(%struct.super_block* %63, i64 %64)
  %66 = load i32, i32* @EIO, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %10, align 4
  %68 = load %struct.super_block*, %struct.super_block** %3, align 8
  %69 = call %struct.nilfs_super_block** @nilfs_prepare_super(%struct.super_block* %68, i32 0)
  store %struct.nilfs_super_block** %69, %struct.nilfs_super_block*** %6, align 8
  %70 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %6, align 8
  %71 = call i64 @likely(%struct.nilfs_super_block** %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %126

73:                                               ; preds = %59
  %74 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %6, align 8
  %75 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %74, i64 0
  %76 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %75, align 8
  %77 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %78 = call i32 @nilfs_set_log_cursor(%struct.nilfs_super_block* %76, %struct.the_nilfs* %77)
  %79 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %6, align 8
  %80 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %79, i64 0
  %81 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %80, align 8
  %82 = getelementptr inbounds %struct.nilfs_super_block, %struct.nilfs_super_block* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @le16_to_cpu(i32 %83)
  %85 = load i32, i32* @NILFS_RESIZE_FS, align 4
  %86 = xor i32 %85, -1
  %87 = and i32 %84, %86
  %88 = call i32 @cpu_to_le16(i32 %87)
  %89 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %6, align 8
  %90 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %89, i64 0
  %91 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %90, align 8
  %92 = getelementptr inbounds %struct.nilfs_super_block, %struct.nilfs_super_block* %91, i32 0, i32 2
  store i32 %88, i32* %92, align 8
  %93 = load i64, i64* %4, align 8
  %94 = call i8* @cpu_to_le64(i64 %93)
  %95 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %6, align 8
  %96 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %95, i64 0
  %97 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %96, align 8
  %98 = getelementptr inbounds %struct.nilfs_super_block, %struct.nilfs_super_block* %97, i32 0, i32 1
  store i8* %94, i8** %98, align 8
  %99 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %100 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = call i8* @cpu_to_le64(i64 %101)
  %103 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %6, align 8
  %104 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %103, i64 0
  %105 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %104, align 8
  %106 = getelementptr inbounds %struct.nilfs_super_block, %struct.nilfs_super_block* %105, i32 0, i32 0
  store i8* %102, i8** %106, align 8
  %107 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %6, align 8
  %108 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %107, i64 1
  %109 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %108, align 8
  %110 = icmp ne %struct.nilfs_super_block* %109, null
  br i1 %110, label %111, label %122

111:                                              ; preds = %73
  %112 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %6, align 8
  %113 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %112, i64 1
  %114 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %113, align 8
  %115 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %6, align 8
  %116 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %115, i64 0
  %117 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %116, align 8
  %118 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %119 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @memcpy(%struct.nilfs_super_block* %114, %struct.nilfs_super_block* %117, i32 %120)
  br label %122

122:                                              ; preds = %111, %73
  %123 = load %struct.super_block*, %struct.super_block** %3, align 8
  %124 = load i32, i32* @NILFS_SB_COMMIT_ALL, align 4
  %125 = call i32 @nilfs_commit_super(%struct.super_block* %123, i32 %124)
  store i32 %125, i32* %10, align 4
  br label %126

126:                                              ; preds = %122, %59
  %127 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %128 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %127, i32 0, i32 3
  %129 = call i32 @up_write(i32* %128)
  %130 = load i32, i32* %10, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %139, label %132

132:                                              ; preds = %126
  %133 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %134 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load i64, i64* %8, align 8
  %137 = sub nsw i64 %136, 1
  %138 = call i32 @nilfs_sufile_set_alloc_range(i32 %135, i32 0, i64 %137)
  br label %139

139:                                              ; preds = %132, %126
  br label %140

140:                                              ; preds = %139, %58, %52, %25
  %141 = load i32, i32* %10, align 4
  ret i32 %141
}

declare dso_local i64 @i_size_read(i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i64 @NILFS_SB2_OFFSET_BYTES(i64) #1

declare dso_local i32 @do_div(i64, i32) #1

declare dso_local i32 @nilfs_sufile_resize(i32, i64) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @nilfs_construct_segment(%struct.super_block*) #1

declare dso_local i32 @nilfs_move_2nd_super(%struct.super_block*, i64) #1

declare dso_local %struct.nilfs_super_block** @nilfs_prepare_super(%struct.super_block*, i32) #1

declare dso_local i64 @likely(%struct.nilfs_super_block**) #1

declare dso_local i32 @nilfs_set_log_cursor(%struct.nilfs_super_block*, %struct.the_nilfs*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i8* @cpu_to_le64(i64) #1

declare dso_local i32 @memcpy(%struct.nilfs_super_block*, %struct.nilfs_super_block*, i32) #1

declare dso_local i32 @nilfs_commit_super(%struct.super_block*, i32) #1

declare dso_local i32 @nilfs_sufile_set_alloc_range(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
