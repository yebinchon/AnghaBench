; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_hbm.c_prog_load.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_hbm.c_prog_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_prog_load_attr = type { i8*, i32, i32 }
%struct.bpf_map = type { i32 }

@BPF_CGROUP_INET_EGRESS = common dso_local global i32 0, align 4
@BPF_PROG_TYPE_CGROUP_SKB = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Error accessing file %s: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@obj = common dso_local global i32 0, align 4
@bpfprog_fd = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"queue_stats\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Map not found: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"ERROR: load_bpf_file failed for: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"  Output from verifier:\0A%s\0A------\0A\00", align 1
@bpf_log_buf = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @prog_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prog_load(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.bpf_prog_load_attr, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bpf_map*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = getelementptr inbounds %struct.bpf_prog_load_attr, %struct.bpf_prog_load_attr* %4, i32 0, i32 0
  %9 = load i8*, i8** %3, align 8
  store i8* %9, i8** %8, align 8
  %10 = getelementptr inbounds %struct.bpf_prog_load_attr, %struct.bpf_prog_load_attr* %4, i32 0, i32 1
  %11 = load i32, i32* @BPF_CGROUP_INET_EGRESS, align 4
  store i32 %11, i32* %10, align 8
  %12 = getelementptr inbounds %struct.bpf_prog_load_attr, %struct.bpf_prog_load_attr* %4, i32 0, i32 2
  %13 = load i32, i32* @BPF_PROG_TYPE_CGROUP_SKB, align 4
  store i32 %13, i32* %12, align 4
  store i32 0, i32* %7, align 4
  %14 = load i8*, i8** %3, align 8
  %15 = load i32, i32* @O_RDONLY, align 4
  %16 = call i64 @access(i8* %14, i32 %15)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load i8*, i8** %3, align 8
  %20 = load i32, i32* @errno, align 4
  %21 = call i8* @strerror(i32 %20)
  %22 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %19, i8* %21)
  store i32 1, i32* %2, align 4
  br label %54

23:                                               ; preds = %1
  %24 = call i64 @bpf_prog_load_xattr(%struct.bpf_prog_load_attr* %4, i32* @obj, i32* @bpfprog_fd)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 1, i32* %7, align 4
  br label %27

27:                                               ; preds = %26, %23
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %42, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* @obj, align 4
  %32 = call %struct.bpf_map* @bpf_object__find_map_by_name(i32 %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store %struct.bpf_map* %32, %struct.bpf_map** %6, align 8
  %33 = load %struct.bpf_map*, %struct.bpf_map** %6, align 8
  %34 = call i32 @bpf_map__fd(%struct.bpf_map* %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = load i32, i32* %5, align 4
  %39 = call i8* @strerror(i32 %38)
  %40 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %39)
  store i32 1, i32* %7, align 4
  br label %41

41:                                               ; preds = %37, %30
  br label %42

42:                                               ; preds = %41, %27
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load i8*, i8** %3, align 8
  %47 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i8* %46)
  %48 = load i8*, i8** @bpf_log_buf, align 8
  %49 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* %48)
  store i32 -1, i32* %7, align 4
  br label %52

50:                                               ; preds = %42
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %50, %45
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %52, %18
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i64 @access(i8*, i32) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i64 @bpf_prog_load_xattr(%struct.bpf_prog_load_attr*, i32*, i32*) #1

declare dso_local %struct.bpf_map* @bpf_object__find_map_by_name(i32, i8*) #1

declare dso_local i32 @bpf_map__fd(%struct.bpf_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
