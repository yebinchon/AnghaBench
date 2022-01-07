; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_condition.c_tomoyo_get_transit_preference.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_condition.c_tomoyo_get_transit_preference.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tomoyo_acl_param = type { i8* }
%struct.tomoyo_condition = type { i64 }

@.str = private unnamed_addr constant [5 x i8] c"keep\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"initialize\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"child\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"parent\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.tomoyo_acl_param*, %struct.tomoyo_condition*)* @tomoyo_get_transit_preference to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @tomoyo_get_transit_preference(%struct.tomoyo_acl_param* %0, %struct.tomoyo_condition* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.tomoyo_acl_param*, align 8
  %5 = alloca %struct.tomoyo_condition*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.tomoyo_acl_param* %0, %struct.tomoyo_acl_param** %4, align 8
  store %struct.tomoyo_condition* %1, %struct.tomoyo_condition** %5, align 8
  %9 = load %struct.tomoyo_acl_param*, %struct.tomoyo_acl_param** %4, align 8
  %10 = getelementptr inbounds %struct.tomoyo_acl_param, %struct.tomoyo_acl_param* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 60
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.tomoyo_acl_param*, %struct.tomoyo_acl_param** %4, align 8
  %18 = call i64 @tomoyo_get_domainname(%struct.tomoyo_acl_param* %17)
  %19 = load %struct.tomoyo_condition*, %struct.tomoyo_condition** %5, align 8
  %20 = getelementptr inbounds %struct.tomoyo_condition, %struct.tomoyo_condition* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  br label %71

21:                                               ; preds = %2
  %22 = load i8*, i8** %6, align 8
  %23 = call i8* @strchr(i8* %22, i8 signext 32)
  store i8* %23, i8** %8, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i8*, i8** %8, align 8
  store i8 0, i8* %27, align 1
  br label %28

28:                                               ; preds = %26, %21
  %29 = load i8*, i8** %6, align 8
  %30 = call i64 @tomoyo_correct_path(i8* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %53, label %32

32:                                               ; preds = %28
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @strcmp(i8* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %53

36:                                               ; preds = %32
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @strcmp(i8* %37, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %36
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @strcmp(i8* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %40
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @strcmp(i8* %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 @strcmp(i8* %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  br label %53

53:                                               ; preds = %48, %44, %40, %36, %32, %28
  %54 = phi i1 [ true, %44 ], [ true, %40 ], [ true, %36 ], [ true, %32 ], [ true, %28 ], [ %52, %48 ]
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %7, align 4
  %56 = load i8*, i8** %8, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i8*, i8** %8, align 8
  store i8 32, i8* %59, align 1
  br label %60

60:                                               ; preds = %58, %53
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %60
  %64 = load i8*, i8** %6, align 8
  store i8* %64, i8** %3, align 8
  br label %81

65:                                               ; preds = %60
  %66 = load %struct.tomoyo_acl_param*, %struct.tomoyo_acl_param** %4, align 8
  %67 = call i32 @tomoyo_read_token(%struct.tomoyo_acl_param* %66)
  %68 = call i64 @tomoyo_get_name(i32 %67)
  %69 = load %struct.tomoyo_condition*, %struct.tomoyo_condition** %5, align 8
  %70 = getelementptr inbounds %struct.tomoyo_condition, %struct.tomoyo_condition* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  br label %71

71:                                               ; preds = %65, %16
  %72 = load %struct.tomoyo_condition*, %struct.tomoyo_condition** %5, align 8
  %73 = getelementptr inbounds %struct.tomoyo_condition, %struct.tomoyo_condition* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load %struct.tomoyo_acl_param*, %struct.tomoyo_acl_param** %4, align 8
  %78 = getelementptr inbounds %struct.tomoyo_acl_param, %struct.tomoyo_acl_param* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  store i8* %79, i8** %3, align 8
  br label %81

80:                                               ; preds = %71
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  br label %81

81:                                               ; preds = %80, %76, %63
  %82 = load i8*, i8** %3, align 8
  ret i8* %82
}

declare dso_local i64 @tomoyo_get_domainname(%struct.tomoyo_acl_param*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @tomoyo_correct_path(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @tomoyo_get_name(i32) #1

declare dso_local i32 @tomoyo_read_token(%struct.tomoyo_acl_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
