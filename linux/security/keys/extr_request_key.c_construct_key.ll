; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_request_key.c_construct_key.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_request_key.c_construct_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.key*, i8*)* }

@.str = private unnamed_addr constant [13 x i8] c"%d,%p,%zu,%p\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"create\00", align 1
@KEY_FLAG_INVALIDATED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.key*, i8*, i64, i8*, %struct.key*)* @construct_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @construct_key(%struct.key* %0, i8* %1, i64 %2, i8* %3, %struct.key* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.key*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.key*, align 8
  %12 = alloca i32 (%struct.key*, i8*)*, align 8
  %13 = alloca %struct.key*, align 8
  %14 = alloca i32, align 4
  store %struct.key* %0, %struct.key** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.key* %4, %struct.key** %11, align 8
  %15 = load %struct.key*, %struct.key** %7, align 8
  %16 = getelementptr inbounds %struct.key, %struct.key* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = load i64, i64* %9, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = call i32 @kenter(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %17, i8* %18, i64 %19, i8* %20)
  %22 = load %struct.key*, %struct.key** %7, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load %struct.key*, %struct.key** %11, align 8
  %26 = call %struct.key* @request_key_auth_new(%struct.key* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %23, i64 %24, %struct.key* %25)
  store %struct.key* %26, %struct.key** %13, align 8
  %27 = load %struct.key*, %struct.key** %13, align 8
  %28 = call i64 @IS_ERR(%struct.key* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %5
  %31 = load %struct.key*, %struct.key** %13, align 8
  %32 = call i32 @PTR_ERR(%struct.key* %31)
  store i32 %32, i32* %6, align 4
  br label %69

33:                                               ; preds = %5
  store i32 (%struct.key*, i8*)* @call_sbin_request_key, i32 (%struct.key*, i8*)** %12, align 8
  %34 = load %struct.key*, %struct.key** %7, align 8
  %35 = getelementptr inbounds %struct.key, %struct.key* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32 (%struct.key*, i8*)*, i32 (%struct.key*, i8*)** %37, align 8
  %39 = icmp ne i32 (%struct.key*, i8*)* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %33
  %41 = load %struct.key*, %struct.key** %7, align 8
  %42 = getelementptr inbounds %struct.key, %struct.key* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32 (%struct.key*, i8*)*, i32 (%struct.key*, i8*)** %44, align 8
  store i32 (%struct.key*, i8*)* %45, i32 (%struct.key*, i8*)** %12, align 8
  br label %46

46:                                               ; preds = %40, %33
  %47 = load i32 (%struct.key*, i8*)*, i32 (%struct.key*, i8*)** %12, align 8
  %48 = load %struct.key*, %struct.key** %13, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = call i32 %47(%struct.key* %48, i8* %49)
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %14, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %46
  %54 = load i32, i32* @KEY_FLAG_INVALIDATED, align 4
  %55 = load %struct.key*, %struct.key** %13, align 8
  %56 = getelementptr inbounds %struct.key, %struct.key* %55, i32 0, i32 0
  %57 = call i32 @test_bit(i32 %54, i32* %56)
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  br label %60

60:                                               ; preds = %53, %46
  %61 = phi i1 [ false, %46 ], [ %59, %53 ]
  %62 = zext i1 %61 to i32
  %63 = call i32 @WARN_ON(i32 %62)
  %64 = load %struct.key*, %struct.key** %13, align 8
  %65 = call i32 @key_put(%struct.key* %64)
  %66 = load i32, i32* %14, align 4
  %67 = call i32 @kleave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* %14, align 4
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %60, %30
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local i32 @kenter(i8*, i32, i8*, i64, i8*) #1

declare dso_local %struct.key* @request_key_auth_new(%struct.key*, i8*, i8*, i64, %struct.key*) #1

declare dso_local i64 @IS_ERR(%struct.key*) #1

declare dso_local i32 @PTR_ERR(%struct.key*) #1

declare dso_local i32 @call_sbin_request_key(%struct.key*, i8*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @key_put(%struct.key*) #1

declare dso_local i32 @kleave(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
