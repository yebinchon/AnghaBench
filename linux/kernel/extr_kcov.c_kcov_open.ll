; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_kcov.c_kcov_open.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_kcov.c_kcov_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.kcov* }
%struct.kcov = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@KCOV_MODE_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @kcov_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kcov_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.kcov*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.kcov* @kzalloc(i32 12, i32 %7)
  store %struct.kcov* %8, %struct.kcov** %6, align 8
  %9 = load %struct.kcov*, %struct.kcov** %6, align 8
  %10 = icmp ne %struct.kcov* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %30

14:                                               ; preds = %2
  %15 = load i32, i32* @KCOV_MODE_DISABLED, align 4
  %16 = load %struct.kcov*, %struct.kcov** %6, align 8
  %17 = getelementptr inbounds %struct.kcov, %struct.kcov* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  %18 = load %struct.kcov*, %struct.kcov** %6, align 8
  %19 = getelementptr inbounds %struct.kcov, %struct.kcov* %18, i32 0, i32 1
  %20 = call i32 @refcount_set(i32* %19, i32 1)
  %21 = load %struct.kcov*, %struct.kcov** %6, align 8
  %22 = getelementptr inbounds %struct.kcov, %struct.kcov* %21, i32 0, i32 0
  %23 = call i32 @spin_lock_init(i32* %22)
  %24 = load %struct.kcov*, %struct.kcov** %6, align 8
  %25 = load %struct.file*, %struct.file** %5, align 8
  %26 = getelementptr inbounds %struct.file, %struct.file* %25, i32 0, i32 0
  store %struct.kcov* %24, %struct.kcov** %26, align 8
  %27 = load %struct.inode*, %struct.inode** %4, align 8
  %28 = load %struct.file*, %struct.file** %5, align 8
  %29 = call i32 @nonseekable_open(%struct.inode* %27, %struct.file* %28)
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %14, %11
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local %struct.kcov* @kzalloc(i32, i32) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @nonseekable_open(%struct.inode*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
