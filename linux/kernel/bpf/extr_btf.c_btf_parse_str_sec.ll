; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_parse_str_sec.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_parse_str_sec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_verifier_env = type { %struct.btf* }
%struct.btf = type { i8*, i8*, i32, i8*, %struct.btf_header }
%struct.btf_header = type { i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"String section is not at the end\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@BTF_MAX_NAME_OFFSET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Invalid string section\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btf_verifier_env*)* @btf_parse_str_sec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btf_parse_str_sec(%struct.btf_verifier_env* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btf_verifier_env*, align 8
  %4 = alloca %struct.btf_header*, align 8
  %5 = alloca %struct.btf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.btf_verifier_env* %0, %struct.btf_verifier_env** %3, align 8
  %8 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %3, align 8
  %9 = getelementptr inbounds %struct.btf_verifier_env, %struct.btf_verifier_env* %8, i32 0, i32 0
  %10 = load %struct.btf*, %struct.btf** %9, align 8
  store %struct.btf* %10, %struct.btf** %5, align 8
  %11 = load %struct.btf*, %struct.btf** %5, align 8
  %12 = getelementptr inbounds %struct.btf, %struct.btf* %11, i32 0, i32 4
  store %struct.btf_header* %12, %struct.btf_header** %4, align 8
  %13 = load %struct.btf*, %struct.btf** %5, align 8
  %14 = getelementptr inbounds %struct.btf, %struct.btf* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = load %struct.btf_header*, %struct.btf_header** %4, align 8
  %17 = getelementptr inbounds %struct.btf_header, %struct.btf_header* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %15, i64 %19
  store i8* %20, i8** %6, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load %struct.btf_header*, %struct.btf_header** %4, align 8
  %23 = getelementptr inbounds %struct.btf_header, %struct.btf_header* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %21, i64 %25
  store i8* %26, i8** %7, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load %struct.btf*, %struct.btf** %5, align 8
  %29 = getelementptr inbounds %struct.btf, %struct.btf* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = load %struct.btf*, %struct.btf** %5, align 8
  %32 = getelementptr inbounds %struct.btf, %struct.btf* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %30, i64 %34
  %36 = icmp ne i8* %27, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %1
  %38 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %3, align 8
  %39 = call i32 @btf_verifier_log(%struct.btf_verifier_env* %38, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %75

42:                                               ; preds = %1
  %43 = load %struct.btf_header*, %struct.btf_header** %4, align 8
  %44 = getelementptr inbounds %struct.btf_header, %struct.btf_header* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %66

47:                                               ; preds = %42
  %48 = load %struct.btf_header*, %struct.btf_header** %4, align 8
  %49 = getelementptr inbounds %struct.btf_header, %struct.btf_header* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = sub nsw i32 %50, 1
  %52 = load i32, i32* @BTF_MAX_NAME_OFFSET, align 4
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %66, label %54

54:                                               ; preds = %47
  %55 = load i8*, i8** %6, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 0
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %54
  %61 = load i8*, i8** %7, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 -1
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %60, %54, %47, %42
  %67 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %3, align 8
  %68 = call i32 @btf_verifier_log(%struct.btf_verifier_env* %67, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %75

71:                                               ; preds = %60
  %72 = load i8*, i8** %6, align 8
  %73 = load %struct.btf*, %struct.btf** %5, align 8
  %74 = getelementptr inbounds %struct.btf, %struct.btf* %73, i32 0, i32 3
  store i8* %72, i8** %74, align 8
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %71, %66, %37
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @btf_verifier_log(%struct.btf_verifier_env*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
