; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_buffer.c_invalidate_inode_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_buffer.c_invalidate_inode_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.address_space }
%struct.address_space = type { i32, %struct.address_space*, %struct.list_head }
%struct.list_head = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @invalidate_inode_buffers(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.address_space*, align 8
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca %struct.address_space*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %6 = load %struct.inode*, %struct.inode** %2, align 8
  %7 = call i64 @inode_has_buffers(%struct.inode* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %35

9:                                                ; preds = %1
  %10 = load %struct.inode*, %struct.inode** %2, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 0
  store %struct.address_space* %11, %struct.address_space** %3, align 8
  %12 = load %struct.address_space*, %struct.address_space** %3, align 8
  %13 = getelementptr inbounds %struct.address_space, %struct.address_space* %12, i32 0, i32 2
  store %struct.list_head* %13, %struct.list_head** %4, align 8
  %14 = load %struct.address_space*, %struct.address_space** %3, align 8
  %15 = getelementptr inbounds %struct.address_space, %struct.address_space* %14, i32 0, i32 1
  %16 = load %struct.address_space*, %struct.address_space** %15, align 8
  store %struct.address_space* %16, %struct.address_space** %5, align 8
  %17 = load %struct.address_space*, %struct.address_space** %5, align 8
  %18 = getelementptr inbounds %struct.address_space, %struct.address_space* %17, i32 0, i32 0
  %19 = call i32 @spin_lock(i32* %18)
  br label %20

20:                                               ; preds = %25, %9
  %21 = load %struct.list_head*, %struct.list_head** %4, align 8
  %22 = call i32 @list_empty(%struct.list_head* %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load %struct.list_head*, %struct.list_head** %4, align 8
  %27 = getelementptr inbounds %struct.list_head, %struct.list_head* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @BH_ENTRY(i32 %28)
  %30 = call i32 @__remove_assoc_queue(i32 %29)
  br label %20

31:                                               ; preds = %20
  %32 = load %struct.address_space*, %struct.address_space** %5, align 8
  %33 = getelementptr inbounds %struct.address_space, %struct.address_space* %32, i32 0, i32 0
  %34 = call i32 @spin_unlock(i32* %33)
  br label %35

35:                                               ; preds = %31, %1
  ret void
}

declare dso_local i64 @inode_has_buffers(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_empty(%struct.list_head*) #1

declare dso_local i32 @__remove_assoc_queue(i32) #1

declare dso_local i32 @BH_ENTRY(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
