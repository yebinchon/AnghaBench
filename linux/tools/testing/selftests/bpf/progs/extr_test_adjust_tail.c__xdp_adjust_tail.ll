; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_test_adjust_tail.c__xdp_adjust_tail.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_test_adjust_tail.c__xdp_adjust_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdp_md = type { i64, i64 }

@XDP_DROP = common dso_local global i32 0, align 4
@XDP_TX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_xdp_adjust_tail(%struct.xdp_md* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xdp_md*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.xdp_md* %0, %struct.xdp_md** %3, align 8
  %7 = load %struct.xdp_md*, %struct.xdp_md** %3, align 8
  %8 = getelementptr inbounds %struct.xdp_md, %struct.xdp_md* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to i8*
  store i8* %10, i8** %4, align 8
  %11 = load %struct.xdp_md*, %struct.xdp_md** %3, align 8
  %12 = getelementptr inbounds %struct.xdp_md, %struct.xdp_md* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  store i8* %14, i8** %5, align 8
  store i32 0, i32* %6, align 4
  %15 = load i8*, i8** %4, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = ptrtoint i8* %15 to i64
  %18 = ptrtoint i8* %16 to i64
  %19 = sub i64 %17, %18
  %20 = icmp eq i64 %19, 54
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i32 256, i32* %6, align 4
  br label %23

22:                                               ; preds = %1
  store i32 20, i32* %6, align 4
  br label %23

23:                                               ; preds = %22, %21
  %24 = load %struct.xdp_md*, %struct.xdp_md** %3, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sub nsw i32 0, %25
  %27 = sext i32 %26 to i64
  %28 = call i64 @bpf_xdp_adjust_tail(%struct.xdp_md* %24, i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* @XDP_DROP, align 4
  store i32 %31, i32* %2, align 4
  br label %34

32:                                               ; preds = %23
  %33 = load i32, i32* @XDP_TX, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i64 @bpf_xdp_adjust_tail(%struct.xdp_md*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
