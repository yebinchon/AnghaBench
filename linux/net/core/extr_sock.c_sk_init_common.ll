; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_sock.c_sk_init_common.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_sock.c_sk_init_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i32, %struct.TYPE_2__, %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@af_rlock_keys = common dso_local global i64 0, align 8
@af_family_rlock_key_strings = common dso_local global i32* null, align 8
@af_wlock_keys = common dso_local global i64 0, align 8
@af_family_wlock_key_strings = common dso_local global i32* null, align 8
@af_elock_keys = common dso_local global i64 0, align 8
@af_family_elock_key_strings = common dso_local global i32* null, align 8
@af_callback_keys = common dso_local global i64 0, align 8
@af_family_clock_key_strings = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @sk_init_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sk_init_common(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %3 = load %struct.sock*, %struct.sock** %2, align 8
  %4 = getelementptr inbounds %struct.sock, %struct.sock* %3, i32 0, i32 4
  %5 = call i32 @skb_queue_head_init(%struct.TYPE_2__* %4)
  %6 = load %struct.sock*, %struct.sock** %2, align 8
  %7 = getelementptr inbounds %struct.sock, %struct.sock* %6, i32 0, i32 3
  %8 = call i32 @skb_queue_head_init(%struct.TYPE_2__* %7)
  %9 = load %struct.sock*, %struct.sock** %2, align 8
  %10 = getelementptr inbounds %struct.sock, %struct.sock* %9, i32 0, i32 2
  %11 = call i32 @skb_queue_head_init(%struct.TYPE_2__* %10)
  %12 = load %struct.sock*, %struct.sock** %2, align 8
  %13 = getelementptr inbounds %struct.sock, %struct.sock* %12, i32 0, i32 1
  %14 = call i32 @rwlock_init(i32* %13)
  %15 = load %struct.sock*, %struct.sock** %2, align 8
  %16 = getelementptr inbounds %struct.sock, %struct.sock* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* @af_rlock_keys, align 8
  %19 = load %struct.sock*, %struct.sock** %2, align 8
  %20 = getelementptr inbounds %struct.sock, %struct.sock* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add i64 %18, %21
  %23 = load i32*, i32** @af_family_rlock_key_strings, align 8
  %24 = load %struct.sock*, %struct.sock** %2, align 8
  %25 = getelementptr inbounds %struct.sock, %struct.sock* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @lockdep_set_class_and_name(i32* %17, i64 %22, i32 %28)
  %30 = load %struct.sock*, %struct.sock** %2, align 8
  %31 = getelementptr inbounds %struct.sock, %struct.sock* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* @af_wlock_keys, align 8
  %34 = load %struct.sock*, %struct.sock** %2, align 8
  %35 = getelementptr inbounds %struct.sock, %struct.sock* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add i64 %33, %36
  %38 = load i32*, i32** @af_family_wlock_key_strings, align 8
  %39 = load %struct.sock*, %struct.sock** %2, align 8
  %40 = getelementptr inbounds %struct.sock, %struct.sock* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @lockdep_set_class_and_name(i32* %32, i64 %37, i32 %43)
  %45 = load %struct.sock*, %struct.sock** %2, align 8
  %46 = getelementptr inbounds %struct.sock, %struct.sock* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* @af_elock_keys, align 8
  %49 = load %struct.sock*, %struct.sock** %2, align 8
  %50 = getelementptr inbounds %struct.sock, %struct.sock* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add i64 %48, %51
  %53 = load i32*, i32** @af_family_elock_key_strings, align 8
  %54 = load %struct.sock*, %struct.sock** %2, align 8
  %55 = getelementptr inbounds %struct.sock, %struct.sock* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @lockdep_set_class_and_name(i32* %47, i64 %52, i32 %58)
  %60 = load %struct.sock*, %struct.sock** %2, align 8
  %61 = getelementptr inbounds %struct.sock, %struct.sock* %60, i32 0, i32 1
  %62 = load i64, i64* @af_callback_keys, align 8
  %63 = load %struct.sock*, %struct.sock** %2, align 8
  %64 = getelementptr inbounds %struct.sock, %struct.sock* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add i64 %62, %65
  %67 = load i32*, i32** @af_family_clock_key_strings, align 8
  %68 = load %struct.sock*, %struct.sock** %2, align 8
  %69 = getelementptr inbounds %struct.sock, %struct.sock* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @lockdep_set_class_and_name(i32* %61, i64 %66, i32 %72)
  ret void
}

declare dso_local i32 @skb_queue_head_init(%struct.TYPE_2__*) #1

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i32 @lockdep_set_class_and_name(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
