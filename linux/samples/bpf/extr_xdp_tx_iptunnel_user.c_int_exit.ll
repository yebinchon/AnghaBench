; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_tx_iptunnel_user.c_int_exit.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_tx_iptunnel_user.c_int_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ifindex = common dso_local global i32 0, align 4
@xdp_flags = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"bpf_get_link_xdp_id failed\0A\00", align 1
@prog_id = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"couldn't find a prog id on a given iface\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"program on interface changed, not removing\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @int_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @int_exit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  store i64 0, i64* %3, align 8
  %4 = load i32, i32* @ifindex, align 4
  %5 = icmp sgt i32 %4, -1
  br i1 %5, label %6, label %31

6:                                                ; preds = %1
  %7 = load i32, i32* @ifindex, align 4
  %8 = load i32, i32* @xdp_flags, align 4
  %9 = call i64 @bpf_get_link_xdp_id(i32 %7, i64* %3, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  %12 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @exit(i32 1) #3
  unreachable

14:                                               ; preds = %6
  %15 = load i64, i64* @prog_id, align 8
  %16 = load i64, i64* %3, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i32, i32* @ifindex, align 4
  %20 = load i32, i32* @xdp_flags, align 4
  %21 = call i32 @bpf_set_link_xdp_fd(i32 %19, i32 -1, i32 %20)
  br label %30

22:                                               ; preds = %14
  %23 = load i64, i64* %3, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = call i32 @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %29

27:                                               ; preds = %22
  %28 = call i32 @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %25
  br label %30

30:                                               ; preds = %29, %18
  br label %31

31:                                               ; preds = %30, %1
  %32 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i64 @bpf_get_link_xdp_id(i32, i64*, i32) #1

declare dso_local i32 @printf(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @bpf_set_link_xdp_fd(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
