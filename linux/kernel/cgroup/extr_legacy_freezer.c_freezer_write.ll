; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_legacy_freezer.c_freezer_write.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_legacy_freezer.c_freezer_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernfs_open_file = type { i32 }

@CGROUP_FROZEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kernfs_open_file*, i8*, i64, i32)* @freezer_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @freezer_write(%struct.kernfs_open_file* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.kernfs_open_file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.kernfs_open_file* %0, %struct.kernfs_open_file** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i8*, i8** %7, align 8
  %12 = call i8* @strstrip(i8* %11)
  store i8* %12, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = call i32 @freezer_state_strs(i32 0)
  %15 = call i64 @strcmp(i8* %13, i32 %14)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %29

18:                                               ; preds = %4
  %19 = load i8*, i8** %7, align 8
  %20 = load i32, i32* @CGROUP_FROZEN, align 4
  %21 = call i32 @freezer_state_strs(i32 %20)
  %22 = call i64 @strcmp(i8* %19, i32 %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 1, i32* %10, align 4
  br label %28

25:                                               ; preds = %18
  %26 = load i64, i64* @EINVAL, align 8
  %27 = sub i64 0, %26
  store i64 %27, i64* %5, align 8
  br label %36

28:                                               ; preds = %24
  br label %29

29:                                               ; preds = %28, %17
  %30 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %6, align 8
  %31 = call i32 @of_css(%struct.kernfs_open_file* %30)
  %32 = call i32 @css_freezer(i32 %31)
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @freezer_change_state(i32 %32, i32 %33)
  %35 = load i64, i64* %8, align 8
  store i64 %35, i64* %5, align 8
  br label %36

36:                                               ; preds = %29, %25
  %37 = load i64, i64* %5, align 8
  ret i64 %37
}

declare dso_local i8* @strstrip(i8*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @freezer_state_strs(i32) #1

declare dso_local i32 @freezer_change_state(i32, i32) #1

declare dso_local i32 @css_freezer(i32) #1

declare dso_local i32 @of_css(%struct.kernfs_open_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
