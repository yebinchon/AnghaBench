; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_dir.c_gfs2_dir_read.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_dir.c_gfs2_dir_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dir_context = type { i32 }
%struct.file_ra_state = type { i32 }
%struct.gfs2_inode = type { i32, i64, i64 }
%struct.gfs2_sbd = type { i32 }
%struct.dirent_gather = type { i64, %struct.gfs2_dirent** }
%struct.gfs2_dirent = type { i32 }
%struct.buffer_head = type { i32, i32 }

@GFS2_DIF_EXHASH = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@gfs2_dirent_gather = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"Number of entries corrupt in dir %llu, ip->i_entries (%u) != g.offset (%u)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_dir_read(%struct.inode* %0, %struct.dir_context* %1, %struct.file_ra_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dir_context*, align 8
  %7 = alloca %struct.file_ra_state*, align 8
  %8 = alloca %struct.gfs2_inode*, align 8
  %9 = alloca %struct.gfs2_sbd*, align 8
  %10 = alloca %struct.dirent_gather, align 8
  %11 = alloca %struct.gfs2_dirent**, align 8
  %12 = alloca %struct.gfs2_dirent*, align 8
  %13 = alloca %struct.buffer_head*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dir_context* %1, %struct.dir_context** %6, align 8
  store %struct.file_ra_state* %2, %struct.file_ra_state** %7, align 8
  %16 = load %struct.inode*, %struct.inode** %5, align 8
  %17 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %16)
  store %struct.gfs2_inode* %17, %struct.gfs2_inode** %8, align 8
  %18 = load %struct.inode*, %struct.inode** %5, align 8
  %19 = call %struct.gfs2_sbd* @GFS2_SB(%struct.inode* %18)
  store %struct.gfs2_sbd* %19, %struct.gfs2_sbd** %9, align 8
  store i32 0, i32* %14, align 4
  %20 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %21 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %127

25:                                               ; preds = %3
  %26 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %27 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @GFS2_DIF_EXHASH, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = load %struct.inode*, %struct.inode** %5, align 8
  %34 = load %struct.dir_context*, %struct.dir_context** %6, align 8
  %35 = load %struct.file_ra_state*, %struct.file_ra_state** %7, align 8
  %36 = call i32 @dir_e_read(%struct.inode* %33, %struct.dir_context* %34, %struct.file_ra_state* %35)
  store i32 %36, i32* %4, align 4
  br label %127

37:                                               ; preds = %25
  %38 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %39 = call i32 @gfs2_is_stuffed(%struct.gfs2_inode* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %37
  %42 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %43 = call i32 @gfs2_consist_inode(%struct.gfs2_inode* %42)
  %44 = load i32, i32* @EIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %127

46:                                               ; preds = %37
  %47 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %48 = call i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode* %47, %struct.buffer_head** %13)
  store i32 %48, i32* %15, align 4
  %49 = load i32, i32* %15, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* %15, align 4
  store i32 %52, i32* %4, align 4
  br label %127

53:                                               ; preds = %46
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %15, align 4
  %56 = load i32, i32* @GFP_NOFS, align 4
  %57 = call %struct.gfs2_dirent** @kmalloc_array(i32 96, i32 8, i32 %56)
  store %struct.gfs2_dirent** %57, %struct.gfs2_dirent*** %11, align 8
  %58 = load %struct.gfs2_dirent**, %struct.gfs2_dirent*** %11, align 8
  %59 = icmp ne %struct.gfs2_dirent** %58, null
  br i1 %59, label %60, label %119

