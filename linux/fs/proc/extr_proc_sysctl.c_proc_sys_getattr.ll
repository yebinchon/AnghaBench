; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_proc_sysctl.c_proc_sys_getattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_proc_sysctl.c_proc_sys_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { i32 }
%struct.kstat = type { i32 }
%struct.inode = type { i32 }
%struct.ctl_table_header = type { i32 }
%struct.ctl_table = type { i32 }
%struct.TYPE_2__ = type { %struct.ctl_table* }

@S_IFMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.path*, %struct.kstat*, i32, i32)* @proc_sys_getattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_sys_getattr(%struct.path* %0, %struct.kstat* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.path*, align 8
  %7 = alloca %struct.kstat*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.ctl_table_header*, align 8
  %12 = alloca %struct.ctl_table*, align 8
  store %struct.path* %0, %struct.path** %6, align 8
  store %struct.kstat* %1, %struct.kstat** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.path*, %struct.path** %6, align 8
  %14 = getelementptr inbounds %struct.path, %struct.path* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.inode* @d_inode(i32 %15)
  store %struct.inode* %16, %struct.inode** %10, align 8
  %17 = load %struct.inode*, %struct.inode** %10, align 8
  %18 = call %struct.ctl_table_header* @grab_header(%struct.inode* %17)
  store %struct.ctl_table_header* %18, %struct.ctl_table_header** %11, align 8
  %19 = load %struct.inode*, %struct.inode** %10, align 8
  %20 = call %struct.TYPE_2__* @PROC_I(%struct.inode* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.ctl_table*, %struct.ctl_table** %21, align 8
  store %struct.ctl_table* %22, %struct.ctl_table** %12, align 8
  %23 = load %struct.ctl_table_header*, %struct.ctl_table_header** %11, align 8
  %24 = call i64 @IS_ERR(%struct.ctl_table_header* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load %struct.ctl_table_header*, %struct.ctl_table_header** %11, align 8
  %28 = call i32 @PTR_ERR(%struct.ctl_table_header* %27)
  store i32 %28, i32* %5, align 4
  br label %50

29:                                               ; preds = %4
  %30 = load %struct.inode*, %struct.inode** %10, align 8
  %31 = load %struct.kstat*, %struct.kstat** %7, align 8
  %32 = call i32 @generic_fillattr(%struct.inode* %30, %struct.kstat* %31)
  %33 = load %struct.ctl_table*, %struct.ctl_table** %12, align 8
  %34 = icmp ne %struct.ctl_table* %33, null
  br i1 %34, label %35, label %47

35:                                               ; preds = %29
  %36 = load %struct.kstat*, %struct.kstat** %7, align 8
  %37 = getelementptr inbounds %struct.kstat, %struct.kstat* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @S_IFMT, align 4
  %40 = and i32 %38, %39
  %41 = load %struct.ctl_table*, %struct.ctl_table** %12, align 8
  %42 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %40, %43
  %45 = load %struct.kstat*, %struct.kstat** %7, align 8
  %46 = getelementptr inbounds %struct.kstat, %struct.kstat* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  br label %47

47:                                               ; preds = %35, %29
  %48 = load %struct.ctl_table_header*, %struct.ctl_table_header** %11, align 8
  %49 = call i32 @sysctl_head_finish(%struct.ctl_table_header* %48)
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %47, %26
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local %struct.inode* @d_inode(i32) #1

declare dso_local %struct.ctl_table_header* @grab_header(%struct.inode*) #1

declare dso_local %struct.TYPE_2__* @PROC_I(%struct.inode*) #1

declare dso_local i64 @IS_ERR(%struct.ctl_table_header*) #1

declare dso_local i32 @PTR_ERR(%struct.ctl_table_header*) #1

declare dso_local i32 @generic_fillattr(%struct.inode*, %struct.kstat*) #1

declare dso_local i32 @sysctl_head_finish(%struct.ctl_table_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
