; ModuleID = '/home/carl/AnghaBench/linux/fs/iomap/extr_direct-io.c_iomap_dio_inline_actor.c'
source_filename = "/home/carl/AnghaBench/linux/fs/iomap/extr_direct-io.c_iomap_dio_inline_actor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64 }
%struct.iomap_dio = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.iov_iter* }
%struct.iov_iter = type { i32 }
%struct.iomap = type { i64 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@IOMAP_DIO_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.inode*, i64, i64, %struct.iomap_dio*, %struct.iomap*)* @iomap_dio_inline_actor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @iomap_dio_inline_actor(%struct.inode* %0, i64 %1, i64 %2, %struct.iomap_dio* %3, %struct.iomap* %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.iomap_dio*, align 8
  %10 = alloca %struct.iomap*, align 8
  %11 = alloca %struct.iov_iter*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.iomap_dio* %3, %struct.iomap_dio** %9, align 8
  store %struct.iomap* %4, %struct.iomap** %10, align 8
  %14 = load %struct.iomap_dio*, %struct.iomap_dio** %9, align 8
  %15 = getelementptr inbounds %struct.iomap_dio, %struct.iomap_dio* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.iov_iter*, %struct.iov_iter** %16, align 8
  store %struct.iov_iter* %17, %struct.iov_iter** %11, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* %8, align 8
  %20 = add nsw i64 %18, %19
  %21 = load i64, i64* @PAGE_SIZE, align 8
  %22 = load %struct.iomap*, %struct.iomap** %10, align 8
  %23 = getelementptr inbounds %struct.iomap, %struct.iomap* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i64 @offset_in_page(i64 %24)
  %26 = sub nsw i64 %21, %25
  %27 = icmp sgt i64 %20, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @BUG_ON(i32 %28)
  %30 = load %struct.iomap_dio*, %struct.iomap_dio** %9, align 8
  %31 = getelementptr inbounds %struct.iomap_dio, %struct.iomap_dio* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @IOMAP_DIO_WRITE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %80

36:                                               ; preds = %5
  %37 = load %struct.inode*, %struct.inode** %6, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %13, align 8
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* %13, align 8
  %42 = icmp sgt i64 %40, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %36
  %44 = load %struct.iomap*, %struct.iomap** %10, align 8
  %45 = getelementptr inbounds %struct.iomap, %struct.iomap* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %13, align 8
  %48 = add nsw i64 %46, %47
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* %13, align 8
  %51 = sub nsw i64 %49, %50
  %52 = call i32 @memset(i64 %48, i32 0, i64 %51)
  br label %53

53:                                               ; preds = %43, %36
  %54 = load %struct.iomap*, %struct.iomap** %10, align 8
  %55 = getelementptr inbounds %struct.iomap, %struct.iomap* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %7, align 8
  %58 = add nsw i64 %56, %57
  %59 = load i64, i64* %8, align 8
  %60 = load %struct.iov_iter*, %struct.iov_iter** %11, align 8
  %61 = call i64 @copy_from_iter(i64 %58, i64 %59, %struct.iov_iter* %60)
  store i64 %61, i64* %12, align 8
  %62 = load i64, i64* %12, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %79

64:                                               ; preds = %53
  %65 = load i64, i64* %7, align 8
  %66 = load i64, i64* %12, align 8
  %67 = add i64 %65, %66
  %68 = load i64, i64* %13, align 8
  %69 = icmp ugt i64 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %64
  %71 = load %struct.inode*, %struct.inode** %6, align 8
  %72 = load i64, i64* %7, align 8
  %73 = load i64, i64* %12, align 8
  %74 = add i64 %72, %73
  %75 = call i32 @i_size_write(%struct.inode* %71, i64 %74)
  br label %76

76:                                               ; preds = %70, %64
  %77 = load %struct.inode*, %struct.inode** %6, align 8
  %78 = call i32 @mark_inode_dirty(%struct.inode* %77)
  br label %79

79:                                               ; preds = %76, %53
  br label %89

80:                                               ; preds = %5
  %81 = load %struct.iomap*, %struct.iomap** %10, align 8
  %82 = getelementptr inbounds %struct.iomap, %struct.iomap* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %7, align 8
  %85 = add nsw i64 %83, %84
  %86 = load i64, i64* %8, align 8
  %87 = load %struct.iov_iter*, %struct.iov_iter** %11, align 8
  %88 = call i64 @copy_to_iter(i64 %85, i64 %86, %struct.iov_iter* %87)
  store i64 %88, i64* %12, align 8
  br label %89

89:                                               ; preds = %80, %79
  %90 = load i64, i64* %12, align 8
  %91 = load %struct.iomap_dio*, %struct.iomap_dio** %9, align 8
  %92 = getelementptr inbounds %struct.iomap_dio, %struct.iomap_dio* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = add i64 %93, %90
  store i64 %94, i64* %92, align 8
  %95 = load i64, i64* %12, align 8
  ret i64 %95
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @offset_in_page(i64) #1

declare dso_local i32 @memset(i64, i32, i64) #1

declare dso_local i64 @copy_from_iter(i64, i64, %struct.iov_iter*) #1

declare dso_local i32 @i_size_write(%struct.inode*, i64) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i64 @copy_to_iter(i64, i64, %struct.iov_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
