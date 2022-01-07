; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_generic.c_proc_lookup_de.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_generic.c_proc_lookup_de.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.proc_dir_entry = type { i32 }

@proc_subdir_lock = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @proc_lookup_de(%struct.inode* %0, %struct.dentry* %1, %struct.proc_dir_entry* %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.proc_dir_entry*, align 8
  %8 = alloca %struct.inode*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.proc_dir_entry* %2, %struct.proc_dir_entry** %7, align 8
  %9 = call i32 @read_lock(i32* @proc_subdir_lock)
  %10 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %7, align 8
  %11 = load %struct.dentry*, %struct.dentry** %6, align 8
  %12 = getelementptr inbounds %struct.dentry, %struct.dentry* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.dentry*, %struct.dentry** %6, align 8
  %16 = getelementptr inbounds %struct.dentry, %struct.dentry* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.proc_dir_entry* @pde_subdir_find(%struct.proc_dir_entry* %10, i32 %14, i32 %18)
  store %struct.proc_dir_entry* %19, %struct.proc_dir_entry** %7, align 8
  %20 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %7, align 8
  %21 = icmp ne %struct.proc_dir_entry* %20, null
  br i1 %21, label %22, label %46

22:                                               ; preds = %3
  %23 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %7, align 8
  %24 = call i32 @pde_get(%struct.proc_dir_entry* %23)
  %25 = call i32 @read_unlock(i32* @proc_subdir_lock)
  %26 = load %struct.inode*, %struct.inode** %5, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %7, align 8
  %30 = call %struct.inode* @proc_get_inode(i32 %28, %struct.proc_dir_entry* %29)
  store %struct.inode* %30, %struct.inode** %8, align 8
  %31 = load %struct.inode*, %struct.inode** %8, align 8
  %32 = icmp ne %struct.inode* %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %22
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  %36 = call %struct.dentry* @ERR_PTR(i32 %35)
  store %struct.dentry* %36, %struct.dentry** %4, align 8
  br label %51

37:                                               ; preds = %22
  %38 = load %struct.dentry*, %struct.dentry** %6, align 8
  %39 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %7, align 8
  %40 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @d_set_d_op(%struct.dentry* %38, i32 %41)
  %43 = load %struct.inode*, %struct.inode** %8, align 8
  %44 = load %struct.dentry*, %struct.dentry** %6, align 8
  %45 = call %struct.dentry* @d_splice_alias(%struct.inode* %43, %struct.dentry* %44)
  store %struct.dentry* %45, %struct.dentry** %4, align 8
  br label %51

46:                                               ; preds = %3
  %47 = call i32 @read_unlock(i32* @proc_subdir_lock)
  %48 = load i32, i32* @ENOENT, align 4
  %49 = sub nsw i32 0, %48
  %50 = call %struct.dentry* @ERR_PTR(i32 %49)
  store %struct.dentry* %50, %struct.dentry** %4, align 8
  br label %51

51:                                               ; preds = %46, %37, %33
  %52 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %52
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local %struct.proc_dir_entry* @pde_subdir_find(%struct.proc_dir_entry*, i32, i32) #1

declare dso_local i32 @pde_get(%struct.proc_dir_entry*) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local %struct.inode* @proc_get_inode(i32, %struct.proc_dir_entry*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local i32 @d_set_d_op(%struct.dentry*, i32) #1

declare dso_local %struct.dentry* @d_splice_alias(%struct.inode*, %struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
