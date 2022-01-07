; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_program__unload.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_program__unload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_program = type { i32*, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32* }

@.str = private unnamed_addr constant [36 x i8] c"Internal error: instances.nr is %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bpf_program__unload(%struct.bpf_program* %0) #0 {
  %2 = alloca %struct.bpf_program*, align 8
  %3 = alloca i32, align 4
  store %struct.bpf_program* %0, %struct.bpf_program** %2, align 8
  %4 = load %struct.bpf_program*, %struct.bpf_program** %2, align 8
  %5 = icmp ne %struct.bpf_program* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %62

7:                                                ; preds = %1
  %8 = load %struct.bpf_program*, %struct.bpf_program** %2, align 8
  %9 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %35

13:                                               ; preds = %7
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %31, %13
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.bpf_program*, %struct.bpf_program** %2, align 8
  %17 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %15, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %14
  %22 = load %struct.bpf_program*, %struct.bpf_program** %2, align 8
  %23 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @zclose(i32 %29)
  br label %31

31:                                               ; preds = %21
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %14

34:                                               ; preds = %14
  br label %48

35:                                               ; preds = %7
  %36 = load %struct.bpf_program*, %struct.bpf_program** %2, align 8
  %37 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, -1
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = load %struct.bpf_program*, %struct.bpf_program** %2, align 8
  %43 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @pr_warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %41, %35
  br label %48

48:                                               ; preds = %47, %34
  %49 = load %struct.bpf_program*, %struct.bpf_program** %2, align 8
  %50 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i32 -1, i32* %51, align 8
  %52 = load %struct.bpf_program*, %struct.bpf_program** %2, align 8
  %53 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = call i32 @zfree(i32** %54)
  %56 = load %struct.bpf_program*, %struct.bpf_program** %2, align 8
  %57 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %56, i32 0, i32 1
  %58 = call i32 @zfree(i32** %57)
  %59 = load %struct.bpf_program*, %struct.bpf_program** %2, align 8
  %60 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %59, i32 0, i32 0
  %61 = call i32 @zfree(i32** %60)
  br label %62

62:                                               ; preds = %48, %6
  ret void
}

declare dso_local i32 @zclose(i32) #1

declare dso_local i32 @pr_warning(i8*, i32) #1

declare dso_local i32 @zfree(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
