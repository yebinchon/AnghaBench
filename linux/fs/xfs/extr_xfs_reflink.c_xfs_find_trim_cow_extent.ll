; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_reflink.c_xfs_find_trim_cow_extent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_reflink.c_xfs_find_trim_cow_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { i32 }
%struct.xfs_bmbt_irec = type { i64, i64, i32 }
%struct.xfs_iext_cursor = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfs_inode*, %struct.xfs_bmbt_irec*, i32*, i32*)* @xfs_find_trim_cow_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_find_trim_cow_extent(%struct.xfs_inode* %0, %struct.xfs_bmbt_irec* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xfs_inode*, align 8
  %7 = alloca %struct.xfs_bmbt_irec*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.xfs_iext_cursor, align 4
  %13 = alloca %struct.xfs_bmbt_irec, align 8
  store %struct.xfs_inode* %0, %struct.xfs_inode** %6, align 8
  store %struct.xfs_bmbt_irec* %1, %struct.xfs_bmbt_irec** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %7, align 8
  %15 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %10, align 8
  %17 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %7, align 8
  %18 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %11, align 8
  %20 = load i32*, i32** %9, align 8
  store i32 0, i32* %20, align 4
  %21 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %22 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %23 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i64, i64* %10, align 8
  %26 = call i32 @xfs_iext_lookup_extent(%struct.xfs_inode* %21, i32 %24, i64 %25, %struct.xfs_iext_cursor* %12, %struct.xfs_bmbt_irec* %13)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %4
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* %11, align 8
  %31 = add nsw i64 %29, %30
  %32 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %13, i32 0, i32 0
  store i64 %31, i64* %32, align 8
  br label %33

33:                                               ; preds = %28, %4
  %34 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %13, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %10, align 8
  %37 = icmp sgt i64 %35, %36
  br i1 %37, label %38, label %54

38:                                               ; preds = %33
  %39 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %7, align 8
  %40 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %7, align 8
  %41 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %13, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %7, align 8
  %46 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %44, %47
  %49 = call i32 @xfs_trim_extent(%struct.xfs_bmbt_irec* %39, i64 %42, i64 %48)
  %50 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %51 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %7, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = call i32 @xfs_inode_need_cow(%struct.xfs_inode* %50, %struct.xfs_bmbt_irec* %51, i32* %52)
  store i32 %53, i32* %5, align 4
  br label %75

54:                                               ; preds = %33
  %55 = load i32*, i32** %8, align 8
  store i32 1, i32* %55, align 4
  %56 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %13, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @isnullstartblock(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %54
  %61 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %7, align 8
  %62 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %13, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %13, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @xfs_trim_extent(%struct.xfs_bmbt_irec* %61, i64 %63, i64 %65)
  store i32 0, i32* %5, align 4
  br label %75

67:                                               ; preds = %54
  %68 = load i64, i64* %10, align 8
  %69 = load i64, i64* %11, align 8
  %70 = call i32 @xfs_trim_extent(%struct.xfs_bmbt_irec* %13, i64 %68, i64 %69)
  %71 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %7, align 8
  %72 = bitcast %struct.xfs_bmbt_irec* %71 to i8*
  %73 = bitcast %struct.xfs_bmbt_irec* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %72, i8* align 8 %73, i64 24, i1 false)
  %74 = load i32*, i32** %9, align 8
  store i32 1, i32* %74, align 4
  store i32 0, i32* %5, align 4
  br label %75

75:                                               ; preds = %67, %60, %38
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i32 @xfs_iext_lookup_extent(%struct.xfs_inode*, i32, i64, %struct.xfs_iext_cursor*, %struct.xfs_bmbt_irec*) #1

declare dso_local i32 @xfs_trim_extent(%struct.xfs_bmbt_irec*, i64, i64) #1

declare dso_local i32 @xfs_inode_need_cow(%struct.xfs_inode*, %struct.xfs_bmbt_irec*, i32*) #1

declare dso_local i64 @isnullstartblock(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
