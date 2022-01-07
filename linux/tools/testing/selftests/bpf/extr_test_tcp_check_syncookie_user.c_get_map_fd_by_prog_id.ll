; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_tcp_check_syncookie_user.c_get_map_fd_by_prog_id.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_tcp_check_syncookie_user.c_get_map_fd_by_prog_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_prog_info = type { i32, i64, i32 }

@.str = private unnamed_addr constant [31 x i8] c"Failed to get fd by prog id %d\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to get info by prog fd %d\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"No maps found for prog fd %d\00", align 1
@BPF_PROG_TYPE_XDP = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"Failed to get fd by map id %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @get_map_fd_by_prog_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_map_fd_by_prog_id(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.bpf_prog_info, align 8
  %6 = alloca i32, align 4
  %7 = alloca [1 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %10 = bitcast %struct.bpf_prog_info* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 24, i1 false)
  store i32 24, i32* %6, align 4
  store i32 -1, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @bpf_prog_get_fd_by_id(i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @log_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %54

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.bpf_prog_info, %struct.bpf_prog_info* %5, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = getelementptr inbounds [1 x i32], [1 x i32]* %7, i64 0, i64 0
  %21 = ptrtoint i32* %20 to i64
  %22 = trunc i64 %21 to i32
  %23 = getelementptr inbounds %struct.bpf_prog_info, %struct.bpf_prog_info* %5, i32 0, i32 2
  store i32 %22, i32* %23, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i64 @bpf_obj_get_info_by_fd(i32 %24, %struct.bpf_prog_info* %5, i32* %6)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %18
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @log_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  br label %54

30:                                               ; preds = %18
  %31 = getelementptr inbounds %struct.bpf_prog_info, %struct.bpf_prog_info* %5, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @log_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  br label %54

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.bpf_prog_info, %struct.bpf_prog_info* %5, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @BPF_PROG_TYPE_XDP, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = load i32*, i32** %4, align 8
  store i32 %42, i32* %43, align 4
  %44 = getelementptr inbounds [1 x i32], [1 x i32]* %7, i64 0, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @bpf_map_get_fd_by_id(i32 %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %37
  %50 = getelementptr inbounds [1 x i32], [1 x i32]* %7, i64 0, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @log_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %49, %37
  br label %54

54:                                               ; preds = %53, %34, %27, %15
  %55 = load i32, i32* %8, align 4
  %56 = icmp sge i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @close(i32 %58)
  br label %60

60:                                               ; preds = %57, %54
  %61 = load i32, i32* %9, align 4
  ret i32 %61
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
