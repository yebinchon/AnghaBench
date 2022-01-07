; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_redirect_user.c_int_exit.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_redirect_user.c_int_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ifindex_in = common dso_local global i32 0, align 4
@xdp_flags = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"bpf_get_link_xdp_id failed\0A\00", align 1
@prog_id = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"couldn't find a prog id on iface IN\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"program on iface IN changed, not removing\0A\00", align 1
@ifindex_out_xdp_dummy_attached = common dso_local global i64 0, align 8
@ifindex_out = common dso_local global i32 0, align 4
@dummy_prog_id = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"couldn't find a prog id on iface OUT\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"program on iface OUT changed, not removing\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @int_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @int_exit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  store i64 0, i64* %3, align 8
  %4 = load i32, i32* @ifindex_in, align 4
  %5 = load i32, i32* @xdp_flags, align 4
  %6 = call i64 @bpf_get_link_xdp_id(i32 %4, i64* %3, i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 @exit(i32 1) #3
  unreachable

11:                                               ; preds = %1
  %12 = load i64, i64* @prog_id, align 8
  %13 = load i64, i64* %3, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load i32, i32* @ifindex_in, align 4
  %17 = load i32, i32* @xdp_flags, align 4
  %18 = call i32 @bpf_set_link_xdp_fd(i32 %16, i32 -1, i32 %17)
  br label %27

19:                                               ; preds = %11
  %20 = load i64, i64* %3, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %26

24:                                               ; preds = %19
  %25 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %22
  br label %27

27:                                               ; preds = %26, %15
  %28 = load i64, i64* @ifindex_out_xdp_dummy_attached, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %55

30:                                               ; preds = %27
  store i64 0, i64* %3, align 8
  %31 = load i32, i32* @ifindex_out, align 4
  %32 = load i32, i32* @xdp_flags, align 4
  %33 = call i64 @bpf_get_link_xdp_id(i32 %31, i64* %3, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %37 = call i32 @exit(i32 1) #3
  unreachable

38:                                               ; preds = %30
  %39 = load i64, i64* @dummy_prog_id, align 8
  %40 = load i64, i64* %3, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i32, i32* @ifindex_out, align 4
  %44 = load i32, i32* @xdp_flags, align 4
  %45 = call i32 @bpf_set_link_xdp_fd(i32 %43, i32 -1, i32 %44)
  br label %54

46:                                               ; preds = %38
  %47 = load i64, i64* %3, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %46
  %50 = call i32 @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %53

51:                                               ; preds = %46
  %52 = call i32 @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %49
  br label %54

54:                                               ; preds = %53, %42
  br label %55

55:                                               ; preds = %54, %27
  %56 = call i32 @exit(i32 0) #3
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
