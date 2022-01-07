; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_bpf.c_bpf_prog_test_run_xattr.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_bpf.c_bpf_prog_test_run_xattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_prog_test_run_attr = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.bpf_attr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32, i32, i32, i32, i8*, i8*, i32, i8*, i8*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@BPF_PROG_TEST_RUN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpf_prog_test_run_xattr(%struct.bpf_prog_test_run_attr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bpf_prog_test_run_attr*, align 8
  %4 = alloca %union.bpf_attr, align 8
  %5 = alloca i32, align 4
  store %struct.bpf_prog_test_run_attr* %0, %struct.bpf_prog_test_run_attr** %3, align 8
  %6 = load %struct.bpf_prog_test_run_attr*, %struct.bpf_prog_test_run_attr** %3, align 8
  %7 = getelementptr inbounds %struct.bpf_prog_test_run_attr, %struct.bpf_prog_test_run_attr* %6, i32 0, i32 9
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %1
  %11 = load %struct.bpf_prog_test_run_attr*, %struct.bpf_prog_test_run_attr** %3, align 8
  %12 = getelementptr inbounds %struct.bpf_prog_test_run_attr, %struct.bpf_prog_test_run_attr* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %97

18:                                               ; preds = %10, %1
  %19 = call i32 @memset(%union.bpf_attr* %4, i32 0, i32 80)
  %20 = load %struct.bpf_prog_test_run_attr*, %struct.bpf_prog_test_run_attr** %3, align 8
  %21 = getelementptr inbounds %struct.bpf_prog_test_run_attr, %struct.bpf_prog_test_run_attr* %20, i32 0, i32 11
  %22 = load i32, i32* %21, align 8
  %23 = bitcast %union.bpf_attr* %4 to %struct.TYPE_2__*
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 11
  store i32 %22, i32* %24, align 8
  %25 = load %struct.bpf_prog_test_run_attr*, %struct.bpf_prog_test_run_attr** %3, align 8
  %26 = getelementptr inbounds %struct.bpf_prog_test_run_attr, %struct.bpf_prog_test_run_attr* %25, i32 0, i32 10
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @ptr_to_u64(i32 %27)
  %29 = bitcast %union.bpf_attr* %4 to %struct.TYPE_2__*
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 10
  store i8* %28, i8** %30, align 8
  %31 = load %struct.bpf_prog_test_run_attr*, %struct.bpf_prog_test_run_attr** %3, align 8
  %32 = getelementptr inbounds %struct.bpf_prog_test_run_attr, %struct.bpf_prog_test_run_attr* %31, i32 0, i32 9
  %33 = load i32, i32* %32, align 8
  %34 = call i8* @ptr_to_u64(i32 %33)
  %35 = bitcast %union.bpf_attr* %4 to %struct.TYPE_2__*
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 9
  store i8* %34, i8** %36, align 8
  %37 = load %struct.bpf_prog_test_run_attr*, %struct.bpf_prog_test_run_attr** %3, align 8
  %38 = getelementptr inbounds %struct.bpf_prog_test_run_attr, %struct.bpf_prog_test_run_attr* %37, i32 0, i32 8
  %39 = load i32, i32* %38, align 4
  %40 = bitcast %union.bpf_attr* %4 to %struct.TYPE_2__*
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 8
  store i32 %39, i32* %41, align 8
  %42 = load %struct.bpf_prog_test_run_attr*, %struct.bpf_prog_test_run_attr** %3, align 8
  %43 = getelementptr inbounds %struct.bpf_prog_test_run_attr, %struct.bpf_prog_test_run_attr* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = bitcast %union.bpf_attr* %4 to %struct.TYPE_2__*
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load %struct.bpf_prog_test_run_attr*, %struct.bpf_prog_test_run_attr** %3, align 8
  %48 = getelementptr inbounds %struct.bpf_prog_test_run_attr, %struct.bpf_prog_test_run_attr* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 8
  %50 = call i8* @ptr_to_u64(i32 %49)
  %51 = bitcast %union.bpf_attr* %4 to %struct.TYPE_2__*
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 7
  store i8* %50, i8** %52, align 8
  %53 = load %struct.bpf_prog_test_run_attr*, %struct.bpf_prog_test_run_attr** %3, align 8
  %54 = getelementptr inbounds %struct.bpf_prog_test_run_attr, %struct.bpf_prog_test_run_attr* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @ptr_to_u64(i32 %55)
  %57 = bitcast %union.bpf_attr* %4 to %struct.TYPE_2__*
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 6
  store i8* %56, i8** %58, align 8
  %59 = load %struct.bpf_prog_test_run_attr*, %struct.bpf_prog_test_run_attr** %3, align 8
  %60 = getelementptr inbounds %struct.bpf_prog_test_run_attr, %struct.bpf_prog_test_run_attr* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = bitcast %union.bpf_attr* %4 to %struct.TYPE_2__*
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 5
  store i32 %61, i32* %63, align 8
  %64 = load %struct.bpf_prog_test_run_attr*, %struct.bpf_prog_test_run_attr** %3, align 8
  %65 = getelementptr inbounds %struct.bpf_prog_test_run_attr, %struct.bpf_prog_test_run_attr* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = bitcast %union.bpf_attr* %4 to %struct.TYPE_2__*
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 8
  %69 = load %struct.bpf_prog_test_run_attr*, %struct.bpf_prog_test_run_attr** %3, align 8
  %70 = getelementptr inbounds %struct.bpf_prog_test_run_attr, %struct.bpf_prog_test_run_attr* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = bitcast %union.bpf_attr* %4 to %struct.TYPE_2__*
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 4
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* @BPF_PROG_TEST_RUN, align 4
  %75 = call i32 @sys_bpf(i32 %74, %union.bpf_attr* %4, i32 80)
  store i32 %75, i32* %5, align 4
  %76 = bitcast %union.bpf_attr* %4 to %struct.TYPE_2__*
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.bpf_prog_test_run_attr*, %struct.bpf_prog_test_run_attr** %3, align 8
  %80 = getelementptr inbounds %struct.bpf_prog_test_run_attr, %struct.bpf_prog_test_run_attr* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  %81 = bitcast %union.bpf_attr* %4 to %struct.TYPE_2__*
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.bpf_prog_test_run_attr*, %struct.bpf_prog_test_run_attr** %3, align 8
  %85 = getelementptr inbounds %struct.bpf_prog_test_run_attr, %struct.bpf_prog_test_run_attr* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 8
  %86 = bitcast %union.bpf_attr* %4 to %struct.TYPE_2__*
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.bpf_prog_test_run_attr*, %struct.bpf_prog_test_run_attr** %3, align 8
  %90 = getelementptr inbounds %struct.bpf_prog_test_run_attr, %struct.bpf_prog_test_run_attr* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 4
  %91 = bitcast %union.bpf_attr* %4 to %struct.TYPE_2__*
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.bpf_prog_test_run_attr*, %struct.bpf_prog_test_run_attr** %3, align 8
  %95 = getelementptr inbounds %struct.bpf_prog_test_run_attr, %struct.bpf_prog_test_run_attr* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 8
  %96 = load i32, i32* %5, align 4
  store i32 %96, i32* %2, align 4
  br label %97

97:                                               ; preds = %18, %15
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i32 @memset(%union.bpf_attr*, i32, i32) #1

declare dso_local i8* @ptr_to_u64(i32) #1

declare dso_local i32 @sys_bpf(i32, %union.bpf_attr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
