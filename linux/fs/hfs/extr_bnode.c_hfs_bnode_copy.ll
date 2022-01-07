; ModuleID = '/home/carl/AnghaBench/linux/fs/hfs/extr_bnode.c_hfs_bnode_copy.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfs/extr_bnode.c_hfs_bnode_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfs_bnode = type { %struct.page**, i64 }
%struct.page = type { i32 }

@BNODE_MOD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"copybytes: %u,%u,%u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hfs_bnode_copy(%struct.hfs_bnode* %0, i32 %1, %struct.hfs_bnode* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.hfs_bnode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hfs_bnode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.page*, align 8
  %12 = alloca %struct.page*, align 8
  store %struct.hfs_bnode* %0, %struct.hfs_bnode** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.hfs_bnode* %2, %struct.hfs_bnode** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* @BNODE_MOD, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %10, align 4
  %17 = call i32 @hfs_dbg(i32 %13, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15, i32 %16)
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %5
  br label %64

21:                                               ; preds = %5
  %22 = load %struct.hfs_bnode*, %struct.hfs_bnode** %8, align 8
  %23 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %26, %24
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %9, align 4
  %29 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %30 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %33, %31
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %7, align 4
  %36 = load %struct.hfs_bnode*, %struct.hfs_bnode** %8, align 8
  %37 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %36, i32 0, i32 0
  %38 = load %struct.page**, %struct.page*** %37, align 8
  %39 = getelementptr inbounds %struct.page*, %struct.page** %38, i64 0
  %40 = load %struct.page*, %struct.page** %39, align 8
  store %struct.page* %40, %struct.page** %11, align 8
  %41 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %42 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %41, i32 0, i32 0
  %43 = load %struct.page**, %struct.page*** %42, align 8
  %44 = getelementptr inbounds %struct.page*, %struct.page** %43, i64 0
  %45 = load %struct.page*, %struct.page** %44, align 8
  store %struct.page* %45, %struct.page** %12, align 8
  %46 = load %struct.page*, %struct.page** %12, align 8
  %47 = call i64 @kmap(%struct.page* %46)
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %47, %49
  %51 = load %struct.page*, %struct.page** %11, align 8
  %52 = call i64 @kmap(%struct.page* %51)
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %52, %54
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @memcpy(i64 %50, i64 %55, i32 %56)
  %58 = load %struct.page*, %struct.page** %11, align 8
  %59 = call i32 @kunmap(%struct.page* %58)
  %60 = load %struct.page*, %struct.page** %12, align 8
  %61 = call i32 @kunmap(%struct.page* %60)
  %62 = load %struct.page*, %struct.page** %12, align 8
  %63 = call i32 @set_page_dirty(%struct.page* %62)
  br label %64

64:                                               ; preds = %21, %20
  ret void
}

declare dso_local i32 @hfs_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

declare dso_local i64 @kmap(%struct.page*) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
