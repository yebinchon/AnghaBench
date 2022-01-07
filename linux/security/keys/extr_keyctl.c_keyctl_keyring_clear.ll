; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_keyctl.c_keyctl_keyring_clear.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_keyctl.c_keyctl_keyring_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i32 }

@KEY_LOOKUP_CREATE = common dso_local global i32 0, align 4
@KEY_NEED_WRITE = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@KEY_FLAG_ROOT_CAN_CLEAR = common dso_local global i32 0, align 4
@KEY_FLAG_KEEP = common dso_local global i32 0, align 4
@EPERM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @keyctl_keyring_clear(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.key*, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @KEY_LOOKUP_CREATE, align 4
  %8 = load i32, i32* @KEY_NEED_WRITE, align 4
  %9 = call i32 @lookup_user_key(i32 %6, i32 %7, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i64 @IS_ERR(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %36

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = call i64 @PTR_ERR(i32 %14)
  store i64 %15, i64* %5, align 8
  %16 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %17 = call i64 @capable(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %13
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @lookup_user_key(i32 %20, i32 0, i32 0)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i64 @IS_ERR(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %55

26:                                               ; preds = %19
  %27 = load i32, i32* @KEY_FLAG_ROOT_CAN_CLEAR, align 4
  %28 = load i32, i32* %3, align 4
  %29 = call %struct.key* @key_ref_to_ptr(i32 %28)
  %30 = getelementptr inbounds %struct.key, %struct.key* %29, i32 0, i32 0
  %31 = call i64 @test_bit(i32 %27, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %37

34:                                               ; preds = %26
  br label %52

35:                                               ; preds = %13
  br label %55

36:                                               ; preds = %1
  br label %37

37:                                               ; preds = %36, %33
  %38 = load i32, i32* %3, align 4
  %39 = call %struct.key* @key_ref_to_ptr(i32 %38)
  store %struct.key* %39, %struct.key** %4, align 8
  %40 = load i32, i32* @KEY_FLAG_KEEP, align 4
  %41 = load %struct.key*, %struct.key** %4, align 8
  %42 = getelementptr inbounds %struct.key, %struct.key* %41, i32 0, i32 0
  %43 = call i64 @test_bit(i32 %40, i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load i64, i64* @EPERM, align 8
  %47 = sub nsw i64 0, %46
  store i64 %47, i64* %5, align 8
  br label %51

48:                                               ; preds = %37
  %49 = load %struct.key*, %struct.key** %4, align 8
  %50 = call i64 @keyring_clear(%struct.key* %49)
  store i64 %50, i64* %5, align 8
  br label %51

51:                                               ; preds = %48, %45
  br label %52

52:                                               ; preds = %51, %34
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @key_ref_put(i32 %53)
  br label %55

55:                                               ; preds = %52, %35, %25
  %56 = load i64, i64* %5, align 8
  ret i64 %56
}

declare dso_local i32 @lookup_user_key(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i64 @PTR_ERR(i32) #1

declare dso_local i64 @capable(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.key* @key_ref_to_ptr(i32) #1

declare dso_local i64 @keyring_clear(%struct.key*) #1

declare dso_local i32 @key_ref_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
