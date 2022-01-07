; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_cgroup.c_show_attached_bpf_progs.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_cgroup.c_show_attached_bpf_progs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@query_flags = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"multi\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"override\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"unknown(%x)\00", align 1
@attach_type_strings = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @show_attached_bpf_progs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_attached_bpf_progs(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca [1024 x i64], align 16
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca [32 x i8], align 16
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = bitcast [1024 x i64]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %15, i8 0, i64 8192, i1 false)
  %16 = getelementptr inbounds [1024 x i64], [1024 x i64]* %9, i64 0, i64 0
  %17 = call i64 @ARRAY_SIZE(i64* %16)
  store i64 %17, i64* %10, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @query_flags, align 4
  %21 = getelementptr inbounds [1024 x i64], [1024 x i64]* %9, i64 0, i64 0
  %22 = call i32 @bpf_prog_query(i32 %18, i32 %19, i32 %20, i64* %12, i64* %21, i64* %10)
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %14, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* %14, align 4
  store i32 %26, i32* %4, align 4
  br label %62

27:                                               ; preds = %3
  %28 = load i64, i64* %10, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %62

31:                                               ; preds = %27
  %32 = load i64, i64* %12, align 8
  switch i64 %32, label %36 [
    i64 129, label %33
    i64 128, label %34
    i64 0, label %35
  ]

33:                                               ; preds = %31
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %41

34:                                               ; preds = %31
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  br label %41

35:                                               ; preds = %31
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  br label %41

36:                                               ; preds = %31
  %37 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %38 = load i64, i64* %12, align 8
  %39 = call i32 @snprintf(i8* %37, i32 32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i64 %38)
  %40 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  store i8* %40, i8** %8, align 8
  br label %41

41:                                               ; preds = %36, %35, %34, %33
  store i64 0, i64* %11, align 8
  br label %42

42:                                               ; preds = %58, %41
  %43 = load i64, i64* %11, align 8
  %44 = load i64, i64* %10, align 8
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %46, label %61

46:                                               ; preds = %42
  %47 = load i64, i64* %11, align 8
  %48 = getelementptr inbounds [1024 x i64], [1024 x i64]* %9, i64 0, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = load i32*, i32** @attach_type_strings, align 8
  %51 = load i32, i32* %6, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i8*, i8** %8, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @show_bpf_prog(i64 %49, i32 %54, i8* %55, i32 %56)
  br label %58

58:                                               ; preds = %46
  %59 = load i64, i64* %11, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %11, align 8
  br label %42

61:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %61, %30, %25
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @ARRAY_SIZE(i64*) #2

declare dso_local i32 @bpf_prog_query(i32, i32, i32, i64*, i64*, i64*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #2

declare dso_local i32 @show_bpf_prog(i64, i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
