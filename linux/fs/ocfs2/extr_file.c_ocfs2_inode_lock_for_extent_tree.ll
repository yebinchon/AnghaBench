; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_file.c_ocfs2_inode_lock_for_extent_tree.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_file.c_ocfs2_inode_lock_for_extent_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.TYPE_2__ = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.buffer_head**, i32, i32, i32, i32)* @ocfs2_inode_lock_for_extent_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_inode_lock_for_extent_tree(%struct.inode* %0, %struct.buffer_head** %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.buffer_head**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %8, align 8
  store %struct.buffer_head** %1, %struct.buffer_head*** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* %13, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %6
  %18 = load %struct.inode*, %struct.inode** %8, align 8
  %19 = load i32, i32* %10, align 4
  %20 = call i32 @ocfs2_inode_lock(%struct.inode* %18, i32* null, i32 %19)
  store i32 %20, i32* %14, align 4
  br label %32

21:                                               ; preds = %6
  %22 = load %struct.inode*, %struct.inode** %8, align 8
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %28

26:                                               ; preds = %21
  %27 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  br label %28

28:                                               ; preds = %26, %25
  %29 = phi %struct.buffer_head** [ null, %25 ], [ %27, %26 ]
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @ocfs2_try_inode_lock(%struct.inode* %22, %struct.buffer_head** %29, i32 %30)
  store i32 %31, i32* %14, align 4
  br label %32

32:                                               ; preds = %28, %17
  %33 = load i32, i32* %14, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  br label %82

36:                                               ; preds = %32
  %37 = load i32, i32* %13, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %36
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load %struct.inode*, %struct.inode** %8, align 8
  %44 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %43)
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = call i32 @down_write(i32* %45)
  br label %52

47:                                               ; preds = %39
  %48 = load %struct.inode*, %struct.inode** %8, align 8
  %49 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %48)
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = call i32 @down_read(i32* %50)
  br label %52

52:                                               ; preds = %47, %42
  br label %73

53:                                               ; preds = %36
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load %struct.inode*, %struct.inode** %8, align 8
  %58 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %57)
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = call i32 @down_write_trylock(i32* %59)
  store i32 %60, i32* %14, align 4
  br label %66

61:                                               ; preds = %53
  %62 = load %struct.inode*, %struct.inode** %8, align 8
  %63 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %62)
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = call i32 @down_read_trylock(i32* %64)
  store i32 %65, i32* %14, align 4
  br label %66

66:                                               ; preds = %61, %56
  %67 = load i32, i32* %14, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* @EAGAIN, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %14, align 4
  br label %75

72:                                               ; preds = %66
  br label %73

73:                                               ; preds = %72, %52
  %74 = load i32, i32* %14, align 4
  store i32 %74, i32* %7, align 4
  br label %84

75:                                               ; preds = %69
  %76 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  %77 = load %struct.buffer_head*, %struct.buffer_head** %76, align 8
  %78 = call i32 @brelse(%struct.buffer_head* %77)
  %79 = load %struct.inode*, %struct.inode** %8, align 8
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @ocfs2_inode_unlock(%struct.inode* %79, i32 %80)
  br label %82

82:                                               ; preds = %75, %35
  %83 = load i32, i32* %14, align 4
  store i32 %83, i32* %7, align 4
  br label %84

84:                                               ; preds = %82, %73
  %85 = load i32, i32* %7, align 4
  ret i32 %85
}

declare dso_local i32 @ocfs2_inode_lock(%struct.inode*, i32*, i32) #1

declare dso_local i32 @ocfs2_try_inode_lock(%struct.inode*, %struct.buffer_head**, i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @down_write_trylock(i32*) #1

declare dso_local i32 @down_read_trylock(i32*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
