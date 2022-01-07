; ModuleID = '/home/carl/AnghaBench/linux/fs/kernfs/extr_file.c_kernfs_fop_poll.c'
source_filename = "/home/carl/AnghaBench/linux/fs/kernfs/extr_file.c_kernfs_fop_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.kernfs_open_file = type { i32 }
%struct.kernfs_node = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.kernfs_open_file*, i32*)* }

@DEFAULT_POLLMASK = common dso_local global i32 0, align 4
@EPOLLERR = common dso_local global i32 0, align 4
@EPOLLPRI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @kernfs_fop_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kernfs_fop_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.kernfs_open_file*, align 8
  %7 = alloca %struct.kernfs_node*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = call %struct.kernfs_open_file* @kernfs_of(%struct.file* %9)
  store %struct.kernfs_open_file* %10, %struct.kernfs_open_file** %6, align 8
  %11 = load %struct.file*, %struct.file** %4, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.kernfs_node* @kernfs_dentry_node(i32 %14)
  store %struct.kernfs_node* %15, %struct.kernfs_node** %7, align 8
  %16 = load %struct.kernfs_node*, %struct.kernfs_node** %7, align 8
  %17 = call i32 @kernfs_get_active(%struct.kernfs_node* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @DEFAULT_POLLMASK, align 4
  %21 = load i32, i32* @EPOLLERR, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @EPOLLPRI, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %3, align 4
  br label %51

25:                                               ; preds = %2
  %26 = load %struct.kernfs_node*, %struct.kernfs_node** %7, align 8
  %27 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32 (%struct.kernfs_open_file*, i32*)*, i32 (%struct.kernfs_open_file*, i32*)** %30, align 8
  %32 = icmp ne i32 (%struct.kernfs_open_file*, i32*)* %31, null
  br i1 %32, label %33, label %43

33:                                               ; preds = %25
  %34 = load %struct.kernfs_node*, %struct.kernfs_node** %7, align 8
  %35 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32 (%struct.kernfs_open_file*, i32*)*, i32 (%struct.kernfs_open_file*, i32*)** %38, align 8
  %40 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %6, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 %39(%struct.kernfs_open_file* %40, i32* %41)
  store i32 %42, i32* %8, align 4
  br label %47

43:                                               ; preds = %25
  %44 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %6, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @kernfs_generic_poll(%struct.kernfs_open_file* %44, i32* %45)
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %43, %33
  %48 = load %struct.kernfs_node*, %struct.kernfs_node** %7, align 8
  %49 = call i32 @kernfs_put_active(%struct.kernfs_node* %48)
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %47, %19
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.kernfs_open_file* @kernfs_of(%struct.file*) #1

declare dso_local %struct.kernfs_node* @kernfs_dentry_node(i32) #1

declare dso_local i32 @kernfs_get_active(%struct.kernfs_node*) #1

declare dso_local i32 @kernfs_generic_poll(%struct.kernfs_open_file*, i32*) #1

declare dso_local i32 @kernfs_put_active(%struct.kernfs_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
