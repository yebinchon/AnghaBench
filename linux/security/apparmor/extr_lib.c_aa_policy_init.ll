; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_lib.c_aa_policy_init.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_lib.c_aa_policy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_policy = type { i8*, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"%s//%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aa_policy_init(%struct.aa_policy* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.aa_policy*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.aa_policy* %0, %struct.aa_policy** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i8*, i8** %7, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %30

13:                                               ; preds = %4
  %14 = load i8*, i8** %7, align 8
  %15 = call i64 @strlen(i8* %14)
  %16 = load i8*, i8** %8, align 8
  %17 = call i64 @strlen(i8* %16)
  %18 = add nsw i64 %15, %17
  %19 = add nsw i64 %18, 3
  %20 = load i32, i32* %9, align 4
  %21 = call i8* @aa_str_alloc(i64 %19, i32 %20)
  store i8* %21, i8** %10, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %13
  %25 = load i8*, i8** %10, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = call i32 @sprintf(i8* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %26, i8* %27)
  br label %29

29:                                               ; preds = %24, %13
  br label %43

30:                                               ; preds = %4
  %31 = load i8*, i8** %8, align 8
  %32 = call i64 @strlen(i8* %31)
  %33 = add nsw i64 %32, 1
  %34 = load i32, i32* %9, align 4
  %35 = call i8* @aa_str_alloc(i64 %33, i32 %34)
  store i8* %35, i8** %10, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = load i8*, i8** %10, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = call i32 @strcpy(i8* %39, i8* %40)
  br label %42

42:                                               ; preds = %38, %30
  br label %43

43:                                               ; preds = %42, %29
  %44 = load i8*, i8** %10, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  store i32 0, i32* %5, align 4
  br label %63

47:                                               ; preds = %43
  %48 = load i8*, i8** %10, align 8
  %49 = load %struct.aa_policy*, %struct.aa_policy** %6, align 8
  %50 = getelementptr inbounds %struct.aa_policy, %struct.aa_policy* %49, i32 0, i32 0
  store i8* %48, i8** %50, align 8
  %51 = load %struct.aa_policy*, %struct.aa_policy** %6, align 8
  %52 = getelementptr inbounds %struct.aa_policy, %struct.aa_policy* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @basename(i8* %53)
  %55 = load %struct.aa_policy*, %struct.aa_policy** %6, align 8
  %56 = getelementptr inbounds %struct.aa_policy, %struct.aa_policy* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 8
  %57 = load %struct.aa_policy*, %struct.aa_policy** %6, align 8
  %58 = getelementptr inbounds %struct.aa_policy, %struct.aa_policy* %57, i32 0, i32 2
  %59 = call i32 @INIT_LIST_HEAD(i32* %58)
  %60 = load %struct.aa_policy*, %struct.aa_policy** %6, align 8
  %61 = getelementptr inbounds %struct.aa_policy, %struct.aa_policy* %60, i32 0, i32 1
  %62 = call i32 @INIT_LIST_HEAD(i32* %61)
  store i32 1, i32* %5, align 4
  br label %63

63:                                               ; preds = %47, %46
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i8* @aa_str_alloc(i64, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @basename(i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
