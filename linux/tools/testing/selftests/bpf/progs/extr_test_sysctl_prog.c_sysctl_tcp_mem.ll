; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_test_sysctl_prog.c_sysctl_tcp_mem.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_test_sysctl_prog.c_sysctl_tcp_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_sysctl = type { i64 }

@MAX_VALUE_STR_LEN = common dso_local global i32 0, align 4
@MAX_ULONG_STR_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sysctl_tcp_mem(%struct.bpf_sysctl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bpf_sysctl*, align 8
  %4 = alloca [3 x i64], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bpf_sysctl* %0, %struct.bpf_sysctl** %3, align 8
  %11 = bitcast [3 x i64]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 24, i1 false)
  %12 = load i32, i32* @MAX_VALUE_STR_LEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %5, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %6, align 8
  store i8 0, i8* %8, align 1
  %16 = load %struct.bpf_sysctl*, %struct.bpf_sysctl** %3, align 8
  %17 = getelementptr inbounds %struct.bpf_sysctl, %struct.bpf_sysctl* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %90

21:                                               ; preds = %1
  %22 = load %struct.bpf_sysctl*, %struct.bpf_sysctl** %3, align 8
  %23 = call i32 @is_tcp_mem(%struct.bpf_sysctl* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %90

26:                                               ; preds = %21
  %27 = load %struct.bpf_sysctl*, %struct.bpf_sysctl** %3, align 8
  %28 = load i32, i32* @MAX_VALUE_STR_LEN, align 4
  %29 = call i32 @bpf_sysctl_get_current_value(%struct.bpf_sysctl* %27, i8* %15, i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @MAX_VALUE_STR_LEN, align 4
  %35 = icmp sge i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32, %26
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %90

37:                                               ; preds = %32
  store i8 0, i8* %7, align 1
  br label %38

38:                                               ; preds = %72, %37
  %39 = load i8, i8* %7, align 1
  %40 = zext i8 %39 to i32
  %41 = getelementptr inbounds [3 x i64], [3 x i64]* %4, i64 0, i64 0
  %42 = call zeroext i8 @ARRAY_SIZE(i64* %41)
  %43 = zext i8 %42 to i32
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %75

45:                                               ; preds = %38
  %46 = load i8, i8* %8, align 1
  %47 = zext i8 %46 to i32
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %15, i64 %48
  %50 = load i32, i32* @MAX_ULONG_STR_LEN, align 4
  %51 = getelementptr inbounds [3 x i64], [3 x i64]* %4, i64 0, i64 0
  %52 = load i8, i8* %7, align 1
  %53 = zext i8 %52 to i32
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %51, i64 %54
  %56 = call i32 @bpf_strtoul(i8* %49, i32 %50, i32 0, i64* %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp sle i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %45
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @MAX_ULONG_STR_LEN, align 4
  %62 = icmp sgt i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %59, %45
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %90

64:                                               ; preds = %59
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @MAX_ULONG_STR_LEN, align 4
  %67 = and i32 %65, %66
  %68 = load i8, i8* %8, align 1
  %69 = zext i8 %68 to i32
  %70 = add nsw i32 %69, %67
  %71 = trunc i32 %70 to i8
  store i8 %71, i8* %8, align 1
  br label %72

72:                                               ; preds = %64
  %73 = load i8, i8* %7, align 1
  %74 = add i8 %73, 1
  store i8 %74, i8* %7, align 1
  br label %38, !llvm.loop !2

75:                                               ; preds = %38
  %76 = getelementptr inbounds [3 x i64], [3 x i64]* %4, i64 0, i64 0
  %77 = load i64, i64* %76, align 16
  %78 = getelementptr inbounds [3 x i64], [3 x i64]* %4, i64 0, i64 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ult i64 %77, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %75
  %82 = getelementptr inbounds [3 x i64], [3 x i64]* %4, i64 0, i64 1
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds [3 x i64], [3 x i64]* %4, i64 0, i64 2
  %85 = load i64, i64* %84, align 16
  %86 = icmp ult i64 %83, %85
  br label %87

87:                                               ; preds = %81, %75
  %88 = phi i1 [ false, %75 ], [ %86, %81 ]
  %89 = zext i1 %88 to i32
  store i32 %89, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %90

90:                                               ; preds = %87, %63, %36, %25, %20
  %91 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %91)
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @is_tcp_mem(%struct.bpf_sysctl*) #3

declare dso_local i32 @bpf_sysctl_get_current_value(%struct.bpf_sysctl*, i8*, i32) #3

declare dso_local zeroext i8 @ARRAY_SIZE(i64*) #3

declare dso_local i32 @bpf_strtoul(i8*, i32, i32, i64*) #3

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
!2 = distinct !{!2, !3}
!3 = !{!"llvm.loop.unroll.full"}
