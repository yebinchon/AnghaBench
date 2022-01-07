; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_reuseport_bpf.c_test_reuseport_ebpf.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_reuseport_bpf.c_test_reuseport_ebpf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_params = type { i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Testing EBPF mod %zd...\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Reprograming, testing mod %zd...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @test_reuseport_ebpf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_reuseport_ebpf(i64 %0) #0 {
  %2 = alloca %struct.test_params, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = bitcast %struct.test_params* %2 to i64*
  store i64 %0, i64* %6, align 4
  %7 = getelementptr inbounds %struct.test_params, %struct.test_params* %2, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %4, align 8
  %11 = alloca i32, i64 %9, align 16
  store i64 %9, i64* %5, align 8
  %12 = load i32, i32* @stderr, align 4
  %13 = getelementptr inbounds %struct.test_params, %struct.test_params* %2, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @fprintf(i32 %12, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = getelementptr inbounds %struct.test_params, %struct.test_params* %2, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = bitcast %struct.test_params* %2 to i64*
  %19 = load i64, i64* %18, align 4
  %20 = call i32 @build_recv_group(i64 %19, i32* %11, i32 %17, i32 (i32, i32)* @attach_ebpf)
  %21 = getelementptr inbounds %struct.test_params, %struct.test_params* %2, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = bitcast %struct.test_params* %2 to i64*
  %24 = load i64, i64* %23, align 4
  %25 = call i32 @test_recv_order(i64 %24, i32* %11, i32 %22)
  %26 = getelementptr inbounds %struct.test_params, %struct.test_params* %2, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %27, 2
  %29 = getelementptr inbounds %struct.test_params, %struct.test_params* %2, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, %28
  store i32 %31, i32* %29, align 4
  %32 = load i32, i32* @stderr, align 4
  %33 = getelementptr inbounds %struct.test_params, %struct.test_params* %2, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sdiv i32 %34, 2
  %36 = call i32 @fprintf(i32 %32, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = getelementptr inbounds i32, i32* %11, i64 0
  %38 = load i32, i32* %37, align 16
  %39 = getelementptr inbounds %struct.test_params, %struct.test_params* %2, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sdiv i32 %40, 2
  %42 = call i32 @attach_ebpf(i32 %38, i32 %41)
  %43 = getelementptr inbounds %struct.test_params, %struct.test_params* %2, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sdiv i32 %44, 2
  %46 = bitcast %struct.test_params* %2 to i64*
  %47 = load i64, i64* %46, align 4
  %48 = call i32 @test_recv_order(i64 %47, i32* %11, i32 %45)
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %60, %1
  %50 = load i32, i32* %3, align 4
  %51 = getelementptr inbounds %struct.test_params, %struct.test_params* %2, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp slt i32 %50, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %49
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %11, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @close(i32 %58)
  br label %60

60:                                               ; preds = %54
  %61 = load i32, i32* %3, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %3, align 4
  br label %49

63:                                               ; preds = %49
  %64 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %64)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @fprintf(i32, i8*, i32) #2

declare dso_local i32 @build_recv_group(i64, i32*, i32, i32 (i32, i32)*) #2

declare dso_local i32 @attach_ebpf(i32, i32) #2

declare dso_local i32 @test_recv_order(i64, i32*, i32) #2

declare dso_local i32 @close(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
