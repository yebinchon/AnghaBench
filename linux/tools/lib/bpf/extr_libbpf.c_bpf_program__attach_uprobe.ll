; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_program__attach_uprobe.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_program__attach_uprobe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_link = type { i32 }
%struct.bpf_program = type { i32 }

@STRERR_BUFSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"program '%s': failed to create %s '%s:0x%zx' perf event: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"uretprobe\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"uprobe\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"program '%s': failed to attach to %s '%s:0x%zx': %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bpf_link* @bpf_program__attach_uprobe(%struct.bpf_program* %0, i32 %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.bpf_link*, align 8
  %7 = alloca %struct.bpf_program*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.bpf_link*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.bpf_program* %0, %struct.bpf_program** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %18 = load i32, i32* @STRERR_BUFSIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %12, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %13, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i8*, i8** %10, align 8
  %24 = load i64, i64* %11, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @perf_event_open_probe(i32 1, i32 %22, i8* %23, i64 %24, i32 %25)
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %15, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %5
  %30 = load %struct.bpf_program*, %struct.bpf_program** %7, align 8
  %31 = call i32 @bpf_program__title(%struct.bpf_program* %30, i32 0)
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %36 = load i8*, i8** %10, align 8
  %37 = load i64, i64* %11, align 8
  %38 = load i32, i32* %15, align 4
  %39 = trunc i64 %19 to i32
  %40 = call i32 @libbpf_strerror_r(i32 %38, i8* %21, i32 %39)
  %41 = call i32 @pr_warning(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %31, i8* %35, i8* %36, i64 %37, i32 %40)
  %42 = load i32, i32* %15, align 4
  %43 = call %struct.bpf_link* @ERR_PTR(i32 %42)
  store %struct.bpf_link* %43, %struct.bpf_link** %6, align 8
  store i32 1, i32* %17, align 4
  br label %71

44:                                               ; preds = %5
  %45 = load %struct.bpf_program*, %struct.bpf_program** %7, align 8
  %46 = load i32, i32* %15, align 4
  %47 = call %struct.bpf_link* @bpf_program__attach_perf_event(%struct.bpf_program* %45, i32 %46)
  store %struct.bpf_link* %47, %struct.bpf_link** %14, align 8
  %48 = load %struct.bpf_link*, %struct.bpf_link** %14, align 8
  %49 = call i64 @IS_ERR(%struct.bpf_link* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %69

51:                                               ; preds = %44
  %52 = load i32, i32* %15, align 4
  %53 = call i32 @close(i32 %52)
  %54 = load %struct.bpf_link*, %struct.bpf_link** %14, align 8
  %55 = call i32 @PTR_ERR(%struct.bpf_link* %54)
  store i32 %55, i32* %16, align 4
  %56 = load %struct.bpf_program*, %struct.bpf_program** %7, align 8
  %57 = call i32 @bpf_program__title(%struct.bpf_program* %56, i32 0)
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %62 = load i8*, i8** %10, align 8
  %63 = load i64, i64* %11, align 8
  %64 = load i32, i32* %16, align 4
  %65 = trunc i64 %19 to i32
  %66 = call i32 @libbpf_strerror_r(i32 %64, i8* %21, i32 %65)
  %67 = call i32 @pr_warning(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %57, i8* %61, i8* %62, i64 %63, i32 %66)
  %68 = load %struct.bpf_link*, %struct.bpf_link** %14, align 8
  store %struct.bpf_link* %68, %struct.bpf_link** %6, align 8
  store i32 1, i32* %17, align 4
  br label %71

69:                                               ; preds = %44
  %70 = load %struct.bpf_link*, %struct.bpf_link** %14, align 8
  store %struct.bpf_link* %70, %struct.bpf_link** %6, align 8
  store i32 1, i32* %17, align 4
  br label %71

71:                                               ; preds = %69, %51, %29
  %72 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %72)
  %73 = load %struct.bpf_link*, %struct.bpf_link** %6, align 8
  ret %struct.bpf_link* %73
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @perf_event_open_probe(i32, i32, i8*, i64, i32) #2

declare dso_local i32 @pr_warning(i8*, i32, i8*, i8*, i64, i32) #2

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
