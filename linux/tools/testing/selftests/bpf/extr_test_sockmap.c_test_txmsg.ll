; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_sockmap.c_test_txmsg.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_sockmap.c_test_txmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@txmsg_drop = common dso_local global i32 0, align 4
@txmsg_redir_noisy = common dso_local global i32 0, align 4
@txmsg_noisy = common dso_local global i32 0, align 4
@txmsg_pass = common dso_local global i32 0, align 4
@txmsg_cork = common dso_local global i64 0, align 8
@txmsg_apply = common dso_local global i64 0, align 8
@txmsg_skb = common dso_local global i32 0, align 4
@txmsg_ingress = common dso_local global i32 0, align 4
@txmsg_redir = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test_txmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_txmsg(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* @txmsg_drop, align 4
  store i32 0, i32* @txmsg_redir_noisy, align 4
  store i32 0, i32* @txmsg_noisy, align 4
  store i32 0, i32* @txmsg_pass, align 4
  store i64 0, i64* @txmsg_cork, align 8
  store i64 0, i64* @txmsg_apply, align 8
  store i32 0, i32* @txmsg_skb, align 4
  store i32 0, i32* @txmsg_ingress, align 4
  store i32 1, i32* @txmsg_pass, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @test_loop(i32 %4)
  store i32 %5, i32* %3, align 4
  store i32 0, i32* @txmsg_pass, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %28

9:                                                ; preds = %1
  store i32 1, i32* @txmsg_redir, align 4
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @test_loop(i32 %10)
  store i32 %11, i32* %3, align 4
  store i32 0, i32* @txmsg_redir, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  br label %28

15:                                               ; preds = %9
  store i32 1, i32* @txmsg_drop, align 4
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @test_loop(i32 %16)
  store i32 %17, i32* %3, align 4
  store i32 0, i32* @txmsg_drop, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %28

21:                                               ; preds = %15
  store i32 1, i32* @txmsg_redir, align 4
  store i32 1, i32* @txmsg_ingress, align 4
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @test_loop(i32 %22)
  store i32 %23, i32* %3, align 4
  store i32 0, i32* @txmsg_redir, align 4
  store i32 0, i32* @txmsg_ingress, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %28

27:                                               ; preds = %21
  br label %28

28:                                               ; preds = %27, %26, %20, %14, %8
  store i32 0, i32* @txmsg_pass, align 4
  store i32 0, i32* @txmsg_redir, align 4
  store i32 0, i32* @txmsg_drop, align 4
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @test_loop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
