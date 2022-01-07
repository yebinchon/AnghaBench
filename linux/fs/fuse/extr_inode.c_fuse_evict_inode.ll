; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_inode.c_fuse_evict_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_inode.c_fuse_evict_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.fuse_inode = type { i32, i32, i32*, i32, i32 }
%struct.fuse_conn = type { i32 }

@SB_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*)* @fuse_evict_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fuse_evict_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.fuse_inode*, align 8
  %4 = alloca %struct.fuse_conn*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %5 = load %struct.inode*, %struct.inode** %2, align 8
  %6 = call %struct.fuse_inode* @get_fuse_inode(%struct.inode* %5)
  store %struct.fuse_inode* %6, %struct.fuse_inode** %3, align 8
  %7 = load %struct.inode*, %struct.inode** %2, align 8
  %8 = getelementptr inbounds %struct.inode, %struct.inode* %7, i32 0, i32 2
  %9 = call i32 @truncate_inode_pages_final(i32* %8)
  %10 = load %struct.inode*, %struct.inode** %2, align 8
  %11 = call i32 @clear_inode(%struct.inode* %10)
  %12 = load %struct.inode*, %struct.inode** %2, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @SB_ACTIVE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %1
  %21 = load %struct.inode*, %struct.inode** %2, align 8
  %22 = call %struct.fuse_conn* @get_fuse_conn(%struct.inode* %21)
  store %struct.fuse_conn* %22, %struct.fuse_conn** %4, align 8
  %23 = load %struct.fuse_conn*, %struct.fuse_conn** %4, align 8
  %24 = load %struct.fuse_inode*, %struct.fuse_inode** %3, align 8
  %25 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.fuse_inode*, %struct.fuse_inode** %3, align 8
  %28 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.fuse_inode*, %struct.fuse_inode** %3, align 8
  %31 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @fuse_queue_forget(%struct.fuse_conn* %23, i32* %26, i32 %29, i32 %32)
  %34 = load %struct.fuse_inode*, %struct.fuse_inode** %3, align 8
  %35 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %34, i32 0, i32 2
  store i32* null, i32** %35, align 8
  br label %36

36:                                               ; preds = %20, %1
  %37 = load %struct.inode*, %struct.inode** %2, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @S_ISREG(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %61

42:                                               ; preds = %36
  %43 = load %struct.inode*, %struct.inode** %2, align 8
  %44 = call i32 @is_bad_inode(%struct.inode* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %61, label %46

46:                                               ; preds = %42
  %47 = load %struct.fuse_inode*, %struct.fuse_inode** %3, align 8
  %48 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %47, i32 0, i32 1
  %49 = call i32 @list_empty(i32* %48)
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i32 @WARN_ON(i32 %52)
  %54 = load %struct.fuse_inode*, %struct.fuse_inode** %3, align 8
  %55 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %54, i32 0, i32 0
  %56 = call i32 @list_empty(i32* %55)
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = call i32 @WARN_ON(i32 %59)
  br label %61

61:                                               ; preds = %46, %42, %36
  ret void
}

declare dso_local %struct.fuse_inode* @get_fuse_inode(%struct.inode*) #1

declare dso_local i32 @truncate_inode_pages_final(i32*) #1

declare dso_local i32 @clear_inode(%struct.inode*) #1

declare dso_local %struct.fuse_conn* @get_fuse_conn(%struct.inode*) #1

declare dso_local i32 @fuse_queue_forget(%struct.fuse_conn*, i32*, i32, i32) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @is_bad_inode(%struct.inode*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
