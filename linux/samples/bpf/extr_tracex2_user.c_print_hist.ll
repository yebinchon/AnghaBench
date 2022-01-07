; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_tracex2_user.c_print_hist.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_tracex2_user.c_print_hist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task = type { i8*, i64, i64 }
%struct.hist_key = type { i32 }

@print_hist.tasks = internal global [1024 x %struct.task] zeroinitializer, align 16
@SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"\0Apid %d cmd %s uid %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @print_hist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_hist(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hist_key, align 4
  %4 = alloca %struct.hist_key, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = bitcast %struct.hist_key* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 4, i1 false)
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %40, %1
  %10 = load i32, i32* %2, align 4
  %11 = call i64 @bpf_map_get_next_key(i32 %10, %struct.hist_key* %3, %struct.hist_key* %4)
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %43

13:                                               ; preds = %9
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %27, %13
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %14
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [1024 x %struct.task], [1024 x %struct.task]* @print_hist.tasks, i64 0, i64 %20
  %22 = load i32, i32* @SIZE, align 4
  %23 = call i64 @memcmp(%struct.task* %21, %struct.hist_key* %4, i32 %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store i32 1, i32* %7, align 4
  br label %26

26:                                               ; preds = %25, %18
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %6, align 4
  br label %14

30:                                               ; preds = %14
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds [1024 x %struct.task], [1024 x %struct.task]* @print_hist.tasks, i64 0, i64 %36
  %38 = load i32, i32* @SIZE, align 4
  %39 = call i32 @memcpy(%struct.task* %37, %struct.hist_key* %4, i32 %38)
  br label %40

40:                                               ; preds = %33, %30
  %41 = bitcast %struct.hist_key* %3 to i8*
  %42 = bitcast %struct.hist_key* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* align 4 %42, i64 4, i1 false)
  br label %9

43:                                               ; preds = %9
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %72, %43
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %75

48:                                               ; preds = %44
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [1024 x %struct.task], [1024 x %struct.task]* @print_hist.tasks, i64 0, i64 %50
  %52 = getelementptr inbounds %struct.task, %struct.task* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [1024 x %struct.task], [1024 x %struct.task]* @print_hist.tasks, i64 0, i64 %56
  %58 = getelementptr inbounds %struct.task, %struct.task* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [1024 x %struct.task], [1024 x %struct.task]* @print_hist.tasks, i64 0, i64 %61
  %63 = getelementptr inbounds %struct.task, %struct.task* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = trunc i64 %64 to i32
  %66 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %54, i8* %59, i32 %65)
  %67 = load i32, i32* %2, align 4
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [1024 x %struct.task], [1024 x %struct.task]* @print_hist.tasks, i64 0, i64 %69
  %71 = call i32 @print_hist_for_pid(i32 %67, %struct.task* %70)
  br label %72

72:                                               ; preds = %48
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %6, align 4
  br label %44

75:                                               ; preds = %44
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @bpf_map_get_next_key(i32, %struct.hist_key*, %struct.hist_key*) #2

declare dso_local i64 @memcmp(%struct.task*, %struct.hist_key*, i32) #2

declare dso_local i32 @memcpy(%struct.task*, %struct.hist_key*, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @printf(i8*, i32, i8*, i32) #2

declare dso_local i32 @print_hist_for_pid(i32, %struct.task*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
