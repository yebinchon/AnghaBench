; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_policy_unpack.c_verify_header.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_policy_unpack.c_verify_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_ext = type { i32 }

@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"invalid profile format\00", align 1
@v5 = common dso_local global i32 0, align 4
@v7 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"unsupported interface version\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"namespace\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"invalid namespace name\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"invalid ns change\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aa_ext*, i32, i8**)* @verify_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_header(%struct.aa_ext* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.aa_ext*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.aa_ext* %0, %struct.aa_ext** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %10 = load i32, i32* @EPROTONOSUPPORT, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %8, align 4
  store i8* null, i8** %9, align 8
  %12 = load i8**, i8*** %7, align 8
  store i8* null, i8** %12, align 8
  %13 = load %struct.aa_ext*, %struct.aa_ext** %5, align 8
  %14 = load %struct.aa_ext*, %struct.aa_ext** %5, align 8
  %15 = getelementptr inbounds %struct.aa_ext, %struct.aa_ext* %14, i32 0, i32 0
  %16 = call i32 @unpack_u32(%struct.aa_ext* %13, i32* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load %struct.aa_ext*, %struct.aa_ext** %5, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @audit_iface(i32* null, i32* null, i32* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), %struct.aa_ext* %22, i32 %23)
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %4, align 4
  br label %84

26:                                               ; preds = %18
  br label %27

27:                                               ; preds = %26, %3
  %28 = load %struct.aa_ext*, %struct.aa_ext** %5, align 8
  %29 = getelementptr inbounds %struct.aa_ext, %struct.aa_ext* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @v5, align 4
  %32 = call i64 @VERSION_LT(i32 %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %27
  %35 = load %struct.aa_ext*, %struct.aa_ext** %5, align 8
  %36 = getelementptr inbounds %struct.aa_ext, %struct.aa_ext* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @v7, align 4
  %39 = call i64 @VERSION_GT(i32 %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %34, %27
  %42 = load %struct.aa_ext*, %struct.aa_ext** %5, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @audit_iface(i32* null, i32* null, i32* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), %struct.aa_ext* %42, i32 %43)
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %4, align 4
  br label %84

46:                                               ; preds = %34
  %47 = load %struct.aa_ext*, %struct.aa_ext** %5, align 8
  %48 = call i64 @unpack_str(%struct.aa_ext* %47, i8** %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %83

50:                                               ; preds = %46
  %51 = load i8*, i8** %9, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load %struct.aa_ext*, %struct.aa_ext** %5, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @audit_iface(i32* null, i32* null, i32* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), %struct.aa_ext* %56, i32 %57)
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %4, align 4
  br label %84

60:                                               ; preds = %50
  %61 = load i8**, i8*** %7, align 8
  %62 = load i8*, i8** %61, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %74

64:                                               ; preds = %60
  %65 = load i8**, i8*** %7, align 8
  %66 = load i8*, i8** %65, align 8
  %67 = load i8*, i8** %9, align 8
  %68 = call i64 @strcmp(i8* %66, i8* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load %struct.aa_ext*, %struct.aa_ext** %5, align 8
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @audit_iface(i32* null, i32* null, i32* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), %struct.aa_ext* %71, i32 %72)
  br label %82

74:                                               ; preds = %64, %60
  %75 = load i8**, i8*** %7, align 8
  %76 = load i8*, i8** %75, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %74
  %79 = load i8*, i8** %9, align 8
  %80 = load i8**, i8*** %7, align 8
  store i8* %79, i8** %80, align 8
  br label %81

81:                                               ; preds = %78, %74
  br label %82

82:                                               ; preds = %81, %70
  br label %83

83:                                               ; preds = %82, %46
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %83, %55, %41, %21
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @unpack_u32(%struct.aa_ext*, i32*, i8*) #1

declare dso_local i32 @audit_iface(i32*, i32*, i32*, i8*, %struct.aa_ext*, i32) #1

declare dso_local i64 @VERSION_LT(i32, i32) #1

declare dso_local i64 @VERSION_GT(i32, i32) #1

declare dso_local i64 @unpack_str(%struct.aa_ext*, i8**, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
