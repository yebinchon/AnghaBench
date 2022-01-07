; ModuleID = '/home/carl/AnghaBench/linux/security/integrity/extr_digsig.c_integrity_keyring_from_id.c'
source_filename = "/home/carl/AnghaBench/linux/security/integrity/extr_digsig.c_integrity_keyring_from_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i32 }

@INTEGRITY_KEYRING_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@keyring = common dso_local global %struct.key** null, align 8
@key_type_keyring = common dso_local global i32 0, align 4
@keyring_name = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [19 x i8] c"no %s keyring: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.key* (i32)* @integrity_keyring_from_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.key* @integrity_keyring_from_id(i32 %0) #0 {
  %2 = alloca %struct.key*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @INTEGRITY_KEYRING_MAX, align 4
  %7 = icmp uge i32 %5, %6
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  %11 = call %struct.key* @ERR_PTR(i32 %10)
  store %struct.key* %11, %struct.key** %2, align 8
  br label %64

12:                                               ; preds = %1
  %13 = load %struct.key**, %struct.key*** @keyring, align 8
  %14 = load i32, i32* %3, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.key*, %struct.key** %13, i64 %15
  %17 = load %struct.key*, %struct.key** %16, align 8
  %18 = icmp ne %struct.key* %17, null
  br i1 %18, label %58, label %19

19:                                               ; preds = %12
  %20 = load i32*, i32** @keyring_name, align 8
  %21 = load i32, i32* %3, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.key* @request_key(i32* @key_type_keyring, i32 %24, i32* null)
  %26 = load %struct.key**, %struct.key*** @keyring, align 8
  %27 = load i32, i32* %3, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.key*, %struct.key** %26, i64 %28
  store %struct.key* %25, %struct.key** %29, align 8
  %30 = load %struct.key**, %struct.key*** @keyring, align 8
  %31 = load i32, i32* %3, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.key*, %struct.key** %30, i64 %32
  %34 = load %struct.key*, %struct.key** %33, align 8
  %35 = call i64 @IS_ERR(%struct.key* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %57

37:                                               ; preds = %19
  %38 = load %struct.key**, %struct.key*** @keyring, align 8
  %39 = load i32, i32* %3, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.key*, %struct.key** %38, i64 %40
  %42 = load %struct.key*, %struct.key** %41, align 8
  %43 = call i32 @PTR_ERR(%struct.key* %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32*, i32** @keyring_name, align 8
  %45 = load i32, i32* %3, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @pr_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %49)
  %51 = load %struct.key**, %struct.key*** @keyring, align 8
  %52 = load i32, i32* %3, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.key*, %struct.key** %51, i64 %53
  store %struct.key* null, %struct.key** %54, align 8
  %55 = load i32, i32* %4, align 4
  %56 = call %struct.key* @ERR_PTR(i32 %55)
  store %struct.key* %56, %struct.key** %2, align 8
  br label %64

57:                                               ; preds = %19
  br label %58

58:                                               ; preds = %57, %12
  %59 = load %struct.key**, %struct.key*** @keyring, align 8
  %60 = load i32, i32* %3, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.key*, %struct.key** %59, i64 %61
  %63 = load %struct.key*, %struct.key** %62, align 8
  store %struct.key* %63, %struct.key** %2, align 8
  br label %64

64:                                               ; preds = %58, %37, %8
  %65 = load %struct.key*, %struct.key** %2, align 8
  ret %struct.key* %65
}

declare dso_local %struct.key* @ERR_PTR(i32) #1

declare dso_local %struct.key* @request_key(i32*, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.key*) #1

declare dso_local i32 @PTR_ERR(%struct.key*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
