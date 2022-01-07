; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf.c_btf_parse_type_sec.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf.c_btf_parse_type_sec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf = type { i8*, %struct.btf_header* }
%struct.btf_header = type { i32, i32 }
%struct.btf_type = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btf*)* @btf_parse_type_sec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btf_parse_type_sec(%struct.btf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btf*, align 8
  %4 = alloca %struct.btf_header*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.btf_type*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.btf* %0, %struct.btf** %3, align 8
  %11 = load %struct.btf*, %struct.btf** %3, align 8
  %12 = getelementptr inbounds %struct.btf, %struct.btf* %11, i32 0, i32 1
  %13 = load %struct.btf_header*, %struct.btf_header** %12, align 8
  store %struct.btf_header* %13, %struct.btf_header** %4, align 8
  %14 = load %struct.btf*, %struct.btf** %3, align 8
  %15 = getelementptr inbounds %struct.btf, %struct.btf* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %5, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load %struct.btf_header*, %struct.btf_header** %4, align 8
  %19 = getelementptr inbounds %struct.btf_header, %struct.btf_header* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr i8, i8* %17, i64 %21
  store i8* %22, i8** %6, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = load %struct.btf_header*, %struct.btf_header** %4, align 8
  %25 = getelementptr inbounds %struct.btf_header, %struct.btf_header* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr i8, i8* %23, i64 %27
  store i8* %28, i8** %7, align 8
  br label %29

29:                                               ; preds = %54, %1
  %30 = load i8*, i8** %6, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = icmp ult i8* %30, %31
  br i1 %32, label %33, label %55

33:                                               ; preds = %29
  %34 = load i8*, i8** %6, align 8
  %35 = bitcast i8* %34 to %struct.btf_type*
  store %struct.btf_type* %35, %struct.btf_type** %8, align 8
  %36 = load %struct.btf_type*, %struct.btf_type** %8, align 8
  %37 = call i32 @btf_type_size(%struct.btf_type* %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %2, align 4
  br label %56

42:                                               ; preds = %33
  %43 = load i32, i32* %9, align 4
  %44 = load i8*, i8** %6, align 8
  %45 = sext i32 %43 to i64
  %46 = getelementptr i8, i8* %44, i64 %45
  store i8* %46, i8** %6, align 8
  %47 = load %struct.btf*, %struct.btf** %3, align 8
  %48 = load %struct.btf_type*, %struct.btf_type** %8, align 8
  %49 = call i32 @btf_add_type(%struct.btf* %47, %struct.btf_type* %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %42
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %2, align 4
  br label %56

54:                                               ; preds = %42
  br label %29

55:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %52, %40
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @btf_type_size(%struct.btf_type*) #1

declare dso_local i32 @btf_add_type(%struct.btf*, %struct.btf_type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
