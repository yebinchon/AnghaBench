; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_prog.c_prog_fd_by_tag.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_prog.c_prog_fd_by_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_prog_info = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"can't get prog by id (%u): %s\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"can't get prog info (%u): %s\00", align 1
@BPF_TAG_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @prog_fd_by_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prog_fd_by_tag(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bpf_prog_info, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %1, %50
  %10 = bitcast %struct.bpf_prog_info* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 4, i1 false)
  store i32 4, i32* %8, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @bpf_prog_get_next_id(i32 %11, i32* %4)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = load i32, i32* @errno, align 4
  %17 = call i32 @strerror(i32 %16)
  %18 = call i32 (i8*, i32, ...) @p_err(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %17)
  store i32 -1, i32* %2, align 4
  br label %53

19:                                               ; preds = %9
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @bpf_prog_get_fd_by_id(i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @errno, align 4
  %27 = call i32 @strerror(i32 %26)
  %28 = call i32 (i8*, i32, ...) @p_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %25, i32 %27)
  store i32 -1, i32* %2, align 4
  br label %53

29:                                               ; preds = %19
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @bpf_obj_get_info_by_fd(i32 %30, %struct.bpf_prog_info* %7, i32* %8)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @errno, align 4
  %37 = call i32 @strerror(i32 %36)
  %38 = call i32 (i8*, i32, ...) @p_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %35, i32 %37)
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @close(i32 %39)
  store i32 -1, i32* %2, align 4
  br label %53

41:                                               ; preds = %29
  %42 = load i8*, i8** %3, align 8
  %43 = getelementptr inbounds %struct.bpf_prog_info, %struct.bpf_prog_info* %7, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @BPF_TAG_SIZE, align 4
  %46 = call i32 @memcmp(i8* %42, i32 %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %41
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %2, align 4
  br label %53

50:                                               ; preds = %41
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @close(i32 %51)
  br label %9

53:                                               ; preds = %48, %34, %24, %15
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bpf_prog_get_next_id(i32, i32*) #2

declare dso_local i32 @p_err(i8*, i32, ...) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i32 @bpf_prog_get_fd_by_id(i32) #2

declare dso_local i32 @bpf_obj_get_info_by_fd(i32, %struct.bpf_prog_info*, i32*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @memcmp(i8*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
