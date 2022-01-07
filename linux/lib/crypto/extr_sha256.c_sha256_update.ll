; ModuleID = '/home/carl/AnghaBench/linux/lib/crypto/extr_sha256.c_sha256_update.c'
source_filename = "/home/carl/AnghaBench/linux/lib/crypto/extr_sha256.c_sha256_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sha256_state = type { i32, i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sha256_update(%struct.sha256_state* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.sha256_state*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.sha256_state* %0, %struct.sha256_state** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.sha256_state*, %struct.sha256_state** %4, align 8
  %11 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = and i32 %12, 63
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.sha256_state*, %struct.sha256_state** %4, align 8
  %16 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = add i32 %17, %14
  store i32 %18, i32* %16, align 8
  store i32 0, i32* %8, align 4
  %19 = load i32*, i32** %5, align 8
  store i32* %19, i32** %9, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %6, align 4
  %22 = add i32 %20, %21
  %23 = icmp ugt i32 %22, 63
  br i1 %23, label %24, label %62

24:                                               ; preds = %3
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %24
  %28 = load i32, i32* %7, align 4
  %29 = sub i32 0, %28
  store i32 %29, i32* %8, align 4
  %30 = load %struct.sha256_state*, %struct.sha256_state** %4, align 8
  %31 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* %8, align 4
  %38 = add i32 %37, 64
  %39 = call i32 @memcpy(i32* %35, i32* %36, i32 %38)
  %40 = load %struct.sha256_state*, %struct.sha256_state** %4, align 8
  %41 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  store i32* %42, i32** %9, align 8
  br label %43

43:                                               ; preds = %27, %24
  br label %44

44:                                               ; preds = %56, %43
  %45 = load %struct.sha256_state*, %struct.sha256_state** %4, align 8
  %46 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = call i32 @sha256_transform(i32 %47, i32* %48)
  %50 = load i32, i32* %8, align 4
  %51 = add i32 %50, 64
  store i32 %51, i32* %8, align 4
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* %8, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32* %55, i32** %9, align 8
  br label %56

56:                                               ; preds = %44
  %57 = load i32, i32* %8, align 4
  %58 = add i32 %57, 63
  %59 = load i32, i32* %6, align 4
  %60 = icmp ult i32 %58, %59
  br i1 %60, label %44, label %61

61:                                               ; preds = %56
  store i32 0, i32* %7, align 4
  br label %62

62:                                               ; preds = %61, %3
  %63 = load %struct.sha256_state*, %struct.sha256_state** %4, align 8
  %64 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32*, i32** %9, align 8
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %8, align 4
  %72 = sub i32 %70, %71
  %73 = call i32 @memcpy(i32* %68, i32* %69, i32 %72)
  ret i32 0
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @sha256_transform(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
