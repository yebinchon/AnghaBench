; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_compat.c_match_compat_from_user.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_compat.c_match_compat_from_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_match = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xt_match*, i8*, i8*)* @match_compat_from_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @match_compat_from_user(%struct.xt_match* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.xt_match*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.xt_match* %0, %struct.xt_match** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load %struct.xt_match*, %struct.xt_match** %4, align 8
  %11 = getelementptr inbounds %struct.xt_match, %struct.xt_match* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @memcpy(i8* %8, i8* %9, i32 %12)
  %14 = load %struct.xt_match*, %struct.xt_match** %4, align 8
  %15 = getelementptr inbounds %struct.xt_match, %struct.xt_match* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @XT_ALIGN(i32 %16)
  %18 = load %struct.xt_match*, %struct.xt_match** %4, align 8
  %19 = getelementptr inbounds %struct.xt_match, %struct.xt_match* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %17, %20
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %3
  %25 = load i8*, i8** %6, align 8
  %26 = load %struct.xt_match*, %struct.xt_match** %4, align 8
  %27 = getelementptr inbounds %struct.xt_match, %struct.xt_match* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr i8, i8* %25, i64 %29
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @memset(i8* %30, i32 0, i32 %31)
  br label %33

33:                                               ; preds = %24, %3
  ret void
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @XT_ALIGN(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
