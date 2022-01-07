; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_request_key.c_request_key_tag.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_request_key.c_request_key_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i32 }
%struct.key_type = type { i32 }
%struct.key_tag = type { i32 }

@KEY_ALLOC_IN_QUOTA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.key* @request_key_tag(%struct.key_type* %0, i8* %1, %struct.key_tag* %2, i8* %3) #0 {
  %5 = alloca %struct.key*, align 8
  %6 = alloca %struct.key_type*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.key_tag*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.key*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.key_type* %0, %struct.key_type** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.key_tag* %2, %struct.key_tag** %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 0, i64* %11, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i8*, i8** %9, align 8
  %17 = call i64 @strlen(i8* %16)
  store i64 %17, i64* %11, align 8
  br label %18

18:                                               ; preds = %15, %4
  %19 = load %struct.key_type*, %struct.key_type** %6, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load %struct.key_tag*, %struct.key_tag** %8, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = load i64, i64* %11, align 8
  %24 = load i32, i32* @KEY_ALLOC_IN_QUOTA, align 4
  %25 = call %struct.key* @request_key_and_link(%struct.key_type* %19, i8* %20, %struct.key_tag* %21, i8* %22, i64 %23, i32* null, i32* null, i32 %24)
  store %struct.key* %25, %struct.key** %10, align 8
  %26 = load %struct.key*, %struct.key** %10, align 8
  %27 = call i32 @IS_ERR(%struct.key* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %18
  %30 = load %struct.key*, %struct.key** %10, align 8
  %31 = call i32 @wait_for_key_construction(%struct.key* %30, i32 0)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.key*, %struct.key** %10, align 8
  %36 = call i32 @key_put(%struct.key* %35)
  %37 = load i32, i32* %12, align 4
  %38 = call %struct.key* @ERR_PTR(i32 %37)
  store %struct.key* %38, %struct.key** %5, align 8
  br label %42

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %39, %18
  %41 = load %struct.key*, %struct.key** %10, align 8
  store %struct.key* %41, %struct.key** %5, align 8
  br label %42

42:                                               ; preds = %40, %34
  %43 = load %struct.key*, %struct.key** %5, align 8
  ret %struct.key* %43
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.key* @request_key_and_link(%struct.key_type*, i8*, %struct.key_tag*, i8*, i64, i32*, i32*, i32) #1

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
