; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_condition.c_tomoyo_envp.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_condition.c_tomoyo_envp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tomoyo_envp = type { i64, i32, i32 }
%struct.tomoyo_path_info = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, %struct.tomoyo_envp*, i32*)* @tomoyo_envp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tomoyo_envp(i8* %0, i8* %1, i32 %2, %struct.tomoyo_envp* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.tomoyo_envp*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.tomoyo_path_info, align 8
  %14 = alloca %struct.tomoyo_path_info, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.tomoyo_envp* %3, %struct.tomoyo_envp** %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = getelementptr inbounds %struct.tomoyo_path_info, %struct.tomoyo_path_info* %13, i32 0, i32 0
  store i8* %16, i8** %17, align 8
  %18 = call i32 @tomoyo_fill_path_info(%struct.tomoyo_path_info* %13)
  %19 = load i8*, i8** %8, align 8
  %20 = getelementptr inbounds %struct.tomoyo_path_info, %struct.tomoyo_path_info* %14, i32 0, i32 0
  store i8* %19, i8** %20, align 8
  %21 = call i32 @tomoyo_fill_path_info(%struct.tomoyo_path_info* %14)
  store i32 0, i32* %12, align 4
  br label %22

22:                                               ; preds = %70, %5
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %77

26:                                               ; preds = %22
  %27 = load %struct.tomoyo_envp*, %struct.tomoyo_envp** %10, align 8
  %28 = getelementptr inbounds %struct.tomoyo_envp, %struct.tomoyo_envp* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @tomoyo_path_matches_pattern(%struct.tomoyo_path_info* %13, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  br label %70

33:                                               ; preds = %26
  %34 = load i32*, i32** %11, align 8
  store i32 1, i32* %34, align 4
  %35 = load %struct.tomoyo_envp*, %struct.tomoyo_envp** %10, align 8
  %36 = getelementptr inbounds %struct.tomoyo_envp, %struct.tomoyo_envp* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %33
  %40 = load %struct.tomoyo_envp*, %struct.tomoyo_envp** %10, align 8
  %41 = getelementptr inbounds %struct.tomoyo_envp, %struct.tomoyo_envp* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @tomoyo_path_matches_pattern(%struct.tomoyo_path_info* %14, i32 %42)
  store i32 %43, i32* %15, align 4
  %44 = load %struct.tomoyo_envp*, %struct.tomoyo_envp** %10, align 8
  %45 = getelementptr inbounds %struct.tomoyo_envp, %struct.tomoyo_envp* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %39
  %49 = load i32, i32* %15, align 4
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %15, align 4
  br label %53

53:                                               ; preds = %48, %39
  br label %65

54:                                               ; preds = %33
  store i32 1, i32* %15, align 4
  %55 = load %struct.tomoyo_envp*, %struct.tomoyo_envp** %10, align 8
  %56 = getelementptr inbounds %struct.tomoyo_envp, %struct.tomoyo_envp* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* %15, align 4
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %15, align 4
  br label %64

64:                                               ; preds = %59, %54
  br label %65

65:                                               ; preds = %64, %53
  %66 = load i32, i32* %15, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %65
  store i32 0, i32* %6, align 4
  br label %78

69:                                               ; preds = %65
  br label %70

70:                                               ; preds = %69, %32
  %71 = load %struct.tomoyo_envp*, %struct.tomoyo_envp** %10, align 8
  %72 = getelementptr inbounds %struct.tomoyo_envp, %struct.tomoyo_envp* %71, i32 1
  store %struct.tomoyo_envp* %72, %struct.tomoyo_envp** %10, align 8
  %73 = load i32*, i32** %11, align 8
  %74 = getelementptr inbounds i32, i32* %73, i32 1
  store i32* %74, i32** %11, align 8
  %75 = load i32, i32* %12, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %12, align 4
  br label %22

77:                                               ; preds = %22
  store i32 1, i32* %6, align 4
  br label %78

78:                                               ; preds = %77, %68
  %79 = load i32, i32* %6, align 4
  ret i32 %79
}

declare dso_local i32 @tomoyo_fill_path_info(%struct.tomoyo_path_info*) #1

declare dso_local i32 @tomoyo_path_matches_pattern(%struct.tomoyo_path_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
