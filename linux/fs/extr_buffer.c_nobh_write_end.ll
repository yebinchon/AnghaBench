; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_buffer.c_nobh_write_end.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_buffer.c_nobh_write_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.address_space = type { i32 }
%struct.page = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.buffer_head = type { %struct.buffer_head* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nobh_write_end(%struct.file* %0, %struct.address_space* %1, i32 %2, i32 %3, i32 %4, %struct.page* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.file*, align 8
  %10 = alloca %struct.address_space*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.page*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.inode*, align 8
  %17 = alloca %struct.buffer_head*, align 8
  %18 = alloca %struct.buffer_head*, align 8
  store %struct.file* %0, %struct.file** %9, align 8
  store %struct.address_space* %1, %struct.address_space** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.page* %5, %struct.page** %14, align 8
  store i8* %6, i8** %15, align 8
  %19 = load %struct.page*, %struct.page** %14, align 8
  %20 = getelementptr inbounds %struct.page, %struct.page* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.inode*, %struct.inode** %22, align 8
  store %struct.inode* %23, %struct.inode** %16, align 8
  %24 = load i8*, i8** %15, align 8
  %25 = bitcast i8* %24 to %struct.buffer_head*
  store %struct.buffer_head* %25, %struct.buffer_head** %17, align 8
  %26 = load i8*, i8** %15, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %7
  %29 = load %struct.page*, %struct.page** %14, align 8
  %30 = call i64 @page_has_buffers(%struct.page* %29)
  %31 = icmp ne i64 %30, 0
  br label %32

32:                                               ; preds = %28, %7
  %33 = phi i1 [ false, %7 ], [ %31, %28 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @BUG_ON(i32 %34)
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp ult i32 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %32
  %43 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %44 = icmp ne %struct.buffer_head* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load %struct.page*, %struct.page** %14, align 8
  %47 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %48 = call i32 @attach_nobh_buffers(%struct.page* %46, %struct.buffer_head* %47)
  br label %49

49:                                               ; preds = %45, %42, %32
  %50 = load %struct.page*, %struct.page** %14, align 8
  %51 = call i64 @page_has_buffers(%struct.page* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %49
  %54 = load %struct.file*, %struct.file** %9, align 8
  %55 = load %struct.address_space*, %struct.address_space** %10, align 8
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %13, align 4
  %59 = load %struct.page*, %struct.page** %14, align 8
  %60 = load i8*, i8** %15, align 8
  %61 = call i32 @generic_write_end(%struct.file* %54, %struct.address_space* %55, i32 %56, i32 %57, i32 %58, %struct.page* %59, i8* %60)
  store i32 %61, i32* %8, align 4
  br label %99

62:                                               ; preds = %49
  %63 = load %struct.page*, %struct.page** %14, align 8
  %64 = call i32 @SetPageUptodate(%struct.page* %63)
  %65 = load %struct.page*, %struct.page** %14, align 8
  %66 = call i32 @set_page_dirty(%struct.page* %65)
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %13, align 4
  %69 = add i32 %67, %68
  %70 = load %struct.inode*, %struct.inode** %16, align 8
  %71 = getelementptr inbounds %struct.inode, %struct.inode* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp ugt i32 %69, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %62
  %75 = load %struct.inode*, %struct.inode** %16, align 8
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %13, align 4
  %78 = add i32 %76, %77
  %79 = call i32 @i_size_write(%struct.inode* %75, i32 %78)
  %80 = load %struct.inode*, %struct.inode** %16, align 8
  %81 = call i32 @mark_inode_dirty(%struct.inode* %80)
  br label %82

82:                                               ; preds = %74, %62
  %83 = load %struct.page*, %struct.page** %14, align 8
  %84 = call i32 @unlock_page(%struct.page* %83)
  %85 = load %struct.page*, %struct.page** %14, align 8
  %86 = call i32 @put_page(%struct.page* %85)
  br label %87

87:                                               ; preds = %90, %82
  %88 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %89 = icmp ne %struct.buffer_head* %88, null
  br i1 %89, label %90, label %97

90:                                               ; preds = %87
  %91 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  store %struct.buffer_head* %91, %struct.buffer_head** %18, align 8
  %92 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %93 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %92, i32 0, i32 0
  %94 = load %struct.buffer_head*, %struct.buffer_head** %93, align 8
  store %struct.buffer_head* %94, %struct.buffer_head** %17, align 8
  %95 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %96 = call i32 @free_buffer_head(%struct.buffer_head* %95)
  br label %87

97:                                               ; preds = %87
  %98 = load i32, i32* %13, align 4
  store i32 %98, i32* %8, align 4
  br label %99

99:                                               ; preds = %97, %53
  %100 = load i32, i32* %8, align 4
  ret i32 %100
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @page_has_buffers(%struct.page*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @attach_nobh_buffers(%struct.page*, %struct.buffer_head*) #1

declare dso_local i32 @generic_write_end(%struct.file*, %struct.address_space*, i32, i32, i32, %struct.page*, i8*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @i_size_write(%struct.inode*, i32) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @free_buffer_head(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
