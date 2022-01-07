; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_fcntl.c_f_setown.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_fcntl.c_f_setown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.pid = type { i32 }

@PIDTYPE_TGID = common dso_local global i32 0, align 4
@INT_MIN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PIDTYPE_PGID = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f_setown(%struct.file* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pid*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.pid* null, %struct.pid** %9, align 8
  %12 = load i64, i64* %6, align 8
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %14 = load i32, i32* @PIDTYPE_TGID, align 4
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %3
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* @INT_MIN, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %53

24:                                               ; preds = %17
  %25 = load i32, i32* @PIDTYPE_PGID, align 4
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %10, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %10, align 4
  br label %28

28:                                               ; preds = %24, %3
  %29 = call i32 (...) @rcu_read_lock()
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %28
  %33 = load i32, i32* %10, align 4
  %34 = call %struct.pid* @find_vpid(i32 %33)
  store %struct.pid* %34, %struct.pid** %9, align 8
  %35 = load %struct.pid*, %struct.pid** %9, align 8
  %36 = icmp ne %struct.pid* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @ESRCH, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %11, align 4
  br label %40

40:                                               ; preds = %37, %32
  br label %41

41:                                               ; preds = %40, %28
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %41
  %45 = load %struct.file*, %struct.file** %5, align 8
  %46 = load %struct.pid*, %struct.pid** %9, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @__f_setown(%struct.file* %45, %struct.pid* %46, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %44, %41
  %51 = call i32 (...) @rcu_read_unlock()
  %52 = load i32, i32* %11, align 4
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %50, %21
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.pid* @find_vpid(i32) #1

declare dso_local i32 @__f_setown(%struct.file*, %struct.pid*, i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
