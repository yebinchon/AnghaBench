; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_proc_sysctl.c_proc_sys_poll.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_proc_sysctl.c_proc_sys_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i64 }
%struct.inode = type { i32 }
%struct.ctl_table_header = type { i32 }
%struct.ctl_table = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.ctl_table* }

@DEFAULT_POLLMASK = common dso_local global i32 0, align 4
@EPOLLERR = common dso_local global i32 0, align 4
@EPOLLHUP = common dso_local global i32 0, align 4
@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@EPOLLPRI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @proc_sys_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_sys_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.ctl_table_header*, align 8
  %8 = alloca %struct.ctl_table*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.file*, %struct.file** %4, align 8
  %12 = call %struct.inode* @file_inode(%struct.file* %11)
  store %struct.inode* %12, %struct.inode** %6, align 8
  %13 = load %struct.inode*, %struct.inode** %6, align 8
  %14 = call %struct.ctl_table_header* @grab_header(%struct.inode* %13)
  store %struct.ctl_table_header* %14, %struct.ctl_table_header** %7, align 8
  %15 = load %struct.inode*, %struct.inode** %6, align 8
  %16 = call %struct.TYPE_4__* @PROC_I(%struct.inode* %15)
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.ctl_table*, %struct.ctl_table** %17, align 8
  store %struct.ctl_table* %18, %struct.ctl_table** %8, align 8
  %19 = load i32, i32* @DEFAULT_POLLMASK, align 4
  store i32 %19, i32* %9, align 4
  %20 = load %struct.ctl_table_header*, %struct.ctl_table_header** %7, align 8
  %21 = call i64 @IS_ERR(%struct.ctl_table_header* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load i32, i32* @EPOLLERR, align 4
  %25 = load i32, i32* @EPOLLHUP, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %3, align 4
  br label %76

27:                                               ; preds = %2
  %28 = load %struct.ctl_table*, %struct.ctl_table** %8, align 8
  %29 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  br label %72

33:                                               ; preds = %27
  %34 = load %struct.ctl_table*, %struct.ctl_table** %8, align 8
  %35 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = icmp ne %struct.TYPE_3__* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  br label %72

39:                                               ; preds = %33
  %40 = load %struct.file*, %struct.file** %4, align 8
  %41 = getelementptr inbounds %struct.file, %struct.file* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %10, align 8
  %43 = load %struct.file*, %struct.file** %4, align 8
  %44 = load %struct.ctl_table*, %struct.ctl_table** %8, align 8
  %45 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @poll_wait(%struct.file* %43, i32* %47, i32* %48)
  %50 = load i64, i64* %10, align 8
  %51 = load %struct.ctl_table*, %struct.ctl_table** %8, align 8
  %52 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = call i64 @atomic_read(i32* %54)
  %56 = icmp ne i64 %50, %55
  br i1 %56, label %57, label %71

57:                                               ; preds = %39
  %58 = load %struct.ctl_table*, %struct.ctl_table** %8, align 8
  %59 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %58, i32 0, i32 0
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = call i64 @proc_sys_poll_event(%struct.TYPE_3__* %60)
  %62 = load %struct.file*, %struct.file** %4, align 8
  %63 = getelementptr inbounds %struct.file, %struct.file* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load i32, i32* @EPOLLIN, align 4
  %65 = load i32, i32* @EPOLLRDNORM, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @EPOLLERR, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @EPOLLPRI, align 4
  %70 = or i32 %68, %69
  store i32 %70, i32* %9, align 4
  br label %71

71:                                               ; preds = %57, %39
  br label %72

72:                                               ; preds = %71, %38, %32
  %73 = load %struct.ctl_table_header*, %struct.ctl_table_header** %7, align 8
  %74 = call i32 @sysctl_head_finish(%struct.ctl_table_header* %73)
  %75 = load i32, i32* %9, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %72, %23
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local %struct.ctl_table_header* @grab_header(%struct.inode*) #1

declare dso_local %struct.TYPE_4__* @PROC_I(%struct.inode*) #1

declare dso_local i64 @IS_ERR(%struct.ctl_table_header*) #1

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @proc_sys_poll_event(%struct.TYPE_3__*) #1

declare dso_local i32 @sysctl_head_finish(%struct.ctl_table_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
