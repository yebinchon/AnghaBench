; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_program__attach_kprobe.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_program__attach_kprobe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_link = type { i32 }
%struct.bpf_program = type { i32 }

@STRERR_BUFSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"program '%s': failed to create %s '%s' perf event: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"kretprobe\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"kprobe\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"program '%s': failed to attach to %s '%s': %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bpf_link* @bpf_program__attach_kprobe(%struct.bpf_program* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.bpf_link*, align 8
  %5 = alloca %struct.bpf_program*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.bpf_link*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.bpf_program* %0, %struct.bpf_program** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %14 = load i32, i32* @STRERR_BUFSIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @perf_event_open_probe(i32 0, i32 %18, i8* %19, i32 0, i32 -1)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %3
  %24 = load %struct.bpf_program*, %struct.bpf_program** %5, align 8
  %25 = call i32 @bpf_program__title(%struct.bpf_program* %24, i32 0)
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %30 = load i8*, i8** %7, align 8
  %31 = load i32, i32* %11, align 4
  %32 = trunc i64 %15 to i32
  %33 = call i32 @libbpf_strerror_r(i32 %31, i8* %17, i32 %32)
  %34 = call i32 @pr_warning(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %25, i8* %29, i8* %30, i32 %33)
  %35 = load i32, i32* %11, align 4
  %36 = call %struct.bpf_link* @ERR_PTR(i32 %35)
  store %struct.bpf_link* %36, %struct.bpf_link** %4, align 8
  store i32 1, i32* %13, align 4
  br label %63

37:                                               ; preds = %3
  %38 = load %struct.bpf_program*, %struct.bpf_program** %5, align 8
  %39 = load i32, i32* %11, align 4
  %40 = call %struct.bpf_link* @bpf_program__attach_perf_event(%struct.bpf_program* %38, i32 %39)
  store %struct.bpf_link* %40, %struct.bpf_link** %10, align 8
  %41 = load %struct.bpf_link*, %struct.bpf_link** %10, align 8
  %42 = call i64 @IS_ERR(%struct.bpf_link* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %61

44:                                               ; preds = %37
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @close(i32 %45)
  %47 = load %struct.bpf_link*, %struct.bpf_link** %10, align 8
  %48 = call i32 @PTR_ERR(%struct.bpf_link* %47)
  store i32 %48, i32* %12, align 4
  %49 = load %struct.bpf_program*, %struct.bpf_program** %5, align 8
  %50 = call i32 @bpf_program__title(%struct.bpf_program* %49, i32 0)
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %55 = load i8*, i8** %7, align 8
  %56 = load i32, i32* %12, align 4
  %57 = trunc i64 %15 to i32
  %58 = call i32 @libbpf_strerror_r(i32 %56, i8* %17, i32 %57)
  %59 = call i32 @pr_warning(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %50, i8* %54, i8* %55, i32 %58)
  %60 = load %struct.bpf_link*, %struct.bpf_link** %10, align 8
  store %struct.bpf_link* %60, %struct.bpf_link** %4, align 8
  store i32 1, i32* %13, align 4
  br label %63

61:                                               ; preds = %37
  %62 = load %struct.bpf_link*, %struct.bpf_link** %10, align 8
  store %struct.bpf_link* %62, %struct.bpf_link** %4, align 8
  store i32 1, i32* %13, align 4
  br label %63

63:                                               ; preds = %61, %44, %23
  %64 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %64)
  %65 = load %struct.bpf_link*, %struct.bpf_link** %4, align 8
  ret %struct.bpf_link* %65
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @perf_event_open_probe(i32, i32, i8*, i32, i32) #2

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
