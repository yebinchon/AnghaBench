; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_user_defined.c_user_preparse.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_user_defined.c_user_preparse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_preparsed_payload = type { i64, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.user_key_payload** }
%struct.user_key_payload = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @user_preparse(%struct.key_preparsed_payload* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.key_preparsed_payload*, align 8
  %4 = alloca %struct.user_key_payload*, align 8
  %5 = alloca i64, align 8
  store %struct.key_preparsed_payload* %0, %struct.key_preparsed_payload** %3, align 8
  %6 = load %struct.key_preparsed_payload*, %struct.key_preparsed_payload** %3, align 8
  %7 = getelementptr inbounds %struct.key_preparsed_payload, %struct.key_preparsed_payload* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = icmp ule i64 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %1
  %12 = load i64, i64* %5, align 8
  %13 = icmp ugt i64 %12, 32767
  br i1 %13, label %19, label %14

14:                                               ; preds = %11
  %15 = load %struct.key_preparsed_payload*, %struct.key_preparsed_payload** %3, align 8
  %16 = getelementptr inbounds %struct.key_preparsed_payload, %struct.key_preparsed_payload* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14, %11, %1
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %54

22:                                               ; preds = %14
  %23 = load i64, i64* %5, align 8
  %24 = add i64 16, %23
  %25 = trunc i64 %24 to i32
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.user_key_payload* @kmalloc(i32 %25, i32 %26)
  store %struct.user_key_payload* %27, %struct.user_key_payload** %4, align 8
  %28 = load %struct.user_key_payload*, %struct.user_key_payload** %4, align 8
  %29 = icmp ne %struct.user_key_payload* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %22
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %54

33:                                               ; preds = %22
  %34 = load i64, i64* %5, align 8
  %35 = load %struct.key_preparsed_payload*, %struct.key_preparsed_payload** %3, align 8
  %36 = getelementptr inbounds %struct.key_preparsed_payload, %struct.key_preparsed_payload* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  %37 = load %struct.user_key_payload*, %struct.user_key_payload** %4, align 8
  %38 = load %struct.key_preparsed_payload*, %struct.key_preparsed_payload** %3, align 8
  %39 = getelementptr inbounds %struct.key_preparsed_payload, %struct.key_preparsed_payload* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load %struct.user_key_payload**, %struct.user_key_payload*** %40, align 8
  %42 = getelementptr inbounds %struct.user_key_payload*, %struct.user_key_payload** %41, i64 0
  store %struct.user_key_payload* %37, %struct.user_key_payload** %42, align 8
  %43 = load i64, i64* %5, align 8
  %44 = load %struct.user_key_payload*, %struct.user_key_payload** %4, align 8
  %45 = getelementptr inbounds %struct.user_key_payload, %struct.user_key_payload* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load %struct.user_key_payload*, %struct.user_key_payload** %4, align 8
  %47 = getelementptr inbounds %struct.user_key_payload, %struct.user_key_payload* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.key_preparsed_payload*, %struct.key_preparsed_payload** %3, align 8
  %50 = getelementptr inbounds %struct.key_preparsed_payload, %struct.key_preparsed_payload* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i64, i64* %5, align 8
  %53 = call i32 @memcpy(i32 %48, i32 %51, i64 %52)
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %33, %30, %19
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.user_key_payload* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
