; ModuleID = '/home/carl/AnghaBench/linux/fs/kernfs/extr_file.c_kernfs_seq_start.c'
source_filename = "/home/carl/AnghaBench/linux/fs/kernfs/extr_file.c_kernfs_seq_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.kernfs_open_file* }
%struct.kernfs_open_file = type { i32, i32 }
%struct.kernfs_ops = type { i8* (%struct.seq_file*, i32*)* }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.seq_file*, i32*)* @kernfs_seq_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @kernfs_seq_start(%struct.seq_file* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.kernfs_open_file*, align 8
  %7 = alloca %struct.kernfs_ops*, align 8
  %8 = alloca i8*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %10 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %9, i32 0, i32 0
  %11 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %10, align 8
  store %struct.kernfs_open_file* %11, %struct.kernfs_open_file** %6, align 8
  %12 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %6, align 8
  %13 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %12, i32 0, i32 1
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %6, align 8
  %16 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @kernfs_get_active(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  %23 = call i8* @ERR_PTR(i32 %22)
  store i8* %23, i8** %3, align 8
  br label %59

24:                                               ; preds = %2
  %25 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %6, align 8
  %26 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.kernfs_ops* @kernfs_ops(i32 %27)
  store %struct.kernfs_ops* %28, %struct.kernfs_ops** %7, align 8
  %29 = load %struct.kernfs_ops*, %struct.kernfs_ops** %7, align 8
  %30 = getelementptr inbounds %struct.kernfs_ops, %struct.kernfs_ops* %29, i32 0, i32 0
  %31 = load i8* (%struct.seq_file*, i32*)*, i8* (%struct.seq_file*, i32*)** %30, align 8
  %32 = icmp ne i8* (%struct.seq_file*, i32*)* %31, null
  br i1 %32, label %33, label %51

33:                                               ; preds = %24
  %34 = load %struct.kernfs_ops*, %struct.kernfs_ops** %7, align 8
  %35 = getelementptr inbounds %struct.kernfs_ops, %struct.kernfs_ops* %34, i32 0, i32 0
  %36 = load i8* (%struct.seq_file*, i32*)*, i8* (%struct.seq_file*, i32*)** %35, align 8
  %37 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = call i8* %36(%struct.seq_file* %37, i32* %38)
  store i8* %39, i8** %8, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = load i32, i32* @ENODEV, align 4
  %42 = sub nsw i32 0, %41
  %43 = call i8* @ERR_PTR(i32 %42)
  %44 = icmp eq i8* %40, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %33
  %46 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = call i32 @kernfs_seq_stop_active(%struct.seq_file* %46, i8* %47)
  br label %49

49:                                               ; preds = %45, %33
  %50 = load i8*, i8** %8, align 8
  store i8* %50, i8** %3, align 8
  br label %59

51:                                               ; preds = %24
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = sext i32 %56 to i64
  %58 = getelementptr i8, i8* null, i64 %57
  store i8* %58, i8** %3, align 8
  br label %59

59:                                               ; preds = %51, %49, %20
  %60 = load i8*, i8** %3, align 8
  ret i8* %60
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kernfs_get_active(i32) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local %struct.kernfs_ops* @kernfs_ops(i32) #1

declare dso_local i32 @kernfs_seq_stop_active(%struct.seq_file*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
