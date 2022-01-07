; ModuleID = '/home/carl/AnghaBench/linux/samples/vfio-mdev/extr_mtty.c_name_show.c'
source_filename = "/home/carl/AnghaBench/linux/samples/vfio-mdev/extr_mtty.c_name_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.device = type { i32 }

@MTTY_STRING_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Single port serial\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Dual port serial\00", align 1
@__const.name_show.name_str = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0)], align 16
@.str.2 = private unnamed_addr constant [6 x i8] c"%s-%d\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.device*, i8*)* @name_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @name_show(%struct.kobject* %0, %struct.device* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kobject*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca [2 x i8*], align 16
  %12 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i32, i32* @MTTY_STRING_LEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = bitcast [2 x i8*]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %17, i8* align 16 bitcast ([2 x i8*]* @__const.name_show.name_str to i8*), i64 16, i1 false)
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %41, %3
  %19 = load i32, i32* %10, align 4
  %20 = icmp slt i32 %19, 2
  br i1 %20, label %21, label %44

21:                                               ; preds = %18
  %22 = load i32, i32* @MTTY_STRING_LEN, align 4
  %23 = load %struct.device*, %struct.device** %6, align 8
  %24 = call i8* @dev_driver_string(%struct.device* %23)
  %25 = load i32, i32* %10, align 4
  %26 = add nsw i32 %25, 1
  %27 = call i32 @snprintf(i8* %16, i32 %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %24, i32 %26)
  %28 = load %struct.kobject*, %struct.kobject** %5, align 8
  %29 = getelementptr inbounds %struct.kobject, %struct.kobject* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @strcmp(i32 %30, i8* %16)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %21
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [2 x i8*], [2 x i8*]* %11, i64 0, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @sprintf(i8* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %38)
  store i32 %39, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %47

40:                                               ; preds = %21
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %10, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %10, align 4
  br label %18

44:                                               ; preds = %18
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %47

47:                                               ; preds = %44, %33
  %48 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %48)
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #3

declare dso_local i8* @dev_driver_string(%struct.device*) #3

declare dso_local i32 @strcmp(i32, i8*) #3

declare dso_local i32 @sprintf(i8*, i8*, i8*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
