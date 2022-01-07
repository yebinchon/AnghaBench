; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namei.c_do_filp_open.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namei.c_do_filp_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.filename = type { i32 }
%struct.open_flags = type { i32 }
%struct.nameidata = type { i32 }

@LOOKUP_RCU = common dso_local global i32 0, align 4
@ECHILD = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i32 0, align 4
@LOOKUP_REVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.file* @do_filp_open(i32 %0, %struct.filename* %1, %struct.open_flags* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.filename*, align 8
  %6 = alloca %struct.open_flags*, align 8
  %7 = alloca %struct.nameidata, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.file*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.filename* %1, %struct.filename** %5, align 8
  store %struct.open_flags* %2, %struct.open_flags** %6, align 8
  %10 = load %struct.open_flags*, %struct.open_flags** %6, align 8
  %11 = getelementptr inbounds %struct.open_flags, %struct.open_flags* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.filename*, %struct.filename** %5, align 8
  %15 = call i32 @set_nameidata(%struct.nameidata* %7, i32 %13, %struct.filename* %14)
  %16 = load %struct.open_flags*, %struct.open_flags** %6, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @LOOKUP_RCU, align 4
  %19 = or i32 %17, %18
  %20 = call %struct.file* @path_openat(%struct.nameidata* %7, %struct.open_flags* %16, i32 %19)
  store %struct.file* %20, %struct.file** %9, align 8
  %21 = load %struct.file*, %struct.file** %9, align 8
  %22 = load i32, i32* @ECHILD, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.file* @ERR_PTR(i32 %23)
  %25 = icmp eq %struct.file* %21, %24
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %3
  %30 = load %struct.open_flags*, %struct.open_flags** %6, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call %struct.file* @path_openat(%struct.nameidata* %7, %struct.open_flags* %30, i32 %31)
  store %struct.file* %32, %struct.file** %9, align 8
  br label %33

33:                                               ; preds = %29, %3
  %34 = load %struct.file*, %struct.file** %9, align 8
  %35 = load i32, i32* @ESTALE, align 4
  %36 = sub nsw i32 0, %35
  %37 = call %struct.file* @ERR_PTR(i32 %36)
  %38 = icmp eq %struct.file* %34, %37
  %39 = zext i1 %38 to i32
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %33
  %43 = load %struct.open_flags*, %struct.open_flags** %6, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @LOOKUP_REVAL, align 4
  %46 = or i32 %44, %45
  %47 = call %struct.file* @path_openat(%struct.nameidata* %7, %struct.open_flags* %43, i32 %46)
  store %struct.file* %47, %struct.file** %9, align 8
  br label %48

48:                                               ; preds = %42, %33
  %49 = call i32 (...) @restore_nameidata()
  %50 = load %struct.file*, %struct.file** %9, align 8
  ret %struct.file* %50
}

declare dso_local i32 @set_nameidata(%struct.nameidata*, i32, %struct.filename*) #1

declare dso_local %struct.file* @path_openat(%struct.nameidata*, %struct.open_flags*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.file* @ERR_PTR(i32) #1

declare dso_local i32 @restore_nameidata(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
