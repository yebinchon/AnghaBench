; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_proc_sysctl.c_sysctl_follow_link.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_proc_sysctl.c_sysctl_follow_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_table_header = type { i32 }
%struct.ctl_table = type { i8*, %struct.ctl_table_root* }
%struct.ctl_table_root = type { i32 }
%struct.ctl_table_set = type { i32 }
%struct.ctl_dir = type { i32 }

@sysctl_lock = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctl_table_header**, %struct.ctl_table**)* @sysctl_follow_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysctl_follow_link(%struct.ctl_table_header** %0, %struct.ctl_table** %1) #0 {
  %3 = alloca %struct.ctl_table_header**, align 8
  %4 = alloca %struct.ctl_table**, align 8
  %5 = alloca %struct.ctl_table_header*, align 8
  %6 = alloca %struct.ctl_table_root*, align 8
  %7 = alloca %struct.ctl_table_set*, align 8
  %8 = alloca %struct.ctl_table*, align 8
  %9 = alloca %struct.ctl_dir*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.ctl_table_header** %0, %struct.ctl_table_header*** %3, align 8
  store %struct.ctl_table** %1, %struct.ctl_table*** %4, align 8
  store i32 0, i32* %10, align 4
  %12 = call i32 @spin_lock(i32* @sysctl_lock)
  %13 = load %struct.ctl_table**, %struct.ctl_table*** %4, align 8
  %14 = load %struct.ctl_table*, %struct.ctl_table** %13, align 8
  %15 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %14, i32 0, i32 1
  %16 = load %struct.ctl_table_root*, %struct.ctl_table_root** %15, align 8
  store %struct.ctl_table_root* %16, %struct.ctl_table_root** %6, align 8
  %17 = load %struct.ctl_table_root*, %struct.ctl_table_root** %6, align 8
  %18 = call %struct.ctl_table_set* @lookup_header_set(%struct.ctl_table_root* %17)
  store %struct.ctl_table_set* %18, %struct.ctl_table_set** %7, align 8
  %19 = load %struct.ctl_table_set*, %struct.ctl_table_set** %7, align 8
  %20 = load %struct.ctl_table_header**, %struct.ctl_table_header*** %3, align 8
  %21 = load %struct.ctl_table_header*, %struct.ctl_table_header** %20, align 8
  %22 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.ctl_dir* @xlate_dir(%struct.ctl_table_set* %19, i32 %23)
  store %struct.ctl_dir* %24, %struct.ctl_dir** %9, align 8
  %25 = load %struct.ctl_dir*, %struct.ctl_dir** %9, align 8
  %26 = call i64 @IS_ERR(%struct.ctl_dir* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load %struct.ctl_dir*, %struct.ctl_dir** %9, align 8
  %30 = call i32 @PTR_ERR(%struct.ctl_dir* %29)
  store i32 %30, i32* %10, align 4
  br label %58

31:                                               ; preds = %2
  %32 = load %struct.ctl_table**, %struct.ctl_table*** %4, align 8
  %33 = load %struct.ctl_table*, %struct.ctl_table** %32, align 8
  %34 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %11, align 8
  store %struct.ctl_table_header* null, %struct.ctl_table_header** %5, align 8
  %36 = load %struct.ctl_dir*, %struct.ctl_dir** %9, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = call i32 @strlen(i8* %38)
  %40 = call %struct.ctl_table* @find_entry(%struct.ctl_table_header** %5, %struct.ctl_dir* %36, i8* %37, i32 %39)
  store %struct.ctl_table* %40, %struct.ctl_table** %8, align 8
  %41 = load i32, i32* @ENOENT, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %10, align 4
  %43 = load %struct.ctl_table*, %struct.ctl_table** %8, align 8
  %44 = icmp ne %struct.ctl_table* %43, null
  br i1 %44, label %45, label %57

45:                                               ; preds = %31
  %46 = load %struct.ctl_table_header*, %struct.ctl_table_header** %5, align 8
  %47 = call i64 @use_table(%struct.ctl_table_header* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %45
  %50 = load %struct.ctl_table_header**, %struct.ctl_table_header*** %3, align 8
  %51 = load %struct.ctl_table_header*, %struct.ctl_table_header** %50, align 8
  %52 = call i32 @unuse_table(%struct.ctl_table_header* %51)
  %53 = load %struct.ctl_table_header*, %struct.ctl_table_header** %5, align 8
  %54 = load %struct.ctl_table_header**, %struct.ctl_table_header*** %3, align 8
  store %struct.ctl_table_header* %53, %struct.ctl_table_header** %54, align 8
  %55 = load %struct.ctl_table*, %struct.ctl_table** %8, align 8
  %56 = load %struct.ctl_table**, %struct.ctl_table*** %4, align 8
  store %struct.ctl_table* %55, %struct.ctl_table** %56, align 8
  store i32 0, i32* %10, align 4
  br label %57

57:                                               ; preds = %49, %45, %31
  br label %58

58:                                               ; preds = %57, %28
  %59 = call i32 @spin_unlock(i32* @sysctl_lock)
  %60 = load i32, i32* %10, align 4
  ret i32 %60
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.ctl_table_set* @lookup_header_set(%struct.ctl_table_root*) #1

declare dso_local %struct.ctl_dir* @xlate_dir(%struct.ctl_table_set*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ctl_dir*) #1

declare dso_local i32 @PTR_ERR(%struct.ctl_dir*) #1

declare dso_local %struct.ctl_table* @find_entry(%struct.ctl_table_header**, %struct.ctl_dir*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @use_table(%struct.ctl_table_header*) #1

declare dso_local i32 @unuse_table(%struct.ctl_table_header*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
