; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_devinet.c_inet_abc_len.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_devinet.c_inet_abc_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @inet_abc_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet_abc_len(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 -1, i32* %3, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i64 @ipv4_is_zeronet(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  %10 = call i64 @ipv4_is_lbcast(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8, %1
  store i32 0, i32* %3, align 4
  br label %39

13:                                               ; preds = %8
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @ntohl(i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i64 @IN_CLASSA(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 8, i32* %3, align 4
  br label %38

20:                                               ; preds = %13
  %21 = load i32, i32* %4, align 4
  %22 = call i64 @IN_CLASSB(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 16, i32* %3, align 4
  br label %37

25:                                               ; preds = %20
  %26 = load i32, i32* %4, align 4
  %27 = call i64 @IN_CLASSC(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 24, i32* %3, align 4
  br label %36

30:                                               ; preds = %25
  %31 = load i32, i32* %4, align 4
  %32 = call i64 @IN_CLASSE(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 32, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %30
  br label %36

36:                                               ; preds = %35, %29
  br label %37

37:                                               ; preds = %36, %24
  br label %38

38:                                               ; preds = %37, %19
  br label %39

39:                                               ; preds = %38, %12
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i64 @ipv4_is_zeronet(i32) #1

declare dso_local i64 @ipv4_is_lbcast(i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i64 @IN_CLASSA(i32) #1

declare dso_local i64 @IN_CLASSB(i32) #1

declare dso_local i64 @IN_CLASSC(i32) #1

declare dso_local i64 @IN_CLASSE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
