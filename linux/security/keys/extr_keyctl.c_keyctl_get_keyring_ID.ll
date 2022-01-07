; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_keyctl.c_keyctl_get_keyring_ID.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_keyctl.c_keyctl_get_keyring_ID.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@KEY_LOOKUP_CREATE = common dso_local global i64 0, align 8
@KEY_NEED_SEARCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @keyctl_get_keyring_ID(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i64, i64* @KEY_LOOKUP_CREATE, align 8
  br label %13

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %12, %10
  %14 = phi i64 [ %11, %10 ], [ 0, %12 ]
  store i64 %14, i64* %6, align 8
  %15 = load i32, i32* %3, align 4
  %16 = load i64, i64* %6, align 8
  %17 = load i32, i32* @KEY_NEED_SEARCH, align 4
  %18 = call i32 @lookup_user_key(i32 %15, i64 %16, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i64 @IS_ERR(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %13
  %23 = load i32, i32* %5, align 4
  %24 = call i64 @PTR_ERR(i32 %23)
  store i64 %24, i64* %7, align 8
  br label %32

25:                                               ; preds = %13
  %26 = load i32, i32* %5, align 4
  %27 = call %struct.TYPE_2__* @key_ref_to_ptr(i32 %26)
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %7, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @key_ref_put(i32 %30)
  br label %32

32:                                               ; preds = %25, %22
  %33 = load i64, i64* %7, align 8
  ret i64 %33
}

declare dso_local i32 @lookup_user_key(i32, i64, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i64 @PTR_ERR(i32) #1

declare dso_local %struct.TYPE_2__* @key_ref_to_ptr(i32) #1

declare dso_local i32 @key_ref_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
