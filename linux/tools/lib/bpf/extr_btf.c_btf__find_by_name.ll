; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf.c_btf__find_by_name.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf.c_btf__find_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf = type { i64, %struct.btf_type** }
%struct.btf_type = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"void\00", align 1
@ENOENT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @btf__find_by_name(%struct.btf* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.btf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.btf_type*, align 8
  %8 = alloca i8*, align 8
  store %struct.btf* %0, %struct.btf** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %48

13:                                               ; preds = %2
  store i64 1, i64* %6, align 8
  br label %14

14:                                               ; preds = %42, %13
  %15 = load i64, i64* %6, align 8
  %16 = load %struct.btf*, %struct.btf** %4, align 8
  %17 = getelementptr inbounds %struct.btf, %struct.btf* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ule i64 %15, %18
  br i1 %19, label %20, label %45

20:                                               ; preds = %14
  %21 = load %struct.btf*, %struct.btf** %4, align 8
  %22 = getelementptr inbounds %struct.btf, %struct.btf* %21, i32 0, i32 1
  %23 = load %struct.btf_type**, %struct.btf_type*** %22, align 8
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds %struct.btf_type*, %struct.btf_type** %23, i64 %24
  %26 = load %struct.btf_type*, %struct.btf_type** %25, align 8
  store %struct.btf_type* %26, %struct.btf_type** %7, align 8
  %27 = load %struct.btf*, %struct.btf** %4, align 8
  %28 = load %struct.btf_type*, %struct.btf_type** %7, align 8
  %29 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @btf__name_by_offset(%struct.btf* %27, i32 %30)
  store i8* %31, i8** %8, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %20
  %35 = load i8*, i8** %5, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = call i32 @strcmp(i8* %35, i8* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %34
  %40 = load i64, i64* %6, align 8
  store i64 %40, i64* %3, align 8
  br label %48

41:                                               ; preds = %34, %20
  br label %42

42:                                               ; preds = %41
  %43 = load i64, i64* %6, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %6, align 8
  br label %14

45:                                               ; preds = %14
  %46 = load i64, i64* @ENOENT, align 8
  %47 = sub i64 0, %46
  store i64 %47, i64* %3, align 8
  br label %48

48:                                               ; preds = %45, %39, %12
  %49 = load i64, i64* %3, align 8
  ret i64 %49
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @btf__name_by_offset(%struct.btf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
