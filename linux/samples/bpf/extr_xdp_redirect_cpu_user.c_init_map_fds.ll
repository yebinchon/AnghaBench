; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_redirect_cpu_user.c_init_map_fds.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_redirect_cpu_user.c_init_map_fds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_object = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"cpu_map\00", align 1
@cpu_map_fd = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"rx_cnt\00", align 1
@rx_cnt_map_fd = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"redirect_err_cnt\00", align 1
@redirect_err_cnt_map_fd = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"cpumap_enqueue_cnt\00", align 1
@cpumap_enqueue_cnt_map_fd = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"cpumap_kthread_cnt\00", align 1
@cpumap_kthread_cnt_map_fd = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"cpus_available\00", align 1
@cpus_available_map_fd = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [11 x i8] c"cpus_count\00", align 1
@cpus_count_map_fd = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [14 x i8] c"cpus_iterator\00", align 1
@cpus_iterator_map_fd = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [14 x i8] c"exception_cnt\00", align 1
@exception_cnt_map_fd = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_object*)* @init_map_fds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_map_fds(%struct.bpf_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bpf_object*, align 8
  store %struct.bpf_object* %0, %struct.bpf_object** %3, align 8
  %4 = load %struct.bpf_object*, %struct.bpf_object** %3, align 8
  %5 = call i64 @bpf_object__find_map_fd_by_name(%struct.bpf_object* %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i64 %5, i64* @cpu_map_fd, align 8
  %6 = load %struct.bpf_object*, %struct.bpf_object** %3, align 8
  %7 = call i64 @bpf_object__find_map_fd_by_name(%struct.bpf_object* %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i64 %7, i64* @rx_cnt_map_fd, align 8
  %8 = load %struct.bpf_object*, %struct.bpf_object** %3, align 8
  %9 = call i64 @bpf_object__find_map_fd_by_name(%struct.bpf_object* %8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  store i64 %9, i64* @redirect_err_cnt_map_fd, align 8
  %10 = load %struct.bpf_object*, %struct.bpf_object** %3, align 8
  %11 = call i64 @bpf_object__find_map_fd_by_name(%struct.bpf_object* %10, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  store i64 %11, i64* @cpumap_enqueue_cnt_map_fd, align 8
  %12 = load %struct.bpf_object*, %struct.bpf_object** %3, align 8
  %13 = call i64 @bpf_object__find_map_fd_by_name(%struct.bpf_object* %12, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  store i64 %13, i64* @cpumap_kthread_cnt_map_fd, align 8
  %14 = load %struct.bpf_object*, %struct.bpf_object** %3, align 8
  %15 = call i64 @bpf_object__find_map_fd_by_name(%struct.bpf_object* %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  store i64 %15, i64* @cpus_available_map_fd, align 8
  %16 = load %struct.bpf_object*, %struct.bpf_object** %3, align 8
  %17 = call i64 @bpf_object__find_map_fd_by_name(%struct.bpf_object* %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  store i64 %17, i64* @cpus_count_map_fd, align 8
  %18 = load %struct.bpf_object*, %struct.bpf_object** %3, align 8
  %19 = call i64 @bpf_object__find_map_fd_by_name(%struct.bpf_object* %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  store i64 %19, i64* @cpus_iterator_map_fd, align 8
  %20 = load %struct.bpf_object*, %struct.bpf_object** %3, align 8
  %21 = call i64 @bpf_object__find_map_fd_by_name(%struct.bpf_object* %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  store i64 %21, i64* @exception_cnt_map_fd, align 8
  %22 = load i64, i64* @cpu_map_fd, align 8
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %48, label %24

24:                                               ; preds = %1
  %25 = load i64, i64* @rx_cnt_map_fd, align 8
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %48, label %27

27:                                               ; preds = %24
  %28 = load i64, i64* @redirect_err_cnt_map_fd, align 8
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %48, label %30

30:                                               ; preds = %27
  %31 = load i64, i64* @cpumap_enqueue_cnt_map_fd, align 8
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %48, label %33

33:                                               ; preds = %30
  %34 = load i64, i64* @cpumap_kthread_cnt_map_fd, align 8
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %48, label %36

36:                                               ; preds = %33
  %37 = load i64, i64* @cpus_available_map_fd, align 8
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %36
  %40 = load i64, i64* @cpus_count_map_fd, align 8
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %39
  %43 = load i64, i64* @cpus_iterator_map_fd, align 8
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load i64, i64* @exception_cnt_map_fd, align 8
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45, %42, %39, %36, %33, %30, %27, %24, %1
  %49 = load i32, i32* @ENOENT, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %52

51:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %48
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i64 @bpf_object__find_map_fd_by_name(%struct.bpf_object*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
