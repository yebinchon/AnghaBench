; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_keyctl.c_keyctl_revoke_key.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_keyctl.c_keyctl_revoke_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i32 }

@KEY_NEED_WRITE = common dso_local global i32 0, align 4
@EACCES = common dso_local global i64 0, align 8
@KEY_NEED_SETATTR = common dso_local global i32 0, align 4
@KEY_FLAG_KEEP = common dso_local global i32 0, align 4
@EPERM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @keyctl_revoke_key(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.key*, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @KEY_NEED_WRITE, align 4
  %8 = call i32 @lookup_user_key(i32 %6, i32 0, i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @IS_ERR(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %31

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = call i64 @PTR_ERR(i32 %13)
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @EACCES, align 8
  %17 = sub nsw i64 0, %16
  %18 = icmp ne i64 %15, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  br label %48

20:                                               ; preds = %12
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @KEY_NEED_SETATTR, align 4
  %23 = call i32 @lookup_user_key(i32 %21, i32 0, i32 %22)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i64 @IS_ERR(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load i32, i32* %3, align 4
  %29 = call i64 @PTR_ERR(i32 %28)
  store i64 %29, i64* %5, align 8
  br label %48

30:                                               ; preds = %20
  br label %31

31:                                               ; preds = %30, %1
  %32 = load i32, i32* %3, align 4
  %33 = call %struct.key* @key_ref_to_ptr(i32 %32)
  store %struct.key* %33, %struct.key** %4, align 8
  store i64 0, i64* %5, align 8
  %34 = load i32, i32* @KEY_FLAG_KEEP, align 4
  %35 = load %struct.key*, %struct.key** %4, align 8
  %36 = getelementptr inbounds %struct.key, %struct.key* %35, i32 0, i32 0
  %37 = call i64 @test_bit(i32 %34, i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load i64, i64* @EPERM, align 8
  %41 = sub nsw i64 0, %40
  store i64 %41, i64* %5, align 8
  br label %45

42:                                               ; preds = %31
  %43 = load %struct.key*, %struct.key** %4, align 8
  %44 = call i32 @key_revoke(%struct.key* %43)
  br label %45

45:                                               ; preds = %42, %39
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @key_ref_put(i32 %46)
  br label %48

48:                                               ; preds = %45, %27, %19
  %49 = load i64, i64* %5, align 8
  ret i64 %49
}

declare dso_local i32 @lookup_user_key(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i64 @PTR_ERR(i32) #1

declare dso_local %struct.key* @key_ref_to_ptr(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @key_revoke(%struct.key*) #1

declare dso_local i32 @key_ref_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
