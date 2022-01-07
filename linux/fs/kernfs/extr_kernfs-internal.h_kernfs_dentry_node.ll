; ModuleID = '/home/carl/AnghaBench/linux/fs/kernfs/extr_kernfs-internal.h_kernfs_dentry_node.c'
source_filename = "/home/carl/AnghaBench/linux/fs/kernfs/extr_kernfs-internal.h_kernfs_dentry_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernfs_node = type { i32 }
%struct.dentry = type { i32 }
%struct.TYPE_2__ = type { %struct.kernfs_node* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kernfs_node* (%struct.dentry*)* @kernfs_dentry_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kernfs_node* @kernfs_dentry_node(%struct.dentry* %0) #0 {
  %2 = alloca %struct.kernfs_node*, align 8
  %3 = alloca %struct.dentry*, align 8
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  %4 = load %struct.dentry*, %struct.dentry** %3, align 8
  %5 = call i64 @d_really_is_negative(%struct.dentry* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store %struct.kernfs_node* null, %struct.kernfs_node** %2, align 8
  br label %13

8:                                                ; preds = %1
  %9 = load %struct.dentry*, %struct.dentry** %3, align 8
  %10 = call %struct.TYPE_2__* @d_inode(%struct.dentry* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.kernfs_node*, %struct.kernfs_node** %11, align 8
  store %struct.kernfs_node* %12, %struct.kernfs_node** %2, align 8
  br label %13

13:                                               ; preds = %8, %7
  %14 = load %struct.kernfs_node*, %struct.kernfs_node** %2, align 8
  ret %struct.kernfs_node* %14
}

declare dso_local i64 @d_really_is_negative(%struct.dentry*) #1

declare dso_local %struct.TYPE_2__* @d_inode(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
