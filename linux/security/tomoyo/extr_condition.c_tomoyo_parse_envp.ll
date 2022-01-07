; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_condition.c_tomoyo_parse_envp.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_condition.c_tomoyo_parse_envp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tomoyo_envp = type { %struct.tomoyo_path_info*, %struct.tomoyo_path_info* }
%struct.tomoyo_path_info = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %struct.tomoyo_envp*)* @tomoyo_parse_envp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tomoyo_parse_envp(i8* %0, i8* %1, %struct.tomoyo_envp* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.tomoyo_envp*, align 8
  %8 = alloca %struct.tomoyo_path_info*, align 8
  %9 = alloca %struct.tomoyo_path_info*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.tomoyo_envp* %2, %struct.tomoyo_envp** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @strlen(i8* %12)
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %11, i64 %14
  %16 = getelementptr inbounds i8, i8* %15, i64 -1
  store i8* %16, i8** %10, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 -1
  store i8* %18, i8** %10, align 8
  %19 = load i8, i8* %17, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 93
  br i1 %21, label %27, label %22

22:                                               ; preds = %3
  %23 = load i8*, i8** %10, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 34
  br i1 %26, label %27, label %28

27:                                               ; preds = %22, %3
  br label %61

28:                                               ; preds = %22
  %29 = load i8*, i8** %10, align 8
  store i8 0, i8* %29, align 1
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @tomoyo_correct_word(i8* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  br label %61

34:                                               ; preds = %28
  %35 = load i8*, i8** %5, align 8
  %36 = call %struct.tomoyo_path_info* @tomoyo_get_name(i8* %35)
  store %struct.tomoyo_path_info* %36, %struct.tomoyo_path_info** %8, align 8
  %37 = load %struct.tomoyo_path_info*, %struct.tomoyo_path_info** %8, align 8
  %38 = icmp ne %struct.tomoyo_path_info* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  br label %61

40:                                               ; preds = %34
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @strcmp(i8* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  store %struct.tomoyo_path_info* null, %struct.tomoyo_path_info** %9, align 8
  br label %54

45:                                               ; preds = %40
  %46 = load i8*, i8** %6, align 8
  %47 = call %struct.tomoyo_path_info* @tomoyo_get_dqword(i8* %46)
  store %struct.tomoyo_path_info* %47, %struct.tomoyo_path_info** %9, align 8
  %48 = load %struct.tomoyo_path_info*, %struct.tomoyo_path_info** %9, align 8
  %49 = icmp ne %struct.tomoyo_path_info* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  %51 = load %struct.tomoyo_path_info*, %struct.tomoyo_path_info** %8, align 8
  %52 = call i32 @tomoyo_put_name(%struct.tomoyo_path_info* %51)
  br label %61

53:                                               ; preds = %45
  br label %54

54:                                               ; preds = %53, %44
  %55 = load %struct.tomoyo_path_info*, %struct.tomoyo_path_info** %8, align 8
  %56 = load %struct.tomoyo_envp*, %struct.tomoyo_envp** %7, align 8
  %57 = getelementptr inbounds %struct.tomoyo_envp, %struct.tomoyo_envp* %56, i32 0, i32 1
  store %struct.tomoyo_path_info* %55, %struct.tomoyo_path_info** %57, align 8
  %58 = load %struct.tomoyo_path_info*, %struct.tomoyo_path_info** %9, align 8
  %59 = load %struct.tomoyo_envp*, %struct.tomoyo_envp** %7, align 8
  %60 = getelementptr inbounds %struct.tomoyo_envp, %struct.tomoyo_envp* %59, i32 0, i32 0
  store %struct.tomoyo_path_info* %58, %struct.tomoyo_path_info** %60, align 8
  store i32 1, i32* %4, align 4
  br label %62

61:                                               ; preds = %50, %39, %33, %27
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %61, %54
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @tomoyo_correct_word(i8*) #1

declare dso_local %struct.tomoyo_path_info* @tomoyo_get_name(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local %struct.tomoyo_path_info* @tomoyo_get_dqword(i8*) #1

declare dso_local i32 @tomoyo_put_name(%struct.tomoyo_path_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
