; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_select_reuseport.c_setup_per_test.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_select_reuseport.c_setup_per_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tmp_index_ovr_map = common dso_local global i32 0, align 4
@index_zero = common dso_local global i32 0, align 4
@BPF_ANY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"update_elem(tmp_index_ovr_map, 0, -1)\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"err:%d errno:%d\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i16, i32)* @setup_per_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_per_test(i32 %0, i16 zeroext %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i16 %1, i16* %5, align 2
  store i32 %2, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i16, i16* %5, align 2
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @prepare_sk_fds(i32 %9, i16 zeroext %10, i32 %11)
  %13 = load i32, i32* @tmp_index_ovr_map, align 4
  %14 = load i32, i32* @BPF_ANY, align 4
  %15 = call i32 @bpf_map_update_elem(i32 %13, i32* @index_zero, i32* %7, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp eq i32 %16, -1
  %18 = zext i1 %17 to i32
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @errno, align 4
  %21 = call i32 @CHECK(i32 %18, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %19, i32 %20)
  ret void
}

declare dso_local i32 @prepare_sk_fds(i32, i16 zeroext, i32) #1

declare dso_local i32 @bpf_map_update_elem(i32, i32*, i32*, i32) #1

declare dso_local i32 @CHECK(i32, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
