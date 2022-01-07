; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_posix_acl.c___posix_acl_chmod.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_posix_acl.c___posix_acl_chmod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.posix_acl = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__posix_acl_chmod(%struct.posix_acl** %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.posix_acl**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.posix_acl*, align 8
  %8 = alloca i32, align 4
  store %struct.posix_acl** %0, %struct.posix_acl*** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.posix_acl**, %struct.posix_acl*** %4, align 8
  %10 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.posix_acl* @posix_acl_clone(%struct.posix_acl* %10, i32 %11)
  store %struct.posix_acl* %12, %struct.posix_acl** %7, align 8
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %8, align 4
  %15 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %16 = icmp ne %struct.posix_acl* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %3
  %18 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @__posix_acl_chmod_masq(%struct.posix_acl* %18, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %25 = call i32 @posix_acl_release(%struct.posix_acl* %24)
  store %struct.posix_acl* null, %struct.posix_acl** %7, align 8
  br label %26

26:                                               ; preds = %23, %17
  br label %27

27:                                               ; preds = %26, %3
  %28 = load %struct.posix_acl**, %struct.posix_acl*** %4, align 8
  %29 = load %struct.posix_acl*, %struct.posix_acl** %28, align 8
  %30 = call i32 @posix_acl_release(%struct.posix_acl* %29)
  %31 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %32 = load %struct.posix_acl**, %struct.posix_acl*** %4, align 8
  store %struct.posix_acl* %31, %struct.posix_acl** %32, align 8
  %33 = load i32, i32* %8, align 4
  ret i32 %33
}

declare dso_local %struct.posix_acl* @posix_acl_clone(%struct.posix_acl*, i32) #1

declare dso_local i32 @__posix_acl_chmod_masq(%struct.posix_acl*, i32) #1

declare dso_local i32 @posix_acl_release(%struct.posix_acl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
