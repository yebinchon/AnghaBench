; ModuleID = '/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_core.h_l2tp_v3_ensure_opt_in_linear.c'
source_filename = "/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_core.h_l2tp_v3_ensure_opt_in_linear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2tp_session = type { i32 }
%struct.sk_buff = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l2tp_session*, %struct.sk_buff*, i8**, i8**)* @l2tp_v3_ensure_opt_in_linear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2tp_v3_ensure_opt_in_linear(%struct.l2tp_session* %0, %struct.sk_buff* %1, i8** %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.l2tp_session*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.l2tp_session* %0, %struct.l2tp_session** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i8** %3, i8*** %9, align 8
  %12 = load %struct.l2tp_session*, %struct.l2tp_session** %6, align 8
  %13 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.l2tp_session*, %struct.l2tp_session** %6, align 8
  %16 = call i32 @l2tp_get_l2specific_len(%struct.l2tp_session* %15)
  %17 = add nsw i32 %14, %16
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %56

20:                                               ; preds = %4
  %21 = load i8**, i8*** %8, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = load i8**, i8*** %9, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = ptrtoint i8* %22 to i64
  %26 = ptrtoint i8* %24 to i64
  %27 = sub i64 %25, %26
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %11, align 4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %10, align 4
  %32 = add nsw i32 %30, %31
  %33 = call i32 @pskb_may_pull(%struct.sk_buff* %29, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %20
  store i32 -1, i32* %5, align 4
  br label %57

36:                                               ; preds = %20
  %37 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load i8**, i8*** %9, align 8
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %39, %41
  br i1 %42, label %43, label %55

43:                                               ; preds = %36
  %44 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = load i8**, i8*** %9, align 8
  store i8* %46, i8** %47, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = load i8**, i8*** %8, align 8
  store i8* %53, i8** %54, align 8
  br label %55

55:                                               ; preds = %43, %36
  br label %56

56:                                               ; preds = %55, %4
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %56, %35
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32 @l2tp_get_l2specific_len(%struct.l2tp_session*) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
