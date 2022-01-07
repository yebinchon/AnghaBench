; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_program__attach_tracepoint.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_program__attach_tracepoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_link = type { i32 }
%struct.bpf_program = type { i32 }

@STRERR_BUFSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"program '%s': failed to create tracepoint '%s/%s' perf event: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"program '%s': failed to attach to tracepoint '%s/%s': %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bpf_link* @bpf_program__attach_tracepoint(%struct.bpf_program* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.bpf_link*, align 8
  %5 = alloca %struct.bpf_program*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.bpf_link*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.bpf_program* %0, %struct.bpf_program** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i32, i32* @STRERR_BUFSIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @perf_event_open_tracepoint(i8* %18, i8* %19)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %3
  %24 = load %struct.bpf_program*, %struct.bpf_program** %5, align 8
  %25 = call i32 @bpf_program__title(%struct.bpf_program* %24, i32 0)
  %26 = load i8*, i8** %6, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load i32, i32* %11, align 4
  %29 = trunc i64 %15 to i32
  %30 = call i32 @libbpf_strerror_r(i32 %28, i8* %17, i32 %29)
  %31 = call i32 @pr_warning(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %25, i8* %26, i8* %27, i32 %30)
  %32 = load i32, i32* %11, align 4
  %33 = call %struct.bpf_link* @ERR_PTR(i32 %32)
  store %struct.bpf_link* %33, %struct.bpf_link** %4, align 8
  store i32 1, i32* %13, align 4
  br label %57

34:                                               ; preds = %3
  %35 = load %struct.bpf_program*, %struct.bpf_program** %5, align 8
  %36 = load i32, i32* %11, align 4
  %37 = call %struct.bpf_link* @bpf_program__attach_perf_event(%struct.bpf_program* %35, i32 %36)
  store %struct.bpf_link* %37, %struct.bpf_link** %10, align 8
  %38 = load %struct.bpf_link*, %struct.bpf_link** %10, align 8
  %39 = call i64 @IS_ERR(%struct.bpf_link* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %34
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @close(i32 %42)
  %44 = load %struct.bpf_link*, %struct.bpf_link** %10, align 8
  %45 = call i32 @PTR_ERR(%struct.bpf_link* %44)
  store i32 %45, i32* %12, align 4
  %46 = load %struct.bpf_program*, %struct.bpf_program** %5, align 8
  %47 = call i32 @bpf_program__title(%struct.bpf_program* %46, i32 0)
  %48 = load i8*, i8** %6, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = load i32, i32* %12, align 4
  %51 = trunc i64 %15 to i32
  %52 = call i32 @libbpf_strerror_r(i32 %50, i8* %17, i32 %51)
  %53 = call i32 @pr_warning(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %47, i8* %48, i8* %49, i32 %52)
  %54 = load %struct.bpf_link*, %struct.bpf_link** %10, align 8
  store %struct.bpf_link* %54, %struct.bpf_link** %4, align 8
  store i32 1, i32* %13, align 4
  br label %57

55:                                               ; preds = %34
  %56 = load %struct.bpf_link*, %struct.bpf_link** %10, align 8
  store %struct.bpf_link* %56, %struct.bpf_link** %4, align 8
  store i32 1, i32* %13, align 4
  br label %57

57:                                               ; preds = %55, %41, %23
  %58 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %58)
  %59 = load %struct.bpf_link*, %struct.bpf_link** %4, align 8
  ret %struct.bpf_link* %59
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @perf_event_open_tracepoint(i8*, i8*) #2

declare dso_local i32 @pr_warning(i8*, i32, i8*, i8*, i32) #2

declare dso_local i32 @bpf_program__title(%struct.bpf_program*, i32) #2

declare dso_local i32 @libbpf_strerror_r(i32, i8*, i32) #2

declare dso_local %struct.bpf_link* @ERR_PTR(i32) #2

declare dso_local %struct.bpf_link* @bpf_program__attach_perf_event(%struct.bpf_program*, i32) #2

declare dso_local i64 @IS_ERR(%struct.bpf_link*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @PTR_ERR(%struct.bpf_link*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
