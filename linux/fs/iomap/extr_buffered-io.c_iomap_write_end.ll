; ModuleID = '/home/carl/AnghaBench/linux/fs/iomap/extr_buffered-io.c_iomap_write_end.c'
source_filename = "/home/carl/AnghaBench/linux/fs/iomap/extr_buffered-io.c_iomap_write_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32 }
%struct.page = type { i32 }
%struct.iomap = type { i64, i32, %struct.iomap_page_ops* }
%struct.iomap_page_ops = type { i32 (%struct.inode.0*, i64, i32, %struct.page*, %struct.iomap.1*)* }
%struct.inode.0 = type opaque
%struct.iomap.1 = type opaque

@IOMAP_INLINE = common dso_local global i64 0, align 8
@IOMAP_F_BUFFER_HEAD = common dso_local global i32 0, align 4
@IOMAP_F_SIZE_CHANGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64, i32, i32, %struct.page*, %struct.iomap*)* @iomap_write_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iomap_write_end(%struct.inode* %0, i64 %1, i32 %2, i32 %3, %struct.page* %4, %struct.iomap* %5) #0 {
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.page*, align 8
  %12 = alloca %struct.iomap*, align 8
  %13 = alloca %struct.iomap_page_ops*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.page* %4, %struct.page** %11, align 8
  store %struct.iomap* %5, %struct.iomap** %12, align 8
  %16 = load %struct.iomap*, %struct.iomap** %12, align 8
  %17 = getelementptr inbounds %struct.iomap, %struct.iomap* %16, i32 0, i32 2
  %18 = load %struct.iomap_page_ops*, %struct.iomap_page_ops** %17, align 8
  store %struct.iomap_page_ops* %18, %struct.iomap_page_ops** %13, align 8
  %19 = load %struct.inode*, %struct.inode** %7, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %14, align 8
  %22 = load %struct.iomap*, %struct.iomap** %12, align 8
  %23 = getelementptr inbounds %struct.iomap, %struct.iomap* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @IOMAP_INLINE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %6
  %28 = load %struct.inode*, %struct.inode** %7, align 8
  %29 = load %struct.page*, %struct.page** %11, align 8
  %30 = load %struct.iomap*, %struct.iomap** %12, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @iomap_write_end_inline(%struct.inode* %28, %struct.page* %29, %struct.iomap* %30, i64 %31, i32 %32)
  store i32 %33, i32* %15, align 4
  br label %59

34:                                               ; preds = %6
  %35 = load %struct.iomap*, %struct.iomap** %12, align 8
  %36 = getelementptr inbounds %struct.iomap, %struct.iomap* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @IOMAP_F_BUFFER_HEAD, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %34
  %42 = load %struct.inode*, %struct.inode** %7, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i64, i64* %8, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.page*, %struct.page** %11, align 8
  %49 = call i32 @block_write_end(i32* null, i32 %44, i64 %45, i32 %46, i32 %47, %struct.page* %48, i32* null)
  store i32 %49, i32* %15, align 4
  br label %58

50:                                               ; preds = %34
  %51 = load %struct.inode*, %struct.inode** %7, align 8
  %52 = load i64, i64* %8, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.page*, %struct.page** %11, align 8
  %56 = load %struct.iomap*, %struct.iomap** %12, align 8
  %57 = call i32 @__iomap_write_end(%struct.inode* %51, i64 %52, i32 %53, i32 %54, %struct.page* %55, %struct.iomap* %56)
  store i32 %57, i32* %15, align 4
  br label %58

58:                                               ; preds = %50, %41
  br label %59

59:                                               ; preds = %58, %27
  %60 = load i64, i64* %8, align 8
  %61 = load i32, i32* %15, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %60, %62
  %64 = load i64, i64* %14, align 8
  %65 = icmp sgt i64 %63, %64
  br i1 %65, label %66, label %78

66:                                               ; preds = %59
  %67 = load %struct.inode*, %struct.inode** %7, align 8
  %68 = load i64, i64* %8, align 8
  %69 = load i32, i32* %15, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %68, %70
  %72 = call i32 @i_size_write(%struct.inode* %67, i64 %71)
  %73 = load i32, i32* @IOMAP_F_SIZE_CHANGED, align 4
  %74 = load %struct.iomap*, %struct.iomap** %12, align 8
  %75 = getelementptr inbounds %struct.iomap, %struct.iomap* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 8
  br label %78

