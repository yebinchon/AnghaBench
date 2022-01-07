; ModuleID = '/home/carl/AnghaBench/linux/fs/hfs/extr_attr.c___hfs_getxattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfs/extr_attr.c___hfs_getxattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.hfs_find_data = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { %struct.hfs_cat_file }
%struct.hfs_cat_file = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i8*, i64)* @__hfs_getxattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__hfs_getxattr(%struct.inode* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.hfs_find_data, align 8
  %11 = alloca %struct.TYPE_9__, align 4
  %12 = alloca %struct.hfs_cat_file*, align 8
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.inode*, %struct.inode** %6, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @S_ISREG(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %4
  %20 = load %struct.inode*, %struct.inode** %6, align 8
  %21 = call i64 @HFS_IS_RSRC(%struct.inode* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19, %4
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %108

26:                                               ; preds = %19
  %27 = load i64, i64* %9, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %59

29:                                               ; preds = %26
  %30 = load %struct.inode*, %struct.inode** %6, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.TYPE_10__* @HFS_SB(i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @hfs_find_init(i32 %35, %struct.hfs_find_data* %10)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %29
  %40 = load i32, i32* %13, align 4
  store i32 %40, i32* %5, align 4
  br label %108

41:                                               ; preds = %29
  %42 = load %struct.inode*, %struct.inode** %6, align 8
  %43 = call %struct.TYPE_11__* @HFS_I(%struct.inode* %42)
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %10, i32 0, i32 2
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 4
  %49 = call i32 @hfs_brec_find(%struct.hfs_find_data* %10)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %41
  br label %101

53:                                               ; preds = %41
  %54 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %10, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %10, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @hfs_bnode_read(i32 %55, %struct.TYPE_9__* %11, i32 %57, i32 8)
  br label %59

59:                                               ; preds = %53, %26
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  store %struct.hfs_cat_file* %60, %struct.hfs_cat_file** %12, align 8
  %61 = load i32, i32* %7, align 4
  switch i32 %61, label %100 [
    i32 128, label %62
    i32 129, label %81
  ]

62:                                               ; preds = %59
  %63 = load i64, i64* %9, align 8
  %64 = icmp uge i64 %63, 4
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = load i8*, i8** %8, align 8
  %67 = load %struct.hfs_cat_file*, %struct.hfs_cat_file** %12, align 8
  %68 = getelementptr inbounds %struct.hfs_cat_file, %struct.hfs_cat_file* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = call i32 @memcpy(i8* %66, i32* %69, i32 4)
  store i32 4, i32* %13, align 4
  br label %80

71:                                               ; preds = %62
  %72 = load i64, i64* %9, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i32, i32* @ERANGE, align 4
  %76 = sub nsw i32 0, %75
  br label %78

77:                                               ; preds = %71
  br label %78

78:                                               ; preds = %77, %74
  %79 = phi i32 [ %76, %74 ], [ 4, %77 ]
  store i32 %79, i32* %13, align 4
  br label %80

80:                                               ; preds = %78, %65
  br label %100

81:                                               ; preds = %59
  %82 = load i64, i64* %9, align 8
  %83 = icmp uge i64 %82, 4
  br i1 %83, label %84, label %90

84:                                               ; preds = %81
  %85 = load i8*, i8** %8, align 8
  %86 = load %struct.hfs_cat_file*, %struct.hfs_cat_file** %12, align 8
  %87 = getelementptr inbounds %struct.hfs_cat_file, %struct.hfs_cat_file* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = call i32 @memcpy(i8* %85, i32* %88, i32 4)
  store i32 4, i32* %13, align 4
  br label %99

90:                                               ; preds = %81
  %91 = load i64, i64* %9, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i32, i32* @ERANGE, align 4
  %95 = sub nsw i32 0, %94
  br label %97

96:                                               ; preds = %90
  br label %97

97:                                               ; preds = %96, %93
  %98 = phi i32 [ %95, %93 ], [ 4, %96 ]
  store i32 %98, i32* %13, align 4
  br label %99

99:                                               ; preds = %97, %84
  br label %100

100:                                              ; preds = %59, %99, %80
  br label %101

101:                                              ; preds = %100, %52
  %102 = load i64, i64* %9, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  %105 = call i32 @hfs_find_exit(%struct.hfs_find_data* %10)
  br label %106

106:                                              ; preds = %104, %101
  %107 = load i32, i32* %13, align 4
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %106, %39, %23
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i64 @HFS_IS_RSRC(%struct.inode*) #1

declare dso_local i32 @hfs_find_init(i32, %struct.hfs_find_data*) #1

declare dso_local %struct.TYPE_10__* @HFS_SB(i32) #1

declare dso_local %struct.TYPE_11__* @HFS_I(%struct.inode*) #1

declare dso_local i32 @hfs_brec_find(%struct.hfs_find_data*) #1

declare dso_local i32 @hfs_bnode_read(i32, %struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @hfs_find_exit(%struct.hfs_find_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
