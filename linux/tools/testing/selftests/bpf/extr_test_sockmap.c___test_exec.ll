; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_sockmap.c___test_exec.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_sockmap.c___test_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockmap_options = type { i32, i32, i32, i32, i32 }

@OPTSTRING = common dso_local global i32 0, align 4
@SENDPAGE = common dso_local global i32 0, align 4
@txmsg_drop = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"[TEST %i]: (%i, %i, %i, %s, %s): \00", align 1
@test_cnt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"PASS\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"FAILED\00", align 1
@passed = common dso_local global i32 0, align 4
@failed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.sockmap_options*)* @__test_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__test_exec(i32 %0, i32 %1, %struct.sockmap_options* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockmap_options*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.sockmap_options* %2, %struct.sockmap_options** %6, align 8
  %9 = load i32, i32* @OPTSTRING, align 4
  %10 = call i8* @calloc(i32 %9, i32 1)
  store i8* %10, i8** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @SENDPAGE, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load %struct.sockmap_options*, %struct.sockmap_options** %6, align 8
  %16 = getelementptr inbounds %struct.sockmap_options, %struct.sockmap_options* %15, i32 0, i32 0
  store i32 1, i32* %16, align 4
  br label %20

17:                                               ; preds = %3
  %18 = load %struct.sockmap_options*, %struct.sockmap_options** %6, align 8
  %19 = getelementptr inbounds %struct.sockmap_options, %struct.sockmap_options* %18, i32 0, i32 0
  store i32 0, i32* %19, align 4
  br label %20

20:                                               ; preds = %17, %14
  %21 = load i64, i64* @txmsg_drop, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load %struct.sockmap_options*, %struct.sockmap_options** %6, align 8
  %25 = getelementptr inbounds %struct.sockmap_options, %struct.sockmap_options* %24, i32 0, i32 1
  store i32 1, i32* %25, align 4
  br label %29

26:                                               ; preds = %20
  %27 = load %struct.sockmap_options*, %struct.sockmap_options** %6, align 8
  %28 = getelementptr inbounds %struct.sockmap_options, %struct.sockmap_options* %27, i32 0, i32 1
  store i32 0, i32* %28, align 4
  br label %29

29:                                               ; preds = %26, %23
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @test_options(i8* %30)
  %32 = load i32, i32* @stdout, align 4
  %33 = load i32, i32* @test_cnt, align 4
  %34 = load %struct.sockmap_options*, %struct.sockmap_options** %6, align 8
  %35 = getelementptr inbounds %struct.sockmap_options, %struct.sockmap_options* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.sockmap_options*, %struct.sockmap_options** %6, align 8
  %38 = getelementptr inbounds %struct.sockmap_options, %struct.sockmap_options* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.sockmap_options*, %struct.sockmap_options** %6, align 8
  %41 = getelementptr inbounds %struct.sockmap_options, %struct.sockmap_options* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i8* @test_to_str(i32 %43)
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 (i32, i8*, ...) @fprintf(i32 %32, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %36, i32 %39, i32 %42, i8* %44, i8* %45)
  %47 = load i32, i32* @stdout, align 4
  %48 = call i32 @fflush(i32 %47)
  %49 = load %struct.sockmap_options*, %struct.sockmap_options** %6, align 8
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @run_options(%struct.sockmap_options* %49, i32 %50, i32 %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* @stdout, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)
  %59 = call i32 (i32, i8*, ...) @fprintf(i32 %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %58)
  %60 = load i32, i32* @test_cnt, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* @test_cnt, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %29
  %65 = load i32, i32* @passed, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* @passed, align 4
  br label %70

67:                                               ; preds = %29
  %68 = load i32, i32* @failed, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* @failed, align 4
  br label %70

70:                                               ; preds = %67, %64
  %71 = phi i32 [ %65, %64 ], [ %68, %67 ]
  %72 = load i8*, i8** %7, align 8
  %73 = call i32 @free(i8* %72)
  %74 = load i32, i32* %8, align 4
  ret i32 %74
}

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @test_options(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @test_to_str(i32) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @run_options(%struct.sockmap_options*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
