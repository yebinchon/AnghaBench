; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_segment.c_nilfs_segctor_fill_in_checkpoint.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_segment.c_nilfs_segctor_fill_in_checkpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_sc_info = type { %struct.TYPE_6__*, i32, i64, i64, i64, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.the_nilfs* }
%struct.the_nilfs = type { i64, i32 }
%struct.buffer_head = type { i32 }
%struct.nilfs_checkpoint = type { i32, i8*, i8*, i8*, i8*, i8*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@NILFS_SC_HAVE_DELTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nilfs_sc_info*)* @nilfs_segctor_fill_in_checkpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_segctor_fill_in_checkpoint(%struct.nilfs_sc_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nilfs_sc_info*, align 8
  %4 = alloca %struct.the_nilfs*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.nilfs_checkpoint*, align 8
  %7 = alloca i32, align 4
  store %struct.nilfs_sc_info* %0, %struct.nilfs_sc_info** %3, align 8
  %8 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %9 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %8, i32 0, i32 5
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.the_nilfs*, %struct.the_nilfs** %11, align 8
  store %struct.the_nilfs* %12, %struct.the_nilfs** %4, align 8
  %13 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %14 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %17 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @nilfs_cpfile_get_checkpoint(i32 %15, i64 %18, i32 0, %struct.nilfs_checkpoint** %6, %struct.buffer_head** %5)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %1
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @ENOENT, align 4
  %31 = sub nsw i32 0, %30
  %32 = icmp eq i32 %29, %31
  br label %33

33:                                               ; preds = %28, %23
  %34 = phi i1 [ true, %23 ], [ %32, %28 ]
  %35 = zext i1 %34 to i32
  %36 = call i32 @WARN_ON(i32 %35)
  br label %110

37:                                               ; preds = %1
  %38 = load %struct.nilfs_checkpoint*, %struct.nilfs_checkpoint** %6, align 8
  %39 = getelementptr inbounds %struct.nilfs_checkpoint, %struct.nilfs_checkpoint* %38, i32 0, i32 6
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  store i64 0, i64* %40, align 8
  %41 = load %struct.nilfs_checkpoint*, %struct.nilfs_checkpoint** %6, align 8
  %42 = getelementptr inbounds %struct.nilfs_checkpoint, %struct.nilfs_checkpoint* %41, i32 0, i32 6
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  %44 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %45 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 2
  %48 = call i64 @atomic64_read(i32* %47)
  %49 = call i8* @cpu_to_le64(i64 %48)
  %50 = load %struct.nilfs_checkpoint*, %struct.nilfs_checkpoint** %6, align 8
  %51 = getelementptr inbounds %struct.nilfs_checkpoint, %struct.nilfs_checkpoint* %50, i32 0, i32 5
  store i8* %49, i8** %51, align 8
  %52 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %53 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %52, i32 0, i32 0
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = call i64 @atomic64_read(i32* %55)
  %57 = call i8* @cpu_to_le64(i64 %56)
  %58 = load %struct.nilfs_checkpoint*, %struct.nilfs_checkpoint** %6, align 8
  %59 = getelementptr inbounds %struct.nilfs_checkpoint, %struct.nilfs_checkpoint* %58, i32 0, i32 4
  store i8* %57, i8** %59, align 8
  %60 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %61 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %64 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %62, %65
  %67 = call i8* @cpu_to_le64(i64 %66)
  %68 = load %struct.nilfs_checkpoint*, %struct.nilfs_checkpoint** %6, align 8
  %69 = getelementptr inbounds %struct.nilfs_checkpoint, %struct.nilfs_checkpoint* %68, i32 0, i32 3
  store i8* %67, i8** %69, align 8
  %70 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %71 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = call i8* @cpu_to_le64(i64 %72)
  %74 = load %struct.nilfs_checkpoint*, %struct.nilfs_checkpoint** %6, align 8
  %75 = getelementptr inbounds %struct.nilfs_checkpoint, %struct.nilfs_checkpoint* %74, i32 0, i32 2
  store i8* %73, i8** %75, align 8
  %76 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %77 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i8* @cpu_to_le64(i64 %78)
  %80 = load %struct.nilfs_checkpoint*, %struct.nilfs_checkpoint** %6, align 8
  %81 = getelementptr inbounds %struct.nilfs_checkpoint, %struct.nilfs_checkpoint* %80, i32 0, i32 1
  store i8* %79, i8** %81, align 8
  %82 = load i32, i32* @NILFS_SC_HAVE_DELTA, align 4
  %83 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %84 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %83, i32 0, i32 1
  %85 = call i64 @test_bit(i32 %82, i32* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %37
  %88 = load %struct.nilfs_checkpoint*, %struct.nilfs_checkpoint** %6, align 8
  %89 = call i32 @nilfs_checkpoint_clear_minor(%struct.nilfs_checkpoint* %88)
  br label %93

90:                                               ; preds = %37
  %91 = load %struct.nilfs_checkpoint*, %struct.nilfs_checkpoint** %6, align 8
  %92 = call i32 @nilfs_checkpoint_set_minor(%struct.nilfs_checkpoint* %91)
  br label %93

93:                                               ; preds = %90, %87
  %94 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %95 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %94, i32 0, i32 0
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.nilfs_checkpoint*, %struct.nilfs_checkpoint** %6, align 8
  %100 = getelementptr inbounds %struct.nilfs_checkpoint, %struct.nilfs_checkpoint* %99, i32 0, i32 0
  %101 = call i32 @nilfs_write_inode_common(i32 %98, i32* %100, i32 1)
  %102 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %103 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %106 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %109 = call i32 @nilfs_cpfile_put_checkpoint(i32 %104, i64 %107, %struct.buffer_head* %108)
  store i32 0, i32* %2, align 4
  br label %112

110:                                              ; preds = %33
  %111 = load i32, i32* %7, align 4
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %110, %93
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i32 @nilfs_cpfile_get_checkpoint(i32, i64, i32, %struct.nilfs_checkpoint**, %struct.buffer_head**) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i8* @cpu_to_le64(i64) #1

declare dso_local i64 @atomic64_read(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @nilfs_checkpoint_clear_minor(%struct.nilfs_checkpoint*) #1

declare dso_local i32 @nilfs_checkpoint_set_minor(%struct.nilfs_checkpoint*) #1

declare dso_local i32 @nilfs_write_inode_common(i32, i32*, i32) #1

declare dso_local i32 @nilfs_cpfile_put_checkpoint(i32, i64, %struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
