; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_check_all_metas.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_check_all_metas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_verifier_env = type { i32, %struct.btf* }
%struct.btf = type { i8*, %struct.btf_header }
%struct.btf_header = type { i32, i32 }
%struct.btf_type = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btf_verifier_env*)* @btf_check_all_metas to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btf_check_all_metas(%struct.btf_verifier_env* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btf_verifier_env*, align 8
  %4 = alloca %struct.btf*, align 8
  %5 = alloca %struct.btf_header*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.btf_type*, align 8
  %9 = alloca i64, align 8
  store %struct.btf_verifier_env* %0, %struct.btf_verifier_env** %3, align 8
  %10 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %3, align 8
  %11 = getelementptr inbounds %struct.btf_verifier_env, %struct.btf_verifier_env* %10, i32 0, i32 1
  %12 = load %struct.btf*, %struct.btf** %11, align 8
  store %struct.btf* %12, %struct.btf** %4, align 8
  %13 = load %struct.btf*, %struct.btf** %4, align 8
  %14 = getelementptr inbounds %struct.btf, %struct.btf* %13, i32 0, i32 1
  store %struct.btf_header* %14, %struct.btf_header** %5, align 8
  %15 = load %struct.btf*, %struct.btf** %4, align 8
  %16 = getelementptr inbounds %struct.btf, %struct.btf* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = load %struct.btf_header*, %struct.btf_header** %5, align 8
  %19 = getelementptr inbounds %struct.btf_header, %struct.btf_header* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr i8, i8* %17, i64 %21
  store i8* %22, i8** %6, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load %struct.btf_header*, %struct.btf_header** %5, align 8
  %25 = getelementptr inbounds %struct.btf_header, %struct.btf_header* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr i8, i8* %23, i64 %27
  store i8* %28, i8** %7, align 8
  %29 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %3, align 8
  %30 = getelementptr inbounds %struct.btf_verifier_env, %struct.btf_verifier_env* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  br label %31

31:                                               ; preds = %52, %1
  %32 = load i8*, i8** %6, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = icmp ult i8* %32, %33
  br i1 %34, label %35, label %63

35:                                               ; preds = %31
  %36 = load i8*, i8** %6, align 8
  %37 = bitcast i8* %36 to %struct.btf_type*
  store %struct.btf_type* %37, %struct.btf_type** %8, align 8
  %38 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %3, align 8
  %39 = load %struct.btf_type*, %struct.btf_type** %8, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = ptrtoint i8* %40 to i64
  %43 = ptrtoint i8* %41 to i64
  %44 = sub i64 %42, %43
  %45 = trunc i64 %44 to i32
  %46 = call i64 @btf_check_meta(%struct.btf_verifier_env* %38, %struct.btf_type* %39, i32 %45)
  store i64 %46, i64* %9, align 8
  %47 = load i64, i64* %9, align 8
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %35
  %50 = load i64, i64* %9, align 8
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %2, align 4
  br label %64

52:                                               ; preds = %35
  %53 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %3, align 8
  %54 = load %struct.btf_type*, %struct.btf_type** %8, align 8
  %55 = call i32 @btf_add_type(%struct.btf_verifier_env* %53, %struct.btf_type* %54)
  %56 = load i64, i64* %9, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = getelementptr i8, i8* %57, i64 %56
  store i8* %58, i8** %6, align 8
  %59 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %3, align 8
  %60 = getelementptr inbounds %struct.btf_verifier_env, %struct.btf_verifier_env* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 8
  br label %31

63:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %63, %49
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i64 @btf_check_meta(%struct.btf_verifier_env*, %struct.btf_type*, i32) #1

declare dso_local i32 @btf_add_type(%struct.btf_verifier_env*, %struct.btf_type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
