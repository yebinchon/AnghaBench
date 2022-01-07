; ModuleID = '/home/carl/AnghaBench/linux/fs/hfs/extr_attr.c___hfs_setxattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfs/extr_attr.c___hfs_setxattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.hfs_find_data = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { %struct.hfs_cat_file }
%struct.hfs_cat_file = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i8*, i64, i32)* @__hfs_setxattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__hfs_setxattr(%struct.inode* %0, i32 %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.hfs_find_data, align 8
  %13 = alloca %struct.TYPE_10__, align 4
  %14 = alloca %struct.hfs_cat_file*, align 8
  %15 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load %struct.inode*, %struct.inode** %7, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @S_ISREG(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %5
  %22 = load %struct.inode*, %struct.inode** %7, align 8
  %23 = call i64 @HFS_IS_RSRC(%struct.inode* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21, %5
  %26 = load i32, i32* @EOPNOTSUPP, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %99

28:                                               ; preds = %21
  %29 = load %struct.inode*, %struct.inode** %7, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.TYPE_11__* @HFS_SB(i32 %31)
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @hfs_find_init(i32 %34, %struct.hfs_find_data* %12)
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* %15, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = load i32, i32* %15, align 4
  store i32 %39, i32* %6, align 4
  br label %99

40:                                               ; preds = %28
  %41 = load %struct.inode*, %struct.inode** %7, align 8
  %42 = call %struct.TYPE_12__* @HFS_I(%struct.inode* %41)
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %12, i32 0, i32 2
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 4
  %48 = call i32 @hfs_brec_find(%struct.hfs_find_data* %12)
  store i32 %48, i32* %15, align 4
  %49 = load i32, i32* %15, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %40
  br label %96

52:                                               ; preds = %40
  %53 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %12, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %12, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @hfs_bnode_read(i32 %54, %struct.TYPE_10__* %13, i32 %56, i32 8)
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  store %struct.hfs_cat_file* %58, %struct.hfs_cat_file** %14, align 8
  %59 = load i32, i32* %8, align 4
  switch i32 %59, label %86 [
    i32 128, label %60
    i32 129, label %73
  ]

60:                                               ; preds = %52
  %61 = load i64, i64* %10, align 8
  %62 = icmp eq i64 %61, 4
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load %struct.hfs_cat_file*, %struct.hfs_cat_file** %14, align 8
  %65 = getelementptr inbounds %struct.hfs_cat_file, %struct.hfs_cat_file* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  %67 = load i8*, i8** %9, align 8
  %68 = call i32 @memcpy(i32* %66, i8* %67, i32 4)
  br label %72

69:                                               ; preds = %60
  %70 = load i32, i32* @ERANGE, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %15, align 4
  br label %72

72:                                               ; preds = %69, %63
  br label %86

73:                                               ; preds = %52
  %74 = load i64, i64* %10, align 8
  %75 = icmp eq i64 %74, 4
  br i1 %75, label %76, label %82

76:                                               ; preds = %73
  %77 = load %struct.hfs_cat_file*, %struct.hfs_cat_file** %14, align 8
  %78 = getelementptr inbounds %struct.hfs_cat_file, %struct.hfs_cat_file* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i8*, i8** %9, align 8
  %81 = call i32 @memcpy(i32* %79, i8* %80, i32 4)
  br label %85

82:                                               ; preds = %73
  %83 = load i32, i32* @ERANGE, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %15, align 4
  br label %85

85:                                               ; preds = %82, %76
  br label %86

86:                                               ; preds = %52, %85, %72
  %87 = load i32, i32* %15, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %95, label %89

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %12, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %12, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @hfs_bnode_write(i32 %91, %struct.TYPE_10__* %13, i32 %93, i32 8)
  br label %95

95:                                               ; preds = %89, %86
  br label %96

96:                                               ; preds = %95, %51
  %97 = call i32 @hfs_find_exit(%struct.hfs_find_data* %12)
  %98 = load i32, i32* %15, align 4
  store i32 %98, i32* %6, align 4
  br label %99

99:                                               ; preds = %96, %38, %25
  %100 = load i32, i32* %6, align 4
  ret i32 %100
}

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i64 @HFS_IS_RSRC(%struct.inode*) #1

declare dso_local i32 @hfs_find_init(i32, %struct.hfs_find_data*) #1

declare dso_local %struct.TYPE_11__* @HFS_SB(i32) #1

declare dso_local %struct.TYPE_12__* @HFS_I(%struct.inode*) #1

declare dso_local i32 @hfs_brec_find(%struct.hfs_find_data*) #1

declare dso_local i32 @hfs_bnode_read(i32, %struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @hfs_bnode_write(i32, %struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @hfs_find_exit(%struct.hfs_find_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
