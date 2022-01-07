; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_proc_sysctl.c_proc_sys_make_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_proc_sysctl.c_proc_sys_make_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32*, i32*, i32, i32, i32, i32, i32 }
%struct.super_block = type { i32 }
%struct.ctl_table_header = type { i32, i32, i32, %struct.ctl_table_root* }
%struct.ctl_table_root = type { i32 (%struct.ctl_table_header*, %struct.ctl_table*, i32*, i32*)* }
%struct.ctl_table = type { i32 }
%struct.proc_inode = type { i32, %struct.ctl_table*, %struct.ctl_table_header* }

@ENOMEM = common dso_local global i32 0, align 4
@sysctl_lock = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@proc_sys_inode_operations = common dso_local global i32 0, align 4
@proc_sys_file_operations = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@proc_sys_dir_operations = common dso_local global i32 0, align 4
@proc_sys_dir_file_operations = common dso_local global i32 0, align 4
@GLOBAL_ROOT_UID = common dso_local global i32 0, align 4
@GLOBAL_ROOT_GID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* (%struct.super_block*, %struct.ctl_table_header*, %struct.ctl_table*)* @proc_sys_make_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @proc_sys_make_inode(%struct.super_block* %0, %struct.ctl_table_header* %1, %struct.ctl_table* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.ctl_table_header*, align 8
  %7 = alloca %struct.ctl_table*, align 8
  %8 = alloca %struct.ctl_table_root*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.proc_inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.ctl_table_header* %1, %struct.ctl_table_header** %6, align 8
  store %struct.ctl_table* %2, %struct.ctl_table** %7, align 8
  %11 = load %struct.ctl_table_header*, %struct.ctl_table_header** %6, align 8
  %12 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %11, i32 0, i32 3
  %13 = load %struct.ctl_table_root*, %struct.ctl_table_root** %12, align 8
  store %struct.ctl_table_root* %13, %struct.ctl_table_root** %8, align 8
  %14 = load %struct.super_block*, %struct.super_block** %5, align 8
  %15 = call %struct.inode* @new_inode(%struct.super_block* %14)
  store %struct.inode* %15, %struct.inode** %9, align 8
  %16 = load %struct.inode*, %struct.inode** %9, align 8
  %17 = icmp ne %struct.inode* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.inode* @ERR_PTR(i32 %20)
  store %struct.inode* %21, %struct.inode** %4, align 8
  br label %128

22:                                               ; preds = %3
  %23 = call i32 (...) @get_next_ino()
  %24 = load %struct.inode*, %struct.inode** %9, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 8
  store i32 %23, i32* %25, align 8
  %26 = load %struct.inode*, %struct.inode** %9, align 8
  %27 = call %struct.proc_inode* @PROC_I(%struct.inode* %26)
  store %struct.proc_inode* %27, %struct.proc_inode** %10, align 8
  %28 = call i32 @spin_lock(i32* @sysctl_lock)
  %29 = load %struct.ctl_table_header*, %struct.ctl_table_header** %6, align 8
  %30 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %22
  %35 = call i32 @spin_unlock(i32* @sysctl_lock)
  %36 = load %struct.inode*, %struct.inode** %9, align 8
  %37 = call i32 @iput(%struct.inode* %36)
  %38 = load i32, i32* @ENOENT, align 4
  %39 = sub nsw i32 0, %38
  %40 = call %struct.inode* @ERR_PTR(i32 %39)
  store %struct.inode* %40, %struct.inode** %4, align 8
  br label %128

41:                                               ; preds = %22
  %42 = load %struct.ctl_table_header*, %struct.ctl_table_header** %6, align 8
  %43 = load %struct.proc_inode*, %struct.proc_inode** %10, align 8
  %44 = getelementptr inbounds %struct.proc_inode, %struct.proc_inode* %43, i32 0, i32 2
  store %struct.ctl_table_header* %42, %struct.ctl_table_header** %44, align 8
  %45 = load %struct.ctl_table*, %struct.ctl_table** %7, align 8
  %46 = load %struct.proc_inode*, %struct.proc_inode** %10, align 8
  %47 = getelementptr inbounds %struct.proc_inode, %struct.proc_inode* %46, i32 0, i32 1
  store %struct.ctl_table* %45, %struct.ctl_table** %47, align 8
  %48 = load %struct.proc_inode*, %struct.proc_inode** %10, align 8
  %49 = getelementptr inbounds %struct.proc_inode, %struct.proc_inode* %48, i32 0, i32 0
  %50 = load %struct.ctl_table_header*, %struct.ctl_table_header** %6, align 8
  %51 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %50, i32 0, i32 1
  %52 = call i32 @hlist_add_head_rcu(i32* %49, i32* %51)
  %53 = load %struct.ctl_table_header*, %struct.ctl_table_header** %6, align 8
  %54 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 8
  %57 = call i32 @spin_unlock(i32* @sysctl_lock)
  %58 = load %struct.inode*, %struct.inode** %9, align 8
  %59 = call i32 @current_time(%struct.inode* %58)
  %60 = load %struct.inode*, %struct.inode** %9, align 8
  %61 = getelementptr inbounds %struct.inode, %struct.inode* %60, i32 0, i32 5
  store i32 %59, i32* %61, align 4
  %62 = load %struct.inode*, %struct.inode** %9, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 6
  store i32 %59, i32* %63, align 8
  %64 = load %struct.inode*, %struct.inode** %9, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 7
  store i32 %59, i32* %65, align 4
  %66 = load %struct.ctl_table*, %struct.ctl_table** %7, align 8
  %67 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.inode*, %struct.inode** %9, align 8
  %70 = getelementptr inbounds %struct.inode, %struct.inode* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 8
  %71 = load %struct.ctl_table*, %struct.ctl_table** %7, align 8
  %72 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @S_ISDIR(i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %86, label %76

76:                                               ; preds = %41
  %77 = load i32, i32* @S_IFREG, align 4
  %78 = load %struct.inode*, %struct.inode** %9, align 8
  %79 = getelementptr inbounds %struct.inode, %struct.inode* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 8
  %82 = load %struct.inode*, %struct.inode** %9, align 8
  %83 = getelementptr inbounds %struct.inode, %struct.inode* %82, i32 0, i32 3
  store i32* @proc_sys_inode_operations, i32** %83, align 8
  %84 = load %struct.inode*, %struct.inode** %9, align 8
  %85 = getelementptr inbounds %struct.inode, %struct.inode* %84, i32 0, i32 2
  store i32* @proc_sys_file_operations, i32** %85, align 8
  br label %103

86:                                               ; preds = %41
  %87 = load i32, i32* @S_IFDIR, align 4
  %88 = load %struct.inode*, %struct.inode** %9, align 8
  %89 = getelementptr inbounds %struct.inode, %struct.inode* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 8
  %92 = load %struct.inode*, %struct.inode** %9, align 8
  %93 = getelementptr inbounds %struct.inode, %struct.inode* %92, i32 0, i32 3
  store i32* @proc_sys_dir_operations, i32** %93, align 8
  %94 = load %struct.inode*, %struct.inode** %9, align 8
  %95 = getelementptr inbounds %struct.inode, %struct.inode* %94, i32 0, i32 2
  store i32* @proc_sys_dir_file_operations, i32** %95, align 8
  %96 = load %struct.ctl_table_header*, %struct.ctl_table_header** %6, align 8
  %97 = call i64 @is_empty_dir(%struct.ctl_table_header* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %86
  %100 = load %struct.inode*, %struct.inode** %9, align 8
  %101 = call i32 @make_empty_dir_inode(%struct.inode* %100)
  br label %102

102:                                              ; preds = %99, %86
  br label %103

103:                                              ; preds = %102, %76
  %104 = load %struct.ctl_table_root*, %struct.ctl_table_root** %8, align 8
  %105 = getelementptr inbounds %struct.ctl_table_root, %struct.ctl_table_root* %104, i32 0, i32 0
  %106 = load i32 (%struct.ctl_table_header*, %struct.ctl_table*, i32*, i32*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*, i32*, i32*)** %105, align 8
  %107 = icmp ne i32 (%struct.ctl_table_header*, %struct.ctl_table*, i32*, i32*)* %106, null
  br i1 %107, label %108, label %119

108:                                              ; preds = %103
  %109 = load %struct.ctl_table_root*, %struct.ctl_table_root** %8, align 8
  %110 = getelementptr inbounds %struct.ctl_table_root, %struct.ctl_table_root* %109, i32 0, i32 0
  %111 = load i32 (%struct.ctl_table_header*, %struct.ctl_table*, i32*, i32*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*, i32*, i32*)** %110, align 8
  %112 = load %struct.ctl_table_header*, %struct.ctl_table_header** %6, align 8
  %113 = load %struct.ctl_table*, %struct.ctl_table** %7, align 8
  %114 = load %struct.inode*, %struct.inode** %9, align 8
  %115 = getelementptr inbounds %struct.inode, %struct.inode* %114, i32 0, i32 1
  %116 = load %struct.inode*, %struct.inode** %9, align 8
  %117 = getelementptr inbounds %struct.inode, %struct.inode* %116, i32 0, i32 0
  %118 = call i32 %111(%struct.ctl_table_header* %112, %struct.ctl_table* %113, i32* %115, i32* %117)
  br label %126

119:                                              ; preds = %103
  %120 = load i32, i32* @GLOBAL_ROOT_UID, align 4
  %121 = load %struct.inode*, %struct.inode** %9, align 8
  %122 = getelementptr inbounds %struct.inode, %struct.inode* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  %123 = load i32, i32* @GLOBAL_ROOT_GID, align 4
  %124 = load %struct.inode*, %struct.inode** %9, align 8
  %125 = getelementptr inbounds %struct.inode, %struct.inode* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 8
  br label %126

126:                                              ; preds = %119, %108
  %127 = load %struct.inode*, %struct.inode** %9, align 8
  store %struct.inode* %127, %struct.inode** %4, align 8
  br label %128

128:                                              ; preds = %126, %34, %18
  %129 = load %struct.inode*, %struct.inode** %4, align 8
  ret %struct.inode* %129
}

declare dso_local %struct.inode* @new_inode(%struct.super_block*) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local i32 @get_next_ino(...) #1

declare dso_local %struct.proc_inode* @PROC_I(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @hlist_add_head_rcu(i32*, i32*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i64 @is_empty_dir(%struct.ctl_table_header*) #1

declare dso_local i32 @make_empty_dir_inode(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
