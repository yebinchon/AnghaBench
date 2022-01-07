; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_program__attach_raw_tracepoint.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_program__attach_raw_tracepoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_link = type { i32 }
%struct.bpf_program = type { i32 }
%struct.bpf_link_fd = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@STRERR_BUFSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"program '%s': can't attach before loaded\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@bpf_link__destroy_fd = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"program '%s': failed to attach to raw tracepoint '%s': %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bpf_link* @bpf_program__attach_raw_tracepoint(%struct.bpf_program* %0, i8* %1) #0 {
  %3 = alloca %struct.bpf_link*, align 8
  %4 = alloca %struct.bpf_program*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.bpf_link_fd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bpf_program* %0, %struct.bpf_program** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i32, i32* @STRERR_BUFSIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = load %struct.bpf_program*, %struct.bpf_program** %4, align 8
  %17 = call i32 @bpf_program__fd(%struct.bpf_program* %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load %struct.bpf_program*, %struct.bpf_program** %4, align 8
  %22 = call i32 @bpf_program__title(%struct.bpf_program* %21, i32 0)
  %23 = call i32 (i8*, i32, ...) @pr_warning(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.bpf_link* @ERR_PTR(i32 %25)
  store %struct.bpf_link* %26, %struct.bpf_link** %3, align 8
  store i32 1, i32* %11, align 4
  br label %64

27:                                               ; preds = %2
  %28 = call %struct.bpf_link_fd* @malloc(i32 16)
  store %struct.bpf_link_fd* %28, %struct.bpf_link_fd** %8, align 8
  %29 = load %struct.bpf_link_fd*, %struct.bpf_link_fd** %8, align 8
  %30 = icmp ne %struct.bpf_link_fd* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  %34 = call %struct.bpf_link* @ERR_PTR(i32 %33)
  store %struct.bpf_link* %34, %struct.bpf_link** %3, align 8
  store i32 1, i32* %11, align 4
  br label %64

35:                                               ; preds = %27
  %36 = load %struct.bpf_link_fd*, %struct.bpf_link_fd** %8, align 8
  %37 = getelementptr inbounds %struct.bpf_link_fd, %struct.bpf_link_fd* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32* @bpf_link__destroy_fd, i32** %38, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @bpf_raw_tracepoint_open(i8* %39, i32 %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %58

44:                                               ; preds = %35
  %45 = load i32, i32* @errno, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %10, align 4
  %47 = load %struct.bpf_link_fd*, %struct.bpf_link_fd** %8, align 8
  %48 = call i32 @free(%struct.bpf_link_fd* %47)
  %49 = load %struct.bpf_program*, %struct.bpf_program** %4, align 8
  %50 = call i32 @bpf_program__title(%struct.bpf_program* %49, i32 0)
  %51 = load i8*, i8** %5, align 8
  %52 = load i32, i32* %10, align 4
  %53 = trunc i64 %13 to i32
  %54 = call i32 @libbpf_strerror_r(i32 %52, i8* %15, i32 %53)
  %55 = call i32 (i8*, i32, ...) @pr_warning(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %50, i8* %51, i32 %54)
  %56 = load i32, i32* %10, align 4
  %57 = call %struct.bpf_link* @ERR_PTR(i32 %56)
  store %struct.bpf_link* %57, %struct.bpf_link** %3, align 8
  store i32 1, i32* %11, align 4
  br label %64

58:                                               ; preds = %35
  %59 = load i32, i32* %10, align 4
  %60 = load %struct.bpf_link_fd*, %struct.bpf_link_fd** %8, align 8
  %61 = getelementptr inbounds %struct.bpf_link_fd, %struct.bpf_link_fd* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.bpf_link_fd*, %struct.bpf_link_fd** %8, align 8
  %63 = bitcast %struct.bpf_link_fd* %62 to %struct.bpf_link*
  store %struct.bpf_link* %63, %struct.bpf_link** %3, align 8
  store i32 1, i32* %11, align 4
  br label %64

64:                                               ; preds = %58, %44, %31, %20
  %65 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %65)
  %66 = load %struct.bpf_link*, %struct.bpf_link** %3, align 8
  ret %struct.bpf_link* %66
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @bpf_program__fd(%struct.bpf_program*) #2

declare dso_local i32 @pr_warning(i8*, i32, ...) #2

declare dso_local i32 @bpf_program__title(%struct.bpf_program*, i32) #2

declare dso_local %struct.bpf_link* @ERR_PTR(i32) #2

declare dso_local %struct.bpf_link_fd* @malloc(i32) #2

declare dso_local i32 @bpf_raw_tracepoint_open(i8*, i32) #2

declare dso_local i32 @free(%struct.bpf_link_fd*) #2

declare dso_local i32 @libbpf_strerror_r(i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
