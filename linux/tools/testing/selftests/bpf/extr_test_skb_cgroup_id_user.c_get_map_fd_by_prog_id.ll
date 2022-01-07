; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_skb_cgroup_id_user.c_get_map_fd_by_prog_id.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_skb_cgroup_id_user.c_get_map_fd_by_prog_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_prog_info = type { i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"Failed to get fd by prog id %d\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to get info by prog fd %d\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"No maps found for prog fd %d\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Failed to get fd by map id %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_map_fd_by_prog_id(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bpf_prog_info, align 4
  %4 = alloca i32, align 4
  %5 = alloca [1 x i32], align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = bitcast %struct.bpf_prog_info* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 8, i1 false)
  store i32 8, i32* %4, align 4
  store i32 -1, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @bpf_prog_get_fd_by_id(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @log_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %46

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.bpf_prog_info, %struct.bpf_prog_info* %3, i32 0, i32 0
  store i32 1, i32* %17, align 4
  %18 = getelementptr inbounds [1 x i32], [1 x i32]* %5, i64 0, i64 0
  %19 = ptrtoint i32* %18 to i64
  %20 = trunc i64 %19 to i32
  %21 = getelementptr inbounds %struct.bpf_prog_info, %struct.bpf_prog_info* %3, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i64 @bpf_obj_get_info_by_fd(i32 %22, %struct.bpf_prog_info* %3, i32* %4)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %16
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @log_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  br label %46

28:                                               ; preds = %16
  %29 = getelementptr inbounds %struct.bpf_prog_info, %struct.bpf_prog_info* %3, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @log_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  br label %46

35:                                               ; preds = %28
  %36 = getelementptr inbounds [1 x i32], [1 x i32]* %5, i64 0, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @bpf_map_get_fd_by_id(i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = getelementptr inbounds [1 x i32], [1 x i32]* %5, i64 0, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @log_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %41, %35
  br label %46

46:                                               ; preds = %45, %32, %25, %13
  %47 = load i32, i32* %6, align 4
  %48 = icmp sge i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @close(i32 %50)
  br label %52

52:                                               ; preds = %49, %46
  %53 = load i32, i32* %7, align 4
  ret i32 %53
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bpf_prog_get_fd_by_id(i32) #2

declare dso_local i32 @log_err(i8*, i32) #2

declare dso_local i64 @bpf_obj_get_info_by_fd(i32, %struct.bpf_prog_info*, i32*) #2

declare dso_local i32 @bpf_map_get_fd_by_id(i32) #2

declare dso_local i32 @close(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
