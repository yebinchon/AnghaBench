; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_syscall.c_bpf_prog_get_fd_by_id.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_syscall.c_bpf_prog_get_fd_by_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.bpf_attr = type { i32 }
%struct.bpf_prog = type { i32 }

@BPF_PROG_GET_FD_BY_ID = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@prog_idr_lock = common dso_local global i32 0, align 4
@prog_idr = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.bpf_attr*)* @bpf_prog_get_fd_by_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_prog_get_fd_by_id(%union.bpf_attr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.bpf_attr*, align 8
  %4 = alloca %struct.bpf_prog*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %union.bpf_attr* %0, %union.bpf_attr** %3, align 8
  %7 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %8 = bitcast %union.bpf_attr* %7 to i32*
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* @BPF_PROG_GET_FD_BY_ID, align 4
  %11 = call i64 @CHECK_ATTR(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %54

16:                                               ; preds = %1
  %17 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %18 = call i32 @capable(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* @EPERM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %54

23:                                               ; preds = %16
  %24 = call i32 @spin_lock_bh(i32* @prog_idr_lock)
  %25 = load i32, i32* %5, align 4
  %26 = call %struct.bpf_prog* @idr_find(i32* @prog_idr, i32 %25)
  store %struct.bpf_prog* %26, %struct.bpf_prog** %4, align 8
  %27 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %28 = icmp ne %struct.bpf_prog* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %31 = call %struct.bpf_prog* @bpf_prog_inc_not_zero(%struct.bpf_prog* %30)
  store %struct.bpf_prog* %31, %struct.bpf_prog** %4, align 8
  br label %36

32:                                               ; preds = %23
  %33 = load i32, i32* @ENOENT, align 4
  %34 = sub nsw i32 0, %33
  %35 = call %struct.bpf_prog* @ERR_PTR(i32 %34)
  store %struct.bpf_prog* %35, %struct.bpf_prog** %4, align 8
  br label %36

36:                                               ; preds = %32, %29
  %37 = call i32 @spin_unlock_bh(i32* @prog_idr_lock)
  %38 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %39 = call i64 @IS_ERR(%struct.bpf_prog* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %43 = call i32 @PTR_ERR(%struct.bpf_prog* %42)
  store i32 %43, i32* %2, align 4
  br label %54

44:                                               ; preds = %36
  %45 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %46 = call i32 @bpf_prog_new_fd(%struct.bpf_prog* %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %51 = call i32 @bpf_prog_put(%struct.bpf_prog* %50)
  br label %52

52:                                               ; preds = %49, %44
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %52, %41, %20, %13
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i64 @CHECK_ATTR(i32) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.bpf_prog* @idr_find(i32*, i32) #1

declare dso_local %struct.bpf_prog* @bpf_prog_inc_not_zero(%struct.bpf_prog*) #1

declare dso_local %struct.bpf_prog* @ERR_PTR(i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i64 @IS_ERR(%struct.bpf_prog*) #1

declare dso_local i32 @PTR_ERR(%struct.bpf_prog*) #1

declare dso_local i32 @bpf_prog_new_fd(%struct.bpf_prog*) #1

declare dso_local i32 @bpf_prog_put(%struct.bpf_prog*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
