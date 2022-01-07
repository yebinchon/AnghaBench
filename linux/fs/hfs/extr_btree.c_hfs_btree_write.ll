; ModuleID = '/home/carl/AnghaBench/linux/fs/hfs/extr_btree.c_hfs_btree_write.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfs/extr_btree.c_hfs_btree_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfs_btree = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hfs_btree_header_rec = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.hfs_bnode = type { %struct.page** }
%struct.page = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hfs_btree_write(%struct.hfs_btree* %0) #0 {
  %2 = alloca %struct.hfs_btree*, align 8
  %3 = alloca %struct.hfs_btree_header_rec*, align 8
  %4 = alloca %struct.hfs_bnode*, align 8
  %5 = alloca %struct.page*, align 8
  store %struct.hfs_btree* %0, %struct.hfs_btree** %2, align 8
  %6 = load %struct.hfs_btree*, %struct.hfs_btree** %2, align 8
  %7 = call %struct.hfs_bnode* @hfs_bnode_find(%struct.hfs_btree* %6, i32 0)
  store %struct.hfs_bnode* %7, %struct.hfs_bnode** %4, align 8
  %8 = load %struct.hfs_bnode*, %struct.hfs_bnode** %4, align 8
  %9 = call i64 @IS_ERR(%struct.hfs_bnode* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %76

12:                                               ; preds = %1
  %13 = load %struct.hfs_bnode*, %struct.hfs_bnode** %4, align 8
  %14 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %13, i32 0, i32 0
  %15 = load %struct.page**, %struct.page*** %14, align 8
  %16 = getelementptr inbounds %struct.page*, %struct.page** %15, i64 0
  %17 = load %struct.page*, %struct.page** %16, align 8
  store %struct.page* %17, %struct.page** %5, align 8
  %18 = load %struct.page*, %struct.page** %5, align 8
  %19 = call i64 @kmap(%struct.page* %18)
  %20 = add i64 %19, 4
  %21 = inttoptr i64 %20 to %struct.hfs_btree_header_rec*
  store %struct.hfs_btree_header_rec* %21, %struct.hfs_btree_header_rec** %3, align 8
  %22 = load %struct.hfs_btree*, %struct.hfs_btree** %2, align 8
  %23 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %22, i32 0, i32 7
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @cpu_to_be32(i32 %24)
  %26 = load %struct.hfs_btree_header_rec*, %struct.hfs_btree_header_rec** %3, align 8
  %27 = getelementptr inbounds %struct.hfs_btree_header_rec, %struct.hfs_btree_header_rec* %26, i32 0, i32 7
  store i8* %25, i8** %27, align 8
  %28 = load %struct.hfs_btree*, %struct.hfs_btree** %2, align 8
  %29 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @cpu_to_be32(i32 %30)
  %32 = load %struct.hfs_btree_header_rec*, %struct.hfs_btree_header_rec** %3, align 8
  %33 = getelementptr inbounds %struct.hfs_btree_header_rec, %struct.hfs_btree_header_rec* %32, i32 0, i32 6
  store i8* %31, i8** %33, align 8
  %34 = load %struct.hfs_btree*, %struct.hfs_btree** %2, align 8
  %35 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @cpu_to_be32(i32 %36)
  %38 = load %struct.hfs_btree_header_rec*, %struct.hfs_btree_header_rec** %3, align 8
  %39 = getelementptr inbounds %struct.hfs_btree_header_rec, %struct.hfs_btree_header_rec* %38, i32 0, i32 5
  store i8* %37, i8** %39, align 8
  %40 = load %struct.hfs_btree*, %struct.hfs_btree** %2, align 8
  %41 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @cpu_to_be32(i32 %42)
  %44 = load %struct.hfs_btree_header_rec*, %struct.hfs_btree_header_rec** %3, align 8
  %45 = getelementptr inbounds %struct.hfs_btree_header_rec, %struct.hfs_btree_header_rec* %44, i32 0, i32 4
  store i8* %43, i8** %45, align 8
  %46 = load %struct.hfs_btree*, %struct.hfs_btree** %2, align 8
  %47 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @cpu_to_be32(i32 %48)
  %50 = load %struct.hfs_btree_header_rec*, %struct.hfs_btree_header_rec** %3, align 8
  %51 = getelementptr inbounds %struct.hfs_btree_header_rec, %struct.hfs_btree_header_rec* %50, i32 0, i32 3
  store i8* %49, i8** %51, align 8
  %52 = load %struct.hfs_btree*, %struct.hfs_btree** %2, align 8
  %53 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @cpu_to_be32(i32 %54)
  %56 = load %struct.hfs_btree_header_rec*, %struct.hfs_btree_header_rec** %3, align 8
  %57 = getelementptr inbounds %struct.hfs_btree_header_rec, %struct.hfs_btree_header_rec* %56, i32 0, i32 2
  store i8* %55, i8** %57, align 8
  %58 = load %struct.hfs_btree*, %struct.hfs_btree** %2, align 8
  %59 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @cpu_to_be32(i32 %60)
  %62 = load %struct.hfs_btree_header_rec*, %struct.hfs_btree_header_rec** %3, align 8
  %63 = getelementptr inbounds %struct.hfs_btree_header_rec, %struct.hfs_btree_header_rec* %62, i32 0, i32 1
  store i8* %61, i8** %63, align 8
  %64 = load %struct.hfs_btree*, %struct.hfs_btree** %2, align 8
  %65 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @cpu_to_be16(i32 %66)
  %68 = load %struct.hfs_btree_header_rec*, %struct.hfs_btree_header_rec** %3, align 8
  %69 = getelementptr inbounds %struct.hfs_btree_header_rec, %struct.hfs_btree_header_rec* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load %struct.page*, %struct.page** %5, align 8
  %71 = call i32 @kunmap(%struct.page* %70)
  %72 = load %struct.page*, %struct.page** %5, align 8
  %73 = call i32 @set_page_dirty(%struct.page* %72)
  %74 = load %struct.hfs_bnode*, %struct.hfs_bnode** %4, align 8
  %75 = call i32 @hfs_bnode_put(%struct.hfs_bnode* %74)
  br label %76

76:                                               ; preds = %12, %11
  ret void
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