60:                                               ; preds = %53
  %61 = load %struct.gfs2_dirent**, %struct.gfs2_dirent*** %11, align 8
  %62 = getelementptr inbounds %struct.dirent_gather, %struct.dirent_gather* %10, i32 0, i32 1
  store %struct.gfs2_dirent** %61, %struct.gfs2_dirent*** %62, align 8
  %63 = getelementptr inbounds %struct.dirent_gather, %struct.dirent_gather* %10, i32 0, i32 0
  store i64 0, i64* %63, align 8
  %64 = load %struct.inode*, %struct.inode** %5, align 8
  %65 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %66 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %69 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @gfs2_dirent_gather, align 4
  %72 = call %struct.gfs2_dirent* @gfs2_dirent_scan(%struct.inode* %64, i32 %67, i32 %70, i32 %71, i32* null, %struct.dirent_gather* %10)
  store %struct.gfs2_dirent* %72, %struct.gfs2_dirent** %12, align 8
  %73 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %12, align 8
  %74 = call i64 @IS_ERR(%struct.gfs2_dirent* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %60
  %77 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %12, align 8
  %78 = call i32 @PTR_ERR(%struct.gfs2_dirent* %77)
  store i32 %78, i32* %15, align 4
  br label %116

79:                                               ; preds = %60
  %80 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %81 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds %struct.dirent_gather, %struct.dirent_gather* %10, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %82, %84
  br i1 %85, label %86, label %101

86:                                               ; preds = %79
  %87 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %9, align 8
  %88 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %89 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %92 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds %struct.dirent_gather, %struct.dirent_gather* %10, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @fs_warn(%struct.gfs2_sbd* %87, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i64 %90, i64 %93, i64 %95)
  %97 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %98 = call i32 @gfs2_consist_inode(%struct.gfs2_inode* %97)
  %99 = load i32, i32* @EIO, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %15, align 4
  br label %116

101:                                              ; preds = %79
  %102 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %9, align 8
  %103 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %104 = load %struct.gfs2_dirent**, %struct.gfs2_dirent*** %11, align 8
  %105 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %106 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @gfs2_set_cookies(%struct.gfs2_sbd* %102, %struct.buffer_head* %103, i32 0, %struct.gfs2_dirent** %104, i64 %107)
  %109 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %110 = load %struct.dir_context*, %struct.dir_context** %6, align 8
  %111 = load %struct.gfs2_dirent**, %struct.gfs2_dirent*** %11, align 8
  %112 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %113 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @do_filldir_main(%struct.gfs2_inode* %109, %struct.dir_context* %110, %struct.gfs2_dirent** %111, i64 %114, i32 0, i32* %14)
  store i32 %115, i32* %15, align 4
  br label %116

116:                                              ; preds = %101, %86, %76
  %117 = load %struct.gfs2_dirent**, %struct.gfs2_dirent*** %11, align 8
  %118 = call i32 @kfree(%struct.gfs2_dirent** %117)
  br label %119

119:                                              ; preds = %116, %53
  %120 = load i32, i32* %15, align 4
  %121 = icmp sgt i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %119
  store i32 0, i32* %15, align 4
  br label %123

123:                                              ; preds = %122, %119
  %124 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %125 = call i32 @brelse(%struct.buffer_head* %124)
  %126 = load i32, i32* %15, align 4
  store i32 %126, i32* %4, align 4
  br label %127

127:                                              ; preds = %123, %51, %41, %32, %24
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local %struct.gfs2_sbd* @GFS2_SB(%struct.inode*) #1

declare dso_local i32 @dir_e_read(%struct.inode*, %struct.dir_context*, %struct.file_ra_state*) #1

declare dso_local i32 @gfs2_is_stuffed(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_consist_inode(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode*, %struct.buffer_head**) #1

declare dso_local %struct.gfs2_dirent** @kmalloc_array(i32, i32, i32) #1

declare dso_local %struct.gfs2_dirent* @gfs2_dirent_scan(%struct.inode*, i32, i32, i32, i32*, %struct.dirent_gather*) #1

declare dso_local i64 @IS_ERR(%struct.gfs2_dirent*) #1

declare dso_local i32 @PTR_ERR(%struct.gfs2_dirent*) #1

declare dso_local i32 @fs_warn(%struct.gfs2_sbd*, i8*, i64, i64, i64) #1

declare dso_local i32 @gfs2_set_cookies(%struct.gfs2_sbd*, %struct.buffer_head*, i32, %struct.gfs2_dirent**, i64) #1

declare dso_local i32 @do_filldir_main(%struct.gfs2_inode*, %struct.dir_context*, %struct.gfs2_dirent**, i64, i32, i32*) #1

declare dso_local i32 @kfree(%struct.gfs2_dirent**) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
