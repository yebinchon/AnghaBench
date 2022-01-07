; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_reuseport_array.c_bpf_fd_reuseport_array_lookup_elem.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_reuseport_array.c_bpf_fd_reuseport_array_lookup_elem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_map = type { i32 }
%struct.sock = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpf_fd_reuseport_array_lookup_elem(%struct.bpf_map* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bpf_map*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sock*, align 8
  %9 = alloca i32, align 4
  store %struct.bpf_map* %0, %struct.bpf_map** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.bpf_map*, %struct.bpf_map** %5, align 8
  %11 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = icmp ne i64 %13, 4
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOSPC, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %36

18:                                               ; preds = %3
  %19 = call i32 (...) @rcu_read_lock()
  %20 = load %struct.bpf_map*, %struct.bpf_map** %5, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call %struct.sock* @reuseport_array_lookup_elem(%struct.bpf_map* %20, i8* %21)
  store %struct.sock* %22, %struct.sock** %8, align 8
  %23 = load %struct.sock*, %struct.sock** %8, align 8
  %24 = icmp ne %struct.sock* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = load %struct.sock*, %struct.sock** %8, align 8
  %27 = call i32 @sock_gen_cookie(%struct.sock* %26)
  %28 = load i8*, i8** %7, align 8
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 4
  store i32 0, i32* %9, align 4
  br label %33

30:                                               ; preds = %18
  %31 = load i32, i32* @ENOENT, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %30, %25
  %34 = call i32 (...) @rcu_read_unlock()
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %33, %15
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.sock* @reuseport_array_lookup_elem(%struct.bpf_map*, i8*) #1

declare dso_local i32 @sock_gen_cookie(%struct.sock*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
