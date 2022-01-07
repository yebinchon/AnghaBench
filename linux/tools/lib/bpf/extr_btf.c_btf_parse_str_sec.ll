; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf.c_btf_parse_str_sec.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf.c_btf_parse_str_sec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf = type { i8*, i8*, %struct.btf_header* }
%struct.btf_header = type { i32, i32 }

@BTF_MAX_STR_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Invalid BTF string section\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btf*)* @btf_parse_str_sec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btf_parse_str_sec(%struct.btf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btf*, align 8
  %4 = alloca %struct.btf_header*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.btf* %0, %struct.btf** %3, align 8
  %7 = load %struct.btf*, %struct.btf** %3, align 8
  %8 = getelementptr inbounds %struct.btf, %struct.btf* %7, i32 0, i32 2
  %9 = load %struct.btf_header*, %struct.btf_header** %8, align 8
  store %struct.btf_header* %9, %struct.btf_header** %4, align 8
  %10 = load %struct.btf*, %struct.btf** %3, align 8
  %11 = getelementptr inbounds %struct.btf, %struct.btf* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = load %struct.btf_header*, %struct.btf_header** %4, align 8
  %14 = getelementptr inbounds %struct.btf_header, %struct.btf_header* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %12, i64 %16
  store i8* %17, i8** %5, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = load %struct.btf*, %struct.btf** %3, align 8
  %20 = getelementptr inbounds %struct.btf, %struct.btf* %19, i32 0, i32 2
  %21 = load %struct.btf_header*, %struct.btf_header** %20, align 8
  %22 = getelementptr inbounds %struct.btf_header, %struct.btf_header* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %18, i64 %24
  store i8* %25, i8** %6, align 8
  %26 = load %struct.btf_header*, %struct.btf_header** %4, align 8
  %27 = getelementptr inbounds %struct.btf_header, %struct.btf_header* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %49

30:                                               ; preds = %1
  %31 = load %struct.btf_header*, %struct.btf_header** %4, align 8
  %32 = getelementptr inbounds %struct.btf_header, %struct.btf_header* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 %33, 1
  %35 = load i32, i32* @BTF_MAX_STR_OFFSET, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %49, label %37

37:                                               ; preds = %30
  %38 = load i8*, i8** %5, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = load i8*, i8** %6, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 -1
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %43, %37, %30, %1
  %50 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %57

53:                                               ; preds = %43
  %54 = load i8*, i8** %5, align 8
  %55 = load %struct.btf*, %struct.btf** %3, align 8
  %56 = getelementptr inbounds %struct.btf, %struct.btf* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %53, %49
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @pr_debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
