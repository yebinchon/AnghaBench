; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_segment.c_nilfs_segctor_create_checkpoint.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_segment.c_nilfs_segctor_create_checkpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_sc_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.the_nilfs* }
%struct.the_nilfs = type { i32, i32 }
%struct.buffer_head = type { i32 }
%struct.nilfs_checkpoint = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nilfs_sc_info*)* @nilfs_segctor_create_checkpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_segctor_create_checkpoint(%struct.nilfs_sc_info* %0) #0 {
  %2 = alloca %struct.nilfs_sc_info*, align 8
  %3 = alloca %struct.the_nilfs*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca %struct.nilfs_checkpoint*, align 8
  %6 = alloca i32, align 4
  store %struct.nilfs_sc_info* %0, %struct.nilfs_sc_info** %2, align 8
  %7 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %2, align 8
  %8 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.the_nilfs*, %struct.the_nilfs** %10, align 8
  store %struct.the_nilfs* %11, %struct.the_nilfs** %3, align 8
  %12 = load %struct.the_nilfs*, %struct.the_nilfs** %3, align 8
  %13 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.the_nilfs*, %struct.the_nilfs** %3, align 8
  %16 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @nilfs_cpfile_get_checkpoint(i32 %14, i32 %17, i32 1, %struct.nilfs_checkpoint** %5, %struct.buffer_head** %4)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @likely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %1
  %26 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %27 = call i32 @mark_buffer_dirty(%struct.buffer_head* %26)
  %28 = load %struct.the_nilfs*, %struct.the_nilfs** %3, align 8
  %29 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @nilfs_mdt_mark_dirty(i32 %30)
  %32 = load %struct.the_nilfs*, %struct.the_nilfs** %3, align 8
  %33 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.the_nilfs*, %struct.the_nilfs** %3, align 8
  %36 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %39 = call i32 @nilfs_cpfile_put_checkpoint(i32 %34, i32 %37, %struct.buffer_head* %38)
  br label %54

40:                                               ; preds = %1
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @ENOENT, align 4
  %48 = sub nsw i32 0, %47
  %49 = icmp eq i32 %46, %48
  br label %50

50:                                               ; preds = %45, %40
  %51 = phi i1 [ true, %40 ], [ %49, %45 ]
  %52 = zext i1 %51 to i32
  %53 = call i32 @WARN_ON(i32 %52)
  br label %54

54:                                               ; preds = %50, %25
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

declare dso_local i32 @nilfs_cpfile_get_checkpoint(i32, i32, i32, %struct.nilfs_checkpoint**, %struct.buffer_head**) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @nilfs_mdt_mark_dirty(i32) #1

declare dso_local i32 @nilfs_cpfile_put_checkpoint(i32, i32, %struct.buffer_head*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
