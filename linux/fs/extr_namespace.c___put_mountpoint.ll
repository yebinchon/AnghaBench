; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namespace.c___put_mountpoint.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namespace.c___put_mountpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mountpoint = type { i32, i32, %struct.dentry*, i32 }
%struct.dentry = type { i32, i32 }
%struct.list_head = type { i32 }

@DCACHE_MOUNTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mountpoint*, %struct.list_head*)* @__put_mountpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__put_mountpoint(%struct.mountpoint* %0, %struct.list_head* %1) #0 {
  %3 = alloca %struct.mountpoint*, align 8
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca %struct.dentry*, align 8
  store %struct.mountpoint* %0, %struct.mountpoint** %3, align 8
  store %struct.list_head* %1, %struct.list_head** %4, align 8
  %6 = load %struct.mountpoint*, %struct.mountpoint** %3, align 8
  %7 = getelementptr inbounds %struct.mountpoint, %struct.mountpoint* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = add nsw i32 %8, -1
  store i32 %9, i32* %7, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %42, label %11

11:                                               ; preds = %2
  %12 = load %struct.mountpoint*, %struct.mountpoint** %3, align 8
  %13 = getelementptr inbounds %struct.mountpoint, %struct.mountpoint* %12, i32 0, i32 2
  %14 = load %struct.dentry*, %struct.dentry** %13, align 8
  store %struct.dentry* %14, %struct.dentry** %5, align 8
  %15 = load %struct.mountpoint*, %struct.mountpoint** %3, align 8
  %16 = getelementptr inbounds %struct.mountpoint, %struct.mountpoint* %15, i32 0, i32 1
  %17 = call i32 @hlist_empty(i32* %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.dentry*, %struct.dentry** %5, align 8
  %23 = getelementptr inbounds %struct.dentry, %struct.dentry* %22, i32 0, i32 0
  %24 = call i32 @spin_lock(i32* %23)
  %25 = load i32, i32* @DCACHE_MOUNTED, align 4
  %26 = xor i32 %25, -1
  %27 = load %struct.dentry*, %struct.dentry** %5, align 8
  %28 = getelementptr inbounds %struct.dentry, %struct.dentry* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load %struct.dentry*, %struct.dentry** %5, align 8
  %32 = getelementptr inbounds %struct.dentry, %struct.dentry* %31, i32 0, i32 0
  %33 = call i32 @spin_unlock(i32* %32)
  %34 = load %struct.dentry*, %struct.dentry** %5, align 8
  %35 = load %struct.list_head*, %struct.list_head** %4, align 8
  %36 = call i32 @dput_to_list(%struct.dentry* %34, %struct.list_head* %35)
  %37 = load %struct.mountpoint*, %struct.mountpoint** %3, align 8
  %38 = getelementptr inbounds %struct.mountpoint, %struct.mountpoint* %37, i32 0, i32 0
  %39 = call i32 @hlist_del(i32* %38)
  %40 = load %struct.mountpoint*, %struct.mountpoint** %3, align 8
  %41 = call i32 @kfree(%struct.mountpoint* %40)
  br label %42

42:                                               ; preds = %11, %2
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @hlist_empty(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dput_to_list(%struct.dentry*, %struct.list_head*) #1

declare dso_local i32 @hlist_del(i32*) #1

declare dso_local i32 @kfree(%struct.mountpoint*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
