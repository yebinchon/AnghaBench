; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_auxtrace.c_kern_sym_match.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_auxtrace.c_kern_sym_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_args = type { i64, i64, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sym_args*, i8*, i8)* @kern_sym_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kern_sym_match(%struct.sym_args* %0, i8* %1, i8 signext %2) #0 {
  %4 = alloca %struct.sym_args*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  store %struct.sym_args* %0, %struct.sym_args** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8 %2, i8* %6, align 1
  %7 = load i8, i8* %6, align 1
  %8 = call i64 @kallsyms__is_function(i8 signext %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %55

10:                                               ; preds = %3
  %11 = load i8*, i8** %5, align 8
  %12 = load %struct.sym_args*, %struct.sym_args** %4, align 8
  %13 = getelementptr inbounds %struct.sym_args, %struct.sym_args* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @strcmp(i8* %11, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %55, label %17

17:                                               ; preds = %10
  %18 = load %struct.sym_args*, %struct.sym_args** %4, align 8
  %19 = getelementptr inbounds %struct.sym_args, %struct.sym_args* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i8, i8* %6, align 1
  %24 = call i64 @isupper(i8 signext %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %53, label %26

26:                                               ; preds = %22, %17
  %27 = load %struct.sym_args*, %struct.sym_args** %4, align 8
  %28 = getelementptr inbounds %struct.sym_args, %struct.sym_args* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = load %struct.sym_args*, %struct.sym_args** %4, align 8
  %33 = getelementptr inbounds %struct.sym_args, %struct.sym_args* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %33, align 8
  %36 = load %struct.sym_args*, %struct.sym_args** %4, align 8
  %37 = getelementptr inbounds %struct.sym_args, %struct.sym_args* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %35, %38
  br i1 %39, label %53, label %40

40:                                               ; preds = %31, %26
  %41 = load %struct.sym_args*, %struct.sym_args** %4, align 8
  %42 = getelementptr inbounds %struct.sym_args, %struct.sym_args* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %40
  %46 = load %struct.sym_args*, %struct.sym_args** %4, align 8
  %47 = getelementptr inbounds %struct.sym_args, %struct.sym_args* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  %50 = xor i1 %49, true
  br label %51

51:                                               ; preds = %45, %40
  %52 = phi i1 [ false, %40 ], [ %50, %45 ]
  br label %53

53:                                               ; preds = %51, %31, %22
  %54 = phi i1 [ true, %31 ], [ true, %22 ], [ %52, %51 ]
  br label %55

55:                                               ; preds = %53, %10, %3
  %56 = phi i1 [ false, %10 ], [ false, %3 ], [ %54, %53 ]
  %57 = zext i1 %56 to i32
  ret i32 %57
}

declare dso_local i64 @kallsyms__is_function(i8 signext) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i64 @isupper(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
