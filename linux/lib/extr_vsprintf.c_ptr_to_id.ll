; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_vsprintf.c_ptr_to_id.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_vsprintf.c_ptr_to_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.printf_spec = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"(____ptrval____)\00", align 1
@debug_boot_weak_hash = common dso_local global i32 0, align 4
@not_filled_random_ptr_key = common dso_local global i32 0, align 4
@ptr_key = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i8*, i32)* @ptr_to_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ptr_to_id(i8* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.printf_spec, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %6, i32 0, i32 0
  store i32 %3, i32* %12, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %13 = load i32, i32* @debug_boot_weak_hash, align 4
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %4
  %17 = load i8*, i8** %9, align 8
  %18 = ptrtoint i8* %17 to i64
  %19 = call i64 @hash_long(i64 %18, i32 32)
  store i64 %19, i64* %11, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = load i64, i64* %11, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %6, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @pointer_string(i8* %20, i8* %21, i8* %23, i32 %25)
  store i8* %26, i8** %5, align 8
  br label %49

27:                                               ; preds = %4
  %28 = call i64 @static_branch_unlikely(i32* @not_filled_random_ptr_key)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %6, i32 0, i32 0
  store i32 16, i32* %31, align 4
  %32 = load i8*, i8** %7, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %6, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @error_string(i8* %32, i8* %33, i8* %34, i32 %36)
  store i8* %37, i8** %5, align 8
  br label %49

38:                                               ; preds = %27
  %39 = load i8*, i8** %9, align 8
  %40 = ptrtoint i8* %39 to i32
  %41 = call i64 @siphash_1u32(i32 %40, i32* @ptr_key)
  store i64 %41, i64* %11, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = load i64, i64* %11, align 8
  %45 = inttoptr i64 %44 to i8*
  %46 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %6, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @pointer_string(i8* %42, i8* %43, i8* %45, i32 %47)
  store i8* %48, i8** %5, align 8
  br label %49

49:                                               ; preds = %38, %30, %16
  %50 = load i8*, i8** %5, align 8
  ret i8* %50
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @hash_long(i64, i32) #1

declare dso_local i8* @pointer_string(i8*, i8*, i8*, i32) #1

declare dso_local i64 @static_branch_unlikely(i32*) #1

declare dso_local i8* @error_string(i8*, i8*, i8*, i32) #1

declare dso_local i64 @siphash_1u32(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
