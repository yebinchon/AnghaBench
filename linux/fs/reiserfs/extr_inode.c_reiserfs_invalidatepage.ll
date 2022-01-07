; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_inode.c_reiserfs_invalidatepage.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_inode.c_reiserfs_invalidatepage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.buffer_head = type { i32, %struct.buffer_head* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*, i32, i32)* @reiserfs_invalidatepage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reiserfs_invalidatepage(%struct.page* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %16 = load %struct.page*, %struct.page** %4, align 8
  %17 = getelementptr inbounds %struct.page, %struct.page* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.inode*, %struct.inode** %19, align 8
  store %struct.inode* %20, %struct.inode** %10, align 8
  store i32 0, i32* %11, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = add i32 %21, %22
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @PAGE_SIZE, align 4
  %29 = icmp ult i32 %27, %28
  br label %30

30:                                               ; preds = %26, %3
  %31 = phi i1 [ true, %3 ], [ %29, %26 ]
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %13, align 4
  store i32 1, i32* %14, align 4
  %33 = load %struct.page*, %struct.page** %4, align 8
  %34 = call i32 @PageLocked(%struct.page* %33)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @BUG_ON(i32 %37)
  %39 = load i32, i32* %13, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %30
  %42 = load %struct.page*, %struct.page** %4, align 8
  %43 = call i32 @ClearPageChecked(%struct.page* %42)
  br label %44

44:                                               ; preds = %41, %30
  %45 = load %struct.page*, %struct.page** %4, align 8
  %46 = call i32 @page_has_buffers(%struct.page* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  br label %97

49:                                               ; preds = %44
  %50 = load %struct.page*, %struct.page** %4, align 8
  %51 = call %struct.buffer_head* @page_buffers(%struct.page* %50)
  store %struct.buffer_head* %51, %struct.buffer_head** %7, align 8
  %52 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  store %struct.buffer_head* %52, %struct.buffer_head** %8, align 8
  br label %53

53:                                               ; preds = %83, %49
  %54 = load i32, i32* %11, align 4
  %55 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %56 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = add i32 %54, %57
  store i32 %58, i32* %15, align 4
  %59 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %60 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %59, i32 0, i32 1
  %61 = load %struct.buffer_head*, %struct.buffer_head** %60, align 8
  store %struct.buffer_head* %61, %struct.buffer_head** %9, align 8
  %62 = load i32, i32* %15, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp ugt i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %53
  br label %97

66:                                               ; preds = %53
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp ule i32 %67, %68
  br i1 %69, label %70, label %80

70:                                               ; preds = %66
  %71 = load %struct.inode*, %struct.inode** %10, align 8
  %72 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %73 = call i64 @invalidatepage_can_drop(%struct.inode* %71, %struct.buffer_head* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %77 = call i32 @reiserfs_unmap_buffer(%struct.buffer_head* %76)
  br label %79

78:                                               ; preds = %70
  store i32 0, i32* %14, align 4
  br label %79

79:                                               ; preds = %78, %75
  br label %80

80:                                               ; preds = %79, %66
  %81 = load i32, i32* %15, align 4
  store i32 %81, i32* %11, align 4
  %82 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  store %struct.buffer_head* %82, %struct.buffer_head** %8, align 8
  br label %83

83:                                               ; preds = %80
  %84 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %85 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %86 = icmp ne %struct.buffer_head* %84, %85
  br i1 %86, label %53, label %87

87:                                               ; preds = %83
  %88 = load i32, i32* %13, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %96, label %90

90:                                               ; preds = %87
  %91 = load i32, i32* %14, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load %struct.page*, %struct.page** %4, align 8
  %95 = call i32 @try_to_release_page(%struct.page* %94, i32 0)
  store i32 %95, i32* %14, align 4
  br label %96

96:                                               ; preds = %93, %90, %87
  br label %97

97:                                               ; preds = %96, %65, %48
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @PageLocked(%struct.page*) #1

declare dso_local i32 @ClearPageChecked(%struct.page*) #1

declare dso_local i32 @page_has_buffers(%struct.page*) #1

declare dso_local %struct.buffer_head* @page_buffers(%struct.page*) #1

declare dso_local i64 @invalidatepage_can_drop(%struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @reiserfs_unmap_buffer(%struct.buffer_head*) #1

declare dso_local i32 @try_to_release_page(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
