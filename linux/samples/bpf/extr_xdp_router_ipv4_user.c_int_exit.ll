; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_router_ipv4_user.c_int_exit.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_router_ipv4_user.c_int_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@total_ifindex = common dso_local global i32 0, align 4
@ifindex_list = common dso_local global i32* null, align 8
@flags = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"bpf_get_link_xdp_id on iface %d failed\0A\00", align 1
@prog_id_list = common dso_local global i64* null, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"couldn't find a prog id on iface %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"program on iface %d changed, not removing\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @int_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @int_exit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i64 0, i64* %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %61, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @total_ifindex, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %64

9:                                                ; preds = %5
  %10 = load i32*, i32** @ifindex_list, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @flags, align 4
  %16 = call i64 @bpf_get_link_xdp_id(i32 %14, i64* %3, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %9
  %19 = load i32*, i32** @ifindex_list, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = call i32 @exit(i32 1) #3
  unreachable

26:                                               ; preds = %9
  %27 = load i64*, i64** @prog_id_list, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %3, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %26
  %35 = load i32*, i32** @ifindex_list, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @flags, align 4
  %41 = call i32 @bpf_set_link_xdp_fd(i32 %39, i32 -1, i32 %40)
  br label %60

42:                                               ; preds = %26
  %43 = load i64, i64* %3, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %42
  %46 = load i32*, i32** @ifindex_list, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  br label %59

52:                                               ; preds = %42
  %53 = load i32*, i32** @ifindex_list, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %52, %45
  br label %60

60:                                               ; preds = %59, %34
  store i64 0, i64* %3, align 8
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %4, align 4
  br label %5

64:                                               ; preds = %5
  %65 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i64 @bpf_get_link_xdp_id(i32, i64*, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

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
