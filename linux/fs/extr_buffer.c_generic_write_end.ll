; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_buffer.c_generic_write_end.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_buffer.c_generic_write_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.page = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @generic_write_end(%struct.file* %0, %struct.address_space* %1, i32 %2, i32 %3, i32 %4, %struct.page* %5, i8* %6) #0 {
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.address_space*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.page*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.inode*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.address_space* %1, %struct.address_space** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.page* %5, %struct.page** %13, align 8
  store i8* %6, i8** %14, align 8
  %18 = load %struct.address_space*, %struct.address_space** %9, align 8
  %19 = getelementptr inbounds %struct.address_space, %struct.address_space* %18, i32 0, i32 0
  %20 = load %struct.inode*, %struct.inode** %19, align 8
  store %struct.inode* %20, %struct.inode** %15, align 8
  %21 = load %struct.inode*, %struct.inode** %15, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %24 = load %struct.file*, %struct.file** %8, align 8
  %25 = load %struct.address_space*, %struct.address_space** %9, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* %12, align 4
  %29 = load %struct.page*, %struct.page** %13, align 8
  %30 = load i8*, i8** %14, align 8
  %31 = call i32 @block_write_end(%struct.file* %24, %struct.address_space* %25, i32 %26, i32 %27, i32 %28, %struct.page* %29, i8* %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %12, align 4
  %34 = add i32 %32, %33
  %35 = load %struct.inode*, %struct.inode** %15, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ugt i32 %34, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %7
  %40 = load %struct.inode*, %struct.inode** %15, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %12, align 4
  %43 = add i32 %41, %42
  %44 = call i32 @i_size_write(%struct.inode* %40, i32 %43)
  store i32 1, i32* %17, align 4
  br label %45

45:                                               ; preds = %39, %7
  %46 = load %struct.page*, %struct.page** %13, align 8
  %47 = call i32 @unlock_page(%struct.page* %46)
  %48 = load %struct.page*, %struct.page** %13, align 8
  %49 = call i32 @put_page(%struct.page* %48)
  %50 = load i32, i32* %16, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp ult i32 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %45
  %54 = load %struct.inode*, %struct.inode** %15, align 8
  %55 = load i32, i32* %16, align 4
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @pagecache_isize_extended(%struct.inode* %54, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %53, %45
  %59 = load i32, i32* %17, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load %struct.inode*, %struct.inode** %15, align 8
  %63 = call i32 @mark_inode_dirty(%struct.inode* %62)
  br label %64

64:                                               ; preds = %61, %58
  %65 = load i32, i32* %12, align 4
  ret i32 %65
}

declare dso_local i32 @block_write_end(%struct.file*, %struct.address_space*, i32, i32, i32, %struct.page*, i8*) #1

declare dso_local i32 @i_size_write(%struct.inode*, i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @pagecache_isize_extended(%struct.inode*, i32, i32) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
