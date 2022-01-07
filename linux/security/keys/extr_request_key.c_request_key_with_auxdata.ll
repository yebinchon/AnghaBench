; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_request_key.c_request_key_with_auxdata.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_request_key.c_request_key_with_auxdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i32 }
%struct.key_type = type { i32 }
%struct.key_tag = type { i32 }

@KEY_ALLOC_IN_QUOTA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.key* @request_key_with_auxdata(%struct.key_type* %0, i8* %1, %struct.key_tag* %2, i8* %3, i64 %4, i8* %5) #0 {
  %7 = alloca %struct.key*, align 8
  %8 = alloca %struct.key_type*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.key_tag*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.key*, align 8
  %15 = alloca i32, align 4
  store %struct.key_type* %0, %struct.key_type** %8, align 8
  store i8* %1, i8** %9, align 8
  store %struct.key_tag* %2, %struct.key_tag** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i8* %5, i8** %13, align 8
  %16 = load %struct.key_type*, %struct.key_type** %8, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = load %struct.key_tag*, %struct.key_tag** %10, align 8
  %19 = load i8*, i8** %11, align 8
  %20 = load i64, i64* %12, align 8
  %21 = load i8*, i8** %13, align 8
  %22 = load i32, i32* @KEY_ALLOC_IN_QUOTA, align 4
  %23 = call %struct.key* @request_key_and_link(%struct.key_type* %16, i8* %17, %struct.key_tag* %18, i8* %19, i64 %20, i8* %21, i32* null, i32 %22)
  store %struct.key* %23, %struct.key** %14, align 8
  %24 = load %struct.key*, %struct.key** %14, align 8
  %25 = call i32 @IS_ERR(%struct.key* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %38, label %27

27:                                               ; preds = %6
  %28 = load %struct.key*, %struct.key** %14, align 8
  %29 = call i32 @wait_for_key_construction(%struct.key* %28, i32 0)
  store i32 %29, i32* %15, align 4
  %30 = load i32, i32* %15, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.key*, %struct.key** %14, align 8
  %34 = call i32 @key_put(%struct.key* %33)
  %35 = load i32, i32* %15, align 4
  %36 = call %struct.key* @ERR_PTR(i32 %35)
  store %struct.key* %36, %struct.key** %7, align 8
  br label %40

37:                                               ; preds = %27
  br label %38

38:                                               ; preds = %37, %6
  %39 = load %struct.key*, %struct.key** %14, align 8
  store %struct.key* %39, %struct.key** %7, align 8
  br label %40

40:                                               ; preds = %38, %32
  %41 = load %struct.key*, %struct.key** %7, align 8
  ret %struct.key* %41
}

declare dso_local %struct.key* @request_key_and_link(%struct.key_type*, i8*, %struct.key_tag*, i8*, i64, i8*, i32*, i32) #1

declare dso_local i32 @IS_ERR(%struct.key*) #1

declare dso_local i32 @wait_for_key_construction(%struct.key*, i32) #1

declare dso_local i32 @key_put(%struct.key*) #1

declare dso_local %struct.key* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
