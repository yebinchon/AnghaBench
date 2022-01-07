; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_dcache.c_d_instantiate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_dcache.c_d_instantiate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.inode = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @d_instantiate(%struct.dentry* %0, %struct.inode* %1) #0 {
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
  br i1 %14, label %15, label %28

15:                                               ; preds = %2
  %16 = load %struct.dentry*, %struct.dentry** %3, align 8
  %17 = load %struct.inode*, %struct.inode** %4, align 8
  %18 = call i32 @security_d_instantiate(%struct.dentry* %16, %struct.inode* %17)
  %19 = load %struct.inode*, %struct.inode** %4, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = call i32 @spin_lock(i32* %20)
  %22 = load %struct.dentry*, %struct.dentry** %3, align 8
  %23 = load %struct.inode*, %struct.inode** %4, align 8
  %24 = call i32 @__d_instantiate(%struct.dentry* %22, %struct.inode* %23)
  %25 = load %struct.inode*, %struct.inode** %4, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = call i32 @spin_unlock(i32* %26)
  br label %28

28:                                               ; preds = %15, %2
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @hlist_unhashed(i32*) #1

declare dso_local i32 @security_d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
