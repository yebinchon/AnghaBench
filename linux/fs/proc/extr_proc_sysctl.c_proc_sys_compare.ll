; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_proc_sysctl.c_proc_sys_compare.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_proc_sysctl.c_proc_sys_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.qstr = type { i32, i32 }
%struct.ctl_table_header = type { i32 }
%struct.inode = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, i32, i8*, %struct.qstr*)* @proc_sys_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_sys_compare(%struct.dentry* %0, i32 %1, i8* %2, %struct.qstr* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.qstr*, align 8
  %10 = alloca %struct.ctl_table_header*, align 8
  %11 = alloca %struct.inode*, align 8
  store %struct.dentry* %0, %struct.dentry** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store %struct.qstr* %3, %struct.qstr** %9, align 8
  %12 = load %struct.dentry*, %struct.dentry** %6, align 8
  %13 = call %struct.inode* @d_inode_rcu(%struct.dentry* %12)
  store %struct.inode* %13, %struct.inode** %11, align 8
  %14 = load %struct.inode*, %struct.inode** %11, align 8
  %15 = icmp ne %struct.inode* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %49

17:                                               ; preds = %4
  %18 = load %struct.qstr*, %struct.qstr** %9, align 8
  %19 = getelementptr inbounds %struct.qstr, %struct.qstr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 1, i32* %5, align 4
  br label %49

24:                                               ; preds = %17
  %25 = load %struct.qstr*, %struct.qstr** %9, align 8
  %26 = getelementptr inbounds %struct.qstr, %struct.qstr* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i8*, i8** %8, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i64 @memcmp(i32 %27, i8* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  store i32 1, i32* %5, align 4
  br label %49

33:                                               ; preds = %24
  %34 = load %struct.inode*, %struct.inode** %11, align 8
  %35 = call %struct.TYPE_2__* @PROC_I(%struct.inode* %34)
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.ctl_table_header* @rcu_dereference(i32 %37)
  store %struct.ctl_table_header* %38, %struct.ctl_table_header** %10, align 8
  %39 = load %struct.ctl_table_header*, %struct.ctl_table_header** %10, align 8
  %40 = icmp ne %struct.ctl_table_header* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %33
  %42 = load %struct.ctl_table_header*, %struct.ctl_table_header** %10, align 8
  %43 = call i32 @sysctl_is_seen(%struct.ctl_table_header* %42)
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  br label %46

46:                                               ; preds = %41, %33
  %47 = phi i1 [ true, %33 ], [ %45, %41 ]
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %46, %32, %23, %16
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local %struct.inode* @d_inode_rcu(%struct.dentry*) #1

declare dso_local i64 @memcmp(i32, i8*, i32) #1

declare dso_local %struct.ctl_table_header* @rcu_dereference(i32) #1

declare dso_local %struct.TYPE_2__* @PROC_I(%struct.inode*) #1

declare dso_local i32 @sysctl_is_seen(%struct.ctl_table_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
