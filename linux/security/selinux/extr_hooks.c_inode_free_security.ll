; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_inode_free_security.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_inode_free_security.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.superblock_security_struct* }
%struct.superblock_security_struct = type { i32 }
%struct.inode_security_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*)* @inode_free_security to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @inode_free_security(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.inode_security_struct*, align 8
  %4 = alloca %struct.superblock_security_struct*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %5 = load %struct.inode*, %struct.inode** %2, align 8
  %6 = call %struct.inode_security_struct* @selinux_inode(%struct.inode* %5)
  store %struct.inode_security_struct* %6, %struct.inode_security_struct** %3, align 8
  %7 = load %struct.inode_security_struct*, %struct.inode_security_struct** %3, align 8
  %8 = icmp ne %struct.inode_security_struct* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %30

10:                                               ; preds = %1
  %11 = load %struct.inode*, %struct.inode** %2, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %14, align 8
  store %struct.superblock_security_struct* %15, %struct.superblock_security_struct** %4, align 8
  %16 = load %struct.inode_security_struct*, %struct.inode_security_struct** %3, align 8
  %17 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %16, i32 0, i32 0
  %18 = call i32 @list_empty_careful(i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %10
  %21 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %4, align 8
  %22 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %21, i32 0, i32 0
  %23 = call i32 @spin_lock(i32* %22)
  %24 = load %struct.inode_security_struct*, %struct.inode_security_struct** %3, align 8
  %25 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %24, i32 0, i32 0
  %26 = call i32 @list_del_init(i32* %25)
  %27 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %4, align 8
  %28 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %27, i32 0, i32 0
  %29 = call i32 @spin_unlock(i32* %28)
  br label %30

30:                                               ; preds = %9, %20, %10
  ret void
}

declare dso_local %struct.inode_security_struct* @selinux_inode(%struct.inode*) #1

declare dso_local i32 @list_empty_careful(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
