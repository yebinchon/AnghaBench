; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_inode.c_bpf_obj_do_get.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_inode.c_bpf_obj_do_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filename = type { i32 }
%struct.inode = type { i32 }
%struct.path = type { i32 }

@LOOKUP_FOLLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.filename*, i32*, i32)* @bpf_obj_do_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @bpf_obj_do_get(%struct.filename* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.filename*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.path, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.filename* %0, %struct.filename** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.filename*, %struct.filename** %5, align 8
  %13 = getelementptr inbounds %struct.filename, %struct.filename* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @LOOKUP_FOLLOW, align 4
  %16 = call i32 @kern_path(i32 %14, i32 %15, %struct.path* %9)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* %11, align 4
  %21 = call i8* @ERR_PTR(i32 %20)
  store i8* %21, i8** %4, align 8
  br label %59

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.path, %struct.path* %9, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.inode* @d_backing_inode(i32 %24)
  store %struct.inode* %25, %struct.inode** %8, align 8
  %26 = load %struct.inode*, %struct.inode** %8, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @ACC_MODE(i32 %27)
  %29 = call i32 @inode_permission(%struct.inode* %26, i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  br label %55

33:                                               ; preds = %22
  %34 = load %struct.inode*, %struct.inode** %8, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @bpf_inode_type(%struct.inode* %34, i32* %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %55

40:                                               ; preds = %33
  %41 = load %struct.inode*, %struct.inode** %8, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @bpf_any_get(i32 %43, i32 %45)
  store i8* %46, i8** %10, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = call i32 @IS_ERR(i8* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %40
  %51 = call i32 @touch_atime(%struct.path* %9)
  br label %52

52:                                               ; preds = %50, %40
  %53 = call i32 @path_put(%struct.path* %9)
  %54 = load i8*, i8** %10, align 8
  store i8* %54, i8** %4, align 8
  br label %59

55:                                               ; preds = %39, %32
  %56 = call i32 @path_put(%struct.path* %9)
  %57 = load i32, i32* %11, align 4
  %58 = call i8* @ERR_PTR(i32 %57)
  store i8* %58, i8** %4, align 8
  br label %59

59:                                               ; preds = %55, %52, %19
  %60 = load i8*, i8** %4, align 8
  ret i8* %60
}

declare dso_local i32 @kern_path(i32, i32, %struct.path*) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local %struct.inode* @d_backing_inode(i32) #1

declare dso_local i32 @inode_permission(%struct.inode*, i32) #1

declare dso_local i32 @ACC_MODE(i32) #1

declare dso_local i32 @bpf_inode_type(%struct.inode*, i32*) #1

declare dso_local i8* @bpf_any_get(i32, i32) #1

declare dso_local i32 @IS_ERR(i8*) #1

declare dso_local i32 @touch_atime(%struct.path*) #1

declare dso_local i32 @path_put(%struct.path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
