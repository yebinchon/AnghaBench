; ModuleID = '/home/carl/AnghaBench/linux/fs/hfsplus/extr_btree.c_hfsplus_btree_write.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfsplus/extr_btree.c_hfsplus_btree_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfs_btree = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hfs_btree_header_rec = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.hfs_bnode = type { %struct.page** }
%struct.page = type { i32 }

@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfs_btree_write(%struct.hfs_btree* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hfs_btree*, align 8
  %4 = alloca %struct.hfs_btree_header_rec*, align 8
  %5 = alloca %struct.hfs_bnode*, align 8
  %6 = alloca %struct.page*, align 8
  store %struct.hfs_btree* %0, %struct.hfs_btree** %3, align 8
  %7 = load %struct.hfs_btree*, %struct.hfs_btree** %3, align 8
  %8 = call %struct.hfs_bnode* @hfs_bnode_find(%struct.hfs_btree* %7, i32 0)
  store %struct.hfs_bnode* %8, %struct.hfs_bnode** %5, align 8
  %9 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %10 = call i64 @IS_ERR(%struct.hfs_bnode* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @EIO, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %79

15:                                               ; preds = %1
  %16 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %17 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %16, i32 0, i32 0
  %18 = load %struct.page**, %struct.page*** %17, align 8
  %19 = getelementptr inbounds %struct.page*, %struct.page** %18, i64 0
  %20 = load %struct.page*, %struct.page** %19, align 8
  store %struct.page* %20, %struct.page** %6, align 8
  %21 = load %struct.page*, %struct.page** %6, align 8
  %22 = call i64 @kmap(%struct.page* %21)
  %23 = add i64 %22, 4
  %24 = inttoptr i64 %23 to %struct.hfs_btree_header_rec*
  store %struct.hfs_btree_header_rec* %24, %struct.hfs_btree_header_rec** %4, align 8
  %25 = load %struct.hfs_btree*, %struct.hfs_btree** %3, align 8
  %26 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @cpu_to_be32(i32 %27)
  %29 = load %struct.hfs_btree_header_rec*, %struct.hfs_btree_header_rec** %4, align 8
  %30 = getelementptr inbounds %struct.hfs_btree_header_rec, %struct.hfs_btree_header_rec* %29, i32 0, i32 7
  store i8* %28, i8** %30, align 8
  %31 = load %struct.hfs_btree*, %struct.hfs_btree** %3, align 8
  %32 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @cpu_to_be32(i32 %33)
  %35 = load %struct.hfs_btree_header_rec*, %struct.hfs_btree_header_rec** %4, align 8
  %36 = getelementptr inbounds %struct.hfs_btree_header_rec, %struct.hfs_btree_header_rec* %35, i32 0, i32 6
  store i8* %34, i8** %36, align 8
  %37 = load %struct.hfs_btree*, %struct.hfs_btree** %3, align 8
  %38 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @cpu_to_be32(i32 %39)
  %41 = load %struct.hfs_btree_header_rec*, %struct.hfs_btree_header_rec** %4, align 8
  %42 = getelementptr inbounds %struct.hfs_btree_header_rec, %struct.hfs_btree_header_rec* %41, i32 0, i32 5
  store i8* %40, i8** %42, align 8
  %43 = load %struct.hfs_btree*, %struct.hfs_btree** %3, align 8
  %44 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @cpu_to_be32(i32 %45)
  %47 = load %struct.hfs_btree_header_rec*, %struct.hfs_btree_header_rec** %4, align 8
  %48 = getelementptr inbounds %struct.hfs_btree_header_rec, %struct.hfs_btree_header_rec* %47, i32 0, i32 4
  store i8* %46, i8** %48, align 8
  %49 = load %struct.hfs_btree*, %struct.hfs_btree** %3, align 8
  %50 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @cpu_to_be32(i32 %51)
  %53 = load %struct.hfs_btree_header_rec*, %struct.hfs_btree_header_rec** %4, align 8
  %54 = getelementptr inbounds %struct.hfs_btree_header_rec, %struct.hfs_btree_header_rec* %53, i32 0, i32 3
  store i8* %52, i8** %54, align 8
  %55 = load %struct.hfs_btree*, %struct.hfs_btree** %3, align 8
  %56 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @cpu_to_be32(i32 %57)
  %59 = load %struct.hfs_btree_header_rec*, %struct.hfs_btree_header_rec** %4, align 8
  %60 = getelementptr inbounds %struct.hfs_btree_header_rec, %struct.hfs_btree_header_rec* %59, i32 0, i32 2
  store i8* %58, i8** %60, align 8
  %61 = load %struct.hfs_btree*, %struct.hfs_btree** %3, align 8
  %62 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @cpu_to_be32(i32 %63)
  %65 = load %struct.hfs_btree_header_rec*, %struct.hfs_btree_header_rec** %4, align 8
  %66 = getelementptr inbounds %struct.hfs_btree_header_rec, %struct.hfs_btree_header_rec* %65, i32 0, i32 1
  store i8* %64, i8** %66, align 8
  %67 = load %struct.hfs_btree*, %struct.hfs_btree** %3, align 8
  %68 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @cpu_to_be16(i32 %69)
  %71 = load %struct.hfs_btree_header_rec*, %struct.hfs_btree_header_rec** %4, align 8
  %72 = getelementptr inbounds %struct.hfs_btree_header_rec, %struct.hfs_btree_header_rec* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.page*, %struct.page** %6, align 8
  %74 = call i32 @kunmap(%struct.page* %73)
  %75 = load %struct.page*, %struct.page** %6, align 8
  %76 = call i32 @set_page_dirty(%struct.page* %75)
  %77 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %78 = call i32 @hfs_bnode_put(%struct.hfs_bnode* %77)
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %15, %12
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local %struct.hfs_bnode* @hfs_bnode_find(%struct.hfs_btree*, i32) #1

declare dso_local i64 @IS_ERR(%struct.hfs_bnode*) #1

declare dso_local i64 @kmap(%struct.page*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @hfs_bnode_put(%struct.hfs_bnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
