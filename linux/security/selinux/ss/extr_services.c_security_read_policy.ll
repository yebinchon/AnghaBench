; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_services.c_security_read_policy.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_services.c_security_read_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.selinux_state = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, %struct.policydb }
%struct.policydb = type { i32 }
%struct.policy_file = type { i64, i8* }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @security_read_policy(%struct.selinux_state* %0, i8** %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.selinux_state*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.policydb*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.policy_file, align 8
  store %struct.selinux_state* %0, %struct.selinux_state** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64* %2, i64** %7, align 8
  %11 = load %struct.selinux_state*, %struct.selinux_state** %5, align 8
  %12 = getelementptr inbounds %struct.selinux_state, %struct.selinux_state* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  store %struct.policydb* %14, %struct.policydb** %8, align 8
  %15 = load %struct.selinux_state*, %struct.selinux_state** %5, align 8
  %16 = getelementptr inbounds %struct.selinux_state, %struct.selinux_state* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %68

22:                                               ; preds = %3
  %23 = load %struct.selinux_state*, %struct.selinux_state** %5, align 8
  %24 = call i64 @security_policydb_len(%struct.selinux_state* %23)
  %25 = load i64*, i64** %7, align 8
  store i64 %24, i64* %25, align 8
  %26 = load i64*, i64** %7, align 8
  %27 = load i64, i64* %26, align 8
  %28 = call i8* @vmalloc_user(i64 %27)
  %29 = load i8**, i8*** %6, align 8
  store i8* %28, i8** %29, align 8
  %30 = load i8**, i8*** %6, align 8
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %22
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %68

36:                                               ; preds = %22
  %37 = load i8**, i8*** %6, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds %struct.policy_file, %struct.policy_file* %10, i32 0, i32 1
  store i8* %38, i8** %39, align 8
  %40 = load i64*, i64** %7, align 8
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.policy_file, %struct.policy_file* %10, i32 0, i32 0
  store i64 %41, i64* %42, align 8
  %43 = load %struct.selinux_state*, %struct.selinux_state** %5, align 8
  %44 = getelementptr inbounds %struct.selinux_state, %struct.selinux_state* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = call i32 @read_lock(i32* %46)
  %48 = load %struct.policydb*, %struct.policydb** %8, align 8
  %49 = call i32 @policydb_write(%struct.policydb* %48, %struct.policy_file* %10)
  store i32 %49, i32* %9, align 4
  %50 = load %struct.selinux_state*, %struct.selinux_state** %5, align 8
  %51 = getelementptr inbounds %struct.selinux_state, %struct.selinux_state* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = call i32 @read_unlock(i32* %53)
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %36
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %4, align 4
  br label %68

59:                                               ; preds = %36
  %60 = getelementptr inbounds %struct.policy_file, %struct.policy_file* %10, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = ptrtoint i8* %61 to i64
  %63 = load i8**, i8*** %6, align 8
  %64 = load i8*, i8** %63, align 8
  %65 = ptrtoint i8* %64 to i64
  %66 = sub i64 %62, %65
  %67 = load i64*, i64** %7, align 8
  store i64 %66, i64* %67, align 8
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %59, %57, %33, %19
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i64 @security_policydb_len(%struct.selinux_state*) #1

declare dso_local i8* @vmalloc_user(i64) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @policydb_write(%struct.policydb*, %struct.policy_file*) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
