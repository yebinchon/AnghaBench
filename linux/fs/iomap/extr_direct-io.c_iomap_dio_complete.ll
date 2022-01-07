; ModuleID = '/home/carl/AnghaBench/linux/fs/iomap/extr_direct-io.c_iomap_dio_complete.c'
source_filename = "/home/carl/AnghaBench/linux/fs/iomap/extr_direct-io.c_iomap_dio_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iomap_dio = type { i64, i64, i32, i64, %struct.kiocb*, %struct.iomap_dio_ops* }
%struct.kiocb = type { i32, i32 }
%struct.iomap_dio_ops = type { i64 (%struct.kiocb*, i64, i64, i32)* }
%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@IOMAP_DIO_WRITE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@IOMAP_DIO_NEED_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.iomap_dio*)* @iomap_dio_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @iomap_dio_complete(%struct.iomap_dio* %0) #0 {
  %2 = alloca %struct.iomap_dio*, align 8
  %3 = alloca %struct.iomap_dio_ops*, align 8
  %4 = alloca %struct.kiocb*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.iomap_dio* %0, %struct.iomap_dio** %2, align 8
  %9 = load %struct.iomap_dio*, %struct.iomap_dio** %2, align 8
  %10 = getelementptr inbounds %struct.iomap_dio, %struct.iomap_dio* %9, i32 0, i32 5
  %11 = load %struct.iomap_dio_ops*, %struct.iomap_dio_ops** %10, align 8
  store %struct.iomap_dio_ops* %11, %struct.iomap_dio_ops** %3, align 8
  %12 = load %struct.iomap_dio*, %struct.iomap_dio** %2, align 8
  %13 = getelementptr inbounds %struct.iomap_dio, %struct.iomap_dio* %12, i32 0, i32 4
  %14 = load %struct.kiocb*, %struct.kiocb** %13, align 8
  store %struct.kiocb* %14, %struct.kiocb** %4, align 8
  %15 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %16 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.inode* @file_inode(i32 %17)
  store %struct.inode* %18, %struct.inode** %5, align 8
  %19 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %20 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %6, align 4
  %22 = load %struct.iomap_dio*, %struct.iomap_dio** %2, align 8
  %23 = getelementptr inbounds %struct.iomap_dio, %struct.iomap_dio* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %7, align 8
  %25 = load %struct.iomap_dio_ops*, %struct.iomap_dio_ops** %3, align 8
  %26 = icmp ne %struct.iomap_dio_ops* %25, null
  br i1 %26, label %27, label %45

27:                                               ; preds = %1
  %28 = load %struct.iomap_dio_ops*, %struct.iomap_dio_ops** %3, align 8
  %29 = getelementptr inbounds %struct.iomap_dio_ops, %struct.iomap_dio_ops* %28, i32 0, i32 0
  %30 = load i64 (%struct.kiocb*, i64, i64, i32)*, i64 (%struct.kiocb*, i64, i64, i32)** %29, align 8
  %31 = icmp ne i64 (%struct.kiocb*, i64, i64, i32)* %30, null
  br i1 %31, label %32, label %45

32:                                               ; preds = %27
  %33 = load %struct.iomap_dio_ops*, %struct.iomap_dio_ops** %3, align 8
  %34 = getelementptr inbounds %struct.iomap_dio_ops, %struct.iomap_dio_ops* %33, i32 0, i32 0
  %35 = load i64 (%struct.kiocb*, i64, i64, i32)*, i64 (%struct.kiocb*, i64, i64, i32)** %34, align 8
  %36 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %37 = load %struct.iomap_dio*, %struct.iomap_dio** %2, align 8
  %38 = getelementptr inbounds %struct.iomap_dio, %struct.iomap_dio* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %7, align 8
  %41 = load %struct.iomap_dio*, %struct.iomap_dio** %2, align 8
  %42 = getelementptr inbounds %struct.iomap_dio, %struct.iomap_dio* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i64 %35(%struct.kiocb* %36, i64 %39, i64 %40, i32 %43)
  store i64 %44, i64* %7, align 8
  br label %45

45:                                               ; preds = %32, %27, %1
  %46 = load i64, i64* %7, align 8
  %47 = icmp ne i64 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = call i64 @likely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %86

