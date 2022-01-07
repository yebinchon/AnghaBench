; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_dcache.c___d_instantiate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_dcache.c___d_instantiate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.inode = type { i32 }

@DCACHE_LRU_LIST = common dso_local global i32 0, align 4
@nr_dentry_negative = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dentry*, %struct.inode*)* @__d_instantiate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__d_instantiate(%struct.dentry* %0, %struct.inode* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.inode* %1, %struct.inode** %4, align 8
  %6 = load %struct.inode*, %struct.inode** %4, align 8
  %7 = call i32 @d_flags_for_inode(%struct.inode* %6)
  store i32 %7, i32* %5, align 4
  %8 = load %struct.dentry*, %struct.dentry** %3, align 8
  %9 = call i32 @d_in_lookup(%struct.dentry* %8)
  %10 = call i32 @WARN_ON(i32 %9)
  %11 = load %struct.dentry*, %struct.dentry** %3, align 8
  %12 = getelementptr inbounds %struct.dentry, %struct.dentry* %11, i32 0, i32 1
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.dentry*, %struct.dentry** %3, align 8
  %15 = getelementptr inbounds %struct.dentry, %struct.dentry* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @DCACHE_LRU_LIST, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @nr_dentry_negative, align 4
  %22 = call i32 @this_cpu_dec(i32 %21)
  br label %23

23:                                               ; preds = %20, %2
  %24 = load %struct.dentry*, %struct.dentry** %3, align 8
  %25 = getelementptr inbounds %struct.dentry, %struct.dentry* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.inode*, %struct.inode** %4, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 0
  %29 = call i32 @hlist_add_head(i32* %26, i32* %28)
  %30 = load %struct.dentry*, %struct.dentry** %3, align 8
  %31 = getelementptr inbounds %struct.dentry, %struct.dentry* %30, i32 0, i32 2
  %32 = call i32 @raw_write_seqcount_begin(i32* %31)
  %33 = load %struct.dentry*, %struct.dentry** %3, align 8
  %34 = load %struct.inode*, %struct.inode** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @__d_set_inode_and_type(%struct.dentry* %33, %struct.inode* %34, i32 %35)
  %37 = load %struct.dentry*, %struct.dentry** %3, align 8
  %38 = getelementptr inbounds %struct.dentry, %struct.dentry* %37, i32 0, i32 2
  %39 = call i32 @raw_write_seqcount_end(i32* %38)
  %40 = load %struct.dentry*, %struct.dentry** %3, align 8
  %41 = call i32 @fsnotify_update_flags(%struct.dentry* %40)
  %42 = load %struct.dentry*, %struct.dentry** %3, align 8
  %43 = getelementptr inbounds %struct.dentry, %struct.dentry* %42, i32 0, i32 1
  %44 = call i32 @spin_unlock(i32* %43)
  ret void
}

declare dso_local i32 @d_flags_for_inode(%struct.inode*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @d_in_lookup(%struct.dentry*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @this_cpu_dec(i32) #1

declare dso_local i32 @hlist_add_head(i32*, i32*) #1

declare dso_local i32 @raw_write_seqcount_begin(i32*) #1

declare dso_local i32 @__d_set_inode_and_type(%struct.dentry*, %struct.inode*, i32) #1

declare dso_local i32 @raw_write_seqcount_end(i32*) #1

declare dso_local i32 @fsnotify_update_flags(%struct.dentry*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
