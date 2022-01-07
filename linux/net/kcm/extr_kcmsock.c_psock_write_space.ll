; ModuleID = '/home/carl/AnghaBench/linux/net/kcm/extr_kcmsock.c_psock_write_space.c'
source_filename = "/home/carl/AnghaBench/linux/net/kcm/extr_kcmsock.c_psock_write_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i64 }
%struct.kcm_psock = type { %struct.kcm_sock*, %struct.kcm_mux* }
%struct.kcm_sock = type { i32, i32 }
%struct.kcm_mux = type { i32 }

@kcm_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @psock_write_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psock_write_space(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.kcm_psock*, align 8
  %4 = alloca %struct.kcm_mux*, align 8
  %5 = alloca %struct.kcm_sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %6 = load %struct.sock*, %struct.sock** %2, align 8
  %7 = getelementptr inbounds %struct.sock, %struct.sock* %6, i32 0, i32 0
  %8 = call i32 @read_lock_bh(i32* %7)
  %9 = load %struct.sock*, %struct.sock** %2, align 8
  %10 = getelementptr inbounds %struct.sock, %struct.sock* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.kcm_psock*
  store %struct.kcm_psock* %12, %struct.kcm_psock** %3, align 8
  %13 = load %struct.kcm_psock*, %struct.kcm_psock** %3, align 8
  %14 = icmp ne %struct.kcm_psock* %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %47

20:                                               ; preds = %1
  %21 = load %struct.kcm_psock*, %struct.kcm_psock** %3, align 8
  %22 = getelementptr inbounds %struct.kcm_psock, %struct.kcm_psock* %21, i32 0, i32 1
  %23 = load %struct.kcm_mux*, %struct.kcm_mux** %22, align 8
  store %struct.kcm_mux* %23, %struct.kcm_mux** %4, align 8
  %24 = load %struct.kcm_mux*, %struct.kcm_mux** %4, align 8
  %25 = getelementptr inbounds %struct.kcm_mux, %struct.kcm_mux* %24, i32 0, i32 0
  %26 = call i32 @spin_lock_bh(i32* %25)
  %27 = load %struct.kcm_psock*, %struct.kcm_psock** %3, align 8
  %28 = getelementptr inbounds %struct.kcm_psock, %struct.kcm_psock* %27, i32 0, i32 0
  %29 = load %struct.kcm_sock*, %struct.kcm_sock** %28, align 8
  store %struct.kcm_sock* %29, %struct.kcm_sock** %5, align 8
  %30 = load %struct.kcm_sock*, %struct.kcm_sock** %5, align 8
  %31 = icmp ne %struct.kcm_sock* %30, null
  br i1 %31, label %32, label %43

32:                                               ; preds = %20
  %33 = load %struct.kcm_sock*, %struct.kcm_sock** %5, align 8
  %34 = getelementptr inbounds %struct.kcm_sock, %struct.kcm_sock* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* @kcm_wq, align 4
  %40 = load %struct.kcm_sock*, %struct.kcm_sock** %5, align 8
  %41 = getelementptr inbounds %struct.kcm_sock, %struct.kcm_sock* %40, i32 0, i32 1
  %42 = call i32 @queue_work(i32 %39, i32* %41)
  br label %43

43:                                               ; preds = %38, %32, %20
  %44 = load %struct.kcm_mux*, %struct.kcm_mux** %4, align 8
  %45 = getelementptr inbounds %struct.kcm_mux, %struct.kcm_mux* %44, i32 0, i32 0
  %46 = call i32 @spin_unlock_bh(i32* %45)
  br label %47

47:                                               ; preds = %43, %19
  %48 = load %struct.sock*, %struct.sock** %2, align 8
  %49 = getelementptr inbounds %struct.sock, %struct.sock* %48, i32 0, i32 0
  %50 = call i32 @read_unlock_bh(i32* %49)
  ret void
}

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
