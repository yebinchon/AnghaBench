; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/cgroup/extr_cgroup_util.c_cg_find_unified_root.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/cgroup/extr_cgroup_util.c_cg_find_unified_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SIZE = common dso_local global i32 0, align 4
@__const.cg_find_unified_root.delim = private unnamed_addr constant [4 x i8] c"\0A\09 \00", align 1
@.str = private unnamed_addr constant [18 x i8] c"/proc/self/mounts\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"cgroup2\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cg_find_unified_root(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [4 x i8], align 1
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load i32, i32* @PAGE_SIZE, align 4
  %14 = mul nsw i32 10, %13
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %6, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  %18 = bitcast [4 x i8]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %18, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.cg_find_unified_root.delim, i32 0, i32 0), i64 4, i1 false)
  %19 = trunc i64 %15 to i32
  %20 = call i64 @read_text(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %17, i32 %19)
  %21 = icmp sle i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %53

23:                                               ; preds = %2
  %24 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 0
  %25 = call i8* @strtok(i8* %17, i8* %24)
  store i8* %25, i8** %8, align 8
  br label %26

26:                                               ; preds = %49, %23
  %27 = load i8*, i8** %8, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %52

29:                                               ; preds = %26
  %30 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 0
  %31 = call i8* @strtok(i8* null, i8* %30)
  store i8* %31, i8** %9, align 8
  %32 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 0
  %33 = call i8* @strtok(i8* null, i8* %32)
  store i8* %33, i8** %10, align 8
  %34 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 0
  %35 = call i8* @strtok(i8* null, i8* %34)
  %36 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 0
  %37 = call i8* @strtok(i8* null, i8* %36)
  %38 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 0
  %39 = call i8* @strtok(i8* null, i8* %38)
  %40 = load i8*, i8** %10, align 8
  %41 = call i64 @strcmp(i8* %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %29
  %44 = load i8*, i8** %4, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = load i64, i64* %5, align 8
  %47 = call i32 @strncpy(i8* %44, i8* %45, i64 %46)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %53

48:                                               ; preds = %29
  br label %49

49:                                               ; preds = %48
  %50 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 0
  %51 = call i8* @strtok(i8* null, i8* %50)
  store i8* %51, i8** %8, align 8
  br label %26

52:                                               ; preds = %26
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %53

53:                                               ; preds = %52, %43, %22
  %54 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %54)
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @read_text(i8*, i8*, i32) #3

declare dso_local i8* @strtok(i8*, i8*) #3

declare dso_local i64 @strcmp(i8*, i8*) #3

declare dso_local i32 @strncpy(i8*, i8*, i64) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
