; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_program__init.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_program__init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_program = type { i64, i32, i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32* }

@.str = private unnamed_addr constant [35 x i8] c"corrupted section '%s', size: %zu\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"failed to alloc name for prog under section(%d) %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"failed to alloc pin name for prog under section(%d) %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"failed to alloc insns for prog under section %s\0A\00", align 1
@BPF_PROG_TYPE_UNSPEC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8*, i32, %struct.bpf_program*)* @bpf_program__init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_program__init(i8* %0, i64 %1, i8* %2, i32 %3, %struct.bpf_program* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.bpf_program*, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.bpf_program* %4, %struct.bpf_program** %11, align 8
  store i64 4, i64* %12, align 8
  %13 = load i64, i64* %8, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %5
  %16 = load i64, i64* %8, align 8
  %17 = urem i64 %16, 4
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %15, %5
  %20 = load i8*, i8** %9, align 8
  %21 = load i64, i64* %8, align 8
  %22 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %20, i64 %21)
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %93

25:                                               ; preds = %15
  %26 = load %struct.bpf_program*, %struct.bpf_program** %11, align 8
  %27 = call i32 @memset(%struct.bpf_program* %26, i32 0, i32 48)
  %28 = load i8*, i8** %9, align 8
  %29 = call i32 @strdup(i8* %28)
  %30 = load %struct.bpf_program*, %struct.bpf_program** %11, align 8
  %31 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %30, i32 0, i32 6
  store i32 %29, i32* %31, align 8
  %32 = load %struct.bpf_program*, %struct.bpf_program** %11, align 8
  %33 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %25
  %37 = load i32, i32* %10, align 4
  %38 = load i8*, i8** %9, align 8
  %39 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %37, i8* %38)
  br label %88

40:                                               ; preds = %25
  %41 = load %struct.bpf_program*, %struct.bpf_program** %11, align 8
  %42 = call i32 @__bpf_program__pin_name(%struct.bpf_program* %41)
  %43 = load %struct.bpf_program*, %struct.bpf_program** %11, align 8
  %44 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %43, i32 0, i32 5
  store i32 %42, i32* %44, align 4
  %45 = load %struct.bpf_program*, %struct.bpf_program** %11, align 8
  %46 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %40
  %50 = load i32, i32* %10, align 4
  %51 = load i8*, i8** %9, align 8
  %52 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %50, i8* %51)
  br label %88

53:                                               ; preds = %40
  %54 = load i64, i64* %8, align 8
  %55 = call i32 @malloc(i64 %54)
  %56 = load %struct.bpf_program*, %struct.bpf_program** %11, align 8
  %57 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 8
  %58 = load %struct.bpf_program*, %struct.bpf_program** %11, align 8
  %59 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %53
  %63 = load i8*, i8** %9, align 8
  %64 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i8* %63)
  br label %88

65:                                               ; preds = %53
  %66 = load i64, i64* %8, align 8
  %67 = udiv i64 %66, 4
  %68 = load %struct.bpf_program*, %struct.bpf_program** %11, align 8
  %69 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  %70 = load %struct.bpf_program*, %struct.bpf_program** %11, align 8
  %71 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = load i8*, i8** %7, align 8
  %74 = load i64, i64* %8, align 8
  %75 = call i32 @memcpy(i32 %72, i8* %73, i64 %74)
  %76 = load i32, i32* %10, align 4
  %77 = load %struct.bpf_program*, %struct.bpf_program** %11, align 8
  %78 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 8
  %79 = load %struct.bpf_program*, %struct.bpf_program** %11, align 8
  %80 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  store i32* null, i32** %81, align 8
  %82 = load %struct.bpf_program*, %struct.bpf_program** %11, align 8
  %83 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  store i32 -1, i32* %84, align 8
  %85 = load i32, i32* @BPF_PROG_TYPE_UNSPEC, align 4
  %86 = load %struct.bpf_program*, %struct.bpf_program** %11, align 8
  %87 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 4
  store i32 0, i32* %6, align 4
  br label %93

88:                                               ; preds = %62, %49, %36
  %89 = load %struct.bpf_program*, %struct.bpf_program** %11, align 8
  %90 = call i32 @bpf_program__exit(%struct.bpf_program* %89)
  %91 = load i32, i32* @ENOMEM, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %88, %65, %19
  %94 = load i32, i32* %6, align 4
  ret i32 %94
}

declare dso_local i32 @pr_warning(i8*, ...) #1

declare dso_local i32 @memset(%struct.bpf_program*, i32, i32) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @__bpf_program__pin_name(%struct.bpf_program*) #1

declare dso_local i32 @malloc(i64) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i32 @bpf_program__exit(%struct.bpf_program*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
