; ModuleID = '/home/carl/AnghaBench/linux/fs/iomap/extr_buffered-io.c_iomap_write_begin.c'
source_filename = "/home/carl/AnghaBench/linux/fs/iomap/extr_buffered-io.c_iomap_write_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.page = type { i32 }
%struct.iomap = type { i32, i32, i64, i32, %struct.iomap_page_ops* }
%struct.iomap_page_ops = type { i32 (%struct.inode.0*, i32, i32, %struct.iomap.1*)*, i32 (%struct.inode.2*, i32, i32, i32*, %struct.iomap.3*)* }
%struct.inode.0 = type opaque
%struct.iomap.1 = type opaque
%struct.inode.2 = type opaque
%struct.iomap.3 = type opaque

@PAGE_SHIFT = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IOMAP_INLINE = common dso_local global i64 0, align 8
@IOMAP_F_BUFFER_HEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i32, i32, %struct.page**, %struct.iomap*)* @iomap_write_begin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iomap_write_begin(%struct.inode* %0, i32 %1, i32 %2, i32 %3, %struct.page** %4, %struct.iomap* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.page**, align 8
  %13 = alloca %struct.iomap*, align 8
  %14 = alloca %struct.iomap_page_ops*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.page*, align 8
  %17 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.page** %4, %struct.page*** %12, align 8
  store %struct.iomap* %5, %struct.iomap** %13, align 8
  %18 = load %struct.iomap*, %struct.iomap** %13, align 8
  %19 = getelementptr inbounds %struct.iomap, %struct.iomap* %18, i32 0, i32 4
  %20 = load %struct.iomap_page_ops*, %struct.iomap_page_ops** %19, align 8
  store %struct.iomap_page_ops* %20, %struct.iomap_page_ops** %14, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @PAGE_SHIFT, align 4
  %23 = lshr i32 %21, %22
  store i32 %23, i32* %15, align 4
  store i32 0, i32* %17, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %10, align 4
  %26 = add i32 %24, %25
  %27 = load %struct.iomap*, %struct.iomap** %13, align 8
  %28 = getelementptr inbounds %struct.iomap, %struct.iomap* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.iomap*, %struct.iomap** %13, align 8
  %31 = getelementptr inbounds %struct.iomap, %struct.iomap* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = add i32 %29, %32
  %34 = icmp ugt i32 %26, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @BUG_ON(i32 %35)
  %37 = load i32, i32* @current, align 4
  %38 = call i64 @fatal_signal_pending(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %6
  %41 = load i32, i32* @EINTR, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %7, align 4
  br label %148

43:                                               ; preds = %6
  %44 = load %struct.iomap_page_ops*, %struct.iomap_page_ops** %14, align 8
  %45 = icmp ne %struct.iomap_page_ops* %44, null
  br i1 %45, label %46, label %67

46:                                               ; preds = %43
  %47 = load %struct.iomap_page_ops*, %struct.iomap_page_ops** %14, align 8
  %48 = getelementptr inbounds %struct.iomap_page_ops, %struct.iomap_page_ops* %47, i32 0, i32 0
  %49 = load i32 (%struct.inode.0*, i32, i32, %struct.iomap.1*)*, i32 (%struct.inode.0*, i32, i32, %struct.iomap.1*)** %48, align 8
  %50 = icmp ne i32 (%struct.inode.0*, i32, i32, %struct.iomap.1*)* %49, null
  br i1 %50, label %51, label %67

51:                                               ; preds = %46
  %52 = load %struct.iomap_page_ops*, %struct.iomap_page_ops** %14, align 8
  %53 = getelementptr inbounds %struct.iomap_page_ops, %struct.iomap_page_ops* %52, i32 0, i32 0
  %54 = load i32 (%struct.inode.0*, i32, i32, %struct.iomap.1*)*, i32 (%struct.inode.0*, i32, i32, %struct.iomap.1*)** %53, align 8
  %55 = load %struct.inode*, %struct.inode** %8, align 8
  %56 = bitcast %struct.inode* %55 to %struct.inode.0*
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.iomap*, %struct.iomap** %13, align 8
  %60 = bitcast %struct.iomap* %59 to %struct.iomap.1*
  %61 = call i32 %54(%struct.inode.0* %56, i32 %57, i32 %58, %struct.iomap.1* %60)
  store i32 %61, i32* %17, align 4
  %62 = load i32, i32* %17, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %51
  %65 = load i32, i32* %17, align 4
  store i32 %65, i32* %7, align 4
  br label %148

66:                                               ; preds = %51
  br label %67

67:                                               ; preds = %66, %46, %43
  %68 = load %struct.inode*, %struct.inode** %8, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %15, align 4
  %72 = load i32, i32* %11, align 4
  %73 = call %struct.page* @grab_cache_page_write_begin(i32 %70, i32 %71, i32 %72)
  store %struct.page* %73, %struct.page** %16, align 8
  %74 = load %struct.page*, %struct.page** %16, align 8
  %75 = icmp ne %struct.page* %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %67
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %17, align 4
  br label %128

79:                                               ; preds = %67
  %80 = load %struct.iomap*, %struct.iomap** %13, align 8
  %81 = getelementptr inbounds %struct.iomap, %struct.iomap* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @IOMAP_INLINE, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %79
  %86 = load %struct.inode*, %struct.inode** %8, align 8
  %87 = load %struct.page*, %struct.page** %16, align 8
  %88 = load %struct.iomap*, %struct.iomap** %13, align 8
  %89 = call i32 @iomap_read_inline_data(%struct.inode* %86, %struct.page* %87, %struct.iomap* %88)
  br label %111

90:                                               ; preds = %79
  %91 = load %struct.iomap*, %struct.iomap** %13, align 8
  %92 = getelementptr inbounds %struct.iomap, %struct.iomap* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @IOMAP_F_BUFFER_HEAD, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %90
  %98 = load %struct.page*, %struct.page** %16, align 8
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %10, align 4
  %101 = load %struct.iomap*, %struct.iomap** %13, align 8
  %102 = call i32 @__block_write_begin_int(%struct.page* %98, i32 %99, i32 %100, i32* null, %struct.iomap* %101)
  store i32 %102, i32* %17, align 4
  br label %110

103:                                              ; preds = %90
  %104 = load %struct.inode*, %struct.inode** %8, align 8
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* %10, align 4
  %107 = load %struct.page*, %struct.page** %16, align 8
  %108 = load %struct.iomap*, %struct.iomap** %13, align 8
  %109 = call i32 @__iomap_write_begin(%struct.inode* %104, i32 %105, i32 %106, %struct.page* %107, %struct.iomap* %108)
  store i32 %109, i32* %17, align 4
  br label %110

110:                                              ; preds = %103, %97
  br label %111

111:                                              ; preds = %110, %85
  %112 = load i32, i32* %17, align 4
  %113 = call i64 @unlikely(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %111
  br label %119

116:                                              ; preds = %111
  %117 = load %struct.page*, %struct.page** %16, align 8
  %118 = load %struct.page**, %struct.page*** %12, align 8
  store %struct.page* %117, %struct.page** %118, align 8
  store i32 0, i32* %7, align 4
  br label %148

119:                                              ; preds = %115
  %120 = load %struct.page*, %struct.page** %16, align 8
  %121 = call i32 @unlock_page(%struct.page* %120)
  %122 = load %struct.page*, %struct.page** %16, align 8
  %123 = call i32 @put_page(%struct.page* %122)
  %124 = load %struct.inode*, %struct.inode** %8, align 8
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* %10, align 4
  %127 = call i32 @iomap_write_failed(%struct.inode* %124, i32 %125, i32 %126)
  br label %128

128:                                              ; preds = %119, %76
  %129 = load %struct.iomap_page_ops*, %struct.iomap_page_ops** %14, align 8
  %130 = icmp ne %struct.iomap_page_ops* %129, null
  br i1 %130, label %131, label %146

131:                                              ; preds = %128
  %132 = load %struct.iomap_page_ops*, %struct.iomap_page_ops** %14, align 8
  %133 = getelementptr inbounds %struct.iomap_page_ops, %struct.iomap_page_ops* %132, i32 0, i32 1
  %134 = load i32 (%struct.inode.2*, i32, i32, i32*, %struct.iomap.3*)*, i32 (%struct.inode.2*, i32, i32, i32*, %struct.iomap.3*)** %133, align 8
  %135 = icmp ne i32 (%struct.inode.2*, i32, i32, i32*, %struct.iomap.3*)* %134, null
  br i1 %135, label %136, label %146

136:                                              ; preds = %131
  %137 = load %struct.iomap_page_ops*, %struct.iomap_page_ops** %14, align 8
  %138 = getelementptr inbounds %struct.iomap_page_ops, %struct.iomap_page_ops* %137, i32 0, i32 1
  %139 = load i32 (%struct.inode.2*, i32, i32, i32*, %struct.iomap.3*)*, i32 (%struct.inode.2*, i32, i32, i32*, %struct.iomap.3*)** %138, align 8
  %140 = load %struct.inode*, %struct.inode** %8, align 8
  %141 = bitcast %struct.inode* %140 to %struct.inode.2*
  %142 = load i32, i32* %9, align 4
  %143 = load %struct.iomap*, %struct.iomap** %13, align 8
  %144 = bitcast %struct.iomap* %143 to %struct.iomap.3*
  %145 = call i32 %139(%struct.inode.2* %141, i32 %142, i32 0, i32* null, %struct.iomap.3* %144)
  br label %146

146:                                              ; preds = %136, %131, %128
  %147 = load i32, i32* %17, align 4
  store i32 %147, i32* %7, align 4
  br label %148

148:                                              ; preds = %146, %116, %64, %40
  %149 = load i32, i32* %7, align 4
  ret i32 %149
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @fatal_signal_pending(i32) #1

declare dso_local %struct.page* @grab_cache_page_write_begin(i32, i32, i32) #1

declare dso_local i32 @iomap_read_inline_data(%struct.inode*, %struct.page*, %struct.iomap*) #1

declare dso_local i32 @__block_write_begin_int(%struct.page*, i32, i32, i32*, %struct.iomap*) #1

declare dso_local i32 @__iomap_write_begin(%struct.inode*, i32, i32, %struct.page*, %struct.iomap*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @iomap_write_failed(%struct.inode*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
