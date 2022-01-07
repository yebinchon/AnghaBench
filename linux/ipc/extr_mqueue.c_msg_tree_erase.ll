; ModuleID = '/home/carl/AnghaBench/linux/ipc/extr_mqueue.c_msg_tree_erase.c'
source_filename = "/home/carl/AnghaBench/linux/ipc/extr_mqueue.c_msg_tree_erase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.posix_msg_tree_node = type { %struct.rb_node }
%struct.rb_node = type { i32 }
%struct.mqueue_inode_info = type { %struct.posix_msg_tree_node*, i32, %struct.rb_node* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.posix_msg_tree_node*, %struct.mqueue_inode_info*)* @msg_tree_erase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msg_tree_erase(%struct.posix_msg_tree_node* %0, %struct.mqueue_inode_info* %1) #0 {
  %3 = alloca %struct.posix_msg_tree_node*, align 8
  %4 = alloca %struct.mqueue_inode_info*, align 8
  %5 = alloca %struct.rb_node*, align 8
  store %struct.posix_msg_tree_node* %0, %struct.posix_msg_tree_node** %3, align 8
  store %struct.mqueue_inode_info* %1, %struct.mqueue_inode_info** %4, align 8
  %6 = load %struct.posix_msg_tree_node*, %struct.posix_msg_tree_node** %3, align 8
  %7 = getelementptr inbounds %struct.posix_msg_tree_node, %struct.posix_msg_tree_node* %6, i32 0, i32 0
  store %struct.rb_node* %7, %struct.rb_node** %5, align 8
  %8 = load %struct.mqueue_inode_info*, %struct.mqueue_inode_info** %4, align 8
  %9 = getelementptr inbounds %struct.mqueue_inode_info, %struct.mqueue_inode_info* %8, i32 0, i32 2
  %10 = load %struct.rb_node*, %struct.rb_node** %9, align 8
  %11 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %12 = icmp eq %struct.rb_node* %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %15 = call %struct.rb_node* @rb_prev(%struct.rb_node* %14)
  %16 = load %struct.mqueue_inode_info*, %struct.mqueue_inode_info** %4, align 8
  %17 = getelementptr inbounds %struct.mqueue_inode_info, %struct.mqueue_inode_info* %16, i32 0, i32 2
  store %struct.rb_node* %15, %struct.rb_node** %17, align 8
  br label %18

18:                                               ; preds = %13, %2
  %19 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %20 = load %struct.mqueue_inode_info*, %struct.mqueue_inode_info** %4, align 8
  %21 = getelementptr inbounds %struct.mqueue_inode_info, %struct.mqueue_inode_info* %20, i32 0, i32 1
  %22 = call i32 @rb_erase(%struct.rb_node* %19, i32* %21)
  %23 = load %struct.mqueue_inode_info*, %struct.mqueue_inode_info** %4, align 8
  %24 = getelementptr inbounds %struct.mqueue_inode_info, %struct.mqueue_inode_info* %23, i32 0, i32 0
  %25 = load %struct.posix_msg_tree_node*, %struct.posix_msg_tree_node** %24, align 8
  %26 = icmp ne %struct.posix_msg_tree_node* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %18
  %28 = load %struct.posix_msg_tree_node*, %struct.posix_msg_tree_node** %3, align 8
  %29 = call i32 @kfree(%struct.posix_msg_tree_node* %28)
  br label %34

30:                                               ; preds = %18
  %31 = load %struct.posix_msg_tree_node*, %struct.posix_msg_tree_node** %3, align 8
  %32 = load %struct.mqueue_inode_info*, %struct.mqueue_inode_info** %4, align 8
  %33 = getelementptr inbounds %struct.mqueue_inode_info, %struct.mqueue_inode_info* %32, i32 0, i32 0
  store %struct.posix_msg_tree_node* %31, %struct.posix_msg_tree_node** %33, align 8
  br label %34

34:                                               ; preds = %30, %27
  ret void
}

declare dso_local %struct.rb_node* @rb_prev(%struct.rb_node*) #1

declare dso_local i32 @rb_erase(%struct.rb_node*, i32*) #1

declare dso_local i32 @kfree(%struct.posix_msg_tree_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
