; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_buffer.c_remove_inode_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_buffer.c_remove_inode_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.address_space }
%struct.address_space = type { i32, %struct.address_space*, %struct.list_head }
%struct.list_head = type { i32 }
%struct.buffer_head = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @remove_inode_buffers(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.address_space*, align 8
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca %struct.address_space*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  store i32 1, i32* %3, align 4
  %8 = load %struct.inode*, %struct.inode** %2, align 8
  %9 = call i64 @inode_has_buffers(%struct.inode* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %43

11:                                               ; preds = %1
  %12 = load %struct.inode*, %struct.inode** %2, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 0
  store %struct.address_space* %13, %struct.address_space** %4, align 8
  %14 = load %struct.address_space*, %struct.address_space** %4, align 8
  %15 = getelementptr inbounds %struct.address_space, %struct.address_space* %14, i32 0, i32 2
  store %struct.list_head* %15, %struct.list_head** %5, align 8
  %16 = load %struct.address_space*, %struct.address_space** %4, align 8
  %17 = getelementptr inbounds %struct.address_space, %struct.address_space* %16, i32 0, i32 1
  %18 = load %struct.address_space*, %struct.address_space** %17, align 8
  store %struct.address_space* %18, %struct.address_space** %6, align 8
  %19 = load %struct.address_space*, %struct.address_space** %6, align 8
  %20 = getelementptr inbounds %struct.address_space, %struct.address_space* %19, i32 0, i32 0
  %21 = call i32 @spin_lock(i32* %20)
  br label %22

22:                                               ; preds = %36, %11
  %23 = load %struct.list_head*, %struct.list_head** %5, align 8
  %24 = call i32 @list_empty(%struct.list_head* %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  br i1 %26, label %27, label %39

27:                                               ; preds = %22
  %28 = load %struct.list_head*, %struct.list_head** %5, align 8
  %29 = getelementptr inbounds %struct.list_head, %struct.list_head* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.buffer_head* @BH_ENTRY(i32 %30)
  store %struct.buffer_head* %31, %struct.buffer_head** %7, align 8
  %32 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %33 = call i64 @buffer_dirty(%struct.buffer_head* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %39

36:                                               ; preds = %27
  %37 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %38 = call i32 @__remove_assoc_queue(%struct.buffer_head* %37)
  br label %22

39:                                               ; preds = %35, %22
  %40 = load %struct.address_space*, %struct.address_space** %6, align 8
  %41 = getelementptr inbounds %struct.address_space, %struct.address_space* %40, i32 0, i32 0
  %42 = call i32 @spin_unlock(i32* %41)
  br label %43

43:                                               ; preds = %39, %1
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i64 @inode_has_buffers(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_empty(%struct.list_head*) #1

declare dso_local %struct.buffer_head* @BH_ENTRY(i32) #1

declare dso_local i64 @buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @__remove_assoc_queue(%struct.buffer_head*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
