; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_cgroup_file_mode.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_cgroup_file_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cftype = type { i32, i64, i64, i64, i64, i64, i64 }

@S_IRUGO = common dso_local global i32 0, align 4
@CFTYPE_WORLD_WRITABLE = common dso_local global i32 0, align 4
@S_IWUGO = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cftype*)* @cgroup_file_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cgroup_file_mode(%struct.cftype* %0) #0 {
  %2 = alloca %struct.cftype*, align 8
  %3 = alloca i32, align 4
  store %struct.cftype* %0, %struct.cftype** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.cftype*, %struct.cftype** %2, align 8
  %5 = getelementptr inbounds %struct.cftype, %struct.cftype* %4, i32 0, i32 6
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %1
  %9 = load %struct.cftype*, %struct.cftype** %2, align 8
  %10 = getelementptr inbounds %struct.cftype, %struct.cftype* %9, i32 0, i32 5
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %8
  %14 = load %struct.cftype*, %struct.cftype** %2, align 8
  %15 = getelementptr inbounds %struct.cftype, %struct.cftype* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13, %8, %1
  %19 = load i32, i32* @S_IRUGO, align 4
  %20 = load i32, i32* %3, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %18, %13
  %23 = load %struct.cftype*, %struct.cftype** %2, align 8
  %24 = getelementptr inbounds %struct.cftype, %struct.cftype* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %22
  %28 = load %struct.cftype*, %struct.cftype** %2, align 8
  %29 = getelementptr inbounds %struct.cftype, %struct.cftype* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load %struct.cftype*, %struct.cftype** %2, align 8
  %34 = getelementptr inbounds %struct.cftype, %struct.cftype* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %32, %27, %22
  %38 = load %struct.cftype*, %struct.cftype** %2, align 8
  %39 = getelementptr inbounds %struct.cftype, %struct.cftype* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @CFTYPE_WORLD_WRITABLE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = load i32, i32* @S_IWUGO, align 4
  %46 = load i32, i32* %3, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %3, align 4
  br label %52

48:                                               ; preds = %37
  %49 = load i32, i32* @S_IWUSR, align 4
  %50 = load i32, i32* %3, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %48, %44
  br label %53

53:                                               ; preds = %52, %32
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
