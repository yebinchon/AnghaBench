; ModuleID = '/home/carl/AnghaBench/linux/fs/sysfs/extr_file.c_sysfs_remove_files.c'
source_filename = "/home/carl/AnghaBench/linux/fs/sysfs/extr_file.c_sysfs_remove_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.attribute = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sysfs_remove_files(%struct.kobject* %0, %struct.attribute** %1) #0 {
  %3 = alloca %struct.kobject*, align 8
  %4 = alloca %struct.attribute**, align 8
  %5 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %3, align 8
  store %struct.attribute** %1, %struct.attribute*** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %21, %2
  %7 = load %struct.attribute**, %struct.attribute*** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.attribute*, %struct.attribute** %7, i64 %9
  %11 = load %struct.attribute*, %struct.attribute** %10, align 8
  %12 = icmp ne %struct.attribute* %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %6
  %14 = load %struct.kobject*, %struct.kobject** %3, align 8
  %15 = load %struct.attribute**, %struct.attribute*** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.attribute*, %struct.attribute** %15, i64 %17
  %19 = load %struct.attribute*, %struct.attribute** %18, align 8
  %20 = call i32 @sysfs_remove_file(%struct.kobject* %14, %struct.attribute* %19)
  br label %21

21:                                               ; preds = %13
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %5, align 4
  br label %6

24:                                               ; preds = %6
  ret void
}

declare dso_local i32 @sysfs_remove_file(%struct.kobject*, %struct.attribute*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
