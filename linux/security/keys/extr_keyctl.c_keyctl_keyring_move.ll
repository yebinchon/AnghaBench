; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_keyctl.c_keyctl_keyring_move.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_keyctl.c_keyctl_keyring_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KEYCTL_MOVE_EXCL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@KEY_LOOKUP_CREATE = common dso_local global i32 0, align 4
@KEY_NEED_LINK = common dso_local global i32 0, align 4
@KEY_NEED_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @keyctl_keyring_move(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @KEYCTL_MOVE_EXCL, align 4
  %16 = xor i32 %15, -1
  %17 = and i32 %14, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i64, i64* @EINVAL, align 8
  %21 = sub nsw i64 0, %20
  store i64 %21, i64* %5, align 8
  br label %72

22:                                               ; preds = %4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @KEY_LOOKUP_CREATE, align 4
  %25 = load i32, i32* @KEY_NEED_LINK, align 4
  %26 = call i32 @lookup_user_key(i32 %23, i32 %24, i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i64 @IS_ERR(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load i32, i32* %10, align 4
  %32 = call i64 @PTR_ERR(i32 %31)
  store i64 %32, i64* %5, align 8
  br label %72

33:                                               ; preds = %22
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @KEY_NEED_WRITE, align 4
  %36 = call i32 @lookup_user_key(i32 %34, i32 0, i32 %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = call i64 @IS_ERR(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i32, i32* %11, align 4
  %42 = call i64 @PTR_ERR(i32 %41)
  store i64 %42, i64* %13, align 8
  br label %68

43:                                               ; preds = %33
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @KEY_LOOKUP_CREATE, align 4
  %46 = load i32, i32* @KEY_NEED_WRITE, align 4
  %47 = call i32 @lookup_user_key(i32 %44, i32 %45, i32 %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = call i64 @IS_ERR(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = load i32, i32* %12, align 4
  %53 = call i64 @PTR_ERR(i32 %52)
  store i64 %53, i64* %13, align 8
  br label %65

54:                                               ; preds = %43
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @key_ref_to_ptr(i32 %55)
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @key_ref_to_ptr(i32 %57)
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @key_ref_to_ptr(i32 %59)
  %61 = load i32, i32* %9, align 4
  %62 = call i64 @key_move(i32 %56, i32 %58, i32 %60, i32 %61)
  store i64 %62, i64* %13, align 8
  %63 = load i32, i32* %12, align 4
  %64 = call i32 @key_ref_put(i32 %63)
  br label %65

65:                                               ; preds = %54, %51
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @key_ref_put(i32 %66)
  br label %68

68:                                               ; preds = %65, %40
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @key_ref_put(i32 %69)
  %71 = load i64, i64* %13, align 8
  store i64 %71, i64* %5, align 8
  br label %72

72:                                               ; preds = %68, %30, %19
  %73 = load i64, i64* %5, align 8
  ret i64 %73
}

declare dso_local i32 @lookup_user_key(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i64 @PTR_ERR(i32) #1

declare dso_local i64 @key_move(i32, i32, i32, i32) #1

declare dso_local i32 @key_ref_to_ptr(i32) #1

declare dso_local i32 @key_ref_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
