; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_sockmap.c_test_send.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_sockmap.c_test_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockmap_options = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockmap_options*, i32)* @test_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_send(%struct.sockmap_options* %0, i32 %1) #0 {
  %3 = alloca %struct.sockmap_options*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sockmap_options* %0, %struct.sockmap_options** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.sockmap_options*, %struct.sockmap_options** %3, align 8
  %7 = getelementptr inbounds %struct.sockmap_options, %struct.sockmap_options* %6, i32 0, i32 0
  store i32 1, i32* %7, align 4
  %8 = load %struct.sockmap_options*, %struct.sockmap_options** %3, align 8
  %9 = getelementptr inbounds %struct.sockmap_options, %struct.sockmap_options* %8, i32 0, i32 1
  store i32 1, i32* %9, align 4
  %10 = load %struct.sockmap_options*, %struct.sockmap_options** %3, align 8
  %11 = getelementptr inbounds %struct.sockmap_options, %struct.sockmap_options* %10, i32 0, i32 2
  store i32 1, i32* %11, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.sockmap_options*, %struct.sockmap_options** %3, align 8
  %14 = call i32 @test_exec(i32 %12, %struct.sockmap_options* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %84

18:                                               ; preds = %2
  %19 = load %struct.sockmap_options*, %struct.sockmap_options** %3, align 8
  %20 = getelementptr inbounds %struct.sockmap_options, %struct.sockmap_options* %19, i32 0, i32 0
  store i32 1, i32* %20, align 4
  %21 = load %struct.sockmap_options*, %struct.sockmap_options** %3, align 8
  %22 = getelementptr inbounds %struct.sockmap_options, %struct.sockmap_options* %21, i32 0, i32 1
  store i32 1024, i32* %22, align 4
  %23 = load %struct.sockmap_options*, %struct.sockmap_options** %3, align 8
  %24 = getelementptr inbounds %struct.sockmap_options, %struct.sockmap_options* %23, i32 0, i32 2
  store i32 1, i32* %24, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.sockmap_options*, %struct.sockmap_options** %3, align 8
  %27 = call i32 @test_exec(i32 %25, %struct.sockmap_options* %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %18
  br label %84

31:                                               ; preds = %18
  %32 = load %struct.sockmap_options*, %struct.sockmap_options** %3, align 8
  %33 = getelementptr inbounds %struct.sockmap_options, %struct.sockmap_options* %32, i32 0, i32 0
  store i32 1024, i32* %33, align 4
  %34 = load %struct.sockmap_options*, %struct.sockmap_options** %3, align 8
  %35 = getelementptr inbounds %struct.sockmap_options, %struct.sockmap_options* %34, i32 0, i32 1
  store i32 1, i32* %35, align 4
  %36 = load %struct.sockmap_options*, %struct.sockmap_options** %3, align 8
  %37 = getelementptr inbounds %struct.sockmap_options, %struct.sockmap_options* %36, i32 0, i32 2
  store i32 1, i32* %37, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.sockmap_options*, %struct.sockmap_options** %3, align 8
  %40 = call i32 @test_exec(i32 %38, %struct.sockmap_options* %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %31
  br label %84

44:                                               ; preds = %31
  %45 = load %struct.sockmap_options*, %struct.sockmap_options** %3, align 8
  %46 = getelementptr inbounds %struct.sockmap_options, %struct.sockmap_options* %45, i32 0, i32 0
  store i32 1, i32* %46, align 4
  %47 = load %struct.sockmap_options*, %struct.sockmap_options** %3, align 8
  %48 = getelementptr inbounds %struct.sockmap_options, %struct.sockmap_options* %47, i32 0, i32 1
  store i32 1, i32* %48, align 4
  %49 = load %struct.sockmap_options*, %struct.sockmap_options** %3, align 8
  %50 = getelementptr inbounds %struct.sockmap_options, %struct.sockmap_options* %49, i32 0, i32 2
  store i32 512, i32* %50, align 4
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.sockmap_options*, %struct.sockmap_options** %3, align 8
  %53 = call i32 @test_exec(i32 %51, %struct.sockmap_options* %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %44
  br label %84

57:                                               ; preds = %44
  %58 = load %struct.sockmap_options*, %struct.sockmap_options** %3, align 8
  %59 = getelementptr inbounds %struct.sockmap_options, %struct.sockmap_options* %58, i32 0, i32 0
  store i32 256, i32* %59, align 4
  %60 = load %struct.sockmap_options*, %struct.sockmap_options** %3, align 8
  %61 = getelementptr inbounds %struct.sockmap_options, %struct.sockmap_options* %60, i32 0, i32 1
  store i32 1024, i32* %61, align 4
  %62 = load %struct.sockmap_options*, %struct.sockmap_options** %3, align 8
  %63 = getelementptr inbounds %struct.sockmap_options, %struct.sockmap_options* %62, i32 0, i32 2
  store i32 2, i32* %63, align 4
  %64 = load i32, i32* %4, align 4
  %65 = load %struct.sockmap_options*, %struct.sockmap_options** %3, align 8
  %66 = call i32 @test_exec(i32 %64, %struct.sockmap_options* %65)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %57
  br label %84

70:                                               ; preds = %57
  %71 = load %struct.sockmap_options*, %struct.sockmap_options** %3, align 8
  %72 = getelementptr inbounds %struct.sockmap_options, %struct.sockmap_options* %71, i32 0, i32 2
  store i32 100, i32* %72, align 4
  %73 = load %struct.sockmap_options*, %struct.sockmap_options** %3, align 8
  %74 = getelementptr inbounds %struct.sockmap_options, %struct.sockmap_options* %73, i32 0, i32 1
  store i32 1, i32* %74, align 4
  %75 = load %struct.sockmap_options*, %struct.sockmap_options** %3, align 8
  %76 = getelementptr inbounds %struct.sockmap_options, %struct.sockmap_options* %75, i32 0, i32 0
  store i32 5, i32* %76, align 4
  %77 = load i32, i32* %4, align 4
  %78 = load %struct.sockmap_options*, %struct.sockmap_options** %3, align 8
  %79 = call i32 @test_exec(i32 %77, %struct.sockmap_options* %78)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %70
  br label %84

83:                                               ; preds = %70
  br label %84

84:                                               ; preds = %83, %82, %69, %56, %43, %30, %17
  %85 = call i32 (...) @sched_yield()
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i32 @test_exec(i32, %struct.sockmap_options*) #1

declare dso_local i32 @sched_yield(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
