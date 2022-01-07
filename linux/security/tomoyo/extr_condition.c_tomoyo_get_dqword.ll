; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_condition.c_tomoyo_get_dqword.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_condition.c_tomoyo_get_dqword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tomoyo_path_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tomoyo_path_info* (i8*)* @tomoyo_get_dqword to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tomoyo_path_info* @tomoyo_get_dqword(i8* %0) #0 {
  %2 = alloca %struct.tomoyo_path_info*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i32 @strlen(i8* %6)
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i8, i8* %5, i64 %8
  %10 = getelementptr inbounds i8, i8* %9, i64 -1
  store i8* %10, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = icmp eq i8* %11, %12
  br i1 %13, label %25, label %14

14:                                               ; preds = %1
  %15 = load i8*, i8** %3, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** %3, align 8
  %17 = load i8, i8* %15, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 34
  br i1 %19, label %25, label %20

20:                                               ; preds = %14
  %21 = load i8*, i8** %4, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 34
  br i1 %24, label %25, label %26

25:                                               ; preds = %20, %14, %1
  store %struct.tomoyo_path_info* null, %struct.tomoyo_path_info** %2, align 8
  br label %40

26:                                               ; preds = %20
  %27 = load i8*, i8** %4, align 8
  store i8 0, i8* %27, align 1
  %28 = load i8*, i8** %3, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load i8*, i8** %3, align 8
  %34 = call i32 @tomoyo_correct_word(i8* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  store %struct.tomoyo_path_info* null, %struct.tomoyo_path_info** %2, align 8
  br label %40

37:                                               ; preds = %32, %26
  %38 = load i8*, i8** %3, align 8
  %39 = call %struct.tomoyo_path_info* @tomoyo_get_name(i8* %38)
  store %struct.tomoyo_path_info* %39, %struct.tomoyo_path_info** %2, align 8
  br label %40

40:                                               ; preds = %37, %36, %25
  %41 = load %struct.tomoyo_path_info*, %struct.tomoyo_path_info** %2, align 8
  ret %struct.tomoyo_path_info* %41
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @tomoyo_correct_word(i8*) #1

declare dso_local %struct.tomoyo_path_info* @tomoyo_get_name(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
