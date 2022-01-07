; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_condition.c_tomoyo_argv.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_condition.c_tomoyo_argv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tomoyo_argv = type { i32, i64, i32 }
%struct.tomoyo_path_info = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, %struct.tomoyo_argv*, i32*)* @tomoyo_argv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tomoyo_argv(i32 %0, i8* %1, i32 %2, %struct.tomoyo_argv* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.tomoyo_argv*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.tomoyo_path_info, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.tomoyo_argv* %3, %struct.tomoyo_argv** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = getelementptr inbounds %struct.tomoyo_path_info, %struct.tomoyo_path_info* %13, i32 0, i32 0
  store i8* %15, i8** %16, align 8
  store i32 0, i32* %12, align 4
  br label %17

17:                                               ; preds = %49, %5
  %18 = load i32, i32* %12, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %56

21:                                               ; preds = %17
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.tomoyo_argv*, %struct.tomoyo_argv** %10, align 8
  %24 = getelementptr inbounds %struct.tomoyo_argv, %struct.tomoyo_argv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %49

28:                                               ; preds = %21
  %29 = load i32*, i32** %11, align 8
  store i32 1, i32* %29, align 4
  %30 = call i32 @tomoyo_fill_path_info(%struct.tomoyo_path_info* %13)
  %31 = load %struct.tomoyo_argv*, %struct.tomoyo_argv** %10, align 8
  %32 = getelementptr inbounds %struct.tomoyo_argv, %struct.tomoyo_argv* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @tomoyo_path_matches_pattern(%struct.tomoyo_path_info* %13, i32 %33)
  store i32 %34, i32* %14, align 4
  %35 = load %struct.tomoyo_argv*, %struct.tomoyo_argv** %10, align 8
  %36 = getelementptr inbounds %struct.tomoyo_argv, %struct.tomoyo_argv* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %28
  %40 = load i32, i32* %14, align 4
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %14, align 4
  br label %44

44:                                               ; preds = %39, %28
  %45 = load i32, i32* %14, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  store i32 0, i32* %6, align 4
  br label %57

48:                                               ; preds = %44
  br label %49

49:                                               ; preds = %48, %27
  %50 = load %struct.tomoyo_argv*, %struct.tomoyo_argv** %10, align 8
  %51 = getelementptr inbounds %struct.tomoyo_argv, %struct.tomoyo_argv* %50, i32 1
  store %struct.tomoyo_argv* %51, %struct.tomoyo_argv** %10, align 8
  %52 = load i32*, i32** %11, align 8
  %53 = getelementptr inbounds i32, i32* %52, i32 1
  store i32* %53, i32** %11, align 8
  %54 = load i32, i32* %12, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %12, align 4
  br label %17

56:                                               ; preds = %17
  store i32 1, i32* %6, align 4
  br label %57

57:                                               ; preds = %56, %47
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local i32 @tomoyo_fill_path_info(%struct.tomoyo_path_info*) #1

declare dso_local i32 @tomoyo_path_matches_pattern(%struct.tomoyo_path_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
