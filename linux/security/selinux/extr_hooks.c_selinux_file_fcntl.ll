; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_file_fcntl.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_file_fcntl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i64 }
%struct.cred = type { i32 }

@O_APPEND = common dso_local global i64 0, align 8
@FILE__WRITE = common dso_local global i32 0, align 4
@FILE__LOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, i64)* @selinux_file_fcntl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_file_fcntl(%struct.file* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.cred*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = call %struct.cred* (...) @current_cred()
  store %struct.cred* %9, %struct.cred** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %38 [
    i32 134, label %11
    i32 129, label %29
    i32 128, label %29
    i32 143, label %29
    i32 140, label %29
    i32 138, label %29
    i32 139, label %29
    i32 142, label %33
    i32 133, label %33
    i32 131, label %33
    i32 137, label %33
    i32 136, label %33
    i32 135, label %33
  ]

11:                                               ; preds = %3
  %12 = load %struct.file*, %struct.file** %4, align 8
  %13 = getelementptr inbounds %struct.file, %struct.file* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @O_APPEND, align 8
  %16 = and i64 %14, %15
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %11
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* @O_APPEND, align 8
  %21 = and i64 %19, %20
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load %struct.cred*, %struct.cred** %7, align 8
  %25 = load %struct.file*, %struct.file** %4, align 8
  %26 = load i32, i32* @FILE__WRITE, align 4
  %27 = call i32 @file_has_perm(%struct.cred* %24, %struct.file* %25, i32 %26)
  store i32 %27, i32* %8, align 4
  br label %38

28:                                               ; preds = %18, %11
  br label %29

29:                                               ; preds = %3, %3, %3, %3, %3, %3, %28
  %30 = load %struct.cred*, %struct.cred** %7, align 8
  %31 = load %struct.file*, %struct.file** %4, align 8
  %32 = call i32 @file_has_perm(%struct.cred* %30, %struct.file* %31, i32 0)
  store i32 %32, i32* %8, align 4
  br label %38

33:                                               ; preds = %3, %3, %3, %3, %3, %3
  %34 = load %struct.cred*, %struct.cred** %7, align 8
  %35 = load %struct.file*, %struct.file** %4, align 8
  %36 = load i32, i32* @FILE__LOCK, align 4
  %37 = call i32 @file_has_perm(%struct.cred* %34, %struct.file* %35, i32 %36)
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %3, %33, %29, %23
  %39 = load i32, i32* %8, align 4
  ret i32 %39
}

declare dso_local %struct.cred* @current_cred(...) #1

declare dso_local i32 @file_has_perm(%struct.cred*, %struct.file*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
