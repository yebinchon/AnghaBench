; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_proc_sysctl.c_xlate_dir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_proc_sysctl.c_xlate_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_table_set = type { %struct.ctl_dir }
%struct.ctl_dir = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, %struct.ctl_dir* }
%struct.TYPE_3__ = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ctl_dir* (%struct.ctl_table_set*, %struct.ctl_dir*)* @xlate_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ctl_dir* @xlate_dir(%struct.ctl_table_set* %0, %struct.ctl_dir* %1) #0 {
  %3 = alloca %struct.ctl_dir*, align 8
  %4 = alloca %struct.ctl_table_set*, align 8
  %5 = alloca %struct.ctl_dir*, align 8
  %6 = alloca %struct.ctl_dir*, align 8
  %7 = alloca i8*, align 8
  store %struct.ctl_table_set* %0, %struct.ctl_table_set** %4, align 8
  store %struct.ctl_dir* %1, %struct.ctl_dir** %5, align 8
  %8 = load %struct.ctl_dir*, %struct.ctl_dir** %5, align 8
  %9 = getelementptr inbounds %struct.ctl_dir, %struct.ctl_dir* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load %struct.ctl_dir*, %struct.ctl_dir** %10, align 8
  %12 = icmp ne %struct.ctl_dir* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load %struct.ctl_table_set*, %struct.ctl_table_set** %4, align 8
  %15 = getelementptr inbounds %struct.ctl_table_set, %struct.ctl_table_set* %14, i32 0, i32 0
  store %struct.ctl_dir* %15, %struct.ctl_dir** %3, align 8
  br label %41

16:                                               ; preds = %2
  %17 = load %struct.ctl_table_set*, %struct.ctl_table_set** %4, align 8
  %18 = load %struct.ctl_dir*, %struct.ctl_dir** %5, align 8
  %19 = getelementptr inbounds %struct.ctl_dir, %struct.ctl_dir* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load %struct.ctl_dir*, %struct.ctl_dir** %20, align 8
  %22 = call %struct.ctl_dir* @xlate_dir(%struct.ctl_table_set* %17, %struct.ctl_dir* %21)
  store %struct.ctl_dir* %22, %struct.ctl_dir** %6, align 8
  %23 = load %struct.ctl_dir*, %struct.ctl_dir** %6, align 8
  %24 = call i64 @IS_ERR(%struct.ctl_dir* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %16
  %27 = load %struct.ctl_dir*, %struct.ctl_dir** %6, align 8
  store %struct.ctl_dir* %27, %struct.ctl_dir** %3, align 8
  br label %41

28:                                               ; preds = %16
  %29 = load %struct.ctl_dir*, %struct.ctl_dir** %5, align 8
  %30 = getelementptr inbounds %struct.ctl_dir, %struct.ctl_dir* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %7, align 8
  %36 = load %struct.ctl_dir*, %struct.ctl_dir** %6, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 @strlen(i8* %38)
  %40 = call %struct.ctl_dir* @find_subdir(%struct.ctl_dir* %36, i8* %37, i32 %39)
  store %struct.ctl_dir* %40, %struct.ctl_dir** %3, align 8
  br label %41

41:                                               ; preds = %28, %26, %13
  %42 = load %struct.ctl_dir*, %struct.ctl_dir** %3, align 8
  ret %struct.ctl_dir* %42
}

declare dso_local i64 @IS_ERR(%struct.ctl_dir*) #1

declare dso_local %struct.ctl_dir* @find_subdir(%struct.ctl_dir*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
