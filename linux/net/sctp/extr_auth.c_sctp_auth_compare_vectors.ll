; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_auth.c_sctp_auth_compare_vectors.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_auth.c_sctp_auth_compare_vectors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_auth_bytes = type { i32, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sctp_auth_bytes*, %struct.sctp_auth_bytes*)* @sctp_auth_compare_vectors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_auth_compare_vectors(%struct.sctp_auth_bytes* %0, %struct.sctp_auth_bytes* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sctp_auth_bytes*, align 8
  %5 = alloca %struct.sctp_auth_bytes*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  store %struct.sctp_auth_bytes* %0, %struct.sctp_auth_bytes** %4, align 8
  store %struct.sctp_auth_bytes* %1, %struct.sctp_auth_bytes** %5, align 8
  %9 = load %struct.sctp_auth_bytes*, %struct.sctp_auth_bytes** %4, align 8
  %10 = getelementptr inbounds %struct.sctp_auth_bytes, %struct.sctp_auth_bytes* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.sctp_auth_bytes*, %struct.sctp_auth_bytes** %5, align 8
  %13 = getelementptr inbounds %struct.sctp_auth_bytes, %struct.sctp_auth_bytes* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sub nsw i32 %11, %14
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %50

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load %struct.sctp_auth_bytes*, %struct.sctp_auth_bytes** %4, align 8
  %23 = getelementptr inbounds %struct.sctp_auth_bytes, %struct.sctp_auth_bytes* %22, i32 0, i32 1
  %24 = load i64*, i64** %23, align 8
  br label %29

25:                                               ; preds = %18
  %26 = load %struct.sctp_auth_bytes*, %struct.sctp_auth_bytes** %5, align 8
  %27 = getelementptr inbounds %struct.sctp_auth_bytes, %struct.sctp_auth_bytes* %26, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  br label %29

29:                                               ; preds = %25, %21
  %30 = phi i64* [ %24, %21 ], [ %28, %25 ]
  store i64* %30, i64** %8, align 8
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %46, %29
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @abs(i32 %33) #3
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %36, label %49

36:                                               ; preds = %31
  %37 = load i64*, i64** %8, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %3, align 4
  br label %61

45:                                               ; preds = %36
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %31

49:                                               ; preds = %31
  br label %50

50:                                               ; preds = %49, %2
  %51 = load %struct.sctp_auth_bytes*, %struct.sctp_auth_bytes** %4, align 8
  %52 = getelementptr inbounds %struct.sctp_auth_bytes, %struct.sctp_auth_bytes* %51, i32 0, i32 1
  %53 = load i64*, i64** %52, align 8
  %54 = load %struct.sctp_auth_bytes*, %struct.sctp_auth_bytes** %5, align 8
  %55 = getelementptr inbounds %struct.sctp_auth_bytes, %struct.sctp_auth_bytes* %54, i32 0, i32 1
  %56 = load i64*, i64** %55, align 8
  %57 = load %struct.sctp_auth_bytes*, %struct.sctp_auth_bytes** %4, align 8
  %58 = getelementptr inbounds %struct.sctp_auth_bytes, %struct.sctp_auth_bytes* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @memcmp(i64* %53, i64* %56, i32 %59)
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %50, %43
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #1

declare dso_local i32 @memcmp(i64*, i64*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
