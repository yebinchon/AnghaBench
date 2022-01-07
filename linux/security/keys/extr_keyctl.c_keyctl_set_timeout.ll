; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_keyctl.c_keyctl_set_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_keyctl.c_keyctl_set_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i32 }

@KEY_LOOKUP_CREATE = common dso_local global i32 0, align 4
@KEY_LOOKUP_PARTIAL = common dso_local global i32 0, align 4
@KEY_NEED_SETATTR = common dso_local global i32 0, align 4
@EACCES = common dso_local global i64 0, align 8
@KEY_FLAG_KEEP = common dso_local global i32 0, align 4
@EPERM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @keyctl_set_timeout(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.key*, align 8
  %6 = alloca %struct.key*, align 8
  %7 = alloca %struct.key*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @KEY_LOOKUP_CREATE, align 4
  %11 = load i32, i32* @KEY_LOOKUP_PARTIAL, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @KEY_NEED_SETATTR, align 4
  %14 = call %struct.key* @lookup_user_key(i32 %9, i32 %12, i32 %13)
  store %struct.key* %14, %struct.key** %7, align 8
  %15 = load %struct.key*, %struct.key** %7, align 8
  %16 = call i64 @IS_ERR(%struct.key* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %45

18:                                               ; preds = %2
  %19 = load %struct.key*, %struct.key** %7, align 8
  %20 = call i64 @PTR_ERR(%struct.key* %19)
  %21 = load i64, i64* @EACCES, align 8
  %22 = sub nsw i64 0, %21
  %23 = icmp eq i64 %20, %22
  br i1 %23, label %24, label %42

24:                                               ; preds = %18
  %25 = load i32, i32* %3, align 4
  %26 = call %struct.key* @key_get_instantiation_authkey(i32 %25)
  store %struct.key* %26, %struct.key** %6, align 8
  %27 = load %struct.key*, %struct.key** %6, align 8
  %28 = call i64 @IS_ERR(%struct.key* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %41, label %30

30:                                               ; preds = %24
  %31 = load %struct.key*, %struct.key** %6, align 8
  %32 = call i32 @key_put(%struct.key* %31)
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @KEY_LOOKUP_PARTIAL, align 4
  %35 = call %struct.key* @lookup_user_key(i32 %33, i32 %34, i32 0)
  store %struct.key* %35, %struct.key** %7, align 8
  %36 = load %struct.key*, %struct.key** %7, align 8
  %37 = call i64 @IS_ERR(%struct.key* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %30
  br label %46

40:                                               ; preds = %30
  br label %41

41:                                               ; preds = %40, %24
  br label %42

42:                                               ; preds = %41, %18
  %43 = load %struct.key*, %struct.key** %7, align 8
  %44 = call i64 @PTR_ERR(%struct.key* %43)
  store i64 %44, i64* %8, align 8
  br label %64

45:                                               ; preds = %2
  br label %46

46:                                               ; preds = %45, %39
  %47 = load %struct.key*, %struct.key** %7, align 8
  %48 = call %struct.key* @key_ref_to_ptr(%struct.key* %47)
  store %struct.key* %48, %struct.key** %5, align 8
  store i64 0, i64* %8, align 8
  %49 = load i32, i32* @KEY_FLAG_KEEP, align 4
  %50 = load %struct.key*, %struct.key** %5, align 8
  %51 = getelementptr inbounds %struct.key, %struct.key* %50, i32 0, i32 0
  %52 = call i64 @test_bit(i32 %49, i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %46
  %55 = load i64, i64* @EPERM, align 8
  %56 = sub nsw i64 0, %55
  store i64 %56, i64* %8, align 8
  br label %61

57:                                               ; preds = %46
  %58 = load %struct.key*, %struct.key** %5, align 8
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @key_set_timeout(%struct.key* %58, i32 %59)
  br label %61

61:                                               ; preds = %57, %54
  %62 = load %struct.key*, %struct.key** %5, align 8
  %63 = call i32 @key_put(%struct.key* %62)
  br label %64

64:                                               ; preds = %61, %42
  %65 = load i64, i64* %8, align 8
  ret i64 %65
}

declare dso_local %struct.key* @lookup_user_key(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.key*) #1

declare dso_local i64 @PTR_ERR(%struct.key*) #1

declare dso_local %struct.key* @key_get_instantiation_authkey(i32) #1

declare dso_local i32 @key_put(%struct.key*) #1

declare dso_local %struct.key* @key_ref_to_ptr(%struct.key*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @key_set_timeout(%struct.key*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
