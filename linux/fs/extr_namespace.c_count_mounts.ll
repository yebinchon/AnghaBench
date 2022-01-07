; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namespace.c_count_mounts.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namespace.c_count_mounts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mnt_namespace = type { i32, i32 }
%struct.mount = type { i32 }

@sysctl_mount_max = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @count_mounts(%struct.mnt_namespace* %0, %struct.mount* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mnt_namespace*, align 8
  %5 = alloca %struct.mount*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mount*, align 8
  store %struct.mnt_namespace* %0, %struct.mnt_namespace** %4, align 8
  store %struct.mount* %1, %struct.mount** %5, align 8
  %12 = load i32, i32* @sysctl_mount_max, align 4
  %13 = call i32 @READ_ONCE(i32 %12)
  store i32 %13, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %14 = load %struct.mount*, %struct.mount** %5, align 8
  store %struct.mount* %14, %struct.mount** %11, align 8
  br label %15

15:                                               ; preds = %21, %2
  %16 = load %struct.mount*, %struct.mount** %11, align 8
  %17 = icmp ne %struct.mount* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  %19 = load i32, i32* %7, align 4
  %20 = add i32 %19, 1
  store i32 %20, i32* %7, align 4
  br label %21

21:                                               ; preds = %18
  %22 = load %struct.mount*, %struct.mount** %11, align 8
  %23 = load %struct.mount*, %struct.mount** %5, align 8
  %24 = call %struct.mount* @next_mnt(%struct.mount* %22, %struct.mount* %23)
  store %struct.mount* %24, %struct.mount** %11, align 8
  br label %15

25:                                               ; preds = %15
  %26 = load %struct.mnt_namespace*, %struct.mnt_namespace** %4, align 8
  %27 = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %8, align 4
  %29 = load %struct.mnt_namespace*, %struct.mnt_namespace** %4, align 8
  %30 = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = add i32 %32, %33
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ugt i32 %35, %36
  br i1 %37, label %52, label %38

38:                                               ; preds = %25
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ugt i32 %39, %40
  br i1 %41, label %52, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %52, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %10, align 4
  %50 = sub i32 %48, %49
  %51 = icmp ugt i32 %47, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %46, %42, %38, %25
  %53 = load i32, i32* @ENOSPC, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %61

55:                                               ; preds = %46
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %7, align 4
  %58 = add i32 %56, %57
  %59 = load %struct.mnt_namespace*, %struct.mnt_namespace** %4, align 8
  %60 = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %55, %52
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local %struct.mount* @next_mnt(%struct.mount*, %struct.mount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
