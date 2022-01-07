; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_the_nilfs.c_nilfs_put_root.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_the_nilfs.c_nilfs_put_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_root = type { i32, i32, %struct.the_nilfs*, i32 }
%struct.the_nilfs = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nilfs_put_root(%struct.nilfs_root* %0) #0 {
  %2 = alloca %struct.nilfs_root*, align 8
  %3 = alloca %struct.the_nilfs*, align 8
  store %struct.nilfs_root* %0, %struct.nilfs_root** %2, align 8
  %4 = load %struct.nilfs_root*, %struct.nilfs_root** %2, align 8
  %5 = getelementptr inbounds %struct.nilfs_root, %struct.nilfs_root* %4, i32 0, i32 3
  %6 = call i64 @refcount_dec_and_test(i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %31

8:                                                ; preds = %1
  %9 = load %struct.nilfs_root*, %struct.nilfs_root** %2, align 8
  %10 = getelementptr inbounds %struct.nilfs_root, %struct.nilfs_root* %9, i32 0, i32 2
  %11 = load %struct.the_nilfs*, %struct.the_nilfs** %10, align 8
  store %struct.the_nilfs* %11, %struct.the_nilfs** %3, align 8
  %12 = load %struct.nilfs_root*, %struct.nilfs_root** %2, align 8
  %13 = call i32 @nilfs_sysfs_delete_snapshot_group(%struct.nilfs_root* %12)
  %14 = load %struct.the_nilfs*, %struct.the_nilfs** %3, align 8
  %15 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %14, i32 0, i32 0
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load %struct.nilfs_root*, %struct.nilfs_root** %2, align 8
  %18 = getelementptr inbounds %struct.nilfs_root, %struct.nilfs_root* %17, i32 0, i32 1
  %19 = load %struct.the_nilfs*, %struct.the_nilfs** %3, align 8
  %20 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %19, i32 0, i32 1
  %21 = call i32 @rb_erase(i32* %18, i32* %20)
  %22 = load %struct.the_nilfs*, %struct.the_nilfs** %3, align 8
  %23 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %22, i32 0, i32 0
  %24 = call i32 @spin_unlock(i32* %23)
  %25 = load %struct.nilfs_root*, %struct.nilfs_root** %2, align 8
  %26 = getelementptr inbounds %struct.nilfs_root, %struct.nilfs_root* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @iput(i32 %27)
  %29 = load %struct.nilfs_root*, %struct.nilfs_root** %2, align 8
  %30 = call i32 @kfree(%struct.nilfs_root* %29)
  br label %31

31:                                               ; preds = %8, %1
  ret void
}

declare dso_local i64 @refcount_dec_and_test(i32*) #1

declare dso_local i32 @nilfs_sysfs_delete_snapshot_group(%struct.nilfs_root*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @iput(i32) #1

declare dso_local i32 @kfree(%struct.nilfs_root*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
