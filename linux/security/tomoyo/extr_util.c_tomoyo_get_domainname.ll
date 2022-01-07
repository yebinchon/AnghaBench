; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_util.c_tomoyo_get_domainname.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_util.c_tomoyo_get_domainname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tomoyo_path_info = type { i32 }
%struct.tomoyo_acl_param = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tomoyo_path_info* @tomoyo_get_domainname(%struct.tomoyo_acl_param* %0) #0 {
  %2 = alloca %struct.tomoyo_path_info*, align 8
  %3 = alloca %struct.tomoyo_acl_param*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.tomoyo_acl_param* %0, %struct.tomoyo_acl_param** %3, align 8
  %6 = load %struct.tomoyo_acl_param*, %struct.tomoyo_acl_param** %3, align 8
  %7 = getelementptr inbounds %struct.tomoyo_acl_param, %struct.tomoyo_acl_param* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  store i8* %9, i8** %5, align 8
  br label %10

10:                                               ; preds = %26, %1
  %11 = load i8*, i8** %5, align 8
  %12 = load i8, i8* %11, align 1
  %13 = icmp ne i8 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %10
  %15 = load i8*, i8** %5, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** %5, align 8
  %17 = load i8, i8* %15, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 32
  br i1 %19, label %26, label %20

20:                                               ; preds = %14
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %5, align 8
  %23 = load i8, i8* %21, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 47
  br i1 %25, label %26, label %27

26:                                               ; preds = %20, %14
  br label %10

27:                                               ; preds = %20
  %28 = load i8*, i8** %5, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 -2
  store i8* %29, i8** %5, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %5, align 8
  store i8 0, i8* %30, align 1
  br label %32

32:                                               ; preds = %27, %10
  %33 = load i8*, i8** %5, align 8
  %34 = load %struct.tomoyo_acl_param*, %struct.tomoyo_acl_param** %3, align 8
  %35 = getelementptr inbounds %struct.tomoyo_acl_param, %struct.tomoyo_acl_param* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = call i64 @tomoyo_correct_domain(i8* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load i8*, i8** %4, align 8
  %41 = call %struct.tomoyo_path_info* @tomoyo_get_name(i8* %40)
  store %struct.tomoyo_path_info* %41, %struct.tomoyo_path_info** %2, align 8
  br label %43

42:                                               ; preds = %32
  store %struct.tomoyo_path_info* null, %struct.tomoyo_path_info** %2, align 8
  br label %43

43:                                               ; preds = %42, %39
  %44 = load %struct.tomoyo_path_info*, %struct.tomoyo_path_info** %2, align 8
  ret %struct.tomoyo_path_info* %44
}

declare dso_local i64 @tomoyo_correct_domain(i8*) #1

declare dso_local %struct.tomoyo_path_info* @tomoyo_get_name(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
