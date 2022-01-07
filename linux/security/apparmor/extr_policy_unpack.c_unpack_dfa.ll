; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_policy_unpack.c_unpack_dfa.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_policy_unpack.c_unpack_dfa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_dfa = type { i32 }
%struct.aa_ext = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"aadfa\00", align 1
@YYTD_DATA32 = common dso_local global i32 0, align 4
@DFA_FLAG_VERIFY_STATES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.aa_dfa* (%struct.aa_ext*)* @unpack_dfa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.aa_dfa* @unpack_dfa(%struct.aa_ext* %0) #0 {
  %2 = alloca %struct.aa_dfa*, align 8
  %3 = alloca %struct.aa_ext*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.aa_dfa*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.aa_ext* %0, %struct.aa_ext** %3, align 8
  store i8* null, i8** %4, align 8
  store %struct.aa_dfa* null, %struct.aa_dfa** %6, align 8
  %10 = load %struct.aa_ext*, %struct.aa_ext** %3, align 8
  %11 = call i64 @unpack_blob(%struct.aa_ext* %10, i8** %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %59

14:                                               ; preds = %1
  %15 = load i8*, i8** %4, align 8
  %16 = load %struct.aa_ext*, %struct.aa_ext** %3, align 8
  %17 = getelementptr inbounds %struct.aa_ext, %struct.aa_ext* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to i8*
  %21 = ptrtoint i8* %15 to i64
  %22 = ptrtoint i8* %20 to i64
  %23 = sub i64 %21, %22
  %24 = load %struct.aa_ext*, %struct.aa_ext** %3, align 8
  %25 = getelementptr inbounds %struct.aa_ext, %struct.aa_ext* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.aa_ext*, %struct.aa_ext** %3, align 8
  %28 = getelementptr inbounds %struct.aa_ext, %struct.aa_ext* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sub nsw i32 %26, %29
  %31 = and i32 %30, 7
  %32 = sext i32 %31 to i64
  %33 = sub nsw i64 %23, %32
  store i64 %33, i64* %7, align 8
  %34 = load i64, i64* %7, align 8
  %35 = call i64 @ALIGN(i64 %34, i32 8)
  %36 = load i64, i64* %7, align 8
  %37 = sub i64 %35, %36
  store i64 %37, i64* %8, align 8
  %38 = load i32, i32* @YYTD_DATA32, align 4
  %39 = call i32 @TO_ACCEPT1_FLAG(i32 %38)
  %40 = load i32, i32* @YYTD_DATA32, align 4
  %41 = call i32 @TO_ACCEPT2_FLAG(i32 %40)
  %42 = or i32 %39, %41
  %43 = load i32, i32* @DFA_FLAG_VERIFY_STATES, align 4
  %44 = or i32 %42, %43
  store i32 %44, i32* %9, align 4
  %45 = load i8*, i8** %4, align 8
  %46 = load i64, i64* %8, align 8
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  %48 = load i64, i64* %5, align 8
  %49 = load i64, i64* %8, align 8
  %50 = sub i64 %48, %49
  %51 = load i32, i32* %9, align 4
  %52 = call %struct.aa_dfa* @aa_dfa_unpack(i8* %47, i64 %50, i32 %51)
  store %struct.aa_dfa* %52, %struct.aa_dfa** %6, align 8
  %53 = load %struct.aa_dfa*, %struct.aa_dfa** %6, align 8
  %54 = call i64 @IS_ERR(%struct.aa_dfa* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %14
  %57 = load %struct.aa_dfa*, %struct.aa_dfa** %6, align 8
  store %struct.aa_dfa* %57, %struct.aa_dfa** %2, align 8
  br label %61

58:                                               ; preds = %14
  br label %59

59:                                               ; preds = %58, %1
  %60 = load %struct.aa_dfa*, %struct.aa_dfa** %6, align 8
  store %struct.aa_dfa* %60, %struct.aa_dfa** %2, align 8
  br label %61

61:                                               ; preds = %59, %56
  %62 = load %struct.aa_dfa*, %struct.aa_dfa** %2, align 8
  ret %struct.aa_dfa* %62
}

declare dso_local i64 @unpack_blob(%struct.aa_ext*, i8**, i8*) #1

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local i32 @TO_ACCEPT1_FLAG(i32) #1

declare dso_local i32 @TO_ACCEPT2_FLAG(i32) #1

declare dso_local %struct.aa_dfa* @aa_dfa_unpack(i8*, i64, i32) #1

declare dso_local i64 @IS_ERR(%struct.aa_dfa*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
