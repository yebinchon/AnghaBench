; ModuleID = '/home/carl/AnghaBench/linux/fs/isofs/extr_export.c_isofs_export_encode_fh.c'
source_filename = "/home/carl/AnghaBench/linux/fs/isofs/extr_export.c_isofs_export_encode_fh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.iso_inode_info = type { i64, i32 }

@FILEID_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32*, i32*, %struct.inode*)* @isofs_export_encode_fh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isofs_export_encode_fh(%struct.inode* %0, i32* %1, i32* %2, %struct.inode* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.iso_inode_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca %struct.iso_inode_info*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.inode* %3, %struct.inode** %9, align 8
  %15 = load %struct.inode*, %struct.inode** %6, align 8
  %16 = call %struct.iso_inode_info* @ISOFS_I(%struct.inode* %15)
  store %struct.iso_inode_info* %16, %struct.iso_inode_info** %10, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %11, align 4
  store i32 1, i32* %12, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = bitcast i32* %19 to i64*
  store i64* %20, i64** %13, align 8
  %21 = load %struct.inode*, %struct.inode** %9, align 8
  %22 = icmp ne %struct.inode* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %4
  %24 = load i32, i32* %11, align 4
  %25 = icmp slt i32 %24, 5
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32*, i32** %8, align 8
  store i32 5, i32* %27, align 4
  %28 = load i32, i32* @FILEID_INVALID, align 4
  store i32 %28, i32* %5, align 4
  br label %78

29:                                               ; preds = %23, %4
  %30 = load i32, i32* %11, align 4
  %31 = icmp slt i32 %30, 3
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32*, i32** %8, align 8
  store i32 3, i32* %33, align 4
  %34 = load i32, i32* @FILEID_INVALID, align 4
  store i32 %34, i32* %5, align 4
  br label %78

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %35
  store i32 3, i32* %11, align 4
  %37 = load %struct.iso_inode_info*, %struct.iso_inode_info** %10, align 8
  %38 = getelementptr inbounds %struct.iso_inode_info, %struct.iso_inode_info* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.iso_inode_info*, %struct.iso_inode_info** %10, align 8
  %43 = getelementptr inbounds %struct.iso_inode_info, %struct.iso_inode_info* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64*, i64** %13, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 2
  store i64 %44, i64* %46, align 8
  %47 = load i64*, i64** %13, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 3
  store i64 0, i64* %48, align 8
  %49 = load %struct.inode*, %struct.inode** %6, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %7, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 2
  store i32 %51, i32* %53, align 4
  %54 = load %struct.inode*, %struct.inode** %9, align 8
  %55 = icmp ne %struct.inode* %54, null
  br i1 %55, label %56, label %74

56:                                               ; preds = %36
  %57 = load %struct.inode*, %struct.inode** %9, align 8
  %58 = call %struct.iso_inode_info* @ISOFS_I(%struct.inode* %57)
  store %struct.iso_inode_info* %58, %struct.iso_inode_info** %14, align 8
  %59 = load %struct.iso_inode_info*, %struct.iso_inode_info** %14, align 8
  %60 = getelementptr inbounds %struct.iso_inode_info, %struct.iso_inode_info* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32*, i32** %7, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 3
  store i32 %61, i32* %63, align 4
  %64 = load %struct.iso_inode_info*, %struct.iso_inode_info** %14, align 8
  %65 = getelementptr inbounds %struct.iso_inode_info, %struct.iso_inode_info* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64*, i64** %13, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 3
  store i64 %66, i64* %68, align 8
  %69 = load %struct.inode*, %struct.inode** %9, align 8
  %70 = getelementptr inbounds %struct.inode, %struct.inode* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %7, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 4
  store i32 %71, i32* %73, align 4
  store i32 5, i32* %11, align 4
  store i32 2, i32* %12, align 4
  br label %74

74:                                               ; preds = %56, %36
  %75 = load i32, i32* %11, align 4
  %76 = load i32*, i32** %8, align 8
  store i32 %75, i32* %76, align 4
  %77 = load i32, i32* %12, align 4
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %74, %32, %26
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local %struct.iso_inode_info* @ISOFS_I(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
