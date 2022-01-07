; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_path.c_aa_path_name.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_path.c_aa_path_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed name lookup - deleted entry\00", align 1
@EACCES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Failed name lookup - disconnected path\00", align 1
@ENAMETOOLONG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Failed name lookup - name too long\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Failed name lookup\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aa_path_name(%struct.path* %0, i32 %1, i8* %2, i8** %3, i8** %4, i8* %5) #0 {
  %7 = alloca %struct.path*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.path* %0, %struct.path** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i8** %4, i8*** %11, align 8
  store i8* %5, i8** %12, align 8
  store i8* null, i8** %13, align 8
  %15 = load %struct.path*, %struct.path** %7, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i8*, i8** %12, align 8
  %19 = call i32 @d_namespace_path(%struct.path* %15, i8* %16, i8** %13, i32 %17, i8* %18)
  store i32 %19, i32* %14, align 4
  %20 = load i8**, i8*** %11, align 8
  %21 = icmp ne i8** %20, null
  br i1 %21, label %22, label %51

22:                                               ; preds = %6
  %23 = load i32, i32* %14, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %51

25:                                               ; preds = %22
  %26 = load i32, i32* %14, align 4
  %27 = load i32, i32* @ENOENT, align 4
  %28 = sub nsw i32 0, %27
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i8**, i8*** %11, align 8
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8** %31, align 8
  br label %50

32:                                               ; preds = %25
  %33 = load i32, i32* %14, align 4
  %34 = load i32, i32* @EACCES, align 4
  %35 = sub nsw i32 0, %34
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i8**, i8*** %11, align 8
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8** %38, align 8
  br label %49

39:                                               ; preds = %32
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* @ENAMETOOLONG, align 4
  %42 = sub nsw i32 0, %41
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i8**, i8*** %11, align 8
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8** %45, align 8
  br label %48

46:                                               ; preds = %39
  %47 = load i8**, i8*** %11, align 8
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8** %47, align 8
  br label %48

48:                                               ; preds = %46, %44
  br label %49

49:                                               ; preds = %48, %37
  br label %50

50:                                               ; preds = %49, %30
  br label %51

51:                                               ; preds = %50, %22, %6
  %52 = load i8*, i8** %13, align 8
  %53 = load i8**, i8*** %10, align 8
  store i8* %52, i8** %53, align 8
  %54 = load i32, i32* %14, align 4
  ret i32 %54
}

declare dso_local i32 @d_namespace_path(%struct.path*, i8*, i8**, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
