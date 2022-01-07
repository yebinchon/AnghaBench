; ModuleID = '/home/carl/AnghaBench/linux/scripts/extr_asn1_compiler.c_directive_compare.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/extr_asn1_compiler.c_directive_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.token = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @directive_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @directive_compare(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.token*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.token*
  store %struct.token* %13, %struct.token** %6, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to i8**
  store i8** %15, i8*** %7, align 8
  %16 = load i8**, i8*** %7, align 8
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %8, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call i64 @strlen(i8* %18)
  store i64 %19, i64* %9, align 8
  %20 = load i64, i64* %9, align 8
  %21 = load %struct.token*, %struct.token** %6, align 8
  %22 = getelementptr inbounds %struct.token, %struct.token* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ult i64 %20, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i64, i64* %9, align 8
  br label %31

27:                                               ; preds = %2
  %28 = load %struct.token*, %struct.token** %6, align 8
  %29 = getelementptr inbounds %struct.token, %struct.token* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  br label %31

31:                                               ; preds = %27, %25
  %32 = phi i64 [ %26, %25 ], [ %30, %27 ]
  store i64 %32, i64* %10, align 8
  %33 = load %struct.token*, %struct.token** %6, align 8
  %34 = getelementptr inbounds %struct.token, %struct.token* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = load i64, i64* %10, align 8
  %38 = call i32 @memcmp(i32 %35, i8* %36, i64 %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = load i32, i32* %11, align 4
  store i32 %42, i32* %3, align 4
  br label %57

43:                                               ; preds = %31
  %44 = load i64, i64* %9, align 8
  %45 = load %struct.token*, %struct.token** %6, align 8
  %46 = getelementptr inbounds %struct.token, %struct.token* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %44, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %57

50:                                               ; preds = %43
  %51 = load i64, i64* %9, align 8
  %52 = load %struct.token*, %struct.token** %6, align 8
  %53 = getelementptr inbounds %struct.token, %struct.token* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = sub i64 %51, %54
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %50, %49, %41
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @memcmp(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
