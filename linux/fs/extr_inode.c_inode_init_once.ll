; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_inode.c_inode_init_once.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_inode.c_inode_init_once.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @inode_init_once(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %3 = load %struct.inode*, %struct.inode** %2, align 8
  %4 = call i32 @memset(%struct.inode* %3, i32 0, i32 24)
  %5 = load %struct.inode*, %struct.inode** %2, align 8
  %6 = getelementptr inbounds %struct.inode, %struct.inode* %5, i32 0, i32 5
  %7 = call i32 @INIT_HLIST_NODE(i32* %6)
  %8 = load %struct.inode*, %struct.inode** %2, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 4
  %10 = call i32 @INIT_LIST_HEAD(i32* %9)
  %11 = load %struct.inode*, %struct.inode** %2, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 3
  %13 = call i32 @INIT_LIST_HEAD(i32* %12)
  %14 = load %struct.inode*, %struct.inode** %2, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 2
  %16 = call i32 @INIT_LIST_HEAD(i32* %15)
  %17 = load %struct.inode*, %struct.inode** %2, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 1
  %19 = call i32 @INIT_LIST_HEAD(i32* %18)
  %20 = load %struct.inode*, %struct.inode** %2, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = call i32 @__address_space_init_once(i32* %21)
  %23 = load %struct.inode*, %struct.inode** %2, align 8
  %24 = call i32 @i_size_ordered_init(%struct.inode* %23)
  ret void
}

declare dso_local i32 @memset(%struct.inode*, i32, i32) #1

declare dso_local i32 @INIT_HLIST_NODE(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @__address_space_init_once(i32*) #1

declare dso_local i32 @i_size_ordered_init(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
