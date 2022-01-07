; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_inode.c___get_prog_inode.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_inode.c___get_prog_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_prog = type { i32 }
%struct.inode = type { %struct.bpf_prog*, i32* }

@MAY_READ = common dso_local global i32 0, align 4
@bpf_map_iops = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@bpf_prog_iops = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bpf_prog* (%struct.inode*, i32)* @__get_prog_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bpf_prog* @__get_prog_inode(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.bpf_prog*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bpf_prog*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = load i32, i32* @MAY_READ, align 4
  %10 = call i32 @inode_permission(%struct.inode* %8, i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* %7, align 4
  %15 = call %struct.bpf_prog* @ERR_PTR(i32 %14)
  store %struct.bpf_prog* %15, %struct.bpf_prog** %3, align 8
  br label %56

16:                                               ; preds = %2
  %17 = load %struct.inode*, %struct.inode** %4, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, @bpf_map_iops
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.bpf_prog* @ERR_PTR(i32 %23)
  store %struct.bpf_prog* %24, %struct.bpf_prog** %3, align 8
  br label %56

25:                                               ; preds = %16
  %26 = load %struct.inode*, %struct.inode** %4, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, @bpf_prog_iops
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i32, i32* @EACCES, align 4
  %32 = sub nsw i32 0, %31
  %33 = call %struct.bpf_prog* @ERR_PTR(i32 %32)
  store %struct.bpf_prog* %33, %struct.bpf_prog** %3, align 8
  br label %56

34:                                               ; preds = %25
  %35 = load %struct.inode*, %struct.inode** %4, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 0
  %37 = load %struct.bpf_prog*, %struct.bpf_prog** %36, align 8
  store %struct.bpf_prog* %37, %struct.bpf_prog** %6, align 8
  %38 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %39 = call i32 @security_bpf_prog(%struct.bpf_prog* %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load i32, i32* %7, align 4
  %44 = call %struct.bpf_prog* @ERR_PTR(i32 %43)
  store %struct.bpf_prog* %44, %struct.bpf_prog** %3, align 8
  br label %56

45:                                               ; preds = %34
  %46 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %47 = call i32 @bpf_prog_get_ok(%struct.bpf_prog* %46, i32* %5, i32 0)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  %52 = call %struct.bpf_prog* @ERR_PTR(i32 %51)
  store %struct.bpf_prog* %52, %struct.bpf_prog** %3, align 8
  br label %56

53:                                               ; preds = %45
  %54 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %55 = call %struct.bpf_prog* @bpf_prog_inc(%struct.bpf_prog* %54)
  store %struct.bpf_prog* %55, %struct.bpf_prog** %3, align 8
  br label %56

56:                                               ; preds = %53, %49, %42, %30, %21, %13
  %57 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  ret %struct.bpf_prog* %57
}

declare dso_local i32 @inode_permission(%struct.inode*, i32) #1

declare dso_local %struct.bpf_prog* @ERR_PTR(i32) #1

declare dso_local i32 @security_bpf_prog(%struct.bpf_prog*) #1

declare dso_local i32 @bpf_prog_get_ok(%struct.bpf_prog*, i32*, i32) #1

declare dso_local %struct.bpf_prog* @bpf_prog_inc(%struct.bpf_prog*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
