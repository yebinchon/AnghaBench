; ModuleID = '/home/carl/AnghaBench/linux/fs/iomap/extr_buffered-io.c_iomap_page_mkwrite_actor.c'
source_filename = "/home/carl/AnghaBench/linux/fs/iomap/extr_buffered-io.c_iomap_page_mkwrite_actor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.iomap = type { i32 }
%struct.page = type { i32 }

@IOMAP_F_BUFFER_HEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i32, i8*, %struct.iomap*)* @iomap_page_mkwrite_actor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iomap_page_mkwrite_actor(%struct.inode* %0, i32 %1, i32 %2, i8* %3, %struct.iomap* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.iomap*, align 8
  %12 = alloca %struct.page*, align 8
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store %struct.iomap* %4, %struct.iomap** %11, align 8
  %14 = load i8*, i8** %10, align 8
  %15 = bitcast i8* %14 to %struct.page*
  store %struct.page* %15, %struct.page** %12, align 8
  %16 = load %struct.iomap*, %struct.iomap** %11, align 8
  %17 = getelementptr inbounds %struct.iomap, %struct.iomap* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @IOMAP_F_BUFFER_HEAD, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %5
  %23 = load %struct.page*, %struct.page** %12, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.iomap*, %struct.iomap** %11, align 8
  %27 = call i32 @__block_write_begin_int(%struct.page* %23, i32 %24, i32 %25, i32* null, %struct.iomap* %26)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* %13, align 4
  store i32 %31, i32* %6, align 4
  br label %50

32:                                               ; preds = %22
  %33 = load %struct.page*, %struct.page** %12, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @block_commit_write(%struct.page* %33, i32 0, i32 %34)
  br label %48

36:                                               ; preds = %5
  %37 = load %struct.page*, %struct.page** %12, align 8
  %38 = call i32 @PageUptodate(%struct.page* %37)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i32 @WARN_ON_ONCE(i32 %41)
  %43 = load %struct.inode*, %struct.inode** %7, align 8
  %44 = load %struct.page*, %struct.page** %12, align 8
  %45 = call i32 @iomap_page_create(%struct.inode* %43, %struct.page* %44)
  %46 = load %struct.page*, %struct.page** %12, align 8
  %47 = call i32 @set_page_dirty(%struct.page* %46)
  br label %48

48:                                               ; preds = %36, %32
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %48, %30
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local i32 @__block_write_begin_int(%struct.page*, i32, i32, i32*, %struct.iomap*) #1

declare dso_local i32 @block_commit_write(%struct.page*, i32, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i32 @iomap_page_create(%struct.inode*, %struct.page*) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
