; ModuleID = '/home/carl/AnghaBench/linux/fs/kernfs/extr_inode.c_kernfs_xattr_set.c'
source_filename = "/home/carl/AnghaBench/linux/fs/kernfs/extr_inode.c_kernfs_xattr_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernfs_node = type { i32 }
%struct.kernfs_iattrs = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kernfs_xattr_set(%struct.kernfs_node* %0, i8* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.kernfs_node*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.kernfs_iattrs*, align 8
  store %struct.kernfs_node* %0, %struct.kernfs_node** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.kernfs_node*, %struct.kernfs_node** %7, align 8
  %14 = call %struct.kernfs_iattrs* @kernfs_iattrs(%struct.kernfs_node* %13)
  store %struct.kernfs_iattrs* %14, %struct.kernfs_iattrs** %12, align 8
  %15 = load %struct.kernfs_iattrs*, %struct.kernfs_iattrs** %12, align 8
  %16 = icmp ne %struct.kernfs_iattrs* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %5
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %6, align 4
  br label %28

20:                                               ; preds = %5
  %21 = load %struct.kernfs_iattrs*, %struct.kernfs_iattrs** %12, align 8
  %22 = getelementptr inbounds %struct.kernfs_iattrs, %struct.kernfs_iattrs* %21, i32 0, i32 0
  %23 = load i8*, i8** %8, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = load i64, i64* %10, align 8
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @simple_xattr_set(i32* %22, i8* %23, i8* %24, i64 %25, i32 %26)
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %20, %17
  %29 = load i32, i32* %6, align 4
  ret i32 %29
}

declare dso_local %struct.kernfs_iattrs* @kernfs_iattrs(%struct.kernfs_node*) #1

declare dso_local i32 @simple_xattr_set(i32*, i8*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
