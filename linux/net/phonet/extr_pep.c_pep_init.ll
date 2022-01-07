; ModuleID = '/home/carl/AnghaBench/linux/net/phonet/extr_pep.c_pep_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/phonet/extr_pep.c_pep_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.pep_sock = type { i32, i64, i32, i32, i64, i32, i64, i64, i32, i32, i32*, i32 }

@pipe_destruct = common dso_local global i32 0, align 4
@PN_PIPE_INVALID_HANDLE = common dso_local global i32 0, align 4
@PN_LEGACY_FLOW_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*)* @pep_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pep_init(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.pep_sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load %struct.sock*, %struct.sock** %2, align 8
  %5 = call %struct.pep_sock* @pep_sk(%struct.sock* %4)
  store %struct.pep_sock* %5, %struct.pep_sock** %3, align 8
  %6 = load i32, i32* @pipe_destruct, align 4
  %7 = load %struct.sock*, %struct.sock** %2, align 8
  %8 = getelementptr inbounds %struct.sock, %struct.sock* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 4
  %9 = load %struct.pep_sock*, %struct.pep_sock** %3, align 8
  %10 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %9, i32 0, i32 11
  %11 = call i32 @INIT_HLIST_HEAD(i32* %10)
  %12 = load %struct.pep_sock*, %struct.pep_sock** %3, align 8
  %13 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %12, i32 0, i32 10
  store i32* null, i32** %13, align 8
  %14 = load %struct.pep_sock*, %struct.pep_sock** %3, align 8
  %15 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %14, i32 0, i32 9
  %16 = call i32 @skb_queue_head_init(i32* %15)
  %17 = load %struct.pep_sock*, %struct.pep_sock** %3, align 8
  %18 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %17, i32 0, i32 8
  %19 = call i32 @atomic_set(i32* %18, i32 0)
  %20 = load %struct.pep_sock*, %struct.pep_sock** %3, align 8
  %21 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %20, i32 0, i32 7
  store i64 0, i64* %21, align 8
  %22 = load %struct.pep_sock*, %struct.pep_sock** %3, align 8
  %23 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %22, i32 0, i32 6
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* @PN_PIPE_INVALID_HANDLE, align 4
  %25 = load %struct.pep_sock*, %struct.pep_sock** %3, align 8
  %26 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %25, i32 0, i32 5
  store i32 %24, i32* %26, align 8
  %27 = load %struct.pep_sock*, %struct.pep_sock** %3, align 8
  %28 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %27, i32 0, i32 4
  store i64 0, i64* %28, align 8
  %29 = load i32, i32* @PN_LEGACY_FLOW_CONTROL, align 4
  %30 = load %struct.pep_sock*, %struct.pep_sock** %3, align 8
  %31 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load %struct.pep_sock*, %struct.pep_sock** %3, align 8
  %33 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %32, i32 0, i32 3
  store i32 %29, i32* %33, align 4
  %34 = load %struct.pep_sock*, %struct.pep_sock** %3, align 8
  %35 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load %struct.pep_sock*, %struct.pep_sock** %3, align 8
  %37 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  ret i32 0
}

declare dso_local %struct.pep_sock* @pep_sk(%struct.sock*) #1

declare dso_local i32 @INIT_HLIST_HEAD(i32*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
