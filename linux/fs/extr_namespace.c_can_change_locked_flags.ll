; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namespace.c_can_change_locked_flags.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namespace.c_can_change_locked_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MNT_LOCK_READONLY = common dso_local global i32 0, align 4
@MNT_READONLY = common dso_local global i32 0, align 4
@MNT_LOCK_NODEV = common dso_local global i32 0, align 4
@MNT_NODEV = common dso_local global i32 0, align 4
@MNT_LOCK_NOSUID = common dso_local global i32 0, align 4
@MNT_NOSUID = common dso_local global i32 0, align 4
@MNT_LOCK_NOEXEC = common dso_local global i32 0, align 4
@MNT_NOEXEC = common dso_local global i32 0, align 4
@MNT_LOCK_ATIME = common dso_local global i32 0, align 4
@MNT_ATIME_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mount*, i32)* @can_change_locked_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @can_change_locked_flags(%struct.mount* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mount*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mount* %0, %struct.mount** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.mount*, %struct.mount** %4, align 8
  %8 = getelementptr inbounds %struct.mount, %struct.mount* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @MNT_LOCK_READONLY, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @MNT_READONLY, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %69

21:                                               ; preds = %15, %2
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @MNT_LOCK_NODEV, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @MNT_NODEV, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %69

32:                                               ; preds = %26, %21
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @MNT_LOCK_NOSUID, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @MNT_NOSUID, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %69

43:                                               ; preds = %37, %32
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @MNT_LOCK_NOEXEC, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @MNT_NOEXEC, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %69

54:                                               ; preds = %48, %43
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @MNT_LOCK_ATIME, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %54
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @MNT_ATIME_MASK, align 4
  %62 = and i32 %60, %61
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @MNT_ATIME_MASK, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %62, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  store i32 0, i32* %3, align 4
  br label %69

68:                                               ; preds = %59, %54
  store i32 1, i32* %3, align 4
  br label %69

69:                                               ; preds = %68, %67, %53, %42, %31, %20
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
