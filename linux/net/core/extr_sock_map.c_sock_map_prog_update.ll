; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_sock_map.c_sock_map_prog_update.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_sock_map.c_sock_map_prog_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_map = type { i32 }
%struct.bpf_prog = type { i32 }
%struct.sk_psock_progs = type { i32, i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sock_map_prog_update(%struct.bpf_map* %0, %struct.bpf_prog* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bpf_map*, align 8
  %6 = alloca %struct.bpf_prog*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_psock_progs*, align 8
  store %struct.bpf_map* %0, %struct.bpf_map** %5, align 8
  store %struct.bpf_prog* %1, %struct.bpf_prog** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.bpf_map*, %struct.bpf_map** %5, align 8
  %10 = call %struct.sk_psock_progs* @sock_map_progs(%struct.bpf_map* %9)
  store %struct.sk_psock_progs* %10, %struct.sk_psock_progs** %8, align 8
  %11 = load %struct.sk_psock_progs*, %struct.sk_psock_progs** %8, align 8
  %12 = icmp ne %struct.sk_psock_progs* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @EOPNOTSUPP, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %37

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  switch i32 %17, label %33 [
    i32 130, label %18
    i32 129, label %23
    i32 128, label %28
  ]

18:                                               ; preds = %16
  %19 = load %struct.sk_psock_progs*, %struct.sk_psock_progs** %8, align 8
  %20 = getelementptr inbounds %struct.sk_psock_progs, %struct.sk_psock_progs* %19, i32 0, i32 2
  %21 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %22 = call i32 @psock_set_prog(i32* %20, %struct.bpf_prog* %21)
  br label %36

23:                                               ; preds = %16
  %24 = load %struct.sk_psock_progs*, %struct.sk_psock_progs** %8, align 8
  %25 = getelementptr inbounds %struct.sk_psock_progs, %struct.sk_psock_progs* %24, i32 0, i32 1
  %26 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %27 = call i32 @psock_set_prog(i32* %25, %struct.bpf_prog* %26)
  br label %36

28:                                               ; preds = %16
  %29 = load %struct.sk_psock_progs*, %struct.sk_psock_progs** %8, align 8
  %30 = getelementptr inbounds %struct.sk_psock_progs, %struct.sk_psock_progs* %29, i32 0, i32 0
  %31 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %32 = call i32 @psock_set_prog(i32* %30, %struct.bpf_prog* %31)
  br label %36

33:                                               ; preds = %16
  %34 = load i32, i32* @EOPNOTSUPP, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %37

36:                                               ; preds = %28, %23, %18
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %36, %33, %13
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local %struct.sk_psock_progs* @sock_map_progs(%struct.bpf_map*) #1

declare dso_local i32 @psock_set_prog(i32*, %struct.bpf_prog*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
