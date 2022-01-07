; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_segment.c_nilfs_segctor_confirm.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_segment.c_nilfs_segctor_confirm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_sc_info = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.the_nilfs* }
%struct.the_nilfs = type { i32, i32 }

@NILFS_SC_DIRTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nilfs_sc_info*)* @nilfs_segctor_confirm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_segctor_confirm(%struct.nilfs_sc_info* %0) #0 {
  %2 = alloca %struct.nilfs_sc_info*, align 8
  %3 = alloca %struct.the_nilfs*, align 8
  %4 = alloca i32, align 4
  store %struct.nilfs_sc_info* %0, %struct.nilfs_sc_info** %2, align 8
  %5 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %2, align 8
  %6 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %5, i32 0, i32 2
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.the_nilfs*, %struct.the_nilfs** %8, align 8
  store %struct.the_nilfs* %9, %struct.the_nilfs** %3, align 8
  store i32 0, i32* %4, align 4
  %10 = load %struct.the_nilfs*, %struct.the_nilfs** %3, align 8
  %11 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %2, align 8
  %12 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @nilfs_test_metadata_dirty(%struct.the_nilfs* %10, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load i32, i32* @NILFS_SC_DIRTY, align 4
  %18 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %2, align 8
  %19 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %18, i32 0, i32 0
  %20 = call i32 @set_bit(i32 %17, i32* %19)
  br label %21

21:                                               ; preds = %16, %1
  %22 = load %struct.the_nilfs*, %struct.the_nilfs** %3, align 8
  %23 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %22, i32 0, i32 0
  %24 = call i32 @spin_lock(i32* %23)
  %25 = load %struct.the_nilfs*, %struct.the_nilfs** %3, align 8
  %26 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %25, i32 0, i32 1
  %27 = call i64 @list_empty(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %21
  %30 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %2, align 8
  %31 = call i64 @nilfs_segctor_clean(%struct.nilfs_sc_info* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %33, %29, %21
  %37 = load %struct.the_nilfs*, %struct.the_nilfs** %3, align 8
  %38 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %37, i32 0, i32 0
  %39 = call i32 @spin_unlock(i32* %38)
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i64 @nilfs_test_metadata_dirty(%struct.the_nilfs*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i64 @nilfs_segctor_clean(%struct.nilfs_sc_info*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
