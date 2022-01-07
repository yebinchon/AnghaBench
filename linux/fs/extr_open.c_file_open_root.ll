; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_open.c_file_open_root.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_open.c_file_open_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.dentry = type { i32 }
%struct.vfsmount = type { i32 }
%struct.open_flags = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.file* @file_open_root(%struct.dentry* %0, %struct.vfsmount* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.vfsmount*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.open_flags, align 4
  %13 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %7, align 8
  store %struct.vfsmount* %1, %struct.vfsmount** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* %11, align 4
  %16 = call i32 @build_open_flags(i32 %14, i32 %15, %struct.open_flags* %12)
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* %13, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load i32, i32* %13, align 4
  %21 = call %struct.file* @ERR_PTR(i32 %20)
  store %struct.file* %21, %struct.file** %6, align 8
  br label %27

22:                                               ; preds = %5
  %23 = load %struct.dentry*, %struct.dentry** %7, align 8
  %24 = load %struct.vfsmount*, %struct.vfsmount** %8, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = call %struct.file* @do_file_open_root(%struct.dentry* %23, %struct.vfsmount* %24, i8* %25, %struct.open_flags* %12)
  store %struct.file* %26, %struct.file** %6, align 8
  br label %27

27:                                               ; preds = %22, %19
  %28 = load %struct.file*, %struct.file** %6, align 8
  ret %struct.file* %28
}

declare dso_local i32 @build_open_flags(i32, i32, %struct.open_flags*) #1

declare dso_local %struct.file* @ERR_PTR(i32) #1

declare dso_local %struct.file* @do_file_open_root(%struct.dentry*, %struct.vfsmount*, i8*, %struct.open_flags*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
