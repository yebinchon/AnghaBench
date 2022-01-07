; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namespace.c_lock_mnt_tree.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namespace.c_lock_mnt_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@MNT_LOCK_ATIME = common dso_local global i32 0, align 4
@MNT_READONLY = common dso_local global i32 0, align 4
@MNT_LOCK_READONLY = common dso_local global i32 0, align 4
@MNT_NODEV = common dso_local global i32 0, align 4
@MNT_LOCK_NODEV = common dso_local global i32 0, align 4
@MNT_NOSUID = common dso_local global i32 0, align 4
@MNT_LOCK_NOSUID = common dso_local global i32 0, align 4
@MNT_NOEXEC = common dso_local global i32 0, align 4
@MNT_LOCK_NOEXEC = common dso_local global i32 0, align 4
@MNT_LOCKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mount*)* @lock_mnt_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lock_mnt_tree(%struct.mount* %0) #0 {
  %2 = alloca %struct.mount*, align 8
  %3 = alloca %struct.mount*, align 8
  %4 = alloca i32, align 4
  store %struct.mount* %0, %struct.mount** %2, align 8
  %5 = load %struct.mount*, %struct.mount** %2, align 8
  store %struct.mount* %5, %struct.mount** %3, align 8
  br label %6

6:                                                ; preds = %66, %1
  %7 = load %struct.mount*, %struct.mount** %3, align 8
  %8 = icmp ne %struct.mount* %7, null
  br i1 %8, label %9, label %70

9:                                                ; preds = %6
  %10 = load %struct.mount*, %struct.mount** %3, align 8
  %11 = getelementptr inbounds %struct.mount, %struct.mount* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @MNT_LOCK_ATIME, align 4
  %15 = load i32, i32* %4, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @MNT_READONLY, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %9
  %22 = load i32, i32* @MNT_LOCK_READONLY, align 4
  %23 = load i32, i32* %4, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %21, %9
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @MNT_NODEV, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i32, i32* @MNT_LOCK_NODEV, align 4
  %32 = load i32, i32* %4, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %30, %25
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @MNT_NOSUID, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i32, i32* @MNT_LOCK_NOSUID, align 4
  %41 = load i32, i32* %4, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %39, %34
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @MNT_NOEXEC, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load i32, i32* @MNT_LOCK_NOEXEC, align 4
  %50 = load i32, i32* %4, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %48, %43
  %53 = load %struct.mount*, %struct.mount** %3, align 8
  %54 = getelementptr inbounds %struct.mount, %struct.mount* %53, i32 0, i32 1
  %55 = call i64 @list_empty(i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load i32, i32* @MNT_LOCKED, align 4
  %59 = load i32, i32* %4, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %57, %52
  %62 = load i32, i32* %4, align 4
  %63 = load %struct.mount*, %struct.mount** %3, align 8
  %64 = getelementptr inbounds %struct.mount, %struct.mount* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 4
  br label %66

66:                                               ; preds = %61
  %67 = load %struct.mount*, %struct.mount** %3, align 8
  %68 = load %struct.mount*, %struct.mount** %2, align 8
  %69 = call %struct.mount* @next_mnt(%struct.mount* %67, %struct.mount* %68)
  store %struct.mount* %69, %struct.mount** %3, align 8
  br label %6

70:                                               ; preds = %6
  ret void
}

declare dso_local i64 @list_empty(i32*) #1

declare dso_local %struct.mount* @next_mnt(%struct.mount*, %struct.mount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
