; ModuleID = '/home/carl/AnghaBench/linux/fs/lockd/extr_svclock.c_nlm_cookie_match.c'
source_filename = "/home/carl/AnghaBench/linux/fs/lockd/extr_svclock.c_nlm_cookie_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_cookie = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlm_cookie*, %struct.nlm_cookie*)* @nlm_cookie_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nlm_cookie_match(%struct.nlm_cookie* %0, %struct.nlm_cookie* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nlm_cookie*, align 8
  %5 = alloca %struct.nlm_cookie*, align 8
  store %struct.nlm_cookie* %0, %struct.nlm_cookie** %4, align 8
  store %struct.nlm_cookie* %1, %struct.nlm_cookie** %5, align 8
  %6 = load %struct.nlm_cookie*, %struct.nlm_cookie** %4, align 8
  %7 = getelementptr inbounds %struct.nlm_cookie, %struct.nlm_cookie* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.nlm_cookie*, %struct.nlm_cookie** %5, align 8
  %10 = getelementptr inbounds %struct.nlm_cookie, %struct.nlm_cookie* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %28

14:                                               ; preds = %2
  %15 = load %struct.nlm_cookie*, %struct.nlm_cookie** %4, align 8
  %16 = getelementptr inbounds %struct.nlm_cookie, %struct.nlm_cookie* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.nlm_cookie*, %struct.nlm_cookie** %5, align 8
  %19 = getelementptr inbounds %struct.nlm_cookie, %struct.nlm_cookie* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.nlm_cookie*, %struct.nlm_cookie** %4, align 8
  %22 = getelementptr inbounds %struct.nlm_cookie, %struct.nlm_cookie* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i64 @memcmp(i32 %17, i32 %20, i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %28

27:                                               ; preds = %14
  store i32 1, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %26, %13
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i64 @memcmp(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
