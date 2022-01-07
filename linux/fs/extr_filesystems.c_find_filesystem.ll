; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_filesystems.c_find_filesystem.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_filesystems.c_find_filesystem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_system_type = type { i32*, %struct.file_system_type* }

@file_systems = common dso_local global %struct.file_system_type* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.file_system_type** (i8*, i32)* @find_filesystem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.file_system_type** @find_filesystem(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.file_system_type**, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.file_system_type** @file_systems, %struct.file_system_type*** %5, align 8
  br label %6

6:                                                ; preds = %31, %2
  %7 = load %struct.file_system_type**, %struct.file_system_type*** %5, align 8
  %8 = load %struct.file_system_type*, %struct.file_system_type** %7, align 8
  %9 = icmp ne %struct.file_system_type* %8, null
  br i1 %9, label %10, label %35

10:                                               ; preds = %6
  %11 = load %struct.file_system_type**, %struct.file_system_type*** %5, align 8
  %12 = load %struct.file_system_type*, %struct.file_system_type** %11, align 8
  %13 = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i64 @strncmp(i32* %14, i8* %15, i32 %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %10
  %20 = load %struct.file_system_type**, %struct.file_system_type*** %5, align 8
  %21 = load %struct.file_system_type*, %struct.file_system_type** %20, align 8
  %22 = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %19
  br label %35

30:                                               ; preds = %19, %10
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.file_system_type**, %struct.file_system_type*** %5, align 8
  %33 = load %struct.file_system_type*, %struct.file_system_type** %32, align 8
  %34 = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %33, i32 0, i32 1
  store %struct.file_system_type** %34, %struct.file_system_type*** %5, align 8
  br label %6

35:                                               ; preds = %29, %6
  %36 = load %struct.file_system_type**, %struct.file_system_type*** %5, align 8
  ret %struct.file_system_type** %36
}

declare dso_local i64 @strncmp(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
