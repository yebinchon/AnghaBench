; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_proc_sysctl.c_insert_links.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_proc_sysctl.c_insert_links.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.ctl_table_set }
%struct.ctl_table_set = type { i32 }
%struct.ctl_table_header = type { i32, i32, i32, %struct.ctl_table_set* }
%struct.ctl_dir = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@sysctl_table_root = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@sysctl_lock = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctl_table_header*)* @insert_links to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @insert_links(%struct.ctl_table_header* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ctl_table_header*, align 8
  %4 = alloca %struct.ctl_table_set*, align 8
  %5 = alloca %struct.ctl_dir*, align 8
  %6 = alloca %struct.ctl_table_header*, align 8
  %7 = alloca i32, align 4
  store %struct.ctl_table_header* %0, %struct.ctl_table_header** %3, align 8
  store %struct.ctl_table_set* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sysctl_table_root, i32 0, i32 0), %struct.ctl_table_set** %4, align 8
  store %struct.ctl_dir* null, %struct.ctl_dir** %5, align 8
  %8 = load %struct.ctl_table_header*, %struct.ctl_table_header** %3, align 8
  %9 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %8, i32 0, i32 3
  %10 = load %struct.ctl_table_set*, %struct.ctl_table_set** %9, align 8
  %11 = load %struct.ctl_table_set*, %struct.ctl_table_set** %4, align 8
  %12 = icmp eq %struct.ctl_table_set* %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %84

14:                                               ; preds = %1
  %15 = load %struct.ctl_table_set*, %struct.ctl_table_set** %4, align 8
  %16 = load %struct.ctl_table_header*, %struct.ctl_table_header** %3, align 8
  %17 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.ctl_dir* @xlate_dir(%struct.ctl_table_set* %15, i32 %18)
  store %struct.ctl_dir* %19, %struct.ctl_dir** %5, align 8
  %20 = load %struct.ctl_dir*, %struct.ctl_dir** %5, align 8
  %21 = call i64 @IS_ERR(%struct.ctl_dir* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %84

24:                                               ; preds = %14
  %25 = load %struct.ctl_dir*, %struct.ctl_dir** %5, align 8
  %26 = load %struct.ctl_table_header*, %struct.ctl_table_header** %3, align 8
  %27 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ctl_table_header*, %struct.ctl_table_header** %3, align 8
  %30 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @get_links(%struct.ctl_dir* %25, i32 %28, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %84

35:                                               ; preds = %24
  %36 = load %struct.ctl_dir*, %struct.ctl_dir** %5, align 8
  %37 = getelementptr inbounds %struct.ctl_dir, %struct.ctl_dir* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  %41 = call i32 @spin_unlock(i32* @sysctl_lock)
  %42 = load %struct.ctl_dir*, %struct.ctl_dir** %5, align 8
  %43 = load %struct.ctl_table_header*, %struct.ctl_table_header** %3, align 8
  %44 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ctl_table_header*, %struct.ctl_table_header** %3, align 8
  %47 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call %struct.ctl_table_header* @new_links(%struct.ctl_dir* %42, i32 %45, i32 %48)
  store %struct.ctl_table_header* %49, %struct.ctl_table_header** %6, align 8
  %50 = call i32 @spin_lock(i32* @sysctl_lock)
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %7, align 4
  %53 = load %struct.ctl_table_header*, %struct.ctl_table_header** %6, align 8
  %54 = icmp ne %struct.ctl_table_header* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %35
  br label %79

56:                                               ; preds = %35
  store i32 0, i32* %7, align 4
  %57 = load %struct.ctl_dir*, %struct.ctl_dir** %5, align 8
  %58 = load %struct.ctl_table_header*, %struct.ctl_table_header** %3, align 8
  %59 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.ctl_table_header*, %struct.ctl_table_header** %3, align 8
  %62 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @get_links(%struct.ctl_dir* %57, i32 %60, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %56
  %67 = load %struct.ctl_table_header*, %struct.ctl_table_header** %6, align 8
  %68 = call i32 @kfree(%struct.ctl_table_header* %67)
  br label %79

69:                                               ; preds = %56
  %70 = load %struct.ctl_dir*, %struct.ctl_dir** %5, align 8
  %71 = load %struct.ctl_table_header*, %struct.ctl_table_header** %6, align 8
  %72 = call i32 @insert_header(%struct.ctl_dir* %70, %struct.ctl_table_header* %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load %struct.ctl_table_header*, %struct.ctl_table_header** %6, align 8
  %77 = call i32 @kfree(%struct.ctl_table_header* %76)
  br label %78

78:                                               ; preds = %75, %69
  br label %79

79:                                               ; preds = %78, %66, %55
  %80 = load %struct.ctl_dir*, %struct.ctl_dir** %5, align 8
  %81 = getelementptr inbounds %struct.ctl_dir, %struct.ctl_dir* %80, i32 0, i32 0
  %82 = call i32 @drop_sysctl_table(%struct.TYPE_4__* %81)
  %83 = load i32, i32* %7, align 4
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %79, %34, %23, %13
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local %struct.ctl_dir* @xlate_dir(%struct.ctl_table_set*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ctl_dir*) #1

declare dso_local i64 @get_links(%struct.ctl_dir*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.ctl_table_header* @new_links(%struct.ctl_dir*, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @kfree(%struct.ctl_table_header*) #1

declare dso_local i32 @insert_header(%struct.ctl_dir*, %struct.ctl_table_header*) #1

declare dso_local i32 @drop_sysctl_table(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
