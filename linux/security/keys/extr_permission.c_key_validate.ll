; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_permission.c_key_validate.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_permission.c_key_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i32, i32 }

@KEY_FLAG_INVALIDATED = common dso_local global i32 0, align 4
@ENOKEY = common dso_local global i32 0, align 4
@KEY_FLAG_REVOKED = common dso_local global i32 0, align 4
@KEY_FLAG_DEAD = common dso_local global i32 0, align 4
@EKEYREVOKED = common dso_local global i32 0, align 4
@EKEYEXPIRED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @key_validate(%struct.key* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.key*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.key* %0, %struct.key** %3, align 8
  %6 = load %struct.key*, %struct.key** %3, align 8
  %7 = getelementptr inbounds %struct.key, %struct.key* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i8* @READ_ONCE(i32 %8)
  %10 = ptrtoint i8* %9 to i64
  store i64 %10, i64* %4, align 8
  %11 = load %struct.key*, %struct.key** %3, align 8
  %12 = getelementptr inbounds %struct.key, %struct.key* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i8* @READ_ONCE(i32 %13)
  %15 = ptrtoint i8* %14 to i64
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %4, align 8
  %17 = load i32, i32* @KEY_FLAG_INVALIDATED, align 4
  %18 = shl i32 1, %17
  %19 = sext i32 %18 to i64
  %20 = and i64 %16, %19
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOKEY, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %50

25:                                               ; preds = %1
  %26 = load i64, i64* %4, align 8
  %27 = load i32, i32* @KEY_FLAG_REVOKED, align 4
  %28 = shl i32 1, %27
  %29 = load i32, i32* @KEY_FLAG_DEAD, align 4
  %30 = shl i32 1, %29
  %31 = or i32 %28, %30
  %32 = sext i32 %31 to i64
  %33 = and i64 %26, %32
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %25
  %36 = load i32, i32* @EKEYREVOKED, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %50

38:                                               ; preds = %25
  %39 = load i64, i64* %5, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %38
  %42 = call i64 (...) @ktime_get_real_seconds()
  %43 = load i64, i64* %5, align 8
  %44 = icmp sge i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32, i32* @EKEYEXPIRED, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %50

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %48, %38
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %45, %35, %22
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i8* @READ_ONCE(i32) #1

declare dso_local i64 @ktime_get_real_seconds(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