78:                                               ; preds = %66, %59
  %79 = load %struct.page*, %struct.page** %11, align 8
  %80 = call i32 @unlock_page(%struct.page* %79)
  %81 = load i64, i64* %14, align 8
  %82 = load i64, i64* %8, align 8
  %83 = icmp slt i64 %81, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %78
  %85 = load %struct.inode*, %struct.inode** %7, align 8
  %86 = load i64, i64* %14, align 8
  %87 = load i64, i64* %8, align 8
  %88 = call i32 @pagecache_isize_extended(%struct.inode* %85, i64 %86, i64 %87)
  br label %89

89:                                               ; preds = %84, %78
  %90 = load %struct.iomap_page_ops*, %struct.iomap_page_ops** %13, align 8
  %91 = icmp ne %struct.iomap_page_ops* %90, null
  br i1 %91, label %92, label %109

92:                                               ; preds = %89
  %93 = load %struct.iomap_page_ops*, %struct.iomap_page_ops** %13, align 8
  %94 = getelementptr inbounds %struct.iomap_page_ops, %struct.iomap_page_ops* %93, i32 0, i32 0
  %95 = load i32 (%struct.inode.0*, i64, i32, %struct.page*, %struct.iomap.1*)*, i32 (%struct.inode.0*, i64, i32, %struct.page*, %struct.iomap.1*)** %94, align 8
  %96 = icmp ne i32 (%struct.inode.0*, i64, i32, %struct.page*, %struct.iomap.1*)* %95, null
  br i1 %96, label %97, label %109

97:                                               ; preds = %92
  %98 = load %struct.iomap_page_ops*, %struct.iomap_page_ops** %13, align 8
  %99 = getelementptr inbounds %struct.iomap_page_ops, %struct.iomap_page_ops* %98, i32 0, i32 0
  %100 = load i32 (%struct.inode.0*, i64, i32, %struct.page*, %struct.iomap.1*)*, i32 (%struct.inode.0*, i64, i32, %struct.page*, %struct.iomap.1*)** %99, align 8
  %101 = load %struct.inode*, %struct.inode** %7, align 8
  %102 = bitcast %struct.inode* %101 to %struct.inode.0*
  %103 = load i64, i64* %8, align 8
  %104 = load i32, i32* %15, align 4
  %105 = load %struct.page*, %struct.page** %11, align 8
  %106 = load %struct.iomap*, %struct.iomap** %12, align 8
  %107 = bitcast %struct.iomap* %106 to %struct.iomap.1*
  %108 = call i32 %100(%struct.inode.0* %102, i64 %103, i32 %104, %struct.page* %105, %struct.iomap.1* %107)
  br label %109

109:                                              ; preds = %97, %92, %89
  %110 = load %struct.page*, %struct.page** %11, align 8
  %111 = call i32 @put_page(%struct.page* %110)
  %112 = load i32, i32* %15, align 4
  %113 = load i32, i32* %9, align 4
  %114 = icmp ult i32 %112, %113
  br i1 %114, label %115, label %120

115:                                              ; preds = %109
  %116 = load %struct.inode*, %struct.inode** %7, align 8
  %117 = load i64, i64* %8, align 8
  %118 = load i32, i32* %9, align 4
  %119 = call i32 @iomap_write_failed(%struct.inode* %116, i64 %117, i32 %118)
  br label %120

120:                                              ; preds = %115, %109
  %121 = load i32, i32* %15, align 4
  ret i32 %121
}

declare dso_local i32 @iomap_write_end_inline(%struct.inode*, %struct.page*, %struct.iomap*, i64, i32) #1

declare dso_local i32 @block_write_end(i32*, i32, i64, i32, i32, %struct.page*, i32*) #1

declare dso_local i32 @__iomap_write_end(%struct.inode*, i64, i32, i32, %struct.page*, %struct.iomap*) #1

declare dso_local i32 @i_size_write(%struct.inode*, i64) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @pagecache_isize_extended(%struct.inode*, i64, i64) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @iomap_write_failed(%struct.inode*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
