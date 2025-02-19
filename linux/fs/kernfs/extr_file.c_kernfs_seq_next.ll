; ModuleID = '/home/carl/AnghaBench/linux/fs/kernfs/extr_file.c_kernfs_seq_next.c'
source_filename = "/home/carl/AnghaBench/linux/fs/kernfs/extr_file.c_kernfs_seq_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.kernfs_open_file* }
%struct.kernfs_open_file = type { i32 }
%struct.kernfs_ops = type { i8* (%struct.seq_file*, i8*, i32*)* }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.seq_file*, i8*, i32*)* @kernfs_seq_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @kernfs_seq_next(%struct.seq_file* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.seq_file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.kernfs_open_file*, align 8
  %9 = alloca %struct.kernfs_ops*, align 8
  %10 = alloca i8*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %12 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %11, i32 0, i32 0
  %13 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %12, align 8
  store %struct.kernfs_open_file* %13, %struct.kernfs_open_file** %8, align 8
  %14 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %8, align 8
  %15 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.kernfs_ops* @kernfs_ops(i32 %16)
  store %struct.kernfs_ops* %17, %struct.kernfs_ops** %9, align 8
  %18 = load %struct.kernfs_ops*, %struct.kernfs_ops** %9, align 8
  %19 = getelementptr inbounds %struct.kernfs_ops, %struct.kernfs_ops* %18, i32 0, i32 0
  %20 = load i8* (%struct.seq_file*, i8*, i32*)*, i8* (%struct.seq_file*, i8*, i32*)** %19, align 8
  %21 = icmp ne i8* (%struct.seq_file*, i8*, i32*)* %20, null
  br i1 %21, label %22, label %41

22:                                               ; preds = %3
  %23 = load %struct.kernfs_ops*, %struct.kernfs_ops** %9, align 8
  %24 = getelementptr inbounds %struct.kernfs_ops, %struct.kernfs_ops* %23, i32 0, i32 0
  %25 = load i8* (%struct.seq_file*, i8*, i32*)*, i8* (%struct.seq_file*, i8*, i32*)** %24, align 8
  %26 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = call i8* %25(%struct.seq_file* %26, i8* %27, i32* %28)
  store i8* %29, i8** %10, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  %33 = call i8* @ERR_PTR(i32 %32)
  %34 = icmp eq i8* %30, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %22
  %36 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = call i32 @kernfs_seq_stop_active(%struct.seq_file* %36, i8* %37)
  br label %39

39:                                               ; preds = %35, %22
  %40 = load i8*, i8** %10, align 8
  store i8* %40, i8** %4, align 8
  br label %45

41:                                               ; preds = %3
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  store i8* null, i8** %4, align 8
  br label %45

45:                                               ; preds = %41, %39
  %46 = load i8*, i8** %4, align 8
  ret i8* %46
}

declare dso_local %struct.kernfs_ops* @kernfs_ops(i32) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i32 @kernfs_seq_stop_active(%struct.seq_file*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
