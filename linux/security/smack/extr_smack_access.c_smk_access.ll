; ModuleID = '/home/carl/AnghaBench/linux/security/smack/extr_smack_access.c_smk_access.c'
source_filename = "/home/carl/AnghaBench/linux/security/smack/extr_smack_access.c_smk_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smack_known = type { i64, i32 }
%struct.smk_audit_info = type { i32 }

@MAY_NOT = common dso_local global i32 0, align 4
@smack_known_star = common dso_local global %struct.smack_known zeroinitializer, align 8
@EACCES = common dso_local global i32 0, align 4
@smack_known_web = common dso_local global %struct.smack_known zeroinitializer, align 8
@MAY_ANYREAD = common dso_local global i32 0, align 4
@MAY_LOCK = common dso_local global i32 0, align 4
@smack_known_floor = common dso_local global %struct.smack_known zeroinitializer, align 8
@smack_known_hat = common dso_local global %struct.smack_known zeroinitializer, align 8
@MAY_BRINGUP = common dso_local global i32 0, align 4
@SMACK_BRINGUP_ALLOW = common dso_local global i32 0, align 4
@SMACK_UNCONFINED_OBJECT = common dso_local global i32 0, align 4
@SMACK_UNCONFINED_SUBJECT = common dso_local global i32 0, align 4
@smack_unconfined = common dso_local global %struct.smack_known* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smk_access(%struct.smack_known* %0, %struct.smack_known* %1, i32 %2, %struct.smk_audit_info* %3) #0 {
  %5 = alloca %struct.smack_known*, align 8
  %6 = alloca %struct.smack_known*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.smk_audit_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.smack_known* %0, %struct.smack_known** %5, align 8
  store %struct.smack_known* %1, %struct.smack_known** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.smk_audit_info* %3, %struct.smk_audit_info** %8, align 8
  %11 = load i32, i32* @MAY_NOT, align 4
  store i32 %11, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load %struct.smack_known*, %struct.smack_known** %5, align 8
  %13 = icmp eq %struct.smack_known* %12, @smack_known_star
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load i32, i32* @EACCES, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %10, align 4
  br label %82

17:                                               ; preds = %4
  %18 = load %struct.smack_known*, %struct.smack_known** %6, align 8
  %19 = icmp eq %struct.smack_known* %18, @smack_known_web
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load %struct.smack_known*, %struct.smack_known** %5, align 8
  %22 = icmp eq %struct.smack_known* %21, @smack_known_web
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %17
  br label %82

24:                                               ; preds = %20
  %25 = load %struct.smack_known*, %struct.smack_known** %6, align 8
  %26 = icmp eq %struct.smack_known* %25, @smack_known_star
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  br label %82

28:                                               ; preds = %24
  %29 = load %struct.smack_known*, %struct.smack_known** %5, align 8
  %30 = getelementptr inbounds %struct.smack_known, %struct.smack_known* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.smack_known*, %struct.smack_known** %6, align 8
  %33 = getelementptr inbounds %struct.smack_known, %struct.smack_known* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %82

37:                                               ; preds = %28
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @MAY_ANYREAD, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* %7, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @MAY_LOCK, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* %7, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %43, %37
  %50 = load %struct.smack_known*, %struct.smack_known** %6, align 8
  %51 = icmp eq %struct.smack_known* %50, @smack_known_floor
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  br label %82

53:                                               ; preds = %49
  %54 = load %struct.smack_known*, %struct.smack_known** %5, align 8
  %55 = icmp eq %struct.smack_known* %54, @smack_known_hat
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  br label %82

57:                                               ; preds = %53
  br label %58

58:                                               ; preds = %57, %43
  %59 = call i32 (...) @rcu_read_lock()
  %60 = load %struct.smack_known*, %struct.smack_known** %5, align 8
  %61 = getelementptr inbounds %struct.smack_known, %struct.smack_known* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.smack_known*, %struct.smack_known** %6, align 8
  %64 = getelementptr inbounds %struct.smack_known, %struct.smack_known* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.smack_known*, %struct.smack_known** %5, align 8
  %67 = getelementptr inbounds %struct.smack_known, %struct.smack_known* %66, i32 0, i32 1
  %68 = call i32 @smk_access_entry(i64 %62, i64 %65, i32* %67)
  store i32 %68, i32* %9, align 4
  %69 = call i32 (...) @rcu_read_unlock()
  %70 = load i32, i32* %9, align 4
  %71 = icmp sle i32 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %58
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %9, align 4
  %75 = and i32 %73, %74
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %72, %58
  %79 = load i32, i32* @EACCES, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %10, align 4
  br label %82

81:                                               ; preds = %72
  br label %82

82:                                               ; preds = %81, %78, %56, %52, %36, %27, %23, %14
  %83 = load i32, i32* %10, align 4
  ret i32 %83
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @smk_access_entry(i64, i64, i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
