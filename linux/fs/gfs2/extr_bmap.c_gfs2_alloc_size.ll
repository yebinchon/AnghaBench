; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_bmap.c_gfs2_alloc_size.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_bmap.c_gfs2_alloc_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.metapath = type { i64, i64, i64* }
%struct.gfs2_inode = type { i64 }
%struct.gfs2_sbd = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.metapath*, i32)* @gfs2_alloc_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_alloc_size(%struct.inode* %0, %struct.metapath* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.metapath*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.gfs2_inode*, align 8
  %9 = alloca %struct.gfs2_sbd*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.metapath* %1, %struct.metapath** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.inode*, %struct.inode** %5, align 8
  %15 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %14)
  store %struct.gfs2_inode* %15, %struct.gfs2_inode** %8, align 8
  %16 = load %struct.inode*, %struct.inode** %5, align 8
  %17 = call %struct.gfs2_sbd* @GFS2_SB(%struct.inode* %16)
  store %struct.gfs2_sbd* %17, %struct.gfs2_sbd** %9, align 8
  %18 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %19 = call i64 @gfs2_is_stuffed(%struct.gfs2_inode* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %3
  %22 = load %struct.metapath*, %struct.metapath** %6, align 8
  %23 = getelementptr inbounds %struct.metapath, %struct.metapath* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.metapath*, %struct.metapath** %6, align 8
  %26 = getelementptr inbounds %struct.metapath, %struct.metapath* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %24, %27
  br i1 %28, label %29, label %64

29:                                               ; preds = %21, %3
  %30 = load %struct.metapath*, %struct.metapath** %6, align 8
  %31 = getelementptr inbounds %struct.metapath, %struct.metapath* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %32, 1
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %9, align 8
  %36 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  br label %42

38:                                               ; preds = %29
  %39 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %9, align 8
  %40 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  br label %42

42:                                               ; preds = %38, %34
  %43 = phi i32 [ %37, %34 ], [ %41, %38 ]
  store i32 %43, i32* %13, align 4
  %44 = load %struct.metapath*, %struct.metapath** %6, align 8
  %45 = getelementptr inbounds %struct.metapath, %struct.metapath* %44, i32 0, i32 2
  %46 = load i64*, i64** %45, align 8
  %47 = load %struct.metapath*, %struct.metapath** %6, align 8
  %48 = getelementptr inbounds %struct.metapath, %struct.metapath* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = sub nsw i64 %49, 1
  %51 = getelementptr inbounds i64, i64* %46, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* %13, align 4
  %54 = zext i32 %53 to i64
  %55 = sub nsw i64 %54, %52
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %13, align 4
  %59 = icmp ugt i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %42
  %61 = load i32, i32* %13, align 4
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %60, %42
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %4, align 4
  br label %114

64:                                               ; preds = %21
  %65 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %66 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = sub nsw i64 %67, 1
  %69 = load %struct.metapath*, %struct.metapath** %6, align 8
  %70 = call i64* @metapointer(i64 %68, %struct.metapath* %69)
  store i64* %70, i64** %10, align 8
  %71 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %72 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = sub nsw i64 %73, 1
  %75 = load %struct.metapath*, %struct.metapath** %6, align 8
  %76 = call i64* @metaend(i64 %74, %struct.metapath* %75)
  store i64* %76, i64** %12, align 8
  %77 = load i64*, i64** %12, align 8
  %78 = load i64*, i64** %10, align 8
  %79 = ptrtoint i64* %77 to i64
  %80 = ptrtoint i64* %78 to i64
  %81 = sub i64 %79, %80
  %82 = sdiv exact i64 %81, 8
  %83 = load i32, i32* %7, align 4
  %84 = zext i32 %83 to i64
  %85 = icmp sgt i64 %82, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %64
  %87 = load i64*, i64** %10, align 8
  %88 = load i32, i32* %7, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %87, i64 %89
  store i64* %90, i64** %12, align 8
  br label %91

91:                                               ; preds = %86, %64
  %92 = load i64*, i64** %10, align 8
  store i64* %92, i64** %11, align 8
  br label %93

93:                                               ; preds = %103, %91
  %94 = load i64*, i64** %11, align 8
  %95 = load i64*, i64** %12, align 8
  %96 = icmp ult i64* %94, %95
  br i1 %96, label %97, label %106

97:                                               ; preds = %93
  %98 = load i64*, i64** %11, align 8
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  br label %106

102:                                              ; preds = %97
  br label %103

103:                                              ; preds = %102
  %104 = load i64*, i64** %11, align 8
  %105 = getelementptr inbounds i64, i64* %104, i32 1
  store i64* %105, i64** %11, align 8
  br label %93

106:                                              ; preds = %101, %93
  %107 = load i64*, i64** %11, align 8
  %108 = load i64*, i64** %10, align 8
  %109 = ptrtoint i64* %107 to i64
  %110 = ptrtoint i64* %108 to i64
  %111 = sub i64 %109, %110
  %112 = sdiv exact i64 %111, 8
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %4, align 4
  br label %114

114:                                              ; preds = %106, %62
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local %struct.gfs2_sbd* @GFS2_SB(%struct.inode*) #1

declare dso_local i64 @gfs2_is_stuffed(%struct.gfs2_inode*) #1

declare dso_local i64* @metapointer(i64, %struct.metapath*) #1

declare dso_local i64* @metaend(i64, %struct.metapath*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
