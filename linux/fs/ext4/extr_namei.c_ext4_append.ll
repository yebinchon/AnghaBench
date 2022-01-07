; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_ext4_append.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_ext4_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32 }
%struct.inode = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@EXT4_GET_BLOCKS_CREATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"get_write_access\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.buffer_head* (i32*, %struct.inode*, i32*)* @ext4_append to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.buffer_head* @ext4_append(i32* %0, %struct.inode* %1, i32* %2) #0 {
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.inode*, %struct.inode** %6, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = call %struct.TYPE_6__* @EXT4_SB(%struct.TYPE_5__* %12)
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %3
  %18 = load %struct.inode*, %struct.inode** %6, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = ashr i32 %20, 10
  %22 = load %struct.inode*, %struct.inode** %6, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = call %struct.TYPE_6__* @EXT4_SB(%struct.TYPE_5__* %24)
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp sge i32 %21, %27
  br label %29

29:                                               ; preds = %17, %3
  %30 = phi i1 [ false, %3 ], [ %28, %17 ]
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i32, i32* @ENOSPC, align 4
  %36 = sub nsw i32 0, %35
  %37 = call %struct.buffer_head* @ERR_PTR(i32 %36)
  store %struct.buffer_head* %37, %struct.buffer_head** %4, align 8
  br label %97

38:                                               ; preds = %29
  %39 = load %struct.inode*, %struct.inode** %6, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.inode*, %struct.inode** %6, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 1
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = ashr i32 %41, %46
  %48 = load i32*, i32** %7, align 8
  store i32 %47, i32* %48, align 4
  %49 = load i32*, i32** %5, align 8
  %50 = load %struct.inode*, %struct.inode** %6, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @EXT4_GET_BLOCKS_CREATE, align 4
  %54 = call %struct.buffer_head* @ext4_bread(i32* %49, %struct.inode* %50, i32 %52, i32 %53)
  store %struct.buffer_head* %54, %struct.buffer_head** %8, align 8
  %55 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %56 = call i64 @IS_ERR(%struct.buffer_head* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %38
  %59 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  store %struct.buffer_head* %59, %struct.buffer_head** %4, align 8
  br label %97

60:                                               ; preds = %38
  %61 = load %struct.inode*, %struct.inode** %6, align 8
  %62 = getelementptr inbounds %struct.inode, %struct.inode* %61, i32 0, i32 1
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.inode*, %struct.inode** %6, align 8
  %67 = getelementptr inbounds %struct.inode, %struct.inode* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %69, %65
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %67, align 8
  %72 = load %struct.inode*, %struct.inode** %6, align 8
  %73 = getelementptr inbounds %struct.inode, %struct.inode* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.inode*, %struct.inode** %6, align 8
  %76 = call %struct.TYPE_7__* @EXT4_I(%struct.inode* %75)
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  store i32 %74, i32* %77, align 4
  %78 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %79 = call i32 @BUFFER_TRACE(%struct.buffer_head* %78, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %80 = load i32*, i32** %5, align 8
  %81 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %82 = call i32 @ext4_journal_get_write_access(i32* %80, %struct.buffer_head* %81)
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %60
  %86 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %87 = call i32 @brelse(%struct.buffer_head* %86)
  %88 = load %struct.inode*, %struct.inode** %6, align 8
  %89 = getelementptr inbounds %struct.inode, %struct.inode* %88, i32 0, i32 1
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @ext4_std_error(%struct.TYPE_5__* %90, i32 %91)
  %93 = load i32, i32* %9, align 4
  %94 = call %struct.buffer_head* @ERR_PTR(i32 %93)
  store %struct.buffer_head* %94, %struct.buffer_head** %4, align 8
  br label %97

95:                                               ; preds = %60
  %96 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  store %struct.buffer_head* %96, %struct.buffer_head** %4, align 8
  br label %97

97:                                               ; preds = %95, %85, %58, %34
  %98 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  ret %struct.buffer_head* %98
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.TYPE_6__* @EXT4_SB(%struct.TYPE_5__*) #1

declare dso_local %struct.buffer_head* @ERR_PTR(i32) #1

declare dso_local %struct.buffer_head* @ext4_bread(i32*, %struct.inode*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.buffer_head*) #1

declare dso_local %struct.TYPE_7__* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @BUFFER_TRACE(%struct.buffer_head*, i8*) #1

declare dso_local i32 @ext4_journal_get_write_access(i32*, %struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @ext4_std_error(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
