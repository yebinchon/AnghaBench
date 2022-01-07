; ModuleID = '/home/carl/AnghaBench/linux/fs/hfs/extr_super.c_hfs_fill_super.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfs/extr_super.c_hfs_fill_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i32*, i32, i32, i32*, %struct.hfs_sb_info* }
%struct.hfs_sb_info = type { i32, i32, i32, %struct.super_block* }
%struct.hfs_find_data = type { i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.inode = type { i32 }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@flush_mdb = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"unable to parse mount options\0A\00", align 1
@hfs_super_operations = common dso_local global i32 0, align 4
@hfs_xattr_handlers = common dso_local global i32 0, align 4
@SB_NODIRATIME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"can't find a HFS filesystem on dev %s\0A\00", align 1
@HFS_ROOT_CNID = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@hfs_dentry_operations = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"get root inode failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i8*, i32)* @hfs_fill_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfs_fill_super(%struct.super_block* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hfs_sb_info*, align 8
  %9 = alloca %struct.hfs_find_data, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.hfs_sb_info* @kzalloc(i32 24, i32 %13)
  store %struct.hfs_sb_info* %14, %struct.hfs_sb_info** %8, align 8
  %15 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %8, align 8
  %16 = icmp ne %struct.hfs_sb_info* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %143

20:                                               ; preds = %3
  %21 = load %struct.super_block*, %struct.super_block** %5, align 8
  %22 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %8, align 8
  %23 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %22, i32 0, i32 3
  store %struct.super_block* %21, %struct.super_block** %23, align 8
  %24 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %8, align 8
  %25 = load %struct.super_block*, %struct.super_block** %5, align 8
  %26 = getelementptr inbounds %struct.super_block, %struct.super_block* %25, i32 0, i32 5
  store %struct.hfs_sb_info* %24, %struct.hfs_sb_info** %26, align 8
  %27 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %8, align 8
  %28 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %27, i32 0, i32 2
  %29 = call i32 @spin_lock_init(i32* %28)
  %30 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %8, align 8
  %31 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %30, i32 0, i32 1
  %32 = load i32, i32* @flush_mdb, align 4
  %33 = call i32 @INIT_DELAYED_WORK(i32* %31, i32 %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %12, align 4
  %36 = load i8*, i8** %6, align 8
  %37 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %8, align 8
  %38 = call i32 @parse_options(i8* %36, %struct.hfs_sb_info* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %20
  %41 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %139

42:                                               ; preds = %20
  %43 = load %struct.super_block*, %struct.super_block** %5, align 8
  %44 = getelementptr inbounds %struct.super_block, %struct.super_block* %43, i32 0, i32 4
  store i32* @hfs_super_operations, i32** %44, align 8
  %45 = load i32, i32* @hfs_xattr_handlers, align 4
  %46 = load %struct.super_block*, %struct.super_block** %5, align 8
  %47 = getelementptr inbounds %struct.super_block, %struct.super_block* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @SB_NODIRATIME, align 4
  %49 = load %struct.super_block*, %struct.super_block** %5, align 8
  %50 = getelementptr inbounds %struct.super_block, %struct.super_block* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 8
  %53 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %8, align 8
  %54 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %53, i32 0, i32 0
  %55 = call i32 @mutex_init(i32* %54)
  %56 = load %struct.super_block*, %struct.super_block** %5, align 8
  %57 = call i32 @hfs_mdb_get(%struct.super_block* %56)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %42
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %60
  %64 = load %struct.super_block*, %struct.super_block** %5, align 8
  %65 = call i32 @hfs_mdb_name(%struct.super_block* %64)
  %66 = call i32 @pr_warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %63, %60
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %12, align 4
  br label %139

70:                                               ; preds = %42
  %71 = load %struct.super_block*, %struct.super_block** %5, align 8
  %72 = call %struct.TYPE_4__* @HFS_SB(%struct.super_block* %71)
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @hfs_find_init(i32 %74, %struct.hfs_find_data* %9)
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %12, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  br label %137

79:                                               ; preds = %70
  %80 = load %struct.super_block*, %struct.super_block** %5, align 8
  %81 = load i32, i32* @HFS_ROOT_CNID, align 4
  %82 = call i32 @hfs_cat_find_brec(%struct.super_block* %80, i32 %81, %struct.hfs_find_data* %9)
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* %12, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %105, label %85

85:                                               ; preds = %79
  %86 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %9, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = icmp ugt i64 %88, 4
  br i1 %89, label %94, label %90

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %9, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %90, %85
  %95 = load i32, i32* @EIO, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %12, align 4
  br label %139

97:                                               ; preds = %90
  %98 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %9, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %9, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %9, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @hfs_bnode_read(i32 %99, i32* %10, i32 %101, i32 %103)
  br label %105

105:                                              ; preds = %97, %79
  %106 = load i32, i32* %12, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %105
  %109 = call i32 @hfs_find_exit(%struct.hfs_find_data* %9)
  br label %137

110:                                              ; preds = %105
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %12, align 4
  %113 = load %struct.super_block*, %struct.super_block** %5, align 8
  %114 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %9, i32 0, i32 1
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = call %struct.inode* @hfs_iget(%struct.super_block* %113, i32* %116, i32* %10)
  store %struct.inode* %117, %struct.inode** %11, align 8
  %118 = call i32 @hfs_find_exit(%struct.hfs_find_data* %9)
  %119 = load %struct.inode*, %struct.inode** %11, align 8
  %120 = icmp ne %struct.inode* %119, null
  br i1 %120, label %122, label %121

121:                                              ; preds = %110
  br label %137

122:                                              ; preds = %110
  %123 = load %struct.super_block*, %struct.super_block** %5, align 8
  %124 = getelementptr inbounds %struct.super_block, %struct.super_block* %123, i32 0, i32 1
  store i32* @hfs_dentry_operations, i32** %124, align 8
  %125 = load i32, i32* @ENOMEM, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %12, align 4
  %127 = load %struct.inode*, %struct.inode** %11, align 8
  %128 = call i32 @d_make_root(%struct.inode* %127)
  %129 = load %struct.super_block*, %struct.super_block** %5, align 8
  %130 = getelementptr inbounds %struct.super_block, %struct.super_block* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  %131 = load %struct.super_block*, %struct.super_block** %5, align 8
  %132 = getelementptr inbounds %struct.super_block, %struct.super_block* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %122
  br label %137

136:                                              ; preds = %122
  store i32 0, i32* %4, align 4
  br label %143

137:                                              ; preds = %135, %121, %108, %78
  %138 = call i32 @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %139

139:                                              ; preds = %137, %94, %67, %40
  %140 = load %struct.super_block*, %struct.super_block** %5, align 8
  %141 = call i32 @hfs_mdb_put(%struct.super_block* %140)
  %142 = load i32, i32* %12, align 4
  store i32 %142, i32* %4, align 4
  br label %143

143:                                              ; preds = %139, %136, %17
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare dso_local %struct.hfs_sb_info* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @parse_options(i8*, %struct.hfs_sb_info*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @hfs_mdb_get(%struct.super_block*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @hfs_mdb_name(%struct.super_block*) #1

declare dso_local i32 @hfs_find_init(i32, %struct.hfs_find_data*) #1

declare dso_local %struct.TYPE_4__* @HFS_SB(%struct.super_block*) #1

declare dso_local i32 @hfs_cat_find_brec(%struct.super_block*, i32, %struct.hfs_find_data*) #1

declare dso_local i32 @hfs_bnode_read(i32, i32*, i32, i32) #1

declare dso_local i32 @hfs_find_exit(%struct.hfs_find_data*) #1

declare dso_local %struct.inode* @hfs_iget(%struct.super_block*, i32*, i32*) #1

declare dso_local i32 @d_make_root(%struct.inode*) #1

declare dso_local i32 @hfs_mdb_put(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
