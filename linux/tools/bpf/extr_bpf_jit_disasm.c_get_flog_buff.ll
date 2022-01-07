; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/extr_bpf_jit_disasm.c_get_flog_buff.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/extr_bpf_jit_disasm.c_get_flog_buff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i32 }

@O_RDONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32*)* @get_flog_buff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_flog_buff(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.stat, align 4
  %10 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = load i32, i32* @O_RDONLY, align 4
  %13 = call i32 @open(i8* %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %61

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @fstat(i32 %18, %struct.stat* %9)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @S_ISREG(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22, %17
  br label %58

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i8* @malloc(i32 %32)
  store i8* %33, i8** %10, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %28
  br label %58

37:                                               ; preds = %28
  %38 = load i8*, i8** %10, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @memset(i8* %38, i32 0, i32 %39)
  %41 = load i32, i32* %6, align 4
  %42 = load i8*, i8** %10, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sub nsw i32 %43, 1
  %45 = call i32 @read(i32 %41, i8* %42, i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp sle i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  br label %55

49:                                               ; preds = %37
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @close(i32 %50)
  %52 = load i32, i32* %7, align 4
  %53 = load i32*, i32** %5, align 8
  store i32 %52, i32* %53, align 4
  %54 = load i8*, i8** %10, align 8
  store i8* %54, i8** %3, align 8
  br label %61

55:                                               ; preds = %48
  %56 = load i8*, i8** %10, align 8
  %57 = call i32 @free(i8* %56)
  br label %58

58:                                               ; preds = %55, %36, %27
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @close(i32 %59)
  store i8* null, i8** %3, align 8
  br label %61

61:                                               ; preds = %58, %49, %16
  %62 = load i8*, i8** %3, align 8
  ret i8* %62
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
