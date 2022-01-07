; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_xdpsock_user.c_remove_xdp_program.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_xdpsock_user.c_remove_xdp_program.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@opt_ifindex = common dso_local global i32 0, align 4
@opt_xdp_flags = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"bpf_get_link_xdp_id failed\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@prog_id = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"couldn't find a prog id on a given interface\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"program on interface changed, not removing\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @remove_xdp_program to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_xdp_program() #0 {
  %1 = alloca i64, align 8
  store i64 0, i64* %1, align 8
  %2 = load i32, i32* @opt_ifindex, align 4
  %3 = load i32, i32* @opt_xdp_flags, align 4
  %4 = call i64 @bpf_get_link_xdp_id(i32 %2, i64* %1, i32 %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %0
  %7 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @EXIT_FAILURE, align 4
  %9 = call i32 @exit(i32 %8) #3
  unreachable

10:                                               ; preds = %0
  %11 = load i64, i64* @prog_id, align 8
  %12 = load i64, i64* %1, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load i32, i32* @opt_ifindex, align 4
  %16 = load i32, i32* @opt_xdp_flags, align 4
  %17 = call i32 @bpf_set_link_xdp_fd(i32 %15, i32 -1, i32 %16)
  br label %26

18:                                               ; preds = %10
  %19 = load i64, i64* %1, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = call i32 @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %25

23:                                               ; preds = %18
  %24 = call i32 @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %21
  br label %26

26:                                               ; preds = %25, %14
  ret void
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
