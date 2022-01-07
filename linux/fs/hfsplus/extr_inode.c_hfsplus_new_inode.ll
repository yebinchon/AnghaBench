; ModuleID = '/home/carl/AnghaBench/linux/fs/hfsplus/extr_inode.c_hfsplus_new_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfsplus/extr_inode.c_hfsplus_new_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.inode = type { i32, %struct.TYPE_2__*, i32*, i32, i32*, i32, i32, i32, i64 }
%struct.TYPE_2__ = type { i32* }
%struct.hfsplus_sb_info = type { i32, i32, i32, i32 }
%struct.hfsplus_inode_info = type { i32, i32*, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i64, i64, i32, i32, i32, i32 }

@hfsplus_dir_inode_operations = common dso_local global i32 0, align 4
@hfsplus_dir_operations = common dso_local global i32 0, align 4
@hfsplus_file_inode_operations = common dso_local global i32 0, align 4
@hfsplus_file_operations = common dso_local global i32 0, align 4
@hfsplus_aops = common dso_local global i32 0, align 4
@page_symlink_inode_operations = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @hfsplus_new_inode(%struct.super_block* %0, %struct.inode* %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hfsplus_sb_info*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.hfsplus_inode_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.super_block*, %struct.super_block** %5, align 8
  %12 = call %struct.hfsplus_sb_info* @HFSPLUS_SB(%struct.super_block* %11)
  store %struct.hfsplus_sb_info* %12, %struct.hfsplus_sb_info** %8, align 8
  %13 = load %struct.super_block*, %struct.super_block** %5, align 8
  %14 = call %struct.inode* @new_inode(%struct.super_block* %13)
  store %struct.inode* %14, %struct.inode** %9, align 8
  %15 = load %struct.inode*, %struct.inode** %9, align 8
  %16 = icmp ne %struct.inode* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store %struct.inode* null, %struct.inode** %4, align 8
  br label %160

18:                                               ; preds = %3
  %19 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %8, align 8
  %20 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  %23 = sext i32 %21 to i64
  %24 = load %struct.inode*, %struct.inode** %9, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 8
  store i64 %23, i64* %25, align 8
  %26 = load %struct.inode*, %struct.inode** %9, align 8
  %27 = load %struct.inode*, %struct.inode** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @inode_init_owner(%struct.inode* %26, %struct.inode* %27, i32 %28)
  %30 = load %struct.inode*, %struct.inode** %9, align 8
  %31 = call i32 @set_nlink(%struct.inode* %30, i32 1)
  %32 = load %struct.inode*, %struct.inode** %9, align 8
  %33 = call i32 @current_time(%struct.inode* %32)
  %34 = load %struct.inode*, %struct.inode** %9, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 5
  store i32 %33, i32* %35, align 8
  %36 = load %struct.inode*, %struct.inode** %9, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 6
  store i32 %33, i32* %37, align 4
  %38 = load %struct.inode*, %struct.inode** %9, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 7
  store i32 %33, i32* %39, align 8
  %40 = load %struct.inode*, %struct.inode** %9, align 8
  %41 = call %struct.hfsplus_inode_info* @HFSPLUS_I(%struct.inode* %40)
  store %struct.hfsplus_inode_info* %41, %struct.hfsplus_inode_info** %10, align 8
  %42 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %10, align 8
  %43 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %42, i32 0, i32 17
  %44 = call i32 @INIT_LIST_HEAD(i32* %43)
  %45 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %10, align 8
  %46 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %45, i32 0, i32 16
  %47 = call i32 @spin_lock_init(i32* %46)
  %48 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %10, align 8
  %49 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %48, i32 0, i32 15
  %50 = call i32 @mutex_init(i32* %49)
  %51 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %10, align 8
  %52 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %51, i32 0, i32 14
  %53 = call i32 @atomic_set(i32* %52, i32 0)
  %54 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %10, align 8
  %55 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %54, i32 0, i32 13
  store i64 0, i64* %55, align 8
  %56 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %10, align 8
  %57 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %56, i32 0, i32 12
  store i64 0, i64* %57, align 8
  %58 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %10, align 8
  %59 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %58, i32 0, i32 11
  store i64 0, i64* %59, align 8
  %60 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %10, align 8
  %61 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %60, i32 0, i32 10
  store i64 0, i64* %61, align 8
  %62 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %10, align 8
  %63 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %62, i32 0, i32 9
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @memset(i32 %64, i32 0, i32 4)
  %66 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %10, align 8
  %67 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %66, i32 0, i32 8
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @memset(i32 %68, i32 0, i32 4)
  %70 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %10, align 8
  %71 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %70, i32 0, i32 7
  store i64 0, i64* %71, align 8
  %72 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %10, align 8
  %73 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %72, i32 0, i32 6
  store i64 0, i64* %73, align 8
  %74 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %10, align 8
  %75 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %74, i32 0, i32 5
  store i64 0, i64* %75, align 8
  %76 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %10, align 8
  %77 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %76, i32 0, i32 4
  store i64 0, i64* %77, align 8
  %78 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %10, align 8
  %79 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %78, i32 0, i32 3
  store i64 0, i64* %79, align 8
  %80 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %10, align 8
  %81 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %80, i32 0, i32 2
  store i64 0, i64* %81, align 8
  %82 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %10, align 8
  %83 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %82, i32 0, i32 1
  store i32* null, i32** %83, align 8
  %84 = load %struct.inode*, %struct.inode** %9, align 8
  %85 = getelementptr inbounds %struct.inode, %struct.inode* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = call i64 @S_ISDIR(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %18
  %90 = load %struct.inode*, %struct.inode** %9, align 8
  %91 = getelementptr inbounds %struct.inode, %struct.inode* %90, i32 0, i32 0
  store i32 2, i32* %91, align 8
  %92 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %8, align 8
  %93 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 4
  %96 = load %struct.inode*, %struct.inode** %9, align 8
  %97 = getelementptr inbounds %struct.inode, %struct.inode* %96, i32 0, i32 2
  store i32* @hfsplus_dir_inode_operations, i32** %97, align 8
  %98 = load %struct.inode*, %struct.inode** %9, align 8
  %99 = getelementptr inbounds %struct.inode, %struct.inode* %98, i32 0, i32 4
  store i32* @hfsplus_dir_operations, i32** %99, align 8
  br label %152

100:                                              ; preds = %18
  %101 = load %struct.inode*, %struct.inode** %9, align 8
  %102 = getelementptr inbounds %struct.inode, %struct.inode* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = call i64 @S_ISREG(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %124

106:                                              ; preds = %100
  %107 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %8, align 8
  %108 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %108, align 4
  %111 = load %struct.inode*, %struct.inode** %9, align 8
  %112 = getelementptr inbounds %struct.inode, %struct.inode* %111, i32 0, i32 2
  store i32* @hfsplus_file_inode_operations, i32** %112, align 8
  %113 = load %struct.inode*, %struct.inode** %9, align 8
  %114 = getelementptr inbounds %struct.inode, %struct.inode* %113, i32 0, i32 4
  store i32* @hfsplus_file_operations, i32** %114, align 8
  %115 = load %struct.inode*, %struct.inode** %9, align 8
  %116 = getelementptr inbounds %struct.inode, %struct.inode* %115, i32 0, i32 1
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  store i32* @hfsplus_aops, i32** %118, align 8
  %119 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %8, align 8
  %120 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %10, align 8
  %123 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 8
  br label %151

124:                                              ; preds = %100
  %125 = load %struct.inode*, %struct.inode** %9, align 8
  %126 = getelementptr inbounds %struct.inode, %struct.inode* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = call i64 @S_ISLNK(i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %145

130:                                              ; preds = %124
  %131 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %8, align 8
  %132 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %132, align 4
  %135 = load %struct.inode*, %struct.inode** %9, align 8
  %136 = getelementptr inbounds %struct.inode, %struct.inode* %135, i32 0, i32 2
  store i32* @page_symlink_inode_operations, i32** %136, align 8
  %137 = load %struct.inode*, %struct.inode** %9, align 8
  %138 = call i32 @inode_nohighmem(%struct.inode* %137)
  %139 = load %struct.inode*, %struct.inode** %9, align 8
  %140 = getelementptr inbounds %struct.inode, %struct.inode* %139, i32 0, i32 1
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 0
  store i32* @hfsplus_aops, i32** %142, align 8
  %143 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %10, align 8
  %144 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %143, i32 0, i32 0
  store i32 1, i32* %144, align 8
  br label %150

145:                                              ; preds = %124
  %146 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %8, align 8
  %147 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %147, align 4
  br label %150

150:                                              ; preds = %145, %130
  br label %151

151:                                              ; preds = %150, %106
  br label %152

152:                                              ; preds = %151, %89
  %153 = load %struct.inode*, %struct.inode** %9, align 8
  %154 = call i32 @insert_inode_hash(%struct.inode* %153)
  %155 = load %struct.inode*, %struct.inode** %9, align 8
  %156 = call i32 @mark_inode_dirty(%struct.inode* %155)
  %157 = load %struct.super_block*, %struct.super_block** %5, align 8
  %158 = call i32 @hfsplus_mark_mdb_dirty(%struct.super_block* %157)
  %159 = load %struct.inode*, %struct.inode** %9, align 8
  store %struct.inode* %159, %struct.inode** %4, align 8
  br label %160

160:                                              ; preds = %152, %17
  %161 = load %struct.inode*, %struct.inode** %4, align 8
  ret %struct.inode* %161
}

declare dso_local %struct.hfsplus_sb_info* @HFSPLUS_SB(%struct.super_block*) #1

declare dso_local %struct.inode* @new_inode(%struct.super_block*) #1

declare dso_local i32 @inode_init_owner(%struct.inode*, %struct.inode*, i32) #1

declare dso_local i32 @set_nlink(%struct.inode*, i32) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local %struct.hfsplus_inode_info* @HFSPLUS_I(%struct.inode*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @inode_nohighmem(%struct.inode*) #1

declare dso_local i32 @insert_inode_hash(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @hfsplus_mark_mdb_dirty(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
