; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_dir.c_gfs2_dirent_scan.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_dir.c_gfs2_dirent_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_dirent = type { i32 }
%struct.inode = type { i32 }
%struct.qstr = type { i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gfs2_dirent* (%struct.inode*, i8*, i32, i32 (%struct.gfs2_dirent*, %struct.qstr*, i8*)*, %struct.qstr*, i8*)* @gfs2_dirent_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gfs2_dirent* @gfs2_dirent_scan(%struct.inode* %0, i8* %1, i32 %2, i32 (%struct.gfs2_dirent*, %struct.qstr*, i8*)* %3, %struct.qstr* %4, i8* %5) #0 {
  %7 = alloca %struct.gfs2_dirent*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32 (%struct.gfs2_dirent*, %struct.qstr*, i8*)*, align 8
  %12 = alloca %struct.qstr*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.gfs2_dirent*, align 8
  %15 = alloca %struct.gfs2_dirent*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 (%struct.gfs2_dirent*, %struct.qstr*, i8*)* %3, i32 (%struct.gfs2_dirent*, %struct.qstr*, i8*)** %11, align 8
  store %struct.qstr* %4, %struct.qstr** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32 0, i32* %18, align 4
  %19 = load %struct.inode*, %struct.inode** %8, align 8
  %20 = call i32 @GFS2_SB(%struct.inode* %19)
  %21 = load i8*, i8** %9, align 8
  %22 = call i32 @gfs2_dirent_offset(i32 %20, i8* %21)
  store i32 %22, i32* %18, align 4
  %23 = load i32, i32* %18, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %6
  br label %107

26:                                               ; preds = %6
  %27 = load i32, i32* %18, align 4
  store i32 %27, i32* %16, align 4
  store %struct.gfs2_dirent* null, %struct.gfs2_dirent** %15, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = load i32, i32* %16, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr i8, i8* %28, i64 %30
  %32 = bitcast i8* %31 to %struct.gfs2_dirent*
  store %struct.gfs2_dirent* %32, %struct.gfs2_dirent** %14, align 8
  %33 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %14, align 8
  %34 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @be16_to_cpu(i32 %35)
  store i32 %36, i32* %17, align 4
  %37 = load %struct.inode*, %struct.inode** %8, align 8
  %38 = call i32 @GFS2_SB(%struct.inode* %37)
  %39 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %14, align 8
  %40 = load i32, i32* %16, align 4
  %41 = load i32, i32* %17, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i64 @gfs2_check_dirent(i32 %38, %struct.gfs2_dirent* %39, i32 %40, i32 %41, i32 %42, i32 1)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %26
  br label %107

46:                                               ; preds = %26
  br label %47

47:                                               ; preds = %85, %46
  %48 = load i32 (%struct.gfs2_dirent*, %struct.qstr*, i8*)*, i32 (%struct.gfs2_dirent*, %struct.qstr*, i8*)** %11, align 8
  %49 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %14, align 8
  %50 = load %struct.qstr*, %struct.qstr** %12, align 8
  %51 = load i8*, i8** %13, align 8
  %52 = call i32 %48(%struct.gfs2_dirent* %49, %struct.qstr* %50, i8* %51)
  store i32 %52, i32* %18, align 4
  %53 = load i32, i32* %18, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  br label %86

56:                                               ; preds = %47
  %57 = load i32, i32* %17, align 4
  %58 = load i32, i32* %16, align 4
  %59 = add i32 %58, %57
  store i32 %59, i32* %16, align 4
  %60 = load i32, i32* %16, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  br label %86

64:                                               ; preds = %56
  %65 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %14, align 8
  store %struct.gfs2_dirent* %65, %struct.gfs2_dirent** %15, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = load i32, i32* %16, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr i8, i8* %66, i64 %68
  %70 = bitcast i8* %69 to %struct.gfs2_dirent*
  store %struct.gfs2_dirent* %70, %struct.gfs2_dirent** %14, align 8
  %71 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %14, align 8
  %72 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @be16_to_cpu(i32 %73)
  store i32 %74, i32* %17, align 4
  %75 = load %struct.inode*, %struct.inode** %8, align 8
  %76 = call i32 @GFS2_SB(%struct.inode* %75)
  %77 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %14, align 8
  %78 = load i32, i32* %16, align 4
  %79 = load i32, i32* %17, align 4
  %80 = load i32, i32* %10, align 4
  %81 = call i64 @gfs2_check_dirent(i32 %76, %struct.gfs2_dirent* %77, i32 %78, i32 %79, i32 %80, i32 0)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %64
  br label %107

84:                                               ; preds = %64
  br label %85

85:                                               ; preds = %84
  br i1 true, label %47, label %86

86:                                               ; preds = %85, %63, %55
  %87 = load i32, i32* %18, align 4
  switch i32 %87, label %100 [
    i32 0, label %88
    i32 1, label %89
    i32 2, label %91
  ]

88:                                               ; preds = %86
  store %struct.gfs2_dirent* null, %struct.gfs2_dirent** %7, align 8
  br label %114

89:                                               ; preds = %86
  %90 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %14, align 8
  store %struct.gfs2_dirent* %90, %struct.gfs2_dirent** %7, align 8
  br label %114

91:                                               ; preds = %86
  %92 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %15, align 8
  %93 = icmp ne %struct.gfs2_dirent* %92, null
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  %95 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %15, align 8
  br label %98

96:                                               ; preds = %91
  %97 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %14, align 8
  br label %98

98:                                               ; preds = %96, %94
  %99 = phi %struct.gfs2_dirent* [ %95, %94 ], [ %97, %96 ]
  store %struct.gfs2_dirent* %99, %struct.gfs2_dirent** %7, align 8
  br label %114

100:                                              ; preds = %86
  %101 = load i32, i32* %18, align 4
  %102 = icmp sgt i32 %101, 0
  %103 = zext i1 %102 to i32
  %104 = call i32 @BUG_ON(i32 %103)
  %105 = load i32, i32* %18, align 4
  %106 = call %struct.gfs2_dirent* @ERR_PTR(i32 %105)
  store %struct.gfs2_dirent* %106, %struct.gfs2_dirent** %7, align 8
  br label %114

107:                                              ; preds = %83, %45, %25
  %108 = load %struct.inode*, %struct.inode** %8, align 8
  %109 = call i32 @GFS2_I(%struct.inode* %108)
  %110 = call i32 @gfs2_consist_inode(i32 %109)
  %111 = load i32, i32* @EIO, align 4
  %112 = sub nsw i32 0, %111
  %113 = call %struct.gfs2_dirent* @ERR_PTR(i32 %112)
  store %struct.gfs2_dirent* %113, %struct.gfs2_dirent** %7, align 8
  br label %114

114:                                              ; preds = %107, %100, %98, %89, %88
  %115 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %7, align 8
  ret %struct.gfs2_dirent* %115
}

declare dso_local i32 @gfs2_dirent_offset(i32, i8*) #1

declare dso_local i32 @GFS2_SB(%struct.inode*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i64 @gfs2_check_dirent(i32, %struct.gfs2_dirent*, i32, i32, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.gfs2_dirent* @ERR_PTR(i32) #1

declare dso_local i32 @gfs2_consist_inode(i32) #1

declare dso_local i32 @GFS2_I(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
