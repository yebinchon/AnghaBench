; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_keyctl.c_keyctl_keyring_unlink.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_keyctl.c_keyctl_keyring_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i32 }

@KEY_NEED_WRITE = common dso_local global i32 0, align 4
@KEY_LOOKUP_FOR_UNLINK = common dso_local global i32 0, align 4
@KEY_FLAG_KEEP = common dso_local global i32 0, align 4
@EPERM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @keyctl_keyring_unlink(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.key*, align 8
  %8 = alloca %struct.key*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @KEY_NEED_WRITE, align 4
  %12 = call i32 @lookup_user_key(i32 %10, i32 0, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i64 @IS_ERR(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @PTR_ERR(i32 %17)
  store i64 %18, i64* %9, align 8
  br label %58

19:                                               ; preds = %2
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @KEY_LOOKUP_FOR_UNLINK, align 4
  %22 = call i32 @lookup_user_key(i32 %20, i32 %21, i32 0)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i64 @IS_ERR(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i32, i32* %6, align 4
  %28 = call i64 @PTR_ERR(i32 %27)
  store i64 %28, i64* %9, align 8
  br label %55

29:                                               ; preds = %19
  %30 = load i32, i32* %5, align 4
  %31 = call %struct.key* @key_ref_to_ptr(i32 %30)
  store %struct.key* %31, %struct.key** %7, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call %struct.key* @key_ref_to_ptr(i32 %32)
  store %struct.key* %33, %struct.key** %8, align 8
  %34 = load i32, i32* @KEY_FLAG_KEEP, align 4
  %35 = load %struct.key*, %struct.key** %7, align 8
  %36 = getelementptr inbounds %struct.key, %struct.key* %35, i32 0, i32 0
  %37 = call i64 @test_bit(i32 %34, i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %29
  %40 = load i32, i32* @KEY_FLAG_KEEP, align 4
  %41 = load %struct.key*, %struct.key** %8, align 8
  %42 = getelementptr inbounds %struct.key, %struct.key* %41, i32 0, i32 0
  %43 = call i64 @test_bit(i32 %40, i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i64, i64* @EPERM, align 8
  %47 = sub nsw i64 0, %46
  store i64 %47, i64* %9, align 8
  br label %52

48:                                               ; preds = %39, %29
  %49 = load %struct.key*, %struct.key** %7, align 8
  %50 = load %struct.key*, %struct.key** %8, align 8
  %51 = call i64 @key_unlink(%struct.key* %49, %struct.key* %50)
  store i64 %51, i64* %9, align 8
  br label %52

52:                                               ; preds = %48, %45
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @key_ref_put(i32 %53)
  br label %55

55:                                               ; preds = %52, %26
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @key_ref_put(i32 %56)
  br label %58

58:                                               ; preds = %55, %16
  %59 = load i64, i64* %9, align 8
  ret i64 %59
}

declare dso_local i32 @lookup_user_key(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i64 @PTR_ERR(i32) #1

declare dso_local %struct.key* @key_ref_to_ptr(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @key_unlink(%struct.key*, %struct.key*) #1

declare dso_local i32 @key_ref_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
