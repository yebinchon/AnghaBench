; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_dcache.c___d_instantiate_anon.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_dcache.c___d_instantiate_anon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.inode = type { i32, i32 }

@DCACHE_DISCONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.dentry*, %struct.inode*, i32)* @__d_instantiate_anon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @__d_instantiate_anon(%struct.dentry* %0, %struct.inode* %1, i32 %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.dentry*, %struct.dentry** %5, align 8
  %11 = load %struct.inode*, %struct.inode** %6, align 8
  %12 = call i32 @security_d_instantiate(%struct.dentry* %10, %struct.inode* %11)
  %13 = load %struct.inode*, %struct.inode** %6, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 0
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.inode*, %struct.inode** %6, align 8
  %17 = call %struct.dentry* @__d_find_any_alias(%struct.inode* %16)
  store %struct.dentry* %17, %struct.dentry** %8, align 8
  %18 = load %struct.dentry*, %struct.dentry** %8, align 8
  %19 = icmp ne %struct.dentry* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load %struct.inode*, %struct.inode** %6, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  %23 = call i32 @spin_unlock(i32* %22)
  %24 = load %struct.dentry*, %struct.dentry** %5, align 8
  %25 = call i32 @dput(%struct.dentry* %24)
  br label %77

26:                                               ; preds = %3
  %27 = load %struct.inode*, %struct.inode** %6, align 8
  %28 = call i32 @d_flags_for_inode(%struct.inode* %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i32, i32* @DCACHE_DISCONNECTED, align 4
  %33 = load i32, i32* %9, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %31, %26
  %36 = load %struct.dentry*, %struct.dentry** %5, align 8
  %37 = getelementptr inbounds %struct.dentry, %struct.dentry* %36, i32 0, i32 0
  %38 = call i32 @spin_lock(i32* %37)
  %39 = load %struct.dentry*, %struct.dentry** %5, align 8
  %40 = load %struct.inode*, %struct.inode** %6, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @__d_set_inode_and_type(%struct.dentry* %39, %struct.inode* %40, i32 %41)
  %43 = load %struct.dentry*, %struct.dentry** %5, align 8
  %44 = getelementptr inbounds %struct.dentry, %struct.dentry* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load %struct.inode*, %struct.inode** %6, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 1
  %48 = call i32 @hlist_add_head(i32* %45, i32* %47)
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %69, label %51

51:                                               ; preds = %35
  %52 = load %struct.dentry*, %struct.dentry** %5, align 8
  %53 = getelementptr inbounds %struct.dentry, %struct.dentry* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = call i32 @hlist_bl_lock(i32* %55)
  %57 = load %struct.dentry*, %struct.dentry** %5, align 8
  %58 = getelementptr inbounds %struct.dentry, %struct.dentry* %57, i32 0, i32 2
  %59 = load %struct.dentry*, %struct.dentry** %5, align 8
  %60 = getelementptr inbounds %struct.dentry, %struct.dentry* %59, i32 0, i32 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = call i32 @hlist_bl_add_head(i32* %58, i32* %62)
  %64 = load %struct.dentry*, %struct.dentry** %5, align 8
  %65 = getelementptr inbounds %struct.dentry, %struct.dentry* %64, i32 0, i32 1
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = call i32 @hlist_bl_unlock(i32* %67)
  br label %69

69:                                               ; preds = %51, %35
  %70 = load %struct.dentry*, %struct.dentry** %5, align 8
  %71 = getelementptr inbounds %struct.dentry, %struct.dentry* %70, i32 0, i32 0
  %72 = call i32 @spin_unlock(i32* %71)
  %73 = load %struct.inode*, %struct.inode** %6, align 8
  %74 = getelementptr inbounds %struct.inode, %struct.inode* %73, i32 0, i32 0
  %75 = call i32 @spin_unlock(i32* %74)
  %76 = load %struct.dentry*, %struct.dentry** %5, align 8
  store %struct.dentry* %76, %struct.dentry** %4, align 8
  br label %81

77:                                               ; preds = %20
  %78 = load %struct.inode*, %struct.inode** %6, align 8
  %79 = call i32 @iput(%struct.inode* %78)
  %80 = load %struct.dentry*, %struct.dentry** %8, align 8
  store %struct.dentry* %80, %struct.dentry** %4, align 8
  br label %81

81:                                               ; preds = %77, %69
  %82 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %82
}

declare dso_local i32 @security_d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.dentry* @__d_find_any_alias(%struct.inode*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @d_flags_for_inode(%struct.inode*) #1

declare dso_local i32 @__d_set_inode_and_type(%struct.dentry*, %struct.inode*, i32) #1

declare dso_local i32 @hlist_add_head(i32*, i32*) #1

declare dso_local i32 @hlist_bl_lock(i32*) #1

declare dso_local i32 @hlist_bl_add_head(i32*, i32*) #1

declare dso_local i32 @hlist_bl_unlock(i32*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
