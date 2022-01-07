; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_persistent.c_keyctl_get_persistent.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_persistent.c_keyctl_get_persistent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_namespace = type { i32 }
%struct.TYPE_2__ = type { i32* }

@EINVAL = common dso_local global i64 0, align 8
@CAP_SETUID = common dso_local global i32 0, align 4
@EPERM = common dso_local global i64 0, align 8
@KEY_LOOKUP_CREATE = common dso_local global i32 0, align 4
@KEY_NEED_WRITE = common dso_local global i32 0, align 4
@key_type_keyring = common dso_local global i32 0, align 4
@ENOTDIR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @keyctl_get_persistent(i32 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.user_namespace*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = call %struct.user_namespace* (...) @current_user_ns()
  store %struct.user_namespace* %10, %struct.user_namespace** %6, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = call i32 (...) @current_uid()
  store i32 %14, i32* %8, align 4
  br label %44

15:                                               ; preds = %2
  %16 = load %struct.user_namespace*, %struct.user_namespace** %6, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @make_kuid(%struct.user_namespace* %16, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @uid_valid(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %15
  %23 = load i64, i64* @EINVAL, align 8
  %24 = sub nsw i64 0, %23
  store i64 %24, i64* %3, align 8
  br label %73

25:                                               ; preds = %15
  %26 = load i32, i32* %8, align 4
  %27 = call i32 (...) @current_uid()
  %28 = call i32 @uid_eq(i32 %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %43, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* %8, align 4
  %32 = call i32 (...) @current_euid()
  %33 = call i32 @uid_eq(i32 %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %30
  %36 = load %struct.user_namespace*, %struct.user_namespace** %6, align 8
  %37 = load i32, i32* @CAP_SETUID, align 4
  %38 = call i32 @ns_capable(%struct.user_namespace* %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load i64, i64* @EPERM, align 8
  %42 = sub nsw i64 0, %41
  store i64 %42, i64* %3, align 8
  br label %73

43:                                               ; preds = %35, %30, %25
  br label %44

44:                                               ; preds = %43, %13
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @KEY_LOOKUP_CREATE, align 4
  %47 = load i32, i32* @KEY_NEED_WRITE, align 4
  %48 = call i32 @lookup_user_key(i32 %45, i32 %46, i32 %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i64 @IS_ERR(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %44
  %53 = load i32, i32* %7, align 4
  %54 = call i64 @PTR_ERR(i32 %53)
  store i64 %54, i64* %3, align 8
  br label %73

55:                                               ; preds = %44
  %56 = load i32, i32* %7, align 4
  %57 = call %struct.TYPE_2__* @key_ref_to_ptr(i32 %56)
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, @key_type_keyring
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load i64, i64* @ENOTDIR, align 8
  %63 = sub nsw i64 0, %62
  store i64 %63, i64* %9, align 8
  br label %69

64:                                               ; preds = %55
  %65 = load %struct.user_namespace*, %struct.user_namespace** %6, align 8
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i64 @key_get_persistent(%struct.user_namespace* %65, i32 %66, i32 %67)
  store i64 %68, i64* %9, align 8
  br label %69

69:                                               ; preds = %64, %61
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @key_ref_put(i32 %70)
  %72 = load i64, i64* %9, align 8
  store i64 %72, i64* %3, align 8
  br label %73

73:                                               ; preds = %69, %52, %40, %22
  %74 = load i64, i64* %3, align 8
  ret i64 %74
}

declare dso_local %struct.user_namespace* @current_user_ns(...) #1

declare dso_local i32 @current_uid(...) #1

declare dso_local i32 @make_kuid(%struct.user_namespace*, i32) #1

declare dso_local i32 @uid_valid(i32) #1

declare dso_local i32 @uid_eq(i32, i32) #1

declare dso_local i32 @current_euid(...) #1

declare dso_local i32 @ns_capable(%struct.user_namespace*, i32) #1

declare dso_local i32 @lookup_user_key(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i64 @PTR_ERR(i32) #1

declare dso_local %struct.TYPE_2__* @key_ref_to_ptr(i32) #1

declare dso_local i64 @key_get_persistent(%struct.user_namespace*, i32, i32) #1

declare dso_local i32 @key_ref_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
