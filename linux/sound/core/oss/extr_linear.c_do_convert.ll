; ModuleID = '/home/carl/AnghaBench/linux/sound/core/oss/extr_linear.c_do_convert.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/oss/extr_linear.c_do_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linear_priv = type { i32, i32, i32, i32, i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.linear_priv*, i8*, i8*)* @do_convert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_convert(%struct.linear_priv* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.linear_priv*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.linear_priv* %0, %struct.linear_priv** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = bitcast i32* %7 to i8*
  store i8* %9, i8** %8, align 8
  %10 = load i8*, i8** %8, align 8
  %11 = load %struct.linear_priv*, %struct.linear_priv** %4, align 8
  %12 = getelementptr inbounds %struct.linear_priv, %struct.linear_priv* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %10, i64 %14
  %16 = load i8*, i8** %6, align 8
  %17 = load %struct.linear_priv*, %struct.linear_priv** %4, align 8
  %18 = getelementptr inbounds %struct.linear_priv, %struct.linear_priv* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %16, i64 %20
  %22 = load %struct.linear_priv*, %struct.linear_priv** %4, align 8
  %23 = getelementptr inbounds %struct.linear_priv, %struct.linear_priv* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @memcpy(i8* %15, i8* %21, i32 %24)
  %26 = load %struct.linear_priv*, %struct.linear_priv** %4, align 8
  %27 = getelementptr inbounds %struct.linear_priv, %struct.linear_priv* %26, i32 0, i32 5
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %3
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @swab32(i32 %31)
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %30, %3
  %34 = load %struct.linear_priv*, %struct.linear_priv** %4, align 8
  %35 = getelementptr inbounds %struct.linear_priv, %struct.linear_priv* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = xor i32 %37, %36
  store i32 %38, i32* %7, align 4
  %39 = load i8*, i8** %5, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = load %struct.linear_priv*, %struct.linear_priv** %4, align 8
  %42 = getelementptr inbounds %struct.linear_priv, %struct.linear_priv* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %40, i64 %44
  %46 = load %struct.linear_priv*, %struct.linear_priv** %4, align 8
  %47 = getelementptr inbounds %struct.linear_priv, %struct.linear_priv* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @memcpy(i8* %39, i8* %45, i32 %48)
  ret void
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @swab32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
