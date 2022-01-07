; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_util.c_tomoyo_path_matches_pattern.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_util.c_tomoyo_path_matches_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tomoyo_path_info = type { i8*, i32, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tomoyo_path_matches_pattern(%struct.tomoyo_path_info* %0, %struct.tomoyo_path_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tomoyo_path_info*, align 8
  %5 = alloca %struct.tomoyo_path_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.tomoyo_path_info* %0, %struct.tomoyo_path_info** %4, align 8
  store %struct.tomoyo_path_info* %1, %struct.tomoyo_path_info** %5, align 8
  %9 = load %struct.tomoyo_path_info*, %struct.tomoyo_path_info** %4, align 8
  %10 = getelementptr inbounds %struct.tomoyo_path_info, %struct.tomoyo_path_info* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %6, align 8
  %12 = load %struct.tomoyo_path_info*, %struct.tomoyo_path_info** %5, align 8
  %13 = getelementptr inbounds %struct.tomoyo_path_info, %struct.tomoyo_path_info* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %7, align 8
  %15 = load %struct.tomoyo_path_info*, %struct.tomoyo_path_info** %5, align 8
  %16 = getelementptr inbounds %struct.tomoyo_path_info, %struct.tomoyo_path_info* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %8, align 4
  %18 = load %struct.tomoyo_path_info*, %struct.tomoyo_path_info** %5, align 8
  %19 = getelementptr inbounds %struct.tomoyo_path_info, %struct.tomoyo_path_info* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %2
  %23 = load %struct.tomoyo_path_info*, %struct.tomoyo_path_info** %4, align 8
  %24 = load %struct.tomoyo_path_info*, %struct.tomoyo_path_info** %5, align 8
  %25 = call i32 @tomoyo_pathcmp(%struct.tomoyo_path_info* %23, %struct.tomoyo_path_info* %24)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %3, align 4
  br label %57

29:                                               ; preds = %2
  %30 = load %struct.tomoyo_path_info*, %struct.tomoyo_path_info** %4, align 8
  %31 = getelementptr inbounds %struct.tomoyo_path_info, %struct.tomoyo_path_info* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.tomoyo_path_info*, %struct.tomoyo_path_info** %5, align 8
  %34 = getelementptr inbounds %struct.tomoyo_path_info, %struct.tomoyo_path_info* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %57

38:                                               ; preds = %29
  %39 = load i8*, i8** %6, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i64 @strncmp(i8* %39, i8* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %57

45:                                               ; preds = %38
  %46 = load i32, i32* %8, align 4
  %47 = load i8*, i8** %6, align 8
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  store i8* %49, i8** %6, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i8*, i8** %7, align 8
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  store i8* %53, i8** %7, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = call i32 @tomoyo_path_matches_pattern2(i8* %54, i8* %55)
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %45, %44, %37, %22
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @tomoyo_pathcmp(%struct.tomoyo_path_info*, %struct.tomoyo_path_info*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @tomoyo_path_matches_pattern2(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
