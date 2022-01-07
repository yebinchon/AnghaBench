; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_dcache.c_d_instantiate_new.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_dcache.c_d_instantiate_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.inode = type { i32, i32 }

@I_NEW = common dso_local global i32 0, align 4
@I_CREATING = common dso_local global i32 0, align 4
@__I_NEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @d_instantiate_new(%struct.dentry* %0, %struct.inode* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.inode*, align 8
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.inode* %1, %struct.inode** %4, align 8
  %5 = load %struct.dentry*, %struct.dentry** %3, align 8
  %6 = getelementptr inbounds %struct.dentry, %struct.dentry* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = call i32 @hlist_unhashed(i32* %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load %struct.inode*, %struct.inode** %4, align 8
  %14 = icmp ne %struct.inode* %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load %struct.inode*, %struct.inode** %4, align 8
  %19 = call i32 @lockdep_annotate_inode_mutex_key(%struct.inode* %18)
  %20 = load %struct.dentry*, %struct.dentry** %3, align 8
  %21 = load %struct.inode*, %struct.inode** %4, align 8
  %22 = call i32 @security_d_instantiate(%struct.dentry* %20, %struct.inode* %21)
  %23 = load %struct.inode*, %struct.inode** %4, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 1
  %25 = call i32 @spin_lock(i32* %24)
  %26 = load %struct.dentry*, %struct.dentry** %3, align 8
  %27 = load %struct.inode*, %struct.inode** %4, align 8
  %28 = call i32 @__d_instantiate(%struct.dentry* %26, %struct.inode* %27)
  %29 = load %struct.inode*, %struct.inode** %4, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @I_NEW, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i32 @WARN_ON(i32 %36)
  %38 = load i32, i32* @I_NEW, align 4
  %39 = xor i32 %38, -1
  %40 = load i32, i32* @I_CREATING, align 4
  %41 = xor i32 %40, -1
  %42 = and i32 %39, %41
  %43 = load %struct.inode*, %struct.inode** %4, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = call i32 (...) @smp_mb()
  %48 = load %struct.inode*, %struct.inode** %4, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 0
  %50 = load i32, i32* @__I_NEW, align 4
  %51 = call i32 @wake_up_bit(i32* %49, i32 %50)
  %52 = load %struct.inode*, %struct.inode** %4, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 1
  %54 = call i32 @spin_unlock(i32* %53)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @hlist_unhashed(i32*) #1

declare dso_local i32 @lockdep_annotate_inode_mutex_key(%struct.inode*) #1

declare dso_local i32 @security_d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @wake_up_bit(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
