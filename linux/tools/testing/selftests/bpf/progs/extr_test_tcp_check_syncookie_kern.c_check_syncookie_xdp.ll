; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_test_tcp_check_syncookie_kern.c_check_syncookie_xdp.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_test_tcp_check_syncookie_kern.c_check_syncookie_xdp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdp_md = type { i64, i64 }

@XDP_PASS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_syncookie_xdp(%struct.xdp_md* %0) #0 {
  %2 = alloca %struct.xdp_md*, align 8
  store %struct.xdp_md* %0, %struct.xdp_md** %2, align 8
  %3 = load %struct.xdp_md*, %struct.xdp_md** %2, align 8
  %4 = load %struct.xdp_md*, %struct.xdp_md** %2, align 8
  %5 = getelementptr inbounds %struct.xdp_md, %struct.xdp_md* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to i8*
  %8 = load %struct.xdp_md*, %struct.xdp_md** %2, align 8
  %9 = getelementptr inbounds %struct.xdp_md, %struct.xdp_md* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = call i32 @check_syncookie(%struct.xdp_md* %3, i8* %7, i8* %11)
  %13 = load i32, i32* @XDP_PASS, align 4
  ret i32 %13
}

declare dso_local i32 @check_syncookie(%struct.xdp_md*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
