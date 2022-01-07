; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_auxtrace.c_find_kern_sym_cb.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_auxtrace.c_find_kern_sym_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_args = type { i32, i8*, i32, i8*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8, i8*)* @find_kern_sym_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_kern_sym_cb(i8* %0, i8* %1, i8 signext %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca %struct.sym_args*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8 %2, i8* %8, align 1
  store i8* %3, i8** %9, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.sym_args*
  store %struct.sym_args* %12, %struct.sym_args** %10, align 8
  %13 = load %struct.sym_args*, %struct.sym_args** %10, align 8
  %14 = getelementptr inbounds %struct.sym_args, %struct.sym_args* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %56

17:                                               ; preds = %4
  %18 = load %struct.sym_args*, %struct.sym_args** %10, align 8
  %19 = getelementptr inbounds %struct.sym_args, %struct.sym_args* %18, i32 0, i32 3
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %33, label %22

22:                                               ; preds = %17
  %23 = load i8*, i8** %9, align 8
  %24 = load %struct.sym_args*, %struct.sym_args** %10, align 8
  %25 = getelementptr inbounds %struct.sym_args, %struct.sym_args* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = ptrtoint i8* %23 to i64
  %28 = ptrtoint i8* %26 to i64
  %29 = sub i64 %27, %28
  %30 = inttoptr i64 %29 to i8*
  %31 = load %struct.sym_args*, %struct.sym_args** %10, align 8
  %32 = getelementptr inbounds %struct.sym_args, %struct.sym_args* %31, i32 0, i32 3
  store i8* %30, i8** %32, align 8
  br label %33

33:                                               ; preds = %22, %17
  %34 = load %struct.sym_args*, %struct.sym_args** %10, align 8
  %35 = getelementptr inbounds %struct.sym_args, %struct.sym_args* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = load %struct.sym_args*, %struct.sym_args** %10, align 8
  %40 = getelementptr inbounds %struct.sym_args, %struct.sym_args* %39, i32 0, i32 3
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i32 1, i32* %5, align 4
  br label %70

44:                                               ; preds = %38
  br label %55

45:                                               ; preds = %33
  %46 = load %struct.sym_args*, %struct.sym_args** %10, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = load i8, i8* %8, align 1
  %49 = call i64 @kern_sym_match(%struct.sym_args* %46, i8* %47, i8 signext %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load %struct.sym_args*, %struct.sym_args** %10, align 8
  %53 = getelementptr inbounds %struct.sym_args, %struct.sym_args* %52, i32 0, i32 2
  store i32 1, i32* %53, align 8
  store i32 1, i32* %5, align 4
  br label %70

54:                                               ; preds = %45
  br label %55

55:                                               ; preds = %54, %44
  br label %69

56:                                               ; preds = %4
  %57 = load %struct.sym_args*, %struct.sym_args** %10, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = load i8, i8* %8, align 1
  %60 = call i64 @kern_sym_match(%struct.sym_args* %57, i8* %58, i8 signext %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %56
  %63 = load %struct.sym_args*, %struct.sym_args** %10, align 8
  %64 = getelementptr inbounds %struct.sym_args, %struct.sym_args* %63, i32 0, i32 0
  store i32 1, i32* %64, align 8
  %65 = load i8*, i8** %9, align 8
  %66 = load %struct.sym_args*, %struct.sym_args** %10, align 8
  %67 = getelementptr inbounds %struct.sym_args, %struct.sym_args* %66, i32 0, i32 1
  store i8* %65, i8** %67, align 8
  br label %68

68:                                               ; preds = %62, %56
  br label %69

69:                                               ; preds = %68, %55
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %69, %51, %43
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i64 @kern_sym_match(%struct.sym_args*, i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
