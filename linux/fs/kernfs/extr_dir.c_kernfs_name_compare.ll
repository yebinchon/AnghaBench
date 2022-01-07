; ModuleID = '/home/carl/AnghaBench/linux/fs/kernfs/extr_dir.c_kernfs_name_compare.c'
source_filename = "/home/carl/AnghaBench/linux/fs/kernfs/extr_dir.c_kernfs_name_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernfs_node = type { i32, i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*, %struct.kernfs_node*)* @kernfs_name_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kernfs_name_compare(i32 %0, i8* %1, i8* %2, %struct.kernfs_node* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.kernfs_node*, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.kernfs_node* %3, %struct.kernfs_node** %9, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.kernfs_node*, %struct.kernfs_node** %9, align 8
  %12 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ult i32 %10, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %43

16:                                               ; preds = %4
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.kernfs_node*, %struct.kernfs_node** %9, align 8
  %19 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ugt i32 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 1, i32* %5, align 4
  br label %43

23:                                               ; preds = %16
  %24 = load i8*, i8** %8, align 8
  %25 = load %struct.kernfs_node*, %struct.kernfs_node** %9, align 8
  %26 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ult i8* %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 -1, i32* %5, align 4
  br label %43

30:                                               ; preds = %23
  %31 = load i8*, i8** %8, align 8
  %32 = load %struct.kernfs_node*, %struct.kernfs_node** %9, align 8
  %33 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ugt i8* %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 1, i32* %5, align 4
  br label %43

37:                                               ; preds = %30
  %38 = load i8*, i8** %7, align 8
  %39 = load %struct.kernfs_node*, %struct.kernfs_node** %9, align 8
  %40 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @strcmp(i8* %38, i32 %41)
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %37, %36, %29, %22, %15
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i32 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
