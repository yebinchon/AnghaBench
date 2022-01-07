; ModuleID = '/home/carl/AnghaBench/linux/net/unix/extr_scm.c_unix_notinflight.c'
source_filename = "/home/carl/AnghaBench/linux/net/unix/extr_scm.c_unix_notinflight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_struct = type { i32 }
%struct.file = type { i32 }
%struct.sock = type { i32 }
%struct.unix_sock = type { i32, i32 }

@unix_gc_lock = common dso_local global i32 0, align 4
@unix_tot_inflight = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unix_notinflight(%struct.user_struct* %0, %struct.file* %1) #0 {
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
  br i1 %11, label %12, label %37

12:                                               ; preds = %2
  %13 = load %struct.sock*, %struct.sock** %5, align 8
  %14 = call %struct.unix_sock* @unix_sk(%struct.sock* %13)
  store %struct.unix_sock* %14, %struct.unix_sock** %6, align 8
  %15 = load %struct.unix_sock*, %struct.unix_sock** %6, align 8
  %16 = getelementptr inbounds %struct.unix_sock, %struct.unix_sock* %15, i32 0, i32 1
  %17 = call i32 @atomic_long_read(i32* %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.unix_sock*, %struct.unix_sock** %6, align 8
  %23 = getelementptr inbounds %struct.unix_sock, %struct.unix_sock* %22, i32 0, i32 0
  %24 = call i32 @list_empty(i32* %23)
  %25 = call i32 @BUG_ON(i32 %24)
  %26 = load %struct.unix_sock*, %struct.unix_sock** %6, align 8
  %27 = getelementptr inbounds %struct.unix_sock, %struct.unix_sock* %26, i32 0, i32 1
  %28 = call i64 @atomic_long_dec_and_test(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %12
  %31 = load %struct.unix_sock*, %struct.unix_sock** %6, align 8
  %32 = getelementptr inbounds %struct.unix_sock, %struct.unix_sock* %31, i32 0, i32 0
  %33 = call i32 @list_del_init(i32* %32)
  br label %34

34:                                               ; preds = %30, %12
  %35 = load i32, i32* @unix_tot_inflight, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* @unix_tot_inflight, align 4
  br label %37

37:                                               ; preds = %34, %2
  %38 = load %struct.user_struct*, %struct.user_struct** %3, align 8
  %39 = getelementptr inbounds %struct.user_struct, %struct.user_struct* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %39, align 4
  %42 = call i32 @spin_unlock(i32* @unix_gc_lock)
  ret void
}

declare dso_local %struct.sock* @unix_get_socket(%struct.file*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.unix_sock* @unix_sk(%struct.sock*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @atomic_long_read(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i64 @atomic_long_dec_and_test(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
