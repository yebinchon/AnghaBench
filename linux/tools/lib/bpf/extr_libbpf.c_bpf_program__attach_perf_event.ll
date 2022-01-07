; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_program__attach_perf_event.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_program__attach_perf_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_link = type { i32 }
%struct.bpf_program = type { i32 }
%struct.bpf_link_fd = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@STRERR_BUFSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"program '%s': invalid perf event FD %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [66 x i8] c"program '%s': can't attach BPF program w/o FD (did you load it?)\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@bpf_link__destroy_perf_event = common dso_local global i32 0, align 4
@PERF_EVENT_IOC_SET_BPF = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"program '%s': failed to attach to pfd %d: %s\0A\00", align 1
@PERF_EVENT_IOC_ENABLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"program '%s': failed to enable pfd %d: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bpf_link* @bpf_program__attach_perf_event(%struct.bpf_program* %0, i32 %1) #0 {
  %3 = alloca %struct.bpf_link*, align 8
  %4 = alloca %struct.bpf_program*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.bpf_link_fd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bpf_program* %0, %struct.bpf_program** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* @STRERR_BUFSIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %2
  %19 = load %struct.bpf_program*, %struct.bpf_program** %4, align 8
  %20 = call i32 @bpf_program__title(%struct.bpf_program* %19, i32 0)
  %21 = load i32, i32* %5, align 4
  %22 = call i32 (i8*, i32, ...) @pr_warning(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21)
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.bpf_link* @ERR_PTR(i32 %24)
  store %struct.bpf_link* %25, %struct.bpf_link** %3, align 8
  store i32 1, i32* %11, align 4
  br label %94

26:                                               ; preds = %2
  %27 = load %struct.bpf_program*, %struct.bpf_program** %4, align 8
  %28 = call i32 @bpf_program__fd(%struct.bpf_program* %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load %struct.bpf_program*, %struct.bpf_program** %4, align 8
  %33 = call i32 @bpf_program__title(%struct.bpf_program* %32, i32 0)
  %34 = call i32 (i8*, i32, ...) @pr_warning(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  %37 = call %struct.bpf_link* @ERR_PTR(i32 %36)
  store %struct.bpf_link* %37, %struct.bpf_link** %3, align 8
  store i32 1, i32* %11, align 4
  br label %94

38:                                               ; preds = %26
  %39 = call %struct.bpf_link_fd* @malloc(i32 16)
  store %struct.bpf_link_fd* %39, %struct.bpf_link_fd** %8, align 8
  %40 = load %struct.bpf_link_fd*, %struct.bpf_link_fd** %8, align 8
  %41 = icmp ne %struct.bpf_link_fd* %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  %45 = call %struct.bpf_link* @ERR_PTR(i32 %44)
  store %struct.bpf_link* %45, %struct.bpf_link** %3, align 8
  store i32 1, i32* %11, align 4
  br label %94

46:                                               ; preds = %38
  %47 = load %struct.bpf_link_fd*, %struct.bpf_link_fd** %8, align 8
  %48 = getelementptr inbounds %struct.bpf_link_fd, %struct.bpf_link_fd* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i32* @bpf_link__destroy_perf_event, i32** %49, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.bpf_link_fd*, %struct.bpf_link_fd** %8, align 8
  %52 = getelementptr inbounds %struct.bpf_link_fd, %struct.bpf_link_fd* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @PERF_EVENT_IOC_SET_BPF, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i64 @ioctl(i32 %53, i32 %54, i32 %55)
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %46
  %59 = load i32, i32* @errno, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %10, align 4
  %61 = load %struct.bpf_link_fd*, %struct.bpf_link_fd** %8, align 8
  %62 = call i32 @free(%struct.bpf_link_fd* %61)
  %63 = load %struct.bpf_program*, %struct.bpf_program** %4, align 8
  %64 = call i32 @bpf_program__title(%struct.bpf_program* %63, i32 0)
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* %10, align 4
  %67 = trunc i64 %13 to i32
  %68 = call i32 @libbpf_strerror_r(i32 %66, i8* %15, i32 %67)
  %69 = call i32 (i8*, i32, ...) @pr_warning(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %64, i32 %65, i32 %68)
  %70 = load i32, i32* %10, align 4
  %71 = call %struct.bpf_link* @ERR_PTR(i32 %70)
  store %struct.bpf_link* %71, %struct.bpf_link** %3, align 8
  store i32 1, i32* %11, align 4
  br label %94

72:                                               ; preds = %46
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @PERF_EVENT_IOC_ENABLE, align 4
  %75 = call i64 @ioctl(i32 %73, i32 %74, i32 0)
  %76 = icmp slt i64 %75, 0
  br i1 %76, label %77, label %91

77:                                               ; preds = %72
  %78 = load i32, i32* @errno, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %10, align 4
  %80 = load %struct.bpf_link_fd*, %struct.bpf_link_fd** %8, align 8
  %81 = call i32 @free(%struct.bpf_link_fd* %80)
  %82 = load %struct.bpf_program*, %struct.bpf_program** %4, align 8
  %83 = call i32 @bpf_program__title(%struct.bpf_program* %82, i32 0)
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* %10, align 4
  %86 = trunc i64 %13 to i32
  %87 = call i32 @libbpf_strerror_r(i32 %85, i8* %15, i32 %86)
  %88 = call i32 (i8*, i32, ...) @pr_warning(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %83, i32 %84, i32 %87)
  %89 = load i32, i32* %10, align 4
  %90 = call %struct.bpf_link* @ERR_PTR(i32 %89)
  store %struct.bpf_link* %90, %struct.bpf_link** %3, align 8
  store i32 1, i32* %11, align 4
  br label %94

91:                                               ; preds = %72
  %92 = load %struct.bpf_link_fd*, %struct.bpf_link_fd** %8, align 8
  %93 = bitcast %struct.bpf_link_fd* %92 to %struct.bpf_link*
  store %struct.bpf_link* %93, %struct.bpf_link** %3, align 8
  store i32 1, i32* %11, align 4
  br label %94

94:                                               ; preds = %91, %77, %58, %42, %31, %18
  %95 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %95)
  %96 = load %struct.bpf_link*, %struct.bpf_link** %3, align 8
  ret %struct.bpf_link* %96
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pr_warning(i8*, i32, ...) #2

declare dso_local i32 @bpf_program__title(%struct.bpf_program*, i32) #2

declare dso_local %struct.bpf_link* @ERR_PTR(i32) #2

declare dso_local i32 @bpf_program__fd(%struct.bpf_program*) #2

declare dso_local %struct.bpf_link_fd* @malloc(i32) #2

declare dso_local i64 @ioctl(i32, i32, i32) #2

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
