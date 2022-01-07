; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_util.c_tomoyo_parse_name_union.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_util.c_tomoyo_parse_name_union.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tomoyo_acl_param = type { i8* }
%struct.tomoyo_name_union = type { i32*, i32* }

@TOMOYO_PATH_GROUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tomoyo_parse_name_union(%struct.tomoyo_acl_param* %0, %struct.tomoyo_name_union* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tomoyo_acl_param*, align 8
  %5 = alloca %struct.tomoyo_name_union*, align 8
  %6 = alloca i8*, align 8
  store %struct.tomoyo_acl_param* %0, %struct.tomoyo_acl_param** %4, align 8
  store %struct.tomoyo_name_union* %1, %struct.tomoyo_name_union** %5, align 8
  %7 = load %struct.tomoyo_acl_param*, %struct.tomoyo_acl_param** %4, align 8
  %8 = getelementptr inbounds %struct.tomoyo_acl_param, %struct.tomoyo_acl_param* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 64
  br i1 %13, label %14, label %29

14:                                               ; preds = %2
  %15 = load %struct.tomoyo_acl_param*, %struct.tomoyo_acl_param** %4, align 8
  %16 = getelementptr inbounds %struct.tomoyo_acl_param, %struct.tomoyo_acl_param* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %16, align 8
  %19 = load %struct.tomoyo_acl_param*, %struct.tomoyo_acl_param** %4, align 8
  %20 = load i32, i32* @TOMOYO_PATH_GROUP, align 4
  %21 = call i32* @tomoyo_get_group(%struct.tomoyo_acl_param* %19, i32 %20)
  %22 = load %struct.tomoyo_name_union*, %struct.tomoyo_name_union** %5, align 8
  %23 = getelementptr inbounds %struct.tomoyo_name_union, %struct.tomoyo_name_union* %22, i32 0, i32 1
  store i32* %21, i32** %23, align 8
  %24 = load %struct.tomoyo_name_union*, %struct.tomoyo_name_union** %5, align 8
  %25 = getelementptr inbounds %struct.tomoyo_name_union, %struct.tomoyo_name_union* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %3, align 4
  br label %46

29:                                               ; preds = %2
  %30 = load %struct.tomoyo_acl_param*, %struct.tomoyo_acl_param** %4, align 8
  %31 = call i8* @tomoyo_read_token(%struct.tomoyo_acl_param* %30)
  store i8* %31, i8** %6, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @tomoyo_correct_word(i8* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %46

36:                                               ; preds = %29
  %37 = load i8*, i8** %6, align 8
  %38 = call i32* @tomoyo_get_name(i8* %37)
  %39 = load %struct.tomoyo_name_union*, %struct.tomoyo_name_union** %5, align 8
  %40 = getelementptr inbounds %struct.tomoyo_name_union, %struct.tomoyo_name_union* %39, i32 0, i32 0
  store i32* %38, i32** %40, align 8
  %41 = load %struct.tomoyo_name_union*, %struct.tomoyo_name_union** %5, align 8
  %42 = getelementptr inbounds %struct.tomoyo_name_union, %struct.tomoyo_name_union* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %36, %35, %14
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32* @tomoyo_get_group(%struct.tomoyo_acl_param*, i32) #1

declare dso_local i8* @tomoyo_read_token(%struct.tomoyo_acl_param*) #1

declare dso_local i32 @tomoyo_correct_word(i8*) #1

declare dso_local i32* @tomoyo_get_name(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
