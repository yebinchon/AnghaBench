; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_big_key.c_big_key_free_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_big_key.c_big_key_free_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.big_key_buf = type { i32, i64*, i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.big_key_buf*)* @big_key_free_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @big_key_free_buffer(%struct.big_key_buf* %0) #0 {
  %2 = alloca %struct.big_key_buf*, align 8
  %3 = alloca i32, align 4
  store %struct.big_key_buf* %0, %struct.big_key_buf** %2, align 8
  %4 = load %struct.big_key_buf*, %struct.big_key_buf** %2, align 8
  %5 = getelementptr inbounds %struct.big_key_buf, %struct.big_key_buf* %4, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %1
  %9 = load %struct.big_key_buf*, %struct.big_key_buf** %2, align 8
  %10 = getelementptr inbounds %struct.big_key_buf, %struct.big_key_buf* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.big_key_buf*, %struct.big_key_buf** %2, align 8
  %13 = getelementptr inbounds %struct.big_key_buf, %struct.big_key_buf* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @PAGE_SIZE, align 4
  %16 = mul nsw i32 %14, %15
  %17 = call i32 @memset(i64 %11, i32 0, i32 %16)
  %18 = load %struct.big_key_buf*, %struct.big_key_buf** %2, align 8
  %19 = getelementptr inbounds %struct.big_key_buf, %struct.big_key_buf* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @vunmap(i64 %20)
  br label %22

22:                                               ; preds = %8, %1
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %48, %22
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.big_key_buf*, %struct.big_key_buf** %2, align 8
  %26 = getelementptr inbounds %struct.big_key_buf, %struct.big_key_buf* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ult i32 %24, %27
  br i1 %28, label %29, label %51

29:                                               ; preds = %23
  %30 = load %struct.big_key_buf*, %struct.big_key_buf** %2, align 8
  %31 = getelementptr inbounds %struct.big_key_buf, %struct.big_key_buf* %30, i32 0, i32 1
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %29
  %39 = load %struct.big_key_buf*, %struct.big_key_buf** %2, align 8
  %40 = getelementptr inbounds %struct.big_key_buf, %struct.big_key_buf* %39, i32 0, i32 1
  %41 = load i64*, i64** %40, align 8
  %42 = load i32, i32* %3, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @__free_page(i64 %45)
  br label %47

47:                                               ; preds = %38, %29
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %3, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %3, align 4
  br label %23

51:                                               ; preds = %23
  %52 = load %struct.big_key_buf*, %struct.big_key_buf** %2, align 8
  %53 = call i32 @kfree(%struct.big_key_buf* %52)
  ret void
}

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @vunmap(i64) #1

declare dso_local i32 @__free_page(i64) #1

declare dso_local i32 @kfree(%struct.big_key_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
