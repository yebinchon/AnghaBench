; ModuleID = '/home/carl/AnghaBench/linux/fs/hfs/extr_extent.c___hfs_ext_write_extent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfs/extr_extent.c___hfs_ext_write_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.hfs_find_data = type { i32, i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@HFS_FK_RSRC = common dso_local global i32 0, align 4
@HFS_FK_DATA = common dso_local global i32 0, align 4
@HFS_FLG_EXT_NEW = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@HFS_FLG_EXT_DIRTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.hfs_find_data*)* @__hfs_ext_write_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__hfs_ext_write_extent(%struct.inode* %0, %struct.hfs_find_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.hfs_find_data*, align 8
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.hfs_find_data* %1, %struct.hfs_find_data** %5, align 8
  %7 = load %struct.hfs_find_data*, %struct.hfs_find_data** %5, align 8
  %8 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.inode*, %struct.inode** %4, align 8
  %14 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %13)
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.inode*, %struct.inode** %4, align 8
  %18 = call i64 @HFS_IS_RSRC(%struct.inode* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @HFS_FK_RSRC, align 4
  br label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @HFS_FK_DATA, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  %26 = call i32 @hfs_ext_build_key(i32 %9, i32 %12, i32 %16, i32 %25)
  %27 = load %struct.hfs_find_data*, %struct.hfs_find_data** %5, align 8
  %28 = call i32 @hfs_brec_find(%struct.hfs_find_data* %27)
  store i32 %28, i32* %6, align 4
  %29 = load %struct.inode*, %struct.inode** %4, align 8
  %30 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %29)
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @HFS_FLG_EXT_NEW, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %74

36:                                               ; preds = %24
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @ENOENT, align 4
  %39 = sub nsw i32 0, %38
  %40 = icmp ne i32 %37, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %3, align 4
  br label %102

43:                                               ; preds = %36
  %44 = load %struct.hfs_find_data*, %struct.hfs_find_data** %5, align 8
  %45 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %44, i32 0, i32 3
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = load %struct.hfs_find_data*, %struct.hfs_find_data** %5, align 8
  %48 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %47, i32 0, i32 3
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, 1
  %53 = call i32 @hfs_bmap_reserve(%struct.TYPE_3__* %46, i64 %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %43
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %3, align 4
  br label %102

58:                                               ; preds = %43
  %59 = load %struct.hfs_find_data*, %struct.hfs_find_data** %5, align 8
  %60 = load %struct.inode*, %struct.inode** %4, align 8
  %61 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %60)
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @hfs_brec_insert(%struct.hfs_find_data* %59, i32 %63, i32 4)
  %65 = load i32, i32* @HFS_FLG_EXT_DIRTY, align 4
  %66 = load i32, i32* @HFS_FLG_EXT_NEW, align 4
  %67 = or i32 %65, %66
  %68 = xor i32 %67, -1
  %69 = load %struct.inode*, %struct.inode** %4, align 8
  %70 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %69)
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, %68
  store i32 %73, i32* %71, align 4
  br label %101

74:                                               ; preds = %24
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %3, align 4
  br label %102

79:                                               ; preds = %74
  %80 = load %struct.hfs_find_data*, %struct.hfs_find_data** %5, align 8
  %81 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.inode*, %struct.inode** %4, align 8
  %84 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %83)
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.hfs_find_data*, %struct.hfs_find_data** %5, align 8
  %88 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.hfs_find_data*, %struct.hfs_find_data** %5, align 8
  %91 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @hfs_bnode_write(i32 %82, i32 %86, i32 %89, i32 %92)
  %94 = load i32, i32* @HFS_FLG_EXT_DIRTY, align 4
  %95 = xor i32 %94, -1
  %96 = load %struct.inode*, %struct.inode** %4, align 8
  %97 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %96)
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %99, %95
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %79, %58
  store i32 0, i32* %3, align 4
  br label %102

102:                                              ; preds = %101, %77, %56, %41
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @hfs_ext_build_key(i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_4__* @HFS_I(%struct.inode*) #1

declare dso_local i64 @HFS_IS_RSRC(%struct.inode*) #1

declare dso_local i32 @hfs_brec_find(%struct.hfs_find_data*) #1

declare dso_local i32 @hfs_bmap_reserve(%struct.TYPE_3__*, i64) #1

declare dso_local i32 @hfs_brec_insert(%struct.hfs_find_data*, i32, i32) #1

declare dso_local i32 @hfs_bnode_write(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
