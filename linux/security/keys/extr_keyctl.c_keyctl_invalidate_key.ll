; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_keyctl.c_keyctl_invalidate_key.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_keyctl.c_keyctl_invalidate_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@KEY_NEED_SEARCH = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@KEY_FLAG_ROOT_CAN_INVAL = common dso_local global i32 0, align 4
@KEY_FLAG_KEEP = common dso_local global i32 0, align 4
@EPERM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c" = %ld\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @keyctl_invalidate_key(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.key*, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @kenter(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @KEY_NEED_SEARCH, align 4
  %10 = call i32 @lookup_user_key(i32 %8, i32 0, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i64 @IS_ERR(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %37

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = call i64 @PTR_ERR(i32 %15)
  store i64 %16, i64* %5, align 8
  %17 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %18 = call i64 @capable(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %14
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @lookup_user_key(i32 %21, i32 0, i32 0)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i64 @IS_ERR(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %56

27:                                               ; preds = %20
  %28 = load i32, i32* @KEY_FLAG_ROOT_CAN_INVAL, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call %struct.key* @key_ref_to_ptr(i32 %29)
  %31 = getelementptr inbounds %struct.key, %struct.key* %30, i32 0, i32 0
  %32 = call i64 @test_bit(i32 %28, i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %38

35:                                               ; preds = %27
  br label %53

36:                                               ; preds = %14
  br label %56

37:                                               ; preds = %1
  br label %38

38:                                               ; preds = %37, %34
  %39 = load i32, i32* %3, align 4
  %40 = call %struct.key* @key_ref_to_ptr(i32 %39)
  store %struct.key* %40, %struct.key** %4, align 8
  store i64 0, i64* %5, align 8
  %41 = load i32, i32* @KEY_FLAG_KEEP, align 4
  %42 = load %struct.key*, %struct.key** %4, align 8
  %43 = getelementptr inbounds %struct.key, %struct.key* %42, i32 0, i32 0
  %44 = call i64 @test_bit(i32 %41, i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = load i64, i64* @EPERM, align 8
  %48 = sub nsw i64 0, %47
  store i64 %48, i64* %5, align 8
  br label %52

49:                                               ; preds = %38
  %50 = load %struct.key*, %struct.key** %4, align 8
  %51 = call i32 @key_invalidate(%struct.key* %50)
  br label %52

52:                                               ; preds = %49, %46
  br label %53

53:                                               ; preds = %52, %35
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @key_ref_put(i32 %54)
  br label %56

56:                                               ; preds = %53, %36, %26
  %57 = load i64, i64* %5, align 8
  %58 = call i32 @kleave(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %57)
  %59 = load i64, i64* %5, align 8
  ret i64 %59
}

declare dso_local i32 @kenter(i8*, i32) #1

declare dso_local i32 @lookup_user_key(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i64 @PTR_ERR(i32) #1

declare dso_local i64 @capable(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.key* @key_ref_to_ptr(i32) #1

declare dso_local i32 @key_invalidate(%struct.key*) #1

declare dso_local i32 @key_ref_put(i32) #1

declare dso_local i32 @kleave(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
