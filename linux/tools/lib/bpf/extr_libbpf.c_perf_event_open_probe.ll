; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_perf_event_open_probe.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_perf_event_open_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event_attr = type { i32, i32, i32, i32, i32 }

@STRERR_BUFSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"failed to determine %s perf type: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"uprobe\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"kprobe\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"failed to determine %s retprobe bit: %s\0A\00", align 1
@__NR_perf_event_open = common dso_local global i32 0, align 4
@PERF_FLAG_FD_CLOEXEC = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"%s perf_event_open() failed: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i32, i32)* @perf_event_open_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_event_open_probe(i32 %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.perf_event_attr, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %20 = bitcast %struct.perf_event_attr* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %20, i8 0, i64 20, i1 false)
  %21 = load i32, i32* @STRERR_BUFSIZE, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %13, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %14, align 8
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = call i32 (...) @determine_uprobe_perf_type()
  br label %31

29:                                               ; preds = %5
  %30 = call i32 (...) @determine_kprobe_perf_type()
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  store i32 %32, i32* %15, align 4
  %33 = load i32, i32* %15, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %31
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %40 = load i32, i32* %15, align 4
  %41 = trunc i64 %22 to i32
  %42 = call i32 @libbpf_strerror_r(i32 %40, i8* %24, i32 %41)
  %43 = call i32 @pr_warning(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %39, i32 %42)
  %44 = load i32, i32* %15, align 4
  store i32 %44, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %114

45:                                               ; preds = %31
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %75

48:                                               ; preds = %45
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = call i32 (...) @determine_uprobe_retprobe_bit()
  br label %55

53:                                               ; preds = %48
  %54 = call i32 (...) @determine_kprobe_retprobe_bit()
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i32 [ %52, %51 ], [ %54, %53 ]
  store i32 %56, i32* %19, align 4
  %57 = load i32, i32* %19, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %55
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %64 = load i32, i32* %19, align 4
  %65 = trunc i64 %22 to i32
  %66 = call i32 @libbpf_strerror_r(i32 %64, i8* %24, i32 %65)
  %67 = call i32 @pr_warning(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i8* %63, i32 %66)
  %68 = load i32, i32* %19, align 4
  store i32 %68, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %114

69:                                               ; preds = %55
  %70 = load i32, i32* %19, align 4
  %71 = shl i32 1, %70
  %72 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %12, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %71
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %69, %45
  %76 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %12, i32 0, i32 1
  store i32 20, i32* %76, align 4
  %77 = load i32, i32* %15, align 4
  %78 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %12, i32 0, i32 2
  store i32 %77, i32* %78, align 4
  %79 = load i8*, i8** %9, align 8
  %80 = call i32 @ptr_to_u64(i8* %79)
  %81 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %12, i32 0, i32 4
  store i32 %80, i32* %81, align 4
  %82 = load i32, i32* %10, align 4
  %83 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %12, i32 0, i32 3
  store i32 %82, i32* %83, align 4
  %84 = load i32, i32* @__NR_perf_event_open, align 4
  %85 = load i32, i32* %11, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %75
  br label %90

88:                                               ; preds = %75
  %89 = load i32, i32* %11, align 4
  br label %90

90:                                               ; preds = %88, %87
  %91 = phi i32 [ -1, %87 ], [ %89, %88 ]
  %92 = load i32, i32* %11, align 4
  %93 = icmp eq i32 %92, -1
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i32 0, i32 -1
  %96 = load i32, i32* @PERF_FLAG_FD_CLOEXEC, align 4
  %97 = call i32 @syscall(i32 %84, %struct.perf_event_attr* %12, i32 %91, i32 %95, i32 -1, i32 %96)
  store i32 %97, i32* %16, align 4
  %98 = load i32, i32* %16, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %112

100:                                              ; preds = %90
  %101 = load i32, i32* @errno, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %17, align 4
  %103 = load i32, i32* %7, align 4
  %104 = icmp ne i32 %103, 0
  %105 = zext i1 %104 to i64
  %106 = select i1 %104, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %107 = load i32, i32* %17, align 4
  %108 = trunc i64 %22 to i32
  %109 = call i32 @libbpf_strerror_r(i32 %107, i8* %24, i32 %108)
  %110 = call i32 @pr_warning(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8* %106, i32 %109)
  %111 = load i32, i32* %17, align 4
  store i32 %111, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %114

112:                                              ; preds = %90
  %113 = load i32, i32* %16, align 4
  store i32 %113, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %114

114:                                              ; preds = %112, %100, %59, %35
  %115 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %115)
  %116 = load i32, i32* %6, align 4
  ret i32 %116
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @determine_uprobe_perf_type(...) #3

declare dso_local i32 @determine_kprobe_perf_type(...) #3

declare dso_local i32 @pr_warning(i8*, i8*, i32) #3

declare dso_local i32 @libbpf_strerror_r(i32, i8*, i32) #3

declare dso_local i32 @determine_uprobe_retprobe_bit(...) #3

declare dso_local i32 @determine_kprobe_retprobe_bit(...) #3

declare dso_local i32 @ptr_to_u64(i8*) #3

declare dso_local i32 @syscall(i32, %struct.perf_event_attr*, i32, i32, i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
