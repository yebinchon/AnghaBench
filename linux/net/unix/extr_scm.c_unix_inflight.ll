; ModuleID = '/home/carl/AnghaBench/linux/net/unix/extr_scm.c_unix_inflight.c'
source_filename = "/home/carl/AnghaBench/linux/net/unix/extr_scm.c_unix_inflight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_struct = type { i32 }
%struct.file = type { i32 }
%struct.sock = type { i32 }
%struct.unix_sock = type { i32, i32 }

@unix_gc_lock = common dso_local global i32 0, align 4
@gc_inflight_list = common dso_local global i32 0, align 4
@unix_tot_inflight = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unix_inflight(%struct.user_struct* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.user_struct*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.unix_sock*, align 8
  store %struct.user_struct* %0, %struct.user_struct** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %7 = load %struct.file*, %struct.file** %4, align 8
  %8 = call %struct.sock* @unix_get_socket(%struct.file* %7)
  store %struct.sock* %8, %struct.sock** %5, align 8
  %9 = call i32 @spin_lock(i32* @unix_gc_lock)
  %10 = load %struct.sock*, %struct.sock** %5, align 8
  %11 = icmp ne %struct.sock* %10, null
  br i1 %11, label %12, label %38

12:                                               ; preds = %2
  %13 = load %struct.sock*, %struct.sock** %5, align 8
  %14 = call %struct.unix_sock* @unix_sk(%struct.sock* %13)
  store %struct.unix_sock* %14, %struct.unix_sock** %6, align 8
  %15 = load %struct.unix_sock*, %struct.unix_sock** %6, align 8
  %16 = getelementptr inbounds %struct.unix_sock, %struct.unix_sock* %15, i32 0, i32 1
  %17 = call i32 @atomic_long_inc_return(i32* %16)
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %30

19:                                               ; preds = %12
  %20 = load %struct.unix_sock*, %struct.unix_sock** %6, align 8
  %21 = getelementptr inbounds %struct.unix_sock, %struct.unix_sock* %20, i32 0, i32 0
  %22 = call i32 @list_empty(i32* %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = load %struct.unix_sock*, %struct.unix_sock** %6, align 8
  %28 = getelementptr inbounds %struct.unix_sock, %struct.unix_sock* %27, i32 0, i32 0
  %29 = call i32 @list_add_tail(i32* %28, i32* @gc_inflight_list)
  br label %35

30:                                               ; preds = %12
  %31 = load %struct.unix_sock*, %struct.unix_sock** %6, align 8
  %32 = getelementptr inbounds %struct.unix_sock, %struct.unix_sock* %31, i32 0, i32 0
  %33 = call i32 @list_empty(i32* %32)
  %34 = call i32 @BUG_ON(i32 %33)
  br label %35

35:                                               ; preds = %30, %19
  %36 = load i32, i32* @unix_tot_inflight, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* @unix_tot_inflight, align 4
  br label %38

38:                                               ; preds = %35, %2
  %39 = load %struct.user_struct*, %struct.user_struct** %3, align 8
  %40 = getelementptr inbounds %struct.user_struct, %struct.user_struct* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  %43 = call i32 @spin_unlock(i32* @unix_gc_lock)
  ret void
}

declare dso_local %struct.sock* @unix_get_socket(%struct.file*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.unix_sock* @unix_sk(%struct.sock*) #1

declare dso_local i32 @atomic_long_inc_return(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
