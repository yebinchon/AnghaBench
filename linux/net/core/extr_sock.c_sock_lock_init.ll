; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_sock.c_sock_lock_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_sock.c_sock_lock_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i64 }

@af_family_kern_slock_key_strings = common dso_local global i32* null, align 8
@af_family_kern_slock_keys = common dso_local global i64 0, align 8
@af_family_kern_key_strings = common dso_local global i32* null, align 8
@af_family_kern_keys = common dso_local global i64 0, align 8
@af_family_slock_key_strings = common dso_local global i32* null, align 8
@af_family_slock_keys = common dso_local global i64 0, align 8
@af_family_key_strings = common dso_local global i32* null, align 8
@af_family_keys = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @sock_lock_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sock_lock_init(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %3 = load %struct.sock*, %struct.sock** %2, align 8
  %4 = getelementptr inbounds %struct.sock, %struct.sock* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %32

7:                                                ; preds = %1
  %8 = load %struct.sock*, %struct.sock** %2, align 8
  %9 = load i32*, i32** @af_family_kern_slock_key_strings, align 8
  %10 = load %struct.sock*, %struct.sock** %2, align 8
  %11 = getelementptr inbounds %struct.sock, %struct.sock* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds i32, i32* %9, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = load i64, i64* @af_family_kern_slock_keys, align 8
  %16 = load %struct.sock*, %struct.sock** %2, align 8
  %17 = getelementptr inbounds %struct.sock, %struct.sock* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add i64 %15, %18
  %20 = load i32*, i32** @af_family_kern_key_strings, align 8
  %21 = load %struct.sock*, %struct.sock** %2, align 8
  %22 = getelementptr inbounds %struct.sock, %struct.sock* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i64, i64* @af_family_kern_keys, align 8
  %27 = load %struct.sock*, %struct.sock** %2, align 8
  %28 = getelementptr inbounds %struct.sock, %struct.sock* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add i64 %26, %29
  %31 = call i32 @sock_lock_init_class_and_name(%struct.sock* %8, i32 %14, i64 %19, i32 %25, i64 %30)
  br label %57

32:                                               ; preds = %1
  %33 = load %struct.sock*, %struct.sock** %2, align 8
  %34 = load i32*, i32** @af_family_slock_key_strings, align 8
  %35 = load %struct.sock*, %struct.sock** %2, align 8
  %36 = getelementptr inbounds %struct.sock, %struct.sock* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i64, i64* @af_family_slock_keys, align 8
  %41 = load %struct.sock*, %struct.sock** %2, align 8
  %42 = getelementptr inbounds %struct.sock, %struct.sock* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add i64 %40, %43
  %45 = load i32*, i32** @af_family_key_strings, align 8
  %46 = load %struct.sock*, %struct.sock** %2, align 8
  %47 = getelementptr inbounds %struct.sock, %struct.sock* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i64, i64* @af_family_keys, align 8
  %52 = load %struct.sock*, %struct.sock** %2, align 8
  %53 = getelementptr inbounds %struct.sock, %struct.sock* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add i64 %51, %54
  %56 = call i32 @sock_lock_init_class_and_name(%struct.sock* %33, i32 %39, i64 %44, i32 %50, i64 %55)
  br label %57

57:                                               ; preds = %32, %7
  ret void
}

declare dso_local i32 @sock_lock_init_class_and_name(%struct.sock*, i32, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