52:                                               ; preds = %45
  %53 = load %struct.iomap_dio*, %struct.iomap_dio** %2, align 8
  %54 = getelementptr inbounds %struct.iomap_dio, %struct.iomap_dio* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %7, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = load i64, i64* %7, align 8
  %59 = add nsw i64 %57, %58
  %60 = load %struct.iomap_dio*, %struct.iomap_dio** %2, align 8
  %61 = getelementptr inbounds %struct.iomap_dio, %struct.iomap_dio* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = icmp sgt i64 %59, %62
  br i1 %63, label %64, label %78

64:                                               ; preds = %52
  %65 = load %struct.iomap_dio*, %struct.iomap_dio** %2, align 8
  %66 = getelementptr inbounds %struct.iomap_dio, %struct.iomap_dio* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @IOMAP_DIO_WRITE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %78, label %71

71:                                               ; preds = %64
  %72 = load %struct.iomap_dio*, %struct.iomap_dio** %2, align 8
  %73 = getelementptr inbounds %struct.iomap_dio, %struct.iomap_dio* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = sub nsw i64 %74, %76
  store i64 %77, i64* %7, align 8
  br label %78

78:                                               ; preds = %71, %64, %52
  %79 = load i64, i64* %7, align 8
  %80 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %81 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %83, %79
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %81, align 4
  br label %86

86:                                               ; preds = %78, %45
  %87 = load %struct.iomap_dio*, %struct.iomap_dio** %2, align 8
  %88 = getelementptr inbounds %struct.iomap_dio, %struct.iomap_dio* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %132, label %91

91:                                               ; preds = %86
  %92 = load %struct.iomap_dio*, %struct.iomap_dio** %2, align 8
  %93 = getelementptr inbounds %struct.iomap_dio, %struct.iomap_dio* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @IOMAP_DIO_WRITE, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %132

98:                                               ; preds = %91
  %99 = load %struct.inode*, %struct.inode** %5, align 8
  %100 = getelementptr inbounds %struct.inode, %struct.inode* %99, i32 0, i32 0
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %132

105:                                              ; preds = %98
  %106 = load %struct.inode*, %struct.inode** %5, align 8
  %107 = getelementptr inbounds %struct.inode, %struct.inode* %106, i32 0, i32 0
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* @PAGE_SHIFT, align 4
  %111 = ashr i32 %109, %110
  %112 = load i32, i32* %6, align 4
  %113 = sext i32 %112 to i64
  %114 = load %struct.iomap_dio*, %struct.iomap_dio** %2, align 8
  %115 = getelementptr inbounds %struct.iomap_dio, %struct.iomap_dio* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = add nsw i64 %113, %116
  %118 = sub nsw i64 %117, 1
  %119 = load i32, i32* @PAGE_SHIFT, align 4
  %120 = zext i32 %119 to i64
  %121 = ashr i64 %118, %120
  %122 = trunc i64 %121 to i32
  %123 = call i32 @invalidate_inode_pages2_range(%struct.TYPE_2__* %108, i32 %111, i32 %122)
  store i32 %123, i32* %8, align 4
  %124 = load i32, i32* %8, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %105
  %127 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %128 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @dio_warn_stale_pagecache(i32 %129)
  br label %131

131:                                              ; preds = %126, %105
  br label %132

132:                                              ; preds = %131, %98, %91, %86
  %133 = load i64, i64* %7, align 8
  %134 = icmp sgt i64 %133, 0
  br i1 %134, label %135, label %146

135:                                              ; preds = %132
  %136 = load %struct.iomap_dio*, %struct.iomap_dio** %2, align 8
  %137 = getelementptr inbounds %struct.iomap_dio, %struct.iomap_dio* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @IOMAP_DIO_NEED_SYNC, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %135
  %143 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %144 = load i64, i64* %7, align 8
  %145 = call i64 @generic_write_sync(%struct.kiocb* %143, i64 %144)
  store i64 %145, i64* %7, align 8
  br label %146

146:                                              ; preds = %142, %135, %132
  %147 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %148 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = call %struct.inode* @file_inode(i32 %149)
  %151 = call i32 @inode_dio_end(%struct.inode* %150)
  %152 = load %struct.iomap_dio*, %struct.iomap_dio** %2, align 8
  %153 = call i32 @kfree(%struct.iomap_dio* %152)
  %154 = load i64, i64* %7, align 8
  ret i64 %154
}

declare dso_local %struct.inode* @file_inode(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @invalidate_inode_pages2_range(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @dio_warn_stale_pagecache(i32) #1

declare dso_local i64 @generic_write_sync(%struct.kiocb*, i64) #1

declare dso_local i32 @inode_dio_end(%struct.inode*) #1

declare dso_local i32 @kfree(%struct.iomap_dio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
