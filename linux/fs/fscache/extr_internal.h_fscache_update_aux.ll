; ModuleID = '/home/carl/AnghaBench/linux/fs/fscache/extr_internal.h_fscache_update_aux.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fscache/extr_internal.h_fscache_update_aux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fscache_cookie = type { i32, i32, i8*, i8* }

@FSCACHE_COOKIE_AUX_UPDATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fscache_cookie*, i8*)* @fscache_update_aux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fscache_update_aux(%struct.fscache_cookie* %0, i8* %1) #0 {
  %3 = alloca %struct.fscache_cookie*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.fscache_cookie* %0, %struct.fscache_cookie** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %42

9:                                                ; preds = %2
  %10 = load %struct.fscache_cookie*, %struct.fscache_cookie** %3, align 8
  %11 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sext i32 %12 to i64
  %14 = icmp ule i64 %13, 8
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = load %struct.fscache_cookie*, %struct.fscache_cookie** %3, align 8
  %17 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %16, i32 0, i32 3
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %5, align 8
  br label %23

19:                                               ; preds = %9
  %20 = load %struct.fscache_cookie*, %struct.fscache_cookie** %3, align 8
  %21 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %20, i32 0, i32 2
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %5, align 8
  br label %23

23:                                               ; preds = %19, %15
  %24 = load i8*, i8** %5, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = load %struct.fscache_cookie*, %struct.fscache_cookie** %3, align 8
  %27 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @memcmp(i8* %24, i8* %25, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %23
  %32 = load i8*, i8** %5, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = load %struct.fscache_cookie*, %struct.fscache_cookie** %3, align 8
  %35 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @memcpy(i8* %32, i8* %33, i32 %36)
  %38 = load i32, i32* @FSCACHE_COOKIE_AUX_UPDATED, align 4
  %39 = load %struct.fscache_cookie*, %struct.fscache_cookie** %3, align 8
  %40 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %39, i32 0, i32 1
  %41 = call i32 @set_bit(i32 %38, i32* %40)
  br label %42

42:                                               ; preds = %8, %31, %23
  ret void
}

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
