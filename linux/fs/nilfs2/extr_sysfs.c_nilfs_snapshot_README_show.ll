; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_sysfs.c_nilfs_snapshot_README_show.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_sysfs.c_nilfs_snapshot_README_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_snapshot_attr = type { i32 }
%struct.nilfs_root = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@snapshot_readme_str = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nilfs_snapshot_attr*, %struct.nilfs_root*, i8*)* @nilfs_snapshot_README_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_snapshot_README_show(%struct.nilfs_snapshot_attr* %0, %struct.nilfs_root* %1, i8* %2) #0 {
  %4 = alloca %struct.nilfs_snapshot_attr*, align 8
  %5 = alloca %struct.nilfs_root*, align 8
  %6 = alloca i8*, align 8
  store %struct.nilfs_snapshot_attr* %0, %struct.nilfs_snapshot_attr** %4, align 8
  store %struct.nilfs_root* %1, %struct.nilfs_root** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i8*, i8** %6, align 8
  %8 = load i32, i32* @PAGE_SIZE, align 4
  %9 = load i8*, i8** @snapshot_readme_str, align 8
  %10 = call i32 @snprintf(i8* %7, i32 %8, i8* %9)
  ret i32 %10
}

declare dso_local i32 @snprintf(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
