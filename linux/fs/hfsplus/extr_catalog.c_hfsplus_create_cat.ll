; ModuleID = '/home/carl/AnghaBench/linux/fs/hfsplus/extr_catalog.c_hfsplus_create_cat.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfsplus/extr_catalog.c_hfsplus_create_cat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qstr = type { i32 }
%struct.inode = type { i32, i32, i32, i32, i32, i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.hfs_find_data = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@CAT_MOD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"create_cat: %s,%u(%d)\0A\00", align 1
@HFSPLUS_FOLDER_THREAD = common dso_local global i32 0, align 4
@HFSPLUS_FILE_THREAD = common dso_local global i32 0, align 4
@hfs_find_rec_by_key = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@HFSPLUS_I_CAT_DIRTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfsplus_create_cat(i32 %0, %struct.inode* %1, %struct.qstr* %2, %struct.inode* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.qstr*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.super_block*, align 8
  %11 = alloca %struct.hfs_find_data, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.inode* %1, %struct.inode** %7, align 8
  store %struct.qstr* %2, %struct.qstr** %8, align 8
  store %struct.inode* %3, %struct.inode** %9, align 8
  %15 = load %struct.inode*, %struct.inode** %7, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 6
  %17 = load %struct.super_block*, %struct.super_block** %16, align 8
  store %struct.super_block* %17, %struct.super_block** %10, align 8
  %18 = load i32, i32* @CAT_MOD, align 4
  %19 = load %struct.qstr*, %struct.qstr** %8, align 8
  %20 = getelementptr inbounds %struct.qstr, %struct.qstr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.inode*, %struct.inode** %9, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @hfs_dbg(i32 %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22, i32 %25)
  %27 = load %struct.super_block*, %struct.super_block** %10, align 8
  %28 = call %struct.TYPE_4__* @HFSPLUS_SB(%struct.super_block* %27)
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @hfs_find_init(i32 %30, %struct.hfs_find_data* %11)
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %4
  %35 = load i32, i32* %14, align 4
  store i32 %35, i32* %5, align 4
  br label %173

36:                                               ; preds = %4
  %37 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %11, i32 0, i32 1
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %11, i32 0, i32 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = mul nsw i32 2, %42
  %44 = call i32 @hfs_bmap_reserve(%struct.TYPE_3__* %38, i32 %43)
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %14, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %36
  br label %170

48:                                               ; preds = %36
  %49 = load %struct.super_block*, %struct.super_block** %10, align 8
  %50 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %11, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @hfsplus_cat_build_key_with_cnid(%struct.super_block* %49, i32 %51, i32 %52)
  %54 = load %struct.super_block*, %struct.super_block** %10, align 8
  %55 = load %struct.inode*, %struct.inode** %9, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @S_ISDIR(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %48
  %61 = load i32, i32* @HFSPLUS_FOLDER_THREAD, align 4
  br label %64

62:                                               ; preds = %48
  %63 = load i32, i32* @HFSPLUS_FILE_THREAD, align 4
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i32 [ %61, %60 ], [ %63, %62 ]
  %66 = load %struct.inode*, %struct.inode** %7, align 8
  %67 = getelementptr inbounds %struct.inode, %struct.inode* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.qstr*, %struct.qstr** %8, align 8
  %70 = call i32 @hfsplus_fill_cat_thread(%struct.super_block* %54, i32* %12, i32 %65, i32 %68, %struct.qstr* %69)
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %13, align 4
  %72 = icmp slt i32 %71, 0
  %73 = zext i1 %72 to i32
  %74 = call i64 @unlikely(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %64
  %77 = load i32, i32* %13, align 4
  store i32 %77, i32* %14, align 4
  br label %170

78:                                               ; preds = %64
  %79 = load i32, i32* @hfs_find_rec_by_key, align 4
  %80 = call i32 @hfs_brec_find(%struct.hfs_find_data* %11, i32 %79)
  store i32 %80, i32* %14, align 4
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* @ENOENT, align 4
  %83 = sub nsw i32 0, %82
  %84 = icmp ne i32 %81, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %78
  %86 = load i32, i32* %14, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %85
  %89 = load i32, i32* @EEXIST, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %14, align 4
  br label %91

91:                                               ; preds = %88, %85
  br label %170

92:                                               ; preds = %78
  %93 = load i32, i32* %13, align 4
  %94 = call i32 @hfs_brec_insert(%struct.hfs_find_data* %11, i32* %12, i32 %93)
  store i32 %94, i32* %14, align 4
  %95 = load i32, i32* %14, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  br label %170

98:                                               ; preds = %92
  %99 = load %struct.super_block*, %struct.super_block** %10, align 8
  %100 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %11, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.inode*, %struct.inode** %7, align 8
  %103 = getelementptr inbounds %struct.inode, %struct.inode* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.qstr*, %struct.qstr** %8, align 8
  %106 = call i32 @hfsplus_cat_build_key(%struct.super_block* %99, i32 %101, i32 %104, %struct.qstr* %105)
  store i32 %106, i32* %14, align 4
  %107 = load i32, i32* %14, align 4
  %108 = call i64 @unlikely(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %98
  br label %158

111:                                              ; preds = %98
  %112 = load i32, i32* %6, align 4
  %113 = load %struct.inode*, %struct.inode** %9, align 8
  %114 = call i32 @hfsplus_cat_build_record(i32* %12, i32 %112, %struct.inode* %113)
  store i32 %114, i32* %13, align 4
  %115 = load i32, i32* @hfs_find_rec_by_key, align 4
  %116 = call i32 @hfs_brec_find(%struct.hfs_find_data* %11, i32 %115)
  store i32 %116, i32* %14, align 4
  %117 = load i32, i32* %14, align 4
  %118 = load i32, i32* @ENOENT, align 4
  %119 = sub nsw i32 0, %118
  %120 = icmp ne i32 %117, %119
  br i1 %120, label %121, label %128

121:                                              ; preds = %111
  %122 = load i32, i32* %14, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %127, label %124

124:                                              ; preds = %121
  %125 = load i32, i32* @EEXIST, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %14, align 4
  br label %127

127:                                              ; preds = %124, %121
  br label %158

128:                                              ; preds = %111
  %129 = load i32, i32* %13, align 4
  %130 = call i32 @hfs_brec_insert(%struct.hfs_find_data* %11, i32* %12, i32 %129)
  store i32 %130, i32* %14, align 4
  %131 = load i32, i32* %14, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %128
  br label %158

134:                                              ; preds = %128
  %135 = load %struct.inode*, %struct.inode** %7, align 8
  %136 = getelementptr inbounds %struct.inode, %struct.inode* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %136, align 4
  %139 = load %struct.inode*, %struct.inode** %9, align 8
  %140 = getelementptr inbounds %struct.inode, %struct.inode* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = call i64 @S_ISDIR(i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %134
  %145 = load %struct.inode*, %struct.inode** %7, align 8
  %146 = call i32 @hfsplus_subfolders_inc(%struct.inode* %145)
  br label %147

147:                                              ; preds = %144, %134
  %148 = load %struct.inode*, %struct.inode** %7, align 8
  %149 = call i32 @current_time(%struct.inode* %148)
  %150 = load %struct.inode*, %struct.inode** %7, align 8
  %151 = getelementptr inbounds %struct.inode, %struct.inode* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 8
  %152 = load %struct.inode*, %struct.inode** %7, align 8
  %153 = getelementptr inbounds %struct.inode, %struct.inode* %152, i32 0, i32 1
  store i32 %149, i32* %153, align 4
  %154 = load %struct.inode*, %struct.inode** %7, align 8
  %155 = load i32, i32* @HFSPLUS_I_CAT_DIRTY, align 4
  %156 = call i32 @hfsplus_mark_inode_dirty(%struct.inode* %154, i32 %155)
  %157 = call i32 @hfs_find_exit(%struct.hfs_find_data* %11)
  store i32 0, i32* %5, align 4
  br label %173

158:                                              ; preds = %133, %127, %110
  %159 = load %struct.super_block*, %struct.super_block** %10, align 8
  %160 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %11, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* %6, align 4
  %163 = call i32 @hfsplus_cat_build_key_with_cnid(%struct.super_block* %159, i32 %161, i32 %162)
  %164 = load i32, i32* @hfs_find_rec_by_key, align 4
  %165 = call i32 @hfs_brec_find(%struct.hfs_find_data* %11, i32 %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %169, label %167

167:                                              ; preds = %158
  %168 = call i32 @hfs_brec_remove(%struct.hfs_find_data* %11)
  br label %169

169:                                              ; preds = %167, %158
  br label %170

170:                                              ; preds = %169, %97, %91, %76, %47
  %171 = call i32 @hfs_find_exit(%struct.hfs_find_data* %11)
  %172 = load i32, i32* %14, align 4
  store i32 %172, i32* %5, align 4
  br label %173

173:                                              ; preds = %170, %147, %34
  %174 = load i32, i32* %5, align 4
  ret i32 %174
}

declare dso_local i32 @hfs_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @hfs_find_init(i32, %struct.hfs_find_data*) #1

declare dso_local %struct.TYPE_4__* @HFSPLUS_SB(%struct.super_block*) #1

declare dso_local i32 @hfs_bmap_reserve(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @hfsplus_cat_build_key_with_cnid(%struct.super_block*, i32, i32) #1

declare dso_local i32 @hfsplus_fill_cat_thread(%struct.super_block*, i32*, i32, i32, %struct.qstr*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @hfs_brec_find(%struct.hfs_find_data*, i32) #1

declare dso_local i32 @hfs_brec_insert(%struct.hfs_find_data*, i32*, i32) #1

declare dso_local i32 @hfsplus_cat_build_key(%struct.super_block*, i32, i32, %struct.qstr*) #1

declare dso_local i32 @hfsplus_cat_build_record(i32*, i32, %struct.inode*) #1

declare dso_local i32 @hfsplus_subfolders_inc(%struct.inode*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @hfsplus_mark_inode_dirty(%struct.inode*, i32) #1

declare dso_local i32 @hfs_find_exit(%struct.hfs_find_data*) #1

declare dso_local i32 @hfs_brec_remove(%struct.hfs_find_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
