; ModuleID = '/home/carl/AnghaBench/linux/fs/hfs/extr_catalog.c_hfs_cat_create.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfs/extr_catalog.c_hfs_cat_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qstr = type { i32 }
%struct.inode = type { i64, i32, i32, i32, i32, %struct.super_block*, i32 }
%struct.super_block = type { i32 }
%struct.hfs_find_data = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%union.hfs_cat_rec = type { i32 }
%struct.TYPE_4__ = type { i32 }

@CAT_MOD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"create_cat: %s,%u(%d)\0A\00", align 1
@HFS_MAX_VALENCE = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@HFS_CDR_THD = common dso_local global i32 0, align 4
@HFS_CDR_FTH = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfs_cat_create(i32 %0, %struct.inode* %1, %struct.qstr* %2, %struct.inode* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.qstr*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.hfs_find_data, align 8
  %11 = alloca %struct.super_block*, align 8
  %12 = alloca %union.hfs_cat_rec, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.inode* %1, %struct.inode** %7, align 8
  store %struct.qstr* %2, %struct.qstr** %8, align 8
  store %struct.inode* %3, %struct.inode** %9, align 8
  %15 = load i32, i32* @CAT_MOD, align 4
  %16 = load %struct.qstr*, %struct.qstr** %8, align 8
  %17 = getelementptr inbounds %struct.qstr, %struct.qstr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.inode*, %struct.inode** %9, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @hfs_dbg(i32 %15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19, i32 %22)
  %24 = load %struct.inode*, %struct.inode** %7, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @HFS_MAX_VALENCE, align 8
  %28 = icmp sge i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %4
  %30 = load i32, i32* @ENOSPC, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %156

32:                                               ; preds = %4
  %33 = load %struct.inode*, %struct.inode** %7, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 5
  %35 = load %struct.super_block*, %struct.super_block** %34, align 8
  store %struct.super_block* %35, %struct.super_block** %11, align 8
  %36 = load %struct.super_block*, %struct.super_block** %11, align 8
  %37 = call %struct.TYPE_4__* @HFS_SB(%struct.super_block* %36)
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @hfs_find_init(i32 %39, %struct.hfs_find_data* %10)
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %14, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %32
  %44 = load i32, i32* %14, align 4
  store i32 %44, i32* %5, align 4
  br label %156

45:                                               ; preds = %32
  %46 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %10, i32 0, i32 1
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %10, i32 0, i32 1
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = mul nsw i32 2, %51
  %53 = call i32 @hfs_bmap_reserve(%struct.TYPE_3__* %47, i32 %52)
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %14, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %45
  br label %153

57:                                               ; preds = %45
  %58 = load %struct.super_block*, %struct.super_block** %11, align 8
  %59 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %10, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @hfs_cat_build_key(%struct.super_block* %58, i32 %60, i32 %61, %struct.qstr* null)
  %63 = load %struct.super_block*, %struct.super_block** %11, align 8
  %64 = load %struct.inode*, %struct.inode** %9, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @S_ISDIR(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %57
  %70 = load i32, i32* @HFS_CDR_THD, align 4
  br label %73

71:                                               ; preds = %57
  %72 = load i32, i32* @HFS_CDR_FTH, align 4
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi i32 [ %70, %69 ], [ %72, %71 ]
  %75 = load %struct.inode*, %struct.inode** %7, align 8
  %76 = getelementptr inbounds %struct.inode, %struct.inode* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.qstr*, %struct.qstr** %8, align 8
  %79 = call i32 @hfs_cat_build_thread(%struct.super_block* %63, %union.hfs_cat_rec* %12, i32 %74, i32 %77, %struct.qstr* %78)
  store i32 %79, i32* %13, align 4
  %80 = call i32 @hfs_brec_find(%struct.hfs_find_data* %10)
  store i32 %80, i32* %14, align 4
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* @ENOENT, align 4
  %83 = sub nsw i32 0, %82
  %84 = icmp ne i32 %81, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %73
  %86 = load i32, i32* %14, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %85
  %89 = load i32, i32* @EEXIST, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %14, align 4
  br label %91

91:                                               ; preds = %88, %85
  br label %153

92:                                               ; preds = %73
  %93 = load i32, i32* %13, align 4
  %94 = call i32 @hfs_brec_insert(%struct.hfs_find_data* %10, %union.hfs_cat_rec* %12, i32 %93)
  store i32 %94, i32* %14, align 4
  %95 = load i32, i32* %14, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  br label %153

98:                                               ; preds = %92
  %99 = load %struct.super_block*, %struct.super_block** %11, align 8
  %100 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %10, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.inode*, %struct.inode** %7, align 8
  %103 = getelementptr inbounds %struct.inode, %struct.inode* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.qstr*, %struct.qstr** %8, align 8
  %106 = call i32 @hfs_cat_build_key(%struct.super_block* %99, i32 %101, i32 %104, %struct.qstr* %105)
  %107 = load i32, i32* %6, align 4
  %108 = load %struct.inode*, %struct.inode** %9, align 8
  %109 = call i32 @hfs_cat_build_record(%union.hfs_cat_rec* %12, i32 %107, %struct.inode* %108)
  store i32 %109, i32* %13, align 4
  %110 = call i32 @hfs_brec_find(%struct.hfs_find_data* %10)
  store i32 %110, i32* %14, align 4
  %111 = load i32, i32* %14, align 4
  %112 = load i32, i32* @ENOENT, align 4
  %113 = sub nsw i32 0, %112
  %114 = icmp ne i32 %111, %113
  br i1 %114, label %115, label %122

115:                                              ; preds = %98
  %116 = load i32, i32* %14, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %115
  %119 = load i32, i32* @EEXIST, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %14, align 4
  br label %121

121:                                              ; preds = %118, %115
  br label %142

122:                                              ; preds = %98
  %123 = load i32, i32* %13, align 4
  %124 = call i32 @hfs_brec_insert(%struct.hfs_find_data* %10, %union.hfs_cat_rec* %12, i32 %123)
  store i32 %124, i32* %14, align 4
  %125 = load i32, i32* %14, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %122
  br label %142

128:                                              ; preds = %122
  %129 = load %struct.inode*, %struct.inode** %7, align 8
  %130 = getelementptr inbounds %struct.inode, %struct.inode* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = add nsw i64 %131, 1
  store i64 %132, i64* %130, align 8
  %133 = load %struct.inode*, %struct.inode** %7, align 8
  %134 = call i32 @current_time(%struct.inode* %133)
  %135 = load %struct.inode*, %struct.inode** %7, align 8
  %136 = getelementptr inbounds %struct.inode, %struct.inode* %135, i32 0, i32 1
  store i32 %134, i32* %136, align 8
  %137 = load %struct.inode*, %struct.inode** %7, align 8
  %138 = getelementptr inbounds %struct.inode, %struct.inode* %137, i32 0, i32 2
  store i32 %134, i32* %138, align 4
  %139 = load %struct.inode*, %struct.inode** %7, align 8
  %140 = call i32 @mark_inode_dirty(%struct.inode* %139)
  %141 = call i32 @hfs_find_exit(%struct.hfs_find_data* %10)
  store i32 0, i32* %5, align 4
  br label %156

142:                                              ; preds = %127, %121
  %143 = load %struct.super_block*, %struct.super_block** %11, align 8
  %144 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %10, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* %6, align 4
  %147 = call i32 @hfs_cat_build_key(%struct.super_block* %143, i32 %145, i32 %146, %struct.qstr* null)
  %148 = call i32 @hfs_brec_find(%struct.hfs_find_data* %10)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %152, label %150

150:                                              ; preds = %142
  %151 = call i32 @hfs_brec_remove(%struct.hfs_find_data* %10)
  br label %152

152:                                              ; preds = %150, %142
  br label %153

153:                                              ; preds = %152, %97, %91, %56
  %154 = call i32 @hfs_find_exit(%struct.hfs_find_data* %10)
  %155 = load i32, i32* %14, align 4
  store i32 %155, i32* %5, align 4
  br label %156

156:                                              ; preds = %153, %128, %43, %29
  %157 = load i32, i32* %5, align 4
  ret i32 %157
}

declare dso_local i32 @hfs_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @hfs_find_init(i32, %struct.hfs_find_data*) #1

declare dso_local %struct.TYPE_4__* @HFS_SB(%struct.super_block*) #1

declare dso_local i32 @hfs_bmap_reserve(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @hfs_cat_build_key(%struct.super_block*, i32, i32, %struct.qstr*) #1

declare dso_local i32 @hfs_cat_build_thread(%struct.super_block*, %union.hfs_cat_rec*, i32, i32, %struct.qstr*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @hfs_brec_find(%struct.hfs_find_data*) #1

declare dso_local i32 @hfs_brec_insert(%struct.hfs_find_data*, %union.hfs_cat_rec*, i32) #1

declare dso_local i32 @hfs_cat_build_record(%union.hfs_cat_rec*, i32, %struct.inode*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @hfs_find_exit(%struct.hfs_find_data*) #1

declare dso_local i32 @hfs_brec_remove(%struct.hfs_find_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
