; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_domain.c_x_table_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_domain.c_x_table_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_label = type { i32 }
%struct.aa_profile = type { %struct.aa_label, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8** }

@AA_X_TYPE_MASK = common dso_local global i32 0, align 4
@AA_X_INDEX_MASK = common dso_local global i32 0, align 4
@AA_X_CHILD = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.aa_label* @x_table_lookup(%struct.aa_profile* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.aa_profile*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca %struct.aa_label*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.aa_profile*, align 8
  store %struct.aa_profile* %0, %struct.aa_profile** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  store %struct.aa_label* null, %struct.aa_label** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @AA_X_TYPE_MASK, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @AA_X_INDEX_MASK, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %9, align 4
  %17 = load i8**, i8*** %6, align 8
  %18 = icmp ne i8** %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @AA_BUG(i32 %20)
  %22 = load %struct.aa_profile*, %struct.aa_profile** %4, align 8
  %23 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i8**, i8*** %25, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8*, i8** %26, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = load i8**, i8*** %6, align 8
  store i8* %30, i8** %31, align 8
  br label %32

32:                                               ; preds = %69, %3
  %33 = load %struct.aa_label*, %struct.aa_label** %7, align 8
  %34 = icmp ne %struct.aa_label* %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = load i8**, i8*** %6, align 8
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br label %39

39:                                               ; preds = %35, %32
  %40 = phi i1 [ false, %32 ], [ %38, %35 ]
  br i1 %40, label %41, label %75

41:                                               ; preds = %39
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @AA_X_CHILD, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %41
  %47 = load %struct.aa_profile*, %struct.aa_profile** %4, align 8
  %48 = load i8**, i8*** %6, align 8
  %49 = load i8*, i8** %48, align 8
  %50 = call %struct.aa_profile* @aa_find_child(%struct.aa_profile* %47, i8* %49)
  store %struct.aa_profile* %50, %struct.aa_profile** %10, align 8
  %51 = load %struct.aa_profile*, %struct.aa_profile** %10, align 8
  %52 = icmp ne %struct.aa_profile* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = load %struct.aa_profile*, %struct.aa_profile** %10, align 8
  %55 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %54, i32 0, i32 0
  store %struct.aa_label* %55, %struct.aa_label** %7, align 8
  br label %56

56:                                               ; preds = %53, %46
  br label %69

57:                                               ; preds = %41
  %58 = load %struct.aa_profile*, %struct.aa_profile** %4, align 8
  %59 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %58, i32 0, i32 0
  %60 = load i8**, i8*** %6, align 8
  %61 = load i8*, i8** %60, align 8
  %62 = load i32, i32* @GFP_ATOMIC, align 4
  %63 = call %struct.aa_label* @aa_label_parse(%struct.aa_label* %59, i8* %61, i32 %62, i32 1, i32 0)
  store %struct.aa_label* %63, %struct.aa_label** %7, align 8
  %64 = load %struct.aa_label*, %struct.aa_label** %7, align 8
  %65 = call i64 @IS_ERR(%struct.aa_label* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %57
  store %struct.aa_label* null, %struct.aa_label** %7, align 8
  br label %68

68:                                               ; preds = %67, %57
  br label %69

69:                                               ; preds = %68, %56
  %70 = load i32, i32* %8, align 4
  %71 = load i8**, i8*** %6, align 8
  %72 = load i8*, i8** %71, align 8
  %73 = call i8* @next_name(i32 %70, i8* %72)
  %74 = load i8**, i8*** %6, align 8
  store i8* %73, i8** %74, align 8
  br label %32

75:                                               ; preds = %39
  %76 = load %struct.aa_label*, %struct.aa_label** %7, align 8
  ret %struct.aa_label* %76
}

declare dso_local i32 @AA_BUG(i32) #1

declare dso_local %struct.aa_profile* @aa_find_child(%struct.aa_profile*, i8*) #1

declare dso_local %struct.aa_label* @aa_label_parse(%struct.aa_label*, i8*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.aa_label*) #1

declare dso_local i8* @next_name(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
