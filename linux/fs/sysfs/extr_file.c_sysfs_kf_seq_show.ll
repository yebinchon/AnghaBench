; ModuleID = '/home/carl/AnghaBench/linux/fs/sysfs/extr_file.c_sysfs_kf_seq_show.c'
source_filename = "/home/carl/AnghaBench/linux/fs/sysfs/extr_file.c_sysfs_kf_seq_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.kernfs_open_file* }
%struct.kernfs_open_file = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.kobject* }
%struct.kobject = type { i32 }
%struct.sysfs_ops = type { i32 (%struct.kobject.0*, i32, i8*)* }
%struct.kobject.0 = type opaque

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"fill_read_buffer: %pS returned bad count\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @sysfs_kf_seq_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysfs_kf_seq_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.kernfs_open_file*, align 8
  %7 = alloca %struct.kobject*, align 8
  %8 = alloca %struct.sysfs_ops*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %12 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %11, i32 0, i32 0
  %13 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %12, align 8
  store %struct.kernfs_open_file* %13, %struct.kernfs_open_file** %6, align 8
  %14 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %6, align 8
  %15 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.kobject*, %struct.kobject** %19, align 8
  store %struct.kobject* %20, %struct.kobject** %7, align 8
  %21 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %6, align 8
  %22 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = call %struct.sysfs_ops* @sysfs_file_ops(%struct.TYPE_4__* %23)
  store %struct.sysfs_ops* %24, %struct.sysfs_ops** %8, align 8
  %25 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %26 = call i32 @seq_get_buf(%struct.seq_file* %25, i8** %10)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @PAGE_SIZE, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %2
  %31 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %32 = call i32 @seq_commit(%struct.seq_file* %31, i32 -1)
  store i32 0, i32* %3, align 4
  br label %75

33:                                               ; preds = %2
  %34 = load i8*, i8** %10, align 8
  %35 = load i32, i32* @PAGE_SIZE, align 4
  %36 = call i32 @memset(i8* %34, i32 0, i32 %35)
  %37 = load %struct.sysfs_ops*, %struct.sysfs_ops** %8, align 8
  %38 = getelementptr inbounds %struct.sysfs_ops, %struct.sysfs_ops* %37, i32 0, i32 0
  %39 = load i32 (%struct.kobject.0*, i32, i8*)*, i32 (%struct.kobject.0*, i32, i8*)** %38, align 8
  %40 = icmp ne i32 (%struct.kobject.0*, i32, i8*)* %39, null
  br i1 %40, label %41, label %59

41:                                               ; preds = %33
  %42 = load %struct.sysfs_ops*, %struct.sysfs_ops** %8, align 8
  %43 = getelementptr inbounds %struct.sysfs_ops, %struct.sysfs_ops* %42, i32 0, i32 0
  %44 = load i32 (%struct.kobject.0*, i32, i8*)*, i32 (%struct.kobject.0*, i32, i8*)** %43, align 8
  %45 = load %struct.kobject*, %struct.kobject** %7, align 8
  %46 = bitcast %struct.kobject* %45 to %struct.kobject.0*
  %47 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %6, align 8
  %48 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = call i32 %44(%struct.kobject.0* %46, i32 %51, i8* %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %41
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %3, align 4
  br label %75

58:                                               ; preds = %41
  br label %59

59:                                               ; preds = %58, %33
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @PAGE_SIZE, align 4
  %62 = icmp sge i32 %60, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %59
  %64 = load %struct.sysfs_ops*, %struct.sysfs_ops** %8, align 8
  %65 = getelementptr inbounds %struct.sysfs_ops, %struct.sysfs_ops* %64, i32 0, i32 0
  %66 = load i32 (%struct.kobject.0*, i32, i8*)*, i32 (%struct.kobject.0*, i32, i8*)** %65, align 8
  %67 = bitcast i32 (%struct.kobject.0*, i32, i8*)* %66 to i32 (%struct.kobject*, i32, i8*)*
  %68 = call i32 @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 (%struct.kobject*, i32, i8*)* %67)
  %69 = load i32, i32* @PAGE_SIZE, align 4
  %70 = sub nsw i32 %69, 1
  store i32 %70, i32* %9, align 4
  br label %71

71:                                               ; preds = %63, %59
  %72 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @seq_commit(%struct.seq_file* %72, i32 %73)
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %71, %56, %30
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local %struct.sysfs_ops* @sysfs_file_ops(%struct.TYPE_4__*) #1

declare dso_local i32 @seq_get_buf(%struct.seq_file*, i8**) #1

declare dso_local i32 @seq_commit(%struct.seq_file*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @printk(i8*, i32 (%struct.kobject*, i32, i8*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
