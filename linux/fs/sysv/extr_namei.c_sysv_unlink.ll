; ModuleID = '/home/carl/AnghaBench/linux/fs/sysv/extr_namei.c_sysv_unlink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/sysv/extr_namei.c_sysv_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }
%struct.page = type { i32 }
%struct.sysv_dir_entry = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*)* @sysv_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysv_unlink(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca %struct.sysv_dir_entry*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %9 = load %struct.dentry*, %struct.dentry** %4, align 8
  %10 = call %struct.inode* @d_inode(%struct.dentry* %9)
  store %struct.inode* %10, %struct.inode** %5, align 8
  %11 = load i32, i32* @ENOENT, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %8, align 4
  %13 = load %struct.dentry*, %struct.dentry** %4, align 8
  %14 = call %struct.sysv_dir_entry* @sysv_find_entry(%struct.dentry* %13, %struct.page** %6)
  store %struct.sysv_dir_entry* %14, %struct.sysv_dir_entry** %7, align 8
  %15 = load %struct.sysv_dir_entry*, %struct.sysv_dir_entry** %7, align 8
  %16 = icmp ne %struct.sysv_dir_entry* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %33

18:                                               ; preds = %2
  %19 = load %struct.sysv_dir_entry*, %struct.sysv_dir_entry** %7, align 8
  %20 = load %struct.page*, %struct.page** %6, align 8
  %21 = call i32 @sysv_delete_entry(%struct.sysv_dir_entry* %19, %struct.page* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %33

25:                                               ; preds = %18
  %26 = load %struct.inode*, %struct.inode** %3, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.inode*, %struct.inode** %5, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.inode*, %struct.inode** %5, align 8
  %32 = call i32 @inode_dec_link_count(%struct.inode* %31)
  br label %33

33:                                               ; preds = %25, %24, %17
  %34 = load i32, i32* %8, align 4
  ret i32 %34
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local %struct.sysv_dir_entry* @sysv_find_entry(%struct.dentry*, %struct.page**) #1

declare dso_local i32 @sysv_delete_entry(%struct.sysv_dir_entry*, %struct.page*) #1

declare dso_local i32 @inode_dec_link_count(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
